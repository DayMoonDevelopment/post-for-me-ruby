# frozen_string_literal: true

module PostForMe
  module Resources
    class SocialPostResults
      # Get post result by ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Post Result ID
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialPostResult]
      #
      # @see PostForMe::Models::SocialPostResultRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["v1/social-post-results/%1$s", id],
          model: PostForMe::SocialPostResult,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {PostForMe::Models::SocialPostResultListParams} for more details.
      #
      # Get a paginated result for post results based on the applied filters
      #
      # @overload list(limit: nil, offset: nil, platform: nil, post_id: nil, request_options: {})
      #
      # @param limit [Float] Number of items to return
      #
      # @param offset [Float] Number of items to skip
      #
      # @param platform [Array<String>] Filter by platform(s). Multiple values imply OR logic (e.g., ?platform=x&platfor
      #
      # @param post_id [Array<String>] Filter by post IDs. Multiple values imply OR logic (e.g., ?post_id=123&post_id=4
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialPostResultListResponse]
      #
      # @see PostForMe::Models::SocialPostResultListParams
      def list(params = {})
        parsed, options = PostForMe::SocialPostResultListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/social-post-results",
          query: parsed,
          model: PostForMe::Models::SocialPostResultListResponse,
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
