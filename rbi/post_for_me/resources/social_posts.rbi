# typed: strong

module PostForMe
  module Resources
    class SocialPosts
      # Create Post
      sig do
        params(
          caption: String,
          social_accounts: T::Array[String],
          account_configurations:
            T.nilable(
              T::Array[
                PostForMe::CreateSocialPost::AccountConfiguration::OrHash
              ]
            ),
          external_id: T.nilable(String),
          is_draft: T.nilable(T::Boolean),
          media:
            T.nilable(T::Array[PostForMe::CreateSocialPost::Media::OrHash]),
          platform_configurations:
            T.nilable(PostForMe::PlatformConfigurationsDto::OrHash),
          scheduled_at: T.nilable(Time),
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::SocialPost)
      end
      def create(
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
        # Array of media URLs associated with the post
        media: nil,
        # Platform-specific configurations for the post
        platform_configurations: nil,
        # Scheduled date and time for the post, setting to null or undefined will post
        # instantly
        scheduled_at: nil,
        request_options: {}
      )
      end

      # Get Post by ID
      sig do
        params(
          id: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::SocialPost)
      end
      def retrieve(
        # Post ID
        id,
        request_options: {}
      )
      end

      # Update Post
      sig do
        params(
          id: String,
          caption: String,
          social_accounts: T::Array[String],
          account_configurations:
            T.nilable(
              T::Array[
                PostForMe::CreateSocialPost::AccountConfiguration::OrHash
              ]
            ),
          external_id: T.nilable(String),
          is_draft: T.nilable(T::Boolean),
          media:
            T.nilable(T::Array[PostForMe::CreateSocialPost::Media::OrHash]),
          platform_configurations:
            T.nilable(PostForMe::PlatformConfigurationsDto::OrHash),
          scheduled_at: T.nilable(Time),
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::SocialPost)
      end
      def update(
        # Post ID
        id,
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
        # Array of media URLs associated with the post
        media: nil,
        # Platform-specific configurations for the post
        platform_configurations: nil,
        # Scheduled date and time for the post, setting to null or undefined will post
        # instantly
        scheduled_at: nil,
        request_options: {}
      )
      end

      # Get a paginated result for posts based on the applied filters
      sig do
        params(
          external_id: T::Array[String],
          limit: Float,
          offset: Float,
          platform:
            T::Array[PostForMe::SocialPostListParams::Platform::OrSymbol],
          status: T::Array[PostForMe::SocialPostListParams::Status::OrSymbol],
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::Models::SocialPostListResponse)
      end
      def list(
        # Filter by external ID. Multiple values imply OR logic.
        external_id: nil,
        # Number of items to return
        limit: nil,
        # Number of items to skip
        offset: nil,
        # Filter by platforms. Multiple values imply OR logic.
        platform: nil,
        # Filter by post status. Multiple values imply OR logic.
        status: nil,
        request_options: {}
      )
      end

      # Delete Post
      sig do
        params(
          id: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::Models::SocialPostDeleteResponse)
      end
      def delete(
        # Post ID
        id,
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
