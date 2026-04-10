# typed: strong

module PostForMe
  module Models
    class SocialAccountListParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PostForMe::SocialAccountListParams,
            PostForMe::Internal::AnyHash
          )
        end

      # Filter by id(s). Multiple values imply OR logic (e.g.,
      # ?id=spc_xxxxxx&id=spc_yyyyyy).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :id

      sig { params(id: T::Array[String]).void }
      attr_writer :id

      # Filter by externalId(s). Multiple values imply OR logic (e.g.,
      # ?externalId=test&externalId=test2).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :external_id

      sig { params(external_id: T::Array[String]).void }
      attr_writer :external_id

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

      # Filter by status. Multiple values imply OR logic (e.g.,
      # ?status=connected&status=disconnected).
      sig do
        returns(
          T.nilable(
            T::Array[PostForMe::SocialAccountListParams::Status::OrSymbol]
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: T::Array[PostForMe::SocialAccountListParams::Status::OrSymbol]
        ).void
      end
      attr_writer :status

      # Filter by username(s). Multiple values imply OR logic (e.g.,
      # ?username=test&username=test2).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :username

      sig { params(username: T::Array[String]).void }
      attr_writer :username

      sig do
        params(
          id: T::Array[String],
          external_id: T::Array[String],
          limit: Float,
          offset: Float,
          platform: T::Array[String],
          status:
            T::Array[PostForMe::SocialAccountListParams::Status::OrSymbol],
          username: T::Array[String],
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by id(s). Multiple values imply OR logic (e.g.,
        # ?id=spc_xxxxxx&id=spc_yyyyyy).
        id: nil,
        # Filter by externalId(s). Multiple values imply OR logic (e.g.,
        # ?externalId=test&externalId=test2).
        external_id: nil,
        # Number of items to return
        limit: nil,
        # Number of items to skip
        offset: nil,
        # Filter by platform(s). Multiple values imply OR logic (e.g.,
        # ?platform=x&platform=facebook).
        platform: nil,
        # Filter by status. Multiple values imply OR logic (e.g.,
        # ?status=connected&status=disconnected).
        status: nil,
        # Filter by username(s). Multiple values imply OR logic (e.g.,
        # ?username=test&username=test2).
        username: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: T::Array[String],
            external_id: T::Array[String],
            limit: Float,
            offset: Float,
            platform: T::Array[String],
            status:
              T::Array[PostForMe::SocialAccountListParams::Status::OrSymbol],
            username: T::Array[String],
            request_options: PostForMe::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Status
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::SocialAccountListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONNECTED =
          T.let(
            :connected,
            PostForMe::SocialAccountListParams::Status::TaggedSymbol
          )
        DISCONNECTED =
          T.let(
            :disconnected,
            PostForMe::SocialAccountListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[PostForMe::SocialAccountListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
