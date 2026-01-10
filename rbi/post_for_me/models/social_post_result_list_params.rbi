# typed: strong

module PostForMe
  module Models
    class SocialPostResultListParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PostForMe::SocialPostResultListParams,
            PostForMe::Internal::AnyHash
          )
        end

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

      # Filter by platform(s). Multiple values imply OR logic (e.g.,
      # ?platform=x&platform=facebook).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :platform

      sig { params(platform: T::Array[String]).void }
      attr_writer :platform

      # Filter by post IDs. Multiple values imply OR logic (e.g.,
      # ?post_id=123&post_id=456).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :post_id

      sig { params(post_id: T::Array[String]).void }
      attr_writer :post_id

      # Filter by social account ID(s). Multiple values imply OR logic (e.g.,
      # ?social_account_id=123&social_account_id=456).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :social_account_id

      sig { params(social_account_id: T::Array[String]).void }
      attr_writer :social_account_id

      sig do
        params(
          limit: Float,
          offset: Float,
          platform: T::Array[String],
          post_id: T::Array[String],
          social_account_id: T::Array[String],
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Number of items to return
        limit: nil,
        # Number of items to skip
        offset: nil,
        # Filter by platform(s). Multiple values imply OR logic (e.g.,
        # ?platform=x&platform=facebook).
        platform: nil,
        # Filter by post IDs. Multiple values imply OR logic (e.g.,
        # ?post_id=123&post_id=456).
        post_id: nil,
        # Filter by social account ID(s). Multiple values imply OR logic (e.g.,
        # ?social_account_id=123&social_account_id=456).
        social_account_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            limit: Float,
            offset: Float,
            platform: T::Array[String],
            post_id: T::Array[String],
            social_account_id: T::Array[String],
            request_options: PostForMe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
