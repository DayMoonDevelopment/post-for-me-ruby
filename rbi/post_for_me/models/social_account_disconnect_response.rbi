# typed: strong

module PostForMe
  module Models
    class SocialAccountDisconnectResponse < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::Models::SocialAccountDisconnectResponse,
            PostForMe::Internal::AnyHash
          )
        end

      # The unique identifier of the social account
      sig { returns(String) }
      attr_accessor :id

      # The access token of the social account
      sig { returns(String) }
      attr_accessor :access_token

      # The access token expiration date of the social account
      sig { returns(Time) }
      attr_accessor :access_token_expires_at

      # The external id of the social account
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # The metadata of the social account
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # The platform of the social account
      sig { returns(String) }
      attr_accessor :platform

      # The platform's profile photo of the social account
      sig { returns(T.nilable(String)) }
      attr_accessor :profile_photo_url

      # The refresh token of the social account
      sig { returns(T.nilable(String)) }
      attr_accessor :refresh_token

      # The refresh token expiration date of the social account
      sig { returns(T.nilable(Time)) }
      attr_accessor :refresh_token_expires_at

      # Status of the account
      sig do
        returns(
          PostForMe::Models::SocialAccountDisconnectResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The platform's id of the social account
      sig { returns(String) }
      attr_accessor :user_id

      # The platform's username of the social account
      sig { returns(T.nilable(String)) }
      attr_accessor :username

      sig do
        params(
          id: String,
          access_token: String,
          access_token_expires_at: Time,
          external_id: T.nilable(String),
          metadata: T.nilable(T.anything),
          platform: String,
          profile_photo_url: T.nilable(String),
          refresh_token: T.nilable(String),
          refresh_token_expires_at: T.nilable(Time),
          status:
            PostForMe::Models::SocialAccountDisconnectResponse::Status::OrSymbol,
          user_id: String,
          username: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the social account
        id:,
        # The access token of the social account
        access_token:,
        # The access token expiration date of the social account
        access_token_expires_at:,
        # The external id of the social account
        external_id:,
        # The metadata of the social account
        metadata:,
        # The platform of the social account
        platform:,
        # The platform's profile photo of the social account
        profile_photo_url:,
        # The refresh token of the social account
        refresh_token:,
        # The refresh token expiration date of the social account
        refresh_token_expires_at:,
        # Status of the account
        status:,
        # The platform's id of the social account
        user_id:,
        # The platform's username of the social account
        username:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            access_token: String,
            access_token_expires_at: Time,
            external_id: T.nilable(String),
            metadata: T.nilable(T.anything),
            platform: String,
            profile_photo_url: T.nilable(String),
            refresh_token: T.nilable(String),
            refresh_token_expires_at: T.nilable(Time),
            status:
              PostForMe::Models::SocialAccountDisconnectResponse::Status::TaggedSymbol,
            user_id: String,
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
          T.type_alias do
            T.all(
              Symbol,
              PostForMe::Models::SocialAccountDisconnectResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISCONNECTED =
          T.let(
            :disconnected,
            PostForMe::Models::SocialAccountDisconnectResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PostForMe::Models::SocialAccountDisconnectResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
