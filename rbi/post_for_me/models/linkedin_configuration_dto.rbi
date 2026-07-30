# typed: strong

module PostForMe
  module Models
    class LinkedinConfigurationDto < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::LinkedinConfigurationDto,
            PostForMe::Internal::AnyHash
          )
        end

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # Overrides the `media` from the post
      sig { returns(T.nilable(T::Array[PostForMe::SocialPostMedia])) }
      attr_accessor :media

      # LinkedIn UGC post id to reshare. The caption is used as the reshare commentary.
      sig { returns(T.nilable(String)) }
      attr_accessor :reshare_post_id

      sig do
        params(
          caption: T.nilable(T.anything),
          media: T.nilable(T::Array[PostForMe::SocialPostMedia::OrHash]),
          reshare_post_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Overrides the `caption` from the post
        caption: nil,
        # Overrides the `media` from the post
        media: nil,
        # LinkedIn UGC post id to reshare. The caption is used as the reshare commentary.
        reshare_post_id: nil
      )
      end

      sig do
        override.returns(
          {
            caption: T.nilable(T.anything),
            media: T.nilable(T::Array[PostForMe::SocialPostMedia]),
            reshare_post_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
