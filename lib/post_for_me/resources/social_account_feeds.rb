# frozen_string_literal: true

module PostForMe
  module Resources
    class SocialAccountFeeds
      # Some parameter documentations has been truncated, see
      # {PostForMe::Models::SocialAccountFeedListParams} for more details.
      #
      # Get a paginated result for the social account based on the applied filters
      #
      # @overload list(social_account_id, cursor: nil, expand: nil, external_post_id: nil, limit: nil, platform_post_id: nil, social_post_id: nil, request_options: {})
      #
      # @param social_account_id [String] Social Account ID
      #
      # @param cursor [String] Cursor identifying next page of results
      #
      # @param expand [Array<Symbol, PostForMe::Models::SocialAccountFeedListParams::Expand>] Expand additional data in the response. Currently supports: "metrics" to include
      #
      # @param external_post_id [Array<String>] Filter by Post for Me Social Postexternal ID. Multiple values imply OR logic (e.
      #
      # @param limit [Float] Number of items to return; Note: some platforms will have different max limits,
      #
      # @param platform_post_id [Array<String>] Filter by the platform's id(s). Multiple values imply OR logic (e.g., ?social_po
      #
      # @param social_post_id [Array<String>] Filter by Post for Me Social Post id(s). Multiple values imply OR logic (e.g., ?
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialAccountFeedListResponse]
      #
      # @see PostForMe::Models::SocialAccountFeedListParams
      def list(social_account_id, params = {})
        parsed, options = PostForMe::SocialAccountFeedListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/social-account-feeds/%1$s", social_account_id],
          query: parsed,
          model: PostForMe::Models::SocialAccountFeedListResponse,
          options: options
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
