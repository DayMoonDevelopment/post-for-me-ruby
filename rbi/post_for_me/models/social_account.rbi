# typed: strong

module PostForMe
  module Models
    class SocialAccount < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::SocialAccount, PostForMe::Internal::AnyHash)
        end

      # The unique identifier of the social account
      sig { returns(String) }
      attr_accessor :id

      # The external id of the social account
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # The platform of the social account
      sig { returns(String) }
      attr_accessor :platform

      # Status of the account
      sig { returns(PostForMe::SocialAccount::Status::TaggedSymbol) }
      attr_accessor :status

      # The platform's username of the social account
      sig { returns(T.nilable(String)) }
      attr_accessor :username

      sig do
        params(
          id: String,
          external_id: T.nilable(String),
          platform: String,
          status: PostForMe::SocialAccount::Status::OrSymbol,
          username: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the social account
        id:,
        # The external id of the social account
        external_id:,
        # The platform of the social account
        platform:,
        # Status of the account
        status:,
        # The platform's username of the social account
        username:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            external_id: T.nilable(String),
            platform: String,
            status: PostForMe::SocialAccount::Status::TaggedSymbol,
            username: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Status of the account
      module Status
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, PostForMe::SocialAccount::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONNECTED =
          T.let(:connected, PostForMe::SocialAccount::Status::TaggedSymbol)
        DISCONNECTED =
          T.let(:disconnected, PostForMe::SocialAccount::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[PostForMe::SocialAccount::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
