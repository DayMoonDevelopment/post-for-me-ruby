# typed: strong

module PostForMe
  module Models
    class TwitterConfigurationDto < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::TwitterConfigurationDto,
            PostForMe::Internal::AnyHash
          )
        end

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # Id of the community to post to
      sig { returns(T.nilable(String)) }
      attr_reader :community_id

      sig { params(community_id: String).void }
      attr_writer :community_id

      # Overrides the `media` from the post
      sig { returns(T.nilable(T::Array[PostForMe::SocialPostMedia])) }
      attr_accessor :media

      # Poll options for the tweet
      sig { returns(T.nilable(PostForMe::TwitterPoll)) }
      attr_reader :poll

      sig { params(poll: PostForMe::TwitterPoll::OrHash).void }
      attr_writer :poll

      # Id of the tweet you want to quote
      sig { returns(T.nilable(String)) }
      attr_reader :quote_tweet_id

      sig { params(quote_tweet_id: String).void }
      attr_writer :quote_tweet_id

      # Who can reply to the tweet
      sig do
        returns(
          T.nilable(PostForMe::TwitterConfigurationDto::ReplySettings::OrSymbol)
        )
      end
      attr_accessor :reply_settings

      sig do
        params(
          caption: T.nilable(T.anything),
          community_id: String,
          media: T.nilable(T::Array[PostForMe::SocialPostMedia::OrHash]),
          poll: PostForMe::TwitterPoll::OrHash,
          quote_tweet_id: String,
          reply_settings:
            T.nilable(
              PostForMe::TwitterConfigurationDto::ReplySettings::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Overrides the `caption` from the post
        caption: nil,
        # Id of the community to post to
        community_id: nil,
        # Overrides the `media` from the post
        media: nil,
        # Poll options for the tweet
        poll: nil,
        # Id of the tweet you want to quote
        quote_tweet_id: nil,
        # Who can reply to the tweet
        reply_settings: nil
      )
      end

      sig do
        override.returns(
          {
            caption: T.nilable(T.anything),
            community_id: String,
            media: T.nilable(T::Array[PostForMe::SocialPostMedia]),
            poll: PostForMe::TwitterPoll,
            quote_tweet_id: String,
            reply_settings:
              T.nilable(
                PostForMe::TwitterConfigurationDto::ReplySettings::OrSymbol
              )
          }
        )
      end
      def to_hash
      end

      # Who can reply to the tweet
      module ReplySettings
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::TwitterConfigurationDto::ReplySettings)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FOLLOWING =
          T.let(
            :following,
            PostForMe::TwitterConfigurationDto::ReplySettings::TaggedSymbol
          )
        MENTIONED_USERS =
          T.let(
            :mentionedUsers,
            PostForMe::TwitterConfigurationDto::ReplySettings::TaggedSymbol
          )
        SUBSCRIBERS =
          T.let(
            :subscribers,
            PostForMe::TwitterConfigurationDto::ReplySettings::TaggedSymbol
          )
        VERIFIED =
          T.let(
            :verified,
            PostForMe::TwitterConfigurationDto::ReplySettings::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PostForMe::TwitterConfigurationDto::ReplySettings::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
