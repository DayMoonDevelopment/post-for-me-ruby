# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::Webhooks#create
    class Webhook < PostForMe::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier of the webhook
      #
      #   @return [String]
      required :id, String

      # @!attribute event_types
      #   Events that will be sent to the webhook
      #
      #   @return [Array<String>]
      required :event_types, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute secret
      #   Secret key used to verify webhook post
      #
      #   @return [String]
      required :secret, String

      # @!attribute url
      #   The public webhook url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(id:, event_types:, secret:, url:)
      #   @param id [String] The unique identifier of the webhook
      #
      #   @param event_types [Array<String>] Events that will be sent to the webhook
      #
      #   @param secret [String] Secret key used to verify webhook post
      #
      #   @param url [String] The public webhook url
    end
  end
end
