# typed: strong

module PostForMe
  module Models
    class WebhookListParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(PostForMe::WebhookListParams, PostForMe::Internal::AnyHash)
        end

      # Filter by id(s). Multiple values imply OR logic (e.g.,
      # ?id=wbh_xxxxxx&id=wbh_yyyyyy).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      # Filter by event type(s). Multiple values imply OR logic (e.g.,
      # ?event_type=social.post.created&event_type=social.post.updated).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :event_type

      sig { params(event_type: T::Array[String]).void }
      attr_writer :event_type

      # Number of items to return
      sig { returns(T.nilable(Float)) }
      attr_reader :limit

      sig { params(limit: Float).void }
      attr_writer :limit

      # Number of items to skip
      sig { returns(T.nilable(Float)) }
      attr_reader :offset

      sig { params(offset: Float).void }
      attr_writer :offset

      # Filter by url(s). Multiple values imply OR logic (e.g.,
      # ?url=https://example.com&url=https://postforme.dev).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :url

      sig { params(url: T::Array[String]).void }
      attr_writer :url

      sig do
        params(
          id: T::Array[String],
          event_type: T::Array[String],
          limit: Float,
          offset: Float,
          url: T::Array[String],
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            id: T::Array[String],
            event_type: T::Array[String],
            limit: Float,
            offset: Float,
            url: T::Array[String],
            request_options: PostForMe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
