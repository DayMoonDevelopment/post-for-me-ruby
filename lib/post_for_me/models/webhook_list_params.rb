# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::Webhooks#list
    class WebhookListParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      # @!attribute id
      #   Filter by id(s). Multiple values imply OR logic (e.g.,
      #   ?id=wbh_xxxxxx&id=wbh_yyyyyy).
      #
      #   @return [Array<String>, nil]
      optional :id, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute event_type
      #   Filter by event type(s). Multiple values imply OR logic (e.g.,
      #   ?event_type=social.post.created&event_type=social.post.updated).
      #
      #   @return [Array<String>, nil]
      optional :event_type, PostForMe::Internal::Type::ArrayOf[String]

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

      # @!attribute url
      #   Filter by url(s). Multiple values imply OR logic (e.g.,
      #   ?url=https://example.com&url=https://postforme.dev).
      #
      #   @return [Array<String>, nil]
      optional :url, PostForMe::Internal::Type::ArrayOf[String]

      # @!method initialize(id: nil, event_type: nil, limit: nil, offset: nil, url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::WebhookListParams} for more details.
      #
      #   @param id [Array<String>] Filter by id(s). Multiple values imply OR logic (e.g., ?id=wbh_xxxxxx&id=wbh_yyy
      #
      #   @param event_type [Array<String>] Filter by event type(s). Multiple values imply OR logic (e.g., ?event_type=socia
      #
      #   @param limit [Float] Number of items to return
      #
      #   @param offset [Float] Number of items to skip
      #
      #   @param url [Array<String>] Filter by url(s). Multiple values imply OR logic (e.g., ?url=https://example.com
      #
      #   @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
