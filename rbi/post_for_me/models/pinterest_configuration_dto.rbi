# typed: strong

module PostForMe
  module Models
    class PinterestConfigurationDto < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::PinterestConfigurationDto,
            PostForMe::Internal::AnyHash
          )
        end

      # Pinterest board IDs
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :board_ids

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # Pinterest post link
      sig { returns(T.nilable(String)) }
      attr_accessor :link

      # Overrides the `media` from the post
      sig { returns(T.nilable(T::Array[PostForMe::SocialPostMedia])) }
      attr_accessor :media

      # Overrides the `title` from the post for Pinterest
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          board_ids: T.nilable(T::Array[String]),
          caption: T.nilable(T.anything),
          link: T.nilable(String),
          media: T.nilable(T::Array[PostForMe::SocialPostMedia::OrHash]),
          title: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Pinterest board IDs
        board_ids: nil,
        # Overrides the `caption` from the post
        caption: nil,
        # Pinterest post link
        link: nil,
        # Overrides the `media` from the post
        media: nil,
        # Overrides the `title` from the post for Pinterest
        title: nil
      )
      end

      sig do
        override.returns(
          {
            board_ids: T.nilable(T::Array[String]),
            caption: T.nilable(T.anything),
            link: T.nilable(String),
            media: T.nilable(T::Array[PostForMe::SocialPostMedia]),
            title: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
