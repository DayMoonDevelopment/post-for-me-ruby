# typed: strong

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
      # Get a paginated result for the social account based on the applied filters
      sig do
        params(
          social_account_id: String,
          cursor: String,
          expand:
            T::Array[PostForMe::SocialAccountFeedListParams::Expand::OrSymbol],
          external_post_id: T::Array[String],
          limit: Float,
          platform_post_id: T::Array[String],
          social_post_id: T::Array[String],
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::Models::SocialAccountFeedListResponse)
      end
      def list(
        # Social Account ID
        social_account_id,
        # Cursor identifying next page of results
        cursor: nil,
        # Expand additional data in the response. Currently supports: "metrics" to include
        # post analytics data.
        expand: nil,
        # Filter by Post for Me Social Postexternal ID. Multiple values imply OR logic
        # (e.g., ?external_post_id=xxxxxx&external_post_id=yyyyyy).
        external_post_id: nil,
        # Number of items to return; Note: some platforms will have different max limits,
        # in the case the provided limit is over the platform's limit we will return the
        # max allowed by the platform.
        limit: nil,
        # Filter by the platform's id(s). Multiple values imply OR logic (e.g.,
        # ?social_post_id=spr_xxxxxx&social_post_id=spr_yyyyyy).
        platform_post_id: nil,
        # Filter by Post for Me Social Post id(s). Multiple values imply OR logic (e.g.,
        # ?social_post_id=sp_xxxxxx&social_post_id=sp_yyyyyy).
        social_post_id: nil,
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
