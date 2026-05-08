# typed: strong

module PostForMe
  module Models
    class TwitterPoll < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::TwitterPoll, PostForMe::Internal::AnyHash)
        end

      # Duration of the poll in minutes
      sig { returns(Float) }
      attr_accessor :duration_minutes

      # The choices of the poll, requiring 2-4 options
      sig { returns(T::Array[String]) }
      attr_accessor :options

      # Who can reply to the tweet
      sig do
        returns(T.nilable(PostForMe::TwitterPoll::ReplySettings::OrSymbol))
      end
      attr_reader :reply_settings

      sig do
        params(
          reply_settings: PostForMe::TwitterPoll::ReplySettings::OrSymbol
        ).void
      end
      attr_writer :reply_settings

      sig do
        params(
          duration_minutes: Float,
          options: T::Array[String],
          reply_settings: PostForMe::TwitterPoll::ReplySettings::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Duration of the poll in minutes
        duration_minutes:,
        # The choices of the poll, requiring 2-4 options
        options:,
        # Who can reply to the tweet
        reply_settings: nil
      )
      end

      sig do
        override.returns(
          {
            duration_minutes: Float,
            options: T::Array[String],
            reply_settings: PostForMe::TwitterPoll::ReplySettings::OrSymbol
          }
        )
      end
      def to_hash
      end

      # Who can reply to the tweet
      module ReplySettings
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, PostForMe::TwitterPoll::ReplySettings) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FOLLOWING =
          T.let(:following, PostForMe::TwitterPoll::ReplySettings::TaggedSymbol)
        MENTIONED_USERS =
          T.let(
            :mentionedUsers,
            PostForMe::TwitterPoll::ReplySettings::TaggedSymbol
          )
        SUBSCRIBERS =
          T.let(
            :subscribers,
            PostForMe::TwitterPoll::ReplySettings::TaggedSymbol
          )
        VERIFIED =
          T.let(:verified, PostForMe::TwitterPoll::ReplySettings::TaggedSymbol)

        sig do
          override.returns(
            T::Array[PostForMe::TwitterPoll::ReplySettings::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
