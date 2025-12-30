# typed: strong

module PostForMe
  module Resources
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
