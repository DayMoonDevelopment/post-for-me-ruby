# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialPostResults#list
    class SocialPostResultListParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      # @!attribute limit
      #   Number of items to return
      #
      #   @return [Float, nil]
      optional :limit, Float

      # @!attribute offset
      #   Number of items to skip
      #
      #   @return [Float, nil]
      optional :offset, Float

      # @!attribute platform
      #   Filter by platform(s). Multiple values imply OR logic (e.g.,
      #   ?platform=x&platform=facebook).
      #
      #   @return [Array<String>, nil]
      optional :platform, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute post_id
      #   Filter by post IDs. Multiple values imply OR logic (e.g.,
      #   ?post_id=123&post_id=456).
      #
      #   @return [Array<String>, nil]
      optional :post_id, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute social_account_id
      #   Filter by social account ID(s). Multiple values imply OR logic (e.g.,
      #   ?social_account_id=123&social_account_id=456).
      #
      #   @return [Array<String>, nil]
      optional :social_account_id, PostForMe::Internal::Type::ArrayOf[String]

      # @!method initialize(limit: nil, offset: nil, platform: nil, post_id: nil, social_account_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::SocialPostResultListParams} for more details.
      #
      #   @param limit [Float] Number of items to return
      #
      #   @param offset [Float] Number of items to skip
      #
      #   @param platform [Array<String>] Filter by platform(s). Multiple values imply OR logic (e.g., ?platform=x&platfor
      #
      #   @param post_id [Array<String>] Filter by post IDs. Multiple values imply OR logic (e.g., ?post_id=123&post_id=4
      #
      #   @param social_account_id [Array<String>] Filter by social account ID(s). Multiple values imply OR logic (e.g., ?social_ac
      #
      #   @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
