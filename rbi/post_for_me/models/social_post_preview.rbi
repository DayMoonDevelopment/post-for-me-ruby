# typed: strong

module PostForMe
  module Models
    class SocialPostPreview < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::SocialPostPreview, PostForMe::Internal::AnyHash)
        end

      # Caption text for the post
      sig { returns(String) }
      attr_accessor :caption

      # Platform of the post
      sig { returns(String) }
      attr_accessor :platform

      # Id of the social account
      sig { returns(String) }
      attr_accessor :social_account_id

      # Additional configuration for this platform
      sig { returns(T.nilable(T.anything)) }
      attr_reader :configuration

      sig { params(configuration: T.anything).void }
      attr_writer :configuration

      # Array of media URLs associated with the post
      sig { returns(T.nilable(T::Array[PostForMe::SocialPostMedia])) }
      attr_accessor :media

      # Url of the social account profile picture
      sig { returns(T.nilable(T.anything)) }
      attr_reader :social_account_profile_picture_url

      sig { params(social_account_profile_picture_url: T.anything).void }
      attr_writer :social_account_profile_picture_url

      # Username of the social account
      sig { returns(T.nilable(T.anything)) }
      attr_reader :social_account_username

      sig { params(social_account_username: T.anything).void }
      attr_writer :social_account_username

      sig do
        params(
          caption: String,
          platform: String,
          social_account_id: String,
          configuration: T.anything,
          media: T.nilable(T::Array[PostForMe::SocialPostMedia::OrHash]),
          social_account_profile_picture_url: T.anything,
          social_account_username: T.anything
        ).returns(T.attached_class)
      end
      def self.new(
        # Caption text for the post
        caption:,
        # Platform of the post
        platform:,
        # Id of the social account
        social_account_id:,
        # Additional configuration for this platform
        configuration: nil,
        # Array of media URLs associated with the post
        media: nil,
        # Url of the social account profile picture
        social_account_profile_picture_url: nil,
        # Username of the social account
        social_account_username: nil
      )
      end

      sig do
        override.returns(
          {
            caption: String,
            platform: String,
            social_account_id: String,
            configuration: T.anything,
            media: T.nilable(T::Array[PostForMe::SocialPostMedia]),
            social_account_profile_picture_url: T.anything,
            social_account_username: T.anything
          }
        )
      end
      def to_hash
      end
    end
  end
end
