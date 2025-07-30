# typed: strong

module PostForMe
  module Resources
    class SocialPostResults
      # Get post result by ID
      sig do
        params(
          id: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::SocialPostResult)
      end
      def retrieve(
        # Post Result ID
        id,
        request_options: {}
      )
      end

      # Get a paginated result for post results based on the applied filters
      sig do
        params(
          limit: Float,
          offset: Float,
          platform: T::Array[String],
          post_id: T::Array[String],
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::Models::SocialPostResultListResponse)
      end
      def list(
        # Number of items to return
        limit: nil,
        # Number of items to skip
        offset: nil,
        # Filter by platform(s). Multiple values imply OR logic (e.g.,
        # ?platform=x&platform=facebook).
        platform: nil,
        # Filter by post IDs. Multiple values imply OR logic (e.g.,
        # ?post_id=123&post_id=456).
        post_id: nil,
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
