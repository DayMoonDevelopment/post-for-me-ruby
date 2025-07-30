# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialAccounts#list
    class SocialAccountListResponse < PostForMe::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<PostForMe::Models::SocialAccount>]
      required :data, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialAccount] }

      # @!attribute meta
      #
      #   @return [PostForMe::Models::SocialAccountListResponse::Meta]
      required :meta, -> { PostForMe::Models::SocialAccountListResponse::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<PostForMe::Models::SocialAccount>]
      #   @param meta [PostForMe::Models::SocialAccountListResponse::Meta]

      # @see PostForMe::Models::SocialAccountListResponse#meta
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
