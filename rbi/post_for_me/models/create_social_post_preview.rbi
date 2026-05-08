# typed: strong

module PostForMe
  module Models
    class CreateSocialPostPreview < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::CreateSocialPostPreview,
            PostForMe::Internal::AnyHash
          )
        end

      # Caption text for the post
      sig { returns(String) }
      attr_accessor :caption

      # Array of social accounts. Can preview non connected accounts, just specify a
      # random ID
      sig do
        returns(
          T::Array[PostForMe::CreateSocialPostPreview::PreviewSocialAccount]
        )
      end
      attr_accessor :preview_social_accounts

      # Account-specific configurations for the post
      sig { returns(T.nilable(T::Array[PostForMe::AccountConfiguration])) }
      attr_accessor :account_configurations

      # Array of media URLs associated with the post
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

      sig do
        params(
          caption: String,
          preview_social_accounts:
            T::Array[
              PostForMe::CreateSocialPostPreview::PreviewSocialAccount::OrHash
            ],
          account_configurations:
            T.nilable(T::Array[PostForMe::AccountConfiguration::OrHash]),
          media: T.nilable(T::Array[PostForMe::SocialPostMedia::OrHash]),
          platform_configurations:
            T.nilable(PostForMe::PlatformConfigurationsDto::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Caption text for the post
        caption:,
        # Array of social accounts. Can preview non connected accounts, just specify a
        # random ID
        preview_social_accounts:,
        # Account-specific configurations for the post
        account_configurations: nil,
        # Array of media URLs associated with the post
        media: nil,
        # Platform-specific configurations for the post
        platform_configurations: nil
      )
      end

      sig do
        override.returns(
          {
            caption: String,
            preview_social_accounts:
              T::Array[
                PostForMe::CreateSocialPostPreview::PreviewSocialAccount
              ],
            account_configurations:
              T.nilable(T::Array[PostForMe::AccountConfiguration]),
            media: T.nilable(T::Array[PostForMe::SocialPostMedia]),
            platform_configurations:
              T.nilable(PostForMe::PlatformConfigurationsDto)
          }
        )
      end
      def to_hash
      end

      class PreviewSocialAccount < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::CreateSocialPostPreview::PreviewSocialAccount,
              PostForMe::Internal::AnyHash
            )
          end

        # ID of the social account, ex: spc_12312
        sig { returns(String) }
        attr_accessor :id

        # Platform of the social account
        sig { returns(String) }
        attr_accessor :platform

        # username of the social account
        sig { returns(T.nilable(String)) }
        attr_reader :username

        sig { params(username: String).void }
        attr_writer :username

        sig do
          params(id: String, platform: String, username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # ID of the social account, ex: spc_12312
          id:,
          # Platform of the social account
          platform:,
          # username of the social account
          username: nil
        )
        end

        sig do
          override.returns({ id: String, platform: String, username: String })
        end
        def to_hash
        end
      end
    end
  end
end
