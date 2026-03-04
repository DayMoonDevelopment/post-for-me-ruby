# frozen_string_literal: true

module PostForMe
  module Resources
    # The social account feed is every post made for the social account, including
    # posts not made through our API. Use this endpoint to get the platform details
    # for any post made under the connected account. To use this endpoint accounts
    # must be connected with the **"feeds" permission**.
    #
    # Details will include:
    #
    # - Post information including caption, url, media, etc..
    # - When passing **expand=metrics**, Metrics information including views, likes,
    #   follows, etc..
    #
    # Note: Currently the following platforms are supported:
    #
    # - **Instagram**, may take up to 48 hours for some metrics to be avaialbe
    # - **Facebook**
    # - **TikTok**, consumer API exposes less analytics for more details connect
    #   through TikTok Business
    # - **TikTok Business**,
    # - **Youtube**
    # - **Threads**, If using our Quickstart project then metrics are currently
    #   unavailable.
    # - **X (Twitter)**
    # - **Bluesky**, Bluesky does not expose views or impressions through their API.
    # - **Pinterest**
    # - **LinkedIn**, metrics are only available for company pages. LinkedIn has
    #   currently stopped giving permission for personal page analytics, we are on the
    #   waitlist for when they resume.
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
        query = PostForMe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["v1/social-account-feeds/%1$s", social_account_id],
          query: query,
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
