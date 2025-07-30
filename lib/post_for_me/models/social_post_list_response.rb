# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialPosts#list
    class SocialPostListResponse < PostForMe::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<PostForMe::Models::SocialPost>]
      required :data, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPost] }

      # @!attribute meta
      #
      #   @return [PostForMe::Models::SocialPostListResponse::Meta]
      required :meta, -> { PostForMe::Models::SocialPostListResponse::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<PostForMe::Models::SocialPost>]
      #   @param meta [PostForMe::Models::SocialPostListResponse::Meta]

      # @see PostForMe::Models::SocialPostListResponse#meta
      class Meta < PostForMe::Internal::Type::BaseModel
        # @!attribute limit
        #   Maximum number of items returned.
        #
        #   @return [Float]
        required :limit, Float

        # @!attribute next_
        #   URL to the next page of results, or null if none.
        #
        #   @return [String, nil]
        required :next_, String, api_name: :next, nil?: true

        # @!attribute offset
        #   Number of items skipped.
        #
        #   @return [Float]
        required :offset, Float

        # @!attribute total
        #   Total number of items available.
        #
        #   @return [Float]
        required :total, Float

        # @!method initialize(limit:, next_:, offset:, total:)
        #   @param limit [Float] Maximum number of items returned.
        #
        #   @param next_ [String, nil] URL to the next page of results, or null if none.
        #
        #   @param offset [Float] Number of items skipped.
        #
        #   @param total [Float] Total number of items available.
      end
    end
  end
end
