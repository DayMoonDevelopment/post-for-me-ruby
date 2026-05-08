# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::Webhooks#list
    class WebhookListResponse < PostForMe::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<PostForMe::Models::Webhook>]
      required :data, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::Webhook] }

      # @!attribute meta
      #
      #   @return [PostForMe::Models::WebhookListResponse::Meta]
      required :meta, -> { PostForMe::Models::WebhookListResponse::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<PostForMe::Models::Webhook>]
      #   @param meta [PostForMe::Models::WebhookListResponse::Meta]

      # @see PostForMe::Models::WebhookListResponse#meta
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
