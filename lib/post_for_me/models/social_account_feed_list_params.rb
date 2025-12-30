# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialAccountFeeds#list
    class SocialAccountFeedListParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      # @!attribute cursor
      #   Cursor identifying next page of results
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute expand
      #   Expand additional data in the response. Currently supports: "metrics" to include
      #   post analytics data.
      #
      #   @return [Array<Symbol, PostForMe::Models::SocialAccountFeedListParams::Expand>, nil]
      optional :expand,
               -> { PostForMe::Internal::Type::ArrayOf[enum: PostForMe::SocialAccountFeedListParams::Expand] }

      # @!attribute external_post_id
      #   Filter by Post for Me Social Postexternal ID. Multiple values imply OR logic
      #   (e.g., ?external_post_id=xxxxxx&external_post_id=yyyyyy).
      #
      #   @return [Array<String>, nil]
      optional :external_post_id, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute limit
      #   Number of items to return; Note: some platforms will have different max limits,
      #   in the case the provided limit is over the platform's limit we will return the
      #   max allowed by the platform.
      #
      #   @return [Float, nil]
      optional :limit, Float

      # @!attribute platform_post_id
      #   Filter by the platform's id(s). Multiple values imply OR logic (e.g.,
      #   ?social_post_id=spr_xxxxxx&social_post_id=spr_yyyyyy).
      #
      #   @return [Array<String>, nil]
      optional :platform_post_id, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute social_post_id
      #   Filter by Post for Me Social Post id(s). Multiple values imply OR logic (e.g.,
      #   ?social_post_id=sp_xxxxxx&social_post_id=sp_yyyyyy).
      #
      #   @return [Array<String>, nil]
      optional :social_post_id, PostForMe::Internal::Type::ArrayOf[String]

      # @!method initialize(cursor: nil, expand: nil, external_post_id: nil, limit: nil, platform_post_id: nil, social_post_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::SocialAccountFeedListParams} for more details.
      #
      #   @param cursor [String] Cursor identifying next page of results
      #
      #   @param expand [Array<Symbol, PostForMe::Models::SocialAccountFeedListParams::Expand>] Expand additional data in the response. Currently supports: "metrics" to include
      #
      #   @param external_post_id [Array<String>] Filter by Post for Me Social Postexternal ID. Multiple values imply OR logic (e.
      #
      #   @param limit [Float] Number of items to return; Note: some platforms will have different max limits,
      #
      #   @param platform_post_id [Array<String>] Filter by the platform's id(s). Multiple values imply OR logic (e.g., ?social_po
      #
      #   @param social_post_id [Array<String>] Filter by Post for Me Social Post id(s). Multiple values imply OR logic (e.g., ?
      #
      #   @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}]

      module Expand
        extend PostForMe::Internal::Type::Enum

        METRICS = :metrics

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
