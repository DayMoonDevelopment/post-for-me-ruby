# typed: strong

module PostForMe
  module Models
    class WebhookCreateParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(PostForMe::WebhookCreateParams, PostForMe::Internal::AnyHash)
        end

      # List of events the webhook will recieve
      sig do
        returns(T::Array[PostForMe::WebhookCreateParams::EventType::OrSymbol])
      end
      attr_accessor :event_types

      # Public url to recieve event data
      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          event_types:
            T::Array[PostForMe::WebhookCreateParams::EventType::OrSymbol],
          url: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # List of events the webhook will recieve
        event_types:,
        # Public url to recieve event data
        url:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            event_types:
              T::Array[PostForMe::WebhookCreateParams::EventType::OrSymbol],
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
            T.all(Symbol, PostForMe::WebhookCreateParams::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOCIAL_POST_CREATED =
          T.let(
            :"social.post.created",
            PostForMe::WebhookCreateParams::EventType::TaggedSymbol
          )
        SOCIAL_POST_UPDATED =
          T.let(
            :"social.post.updated",
            PostForMe::WebhookCreateParams::EventType::TaggedSymbol
          )
        SOCIAL_POST_DELETED =
          T.let(
            :"social.post.deleted",
            PostForMe::WebhookCreateParams::EventType::TaggedSymbol
          )
        SOCIAL_POST_RESULT_CREATED =
          T.let(
            :"social.post.result.created",
            PostForMe::WebhookCreateParams::EventType::TaggedSymbol
          )
        SOCIAL_ACCOUNT_CREATED =
          T.let(
            :"social.account.created",
            PostForMe::WebhookCreateParams::EventType::TaggedSymbol
          )
        SOCIAL_ACCOUNT_UPDATED =
          T.let(
            :"social.account.updated",
            PostForMe::WebhookCreateParams::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[PostForMe::WebhookCreateParams::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
