# frozen_string_literal: true

module PostForMe
  module Resources
    # Webhooks enable you to subscribe to certain events. This involves Post for Me
    # making a POST request to the URL of any webhooks you create. Only the events you
    # subscribe to will be sent to your webhook URL.
    #
    # ## Payload
    #
    # When an event happens that your webhook is subscribed to, we will make a POST
    # request with the following JSON body
    #
    # ```
    #     {
    #         "event_type": "",
    #         "data": {}
    #     }
    # ```
    #
    # The event_type will be the event that triggered the webhook POST, data will be
    # the resulting entity from the event
    #
    # ## Security
    #
    # To verify the POST to your webhook URL is from us we will include a secret in
    # the header "Post-For-Me-Webhook-Secret". When you create a webhook you will
    # receive the secret in the response.
    #
    # ## Retries
    #
    # If your server fails to respond with a 2XX code, requests to it will be retried
    # with exponential backoff around 8 times over the course of just over a day.
    class Webhooks
      # Create Webhook
      #
      # @overload create(event_types:, url:, request_options: {})
      #
      # @param event_types [Array<Symbol, PostForMe::Models::WebhookCreateParams::EventType>] List of events the webhook will recieve
      #
      # @param url [String] Public url to recieve event data
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::Webhook]
      #
      # @see PostForMe::Models::WebhookCreateParams
      def create(params)
        parsed, options = PostForMe::WebhookCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/webhooks",
          body: parsed,
          model: PostForMe::Webhook,
          options: options
        )
      end

      # Get webhook by ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Webhook ID
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::Webhook]
      #
      # @see PostForMe::Models::WebhookRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["v1/webhooks/%1$s", id],
          model: PostForMe::Webhook,
          options: params[:request_options]
        )
      end

      # Update Webhook
      #
      # @overload update(id, event_types: nil, url: nil, request_options: {})
      #
      # @param id [String] Webhook ID
      #
      # @param event_types [Array<Symbol, PostForMe::Models::WebhookUpdateParams::EventType>] List of events the webhook will recieve
      #
      # @param url [String] Public url to recieve event data
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::Webhook]
      #
      # @see PostForMe::Models::WebhookUpdateParams
      def update(id, params = {})
        parsed, options = PostForMe::WebhookUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/webhooks/%1$s", id],
          body: parsed,
          model: PostForMe::Webhook,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {PostForMe::Models::WebhookListParams} for more details.
      #
      # Get a paginated result for webhooks based on the applied filters
      #
      # @overload list(id: nil, event_type: nil, limit: nil, offset: nil, url: nil, request_options: {})
      #
      # @param id [Array<String>] Filter by id(s). Multiple values imply OR logic (e.g., ?id=wbh_xxxxxx&id=wbh_yyy
      #
      # @param event_type [Array<String>] Filter by event type(s). Multiple values imply OR logic (e.g., ?event_type=socia
      #
      # @param limit [Float] Number of items to return
      #
      # @param offset [Float] Number of items to skip
      #
      # @param url [Array<String>] Filter by url(s). Multiple values imply OR logic (e.g., ?url=https://example.com
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::WebhookListResponse]
      #
      # @see PostForMe::Models::WebhookListParams
      def list(params = {})
        parsed, options = PostForMe::WebhookListParams.dump_request(params)
        query = PostForMe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/webhooks",
          query: query,
          model: PostForMe::Models::WebhookListResponse,
          options: options
        )
      end

      # Delete Webhook
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Webhook ID
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::DeleteEntityResponse]
      #
      # @see PostForMe::Models::WebhookDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/webhooks/%1$s", id],
          model: PostForMe::DeleteEntityResponse,
          options: params[:request_options]
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
