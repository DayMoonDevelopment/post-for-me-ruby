# typed: strong

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
      sig do
        params(
          event_types:
            T::Array[PostForMe::WebhookCreateParams::EventType::OrSymbol],
          url: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::Webhook)
      end
      def create(
        # List of events the webhook will recieve
        event_types:,
        # Public url to recieve event data
        url:,
        request_options: {}
      )
      end

      # Get webhook by ID
      sig do
        params(
          id: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::Webhook)
      end
      def retrieve(
        # Webhook ID
        id,
        request_options: {}
      )
      end

      # Update Webhook
      sig do
        params(
          id: String,
          event_types:
            T::Array[PostForMe::WebhookUpdateParams::EventType::OrSymbol],
          url: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::Webhook)
      end
      def update(
        # Webhook ID
        id,
        # List of events the webhook will recieve
        event_types: nil,
        # Public url to recieve event data
        url: nil,
        request_options: {}
      )
      end

      # Get a paginated result for webhooks based on the applied filters
      sig do
        params(
          id: T::Array[String],
          event_type: T::Array[String],
          limit: Float,
          offset: Float,
          url: T::Array[String],
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::Models::WebhookListResponse)
      end
      def list(
        # Filter by id(s). Multiple values imply OR logic (e.g.,
        # ?id=wbh_xxxxxx&id=wbh_yyyyyy).
        id: nil,
        # Filter by event type(s). Multiple values imply OR logic (e.g.,
        # ?event_type=social.post.created&event_type=social.post.updated).
        event_type: nil,
        # Number of items to return
        limit: nil,
        # Number of items to skip
        offset: nil,
        # Filter by url(s). Multiple values imply OR logic (e.g.,
        # ?url=https://example.com&url=https://postforme.dev).
        url: nil,
        request_options: {}
      )
      end

      # Delete Webhook
      sig do
        params(
          id: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::DeleteEntityResponse)
      end
      def delete(
        # Webhook ID
        id,
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
