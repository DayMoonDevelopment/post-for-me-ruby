# typed: strong

module PostForMe
  module Models
    class WebhookUpdateParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(PostForMe::WebhookUpdateParams, PostForMe::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # List of events the webhook will recieve
      sig do
        returns(
          T.nilable(
            T::Array[PostForMe::WebhookUpdateParams::EventType::OrSymbol]
          )
        )
      end
      attr_reader :event_types

      sig do
        params(
          event_types:
            T::Array[PostForMe::WebhookUpdateParams::EventType::OrSymbol]
        ).void
      end
      attr_writer :event_types

      # Public url to recieve event data
      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      sig do
        params(
          id: String,
          event_types:
            T::Array[PostForMe::WebhookUpdateParams::EventType::OrSymbol],
          url: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # List of events the webhook will recieve
        event_types: nil,
        # Public url to recieve event data
        url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            event_types:
              T::Array[PostForMe::WebhookUpdateParams::EventType::OrSymbol],
            url: String,
            request_options: PostForMe::RequestOptions
          }
        )
      end
      def to_hash
      end

      module EventType
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::WebhookUpdateParams::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOCIAL_POST_CREATED =
          T.let(
            :"social.post.created",
            PostForMe::WebhookUpdateParams::EventType::TaggedSymbol
          )
        SOCIAL_POST_UPDATED =
          T.let(
            :"social.post.updated",
            PostForMe::WebhookUpdateParams::EventType::TaggedSymbol
          )
        SOCIAL_POST_DELETED =
          T.let(
            :"social.post.deleted",
            PostForMe::WebhookUpdateParams::EventType::TaggedSymbol
          )
        SOCIAL_POST_RESULT_CREATED =
          T.let(
            :"social.post.result.created",
            PostForMe::WebhookUpdateParams::EventType::TaggedSymbol
          )
        SOCIAL_ACCOUNT_CREATED =
          T.let(
            :"social.account.created",
            PostForMe::WebhookUpdateParams::EventType::TaggedSymbol
          )
        SOCIAL_ACCOUNT_UPDATED =
          T.let(
            :"social.account.updated",
            PostForMe::WebhookUpdateParams::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[PostForMe::WebhookUpdateParams::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
