# typed: strong

module PostForMe
  module Resources
    # Social Post Previews allow you to see what a Social Post will create for each
    # account in the post.
    class SocialPostPreviews
      # Create Post Previews
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
            T.nilable(PostForMe::PlatformConfigurationsDto::OrHash),
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(T::Array[PostForMe::SocialPostPreview])
      end
      def create(
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
        platform_configurations: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: PostForMe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
