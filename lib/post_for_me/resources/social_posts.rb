# frozen_string_literal: true

module PostForMe
  module Resources
    class SocialPosts
      # Some parameter documentations has been truncated, see
      # {PostForMe::Models::SocialPostCreateParams} for more details.
      #
      # Create Post
      #
      # @overload create(caption:, social_accounts:, account_configurations: nil, external_id: nil, is_draft: nil, media: nil, platform_configurations: nil, scheduled_at: nil, request_options: {})
      #
      # @param caption [String] Caption text for the post
      #
      # @param social_accounts [Array<String>] Array of social account IDs for posting
      #
      # @param account_configurations [Array<PostForMe::Models::CreateSocialPost::AccountConfiguration>, nil] Account-specific configurations for the post
      #
      # @param external_id [String, nil] Array of social account IDs for posting
      #
      # @param is_draft [Boolean, nil] If isDraft is set then the post will not be processed
      #
      # @param media [Array<PostForMe::Models::CreateSocialPost::Media>, nil] Array of media URLs associated with the post
      #
      # @param platform_configurations [PostForMe::Models::PlatformConfigurationsDto, nil] Platform-specific configurations for the post
      #
      # @param scheduled_at [Time, nil] Scheduled date and time for the post, setting to null or undefined will post ins
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialPost]
      #
      # @see PostForMe::Models::SocialPostCreateParams
      def create(params)
        parsed, options = PostForMe::SocialPostCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/social-posts",
          body: parsed,
          model: PostForMe::SocialPost,
          options: options
        )
      end

      # Get Post by ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Post ID
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialPost]
      #
      # @see PostForMe::Models::SocialPostRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["v1/social-posts/%1$s", id],
          model: PostForMe::SocialPost,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {PostForMe::Models::SocialPostUpdateParams} for more details.
      #
      # Update Post
      #
      # @overload update(id, caption:, social_accounts:, account_configurations: nil, external_id: nil, is_draft: nil, media: nil, platform_configurations: nil, scheduled_at: nil, request_options: {})
      #
      # @param id [String] Post ID
      #
      # @param caption [String] Caption text for the post
      #
      # @param social_accounts [Array<String>] Array of social account IDs for posting
      #
      # @param account_configurations [Array<PostForMe::Models::CreateSocialPost::AccountConfiguration>, nil] Account-specific configurations for the post
      #
      # @param external_id [String, nil] Array of social account IDs for posting
      #
      # @param is_draft [Boolean, nil] If isDraft is set then the post will not be processed
      #
      # @param media [Array<PostForMe::Models::CreateSocialPost::Media>, nil] Array of media URLs associated with the post
      #
      # @param platform_configurations [PostForMe::Models::PlatformConfigurationsDto, nil] Platform-specific configurations for the post
      #
      # @param scheduled_at [Time, nil] Scheduled date and time for the post, setting to null or undefined will post ins
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialPost]
      #
      # @see PostForMe::Models::SocialPostUpdateParams
      def update(id, params)
        parsed, options = PostForMe::SocialPostUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/social-posts/%1$s", id],
          body: parsed,
          model: PostForMe::SocialPost,
          options: options
        )
      end

      # Get a paginated result for posts based on the applied filters
      #
      # @overload list(external_id: nil, limit: nil, offset: nil, platform: nil, status: nil, request_options: {})
      #
      # @param external_id [Array<String>] Filter by external ID. Multiple values imply OR logic.
      #
      # @param limit [Float] Number of items to return
      #
      # @param offset [Float] Number of items to skip
      #
      # @param platform [Array<Symbol, PostForMe::Models::SocialPostListParams::Platform>] Filter by platforms. Multiple values imply OR logic.
      #
      # @param status [Array<Symbol, PostForMe::Models::SocialPostListParams::Status>] Filter by post status. Multiple values imply OR logic.
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialPostListResponse]
      #
      # @see PostForMe::Models::SocialPostListParams
      def list(params = {})
        parsed, options = PostForMe::SocialPostListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/social-posts",
          query: parsed,
          model: PostForMe::Models::SocialPostListResponse,
          options: options
        )
      end

      # Delete Post
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Post ID
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialPostDeleteResponse]
      #
      # @see PostForMe::Models::SocialPostDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/social-posts/%1$s", id],
          model: PostForMe::Models::SocialPostDeleteResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [PostForMe::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
