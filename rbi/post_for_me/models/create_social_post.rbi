# typed: strong

module PostForMe
  module Models
    class CreateSocialPost < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::CreateSocialPost, PostForMe::Internal::AnyHash)
        end

      # Caption text for the post
      sig { returns(String) }
      attr_accessor :caption

      # Array of social account IDs for posting
      sig { returns(T::Array[String]) }
      attr_accessor :social_accounts

      # Account-specific configurations for the post
      sig { returns(T.nilable(T::Array[PostForMe::AccountConfiguration])) }
      attr_accessor :account_configurations

      # Array of social account IDs for posting
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # If isDraft is set then the post will not be processed
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_draft

      # Array of media associated with the post. If multiple media items are provided
      # and the placement is `stories`, individual posts are created per media item.
      sig { returns(T.nilable(T::Array[PostForMe::SocialPostMedia])) }
      attr_accessor :media

      # Platform-specific configurations for the post
      sig { returns(T.nilable(PostForMe::PlatformConfigurationsDto)) }
      attr_reader :platform_configurations

      sig do
        params(
          platform_configurations:
            T.nilable(PostForMe::PlatformConfigurationsDto::OrHash)
        ).void
      end
      attr_writer :platform_configurations

      # Scheduled date and time for the post, setting to null or undefined will post
      # instantly
      sig { returns(T.nilable(Time)) }
      attr_accessor :scheduled_at

      sig do
        params(
          caption: String,
          social_accounts: T::Array[String],
          account_configurations:
            T.nilable(T::Array[PostForMe::AccountConfiguration::OrHash]),
          external_id: T.nilable(String),
          is_draft: T.nilable(T::Boolean),
          media: T.nilable(T::Array[PostForMe::SocialPostMedia::OrHash]),
          platform_configurations:
            T.nilable(PostForMe::PlatformConfigurationsDto::OrHash),
          scheduled_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # Caption text for the post
        caption:,
        # Array of social account IDs for posting
        social_accounts:,
        # Account-specific configurations for the post
        account_configurations: nil,
        # Array of social account IDs for posting
        external_id: nil,
        # If isDraft is set then the post will not be processed
        is_draft: nil,
        # Array of media associated with the post. If multiple media items are provided
        # and the placement is `stories`, individual posts are created per media item.
        media: nil,
        # Platform-specific configurations for the post
        platform_configurations: nil,
        # Scheduled date and time for the post, setting to null or undefined will post
        # instantly
        scheduled_at: nil
      )
      end

      sig do
        override.returns(
          {
            caption: String,
            social_accounts: T::Array[String],
            account_configurations:
              T.nilable(T::Array[PostForMe::AccountConfiguration]),
            external_id: T.nilable(String),
            is_draft: T.nilable(T::Boolean),
            media: T.nilable(T::Array[PostForMe::SocialPostMedia]),
            platform_configurations:
              T.nilable(PostForMe::PlatformConfigurationsDto),
            scheduled_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end
    end
  end
end
