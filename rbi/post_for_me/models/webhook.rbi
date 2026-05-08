# typed: strong

module PostForMe
  module Models
    class Webhook < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(PostForMe::Webhook, PostForMe::Internal::AnyHash) }

      # The unique identifier of the webhook
      sig { returns(String) }
      attr_accessor :id

      # Events that will be sent to the webhook
      sig { returns(T::Array[String]) }
      attr_accessor :event_types

      # Secret key used to verify webhook post
      sig { returns(String) }
      attr_accessor :secret

      # The public webhook url
      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          id: String,
          event_types: T::Array[String],
          secret: String,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the webhook
        id:,
        # Events that will be sent to the webhook
        event_types:,
        # Secret key used to verify webhook post
        secret:,
        # The public webhook url
        url:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            event_types: T::Array[String],
            secret: String,
            url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
