# typed: strong

module PostForMe
  module Models
    class SocialAccountCreateParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PostForMe::SocialAccountCreateParams,
            PostForMe::Internal::AnyHash
          )
        end

      # The access token of the social account
      sig { returns(String) }
      attr_accessor :access_token

      # The access token expiration date of the social account
      sig { returns(Time) }
      attr_accessor :access_token_expires_at

      # The platform of the social account
      sig { returns(PostForMe::SocialAccountCreateParams::Platform::OrSymbol) }
      attr_accessor :platform

      # The user id of the social account
      sig { returns(String) }
      attr_accessor :user_id

      # The external id of the social account
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # The metadata of the social account
      sig { returns(T.nilable(T.anything)) }
      attr_reader :metadata

      sig { params(metadata: T.anything).void }
      attr_writer :metadata

      # The refresh token of the social account
      sig { returns(T.nilable(String)) }
      attr_accessor :refresh_token

      # The refresh token expiration date of the social account
      sig { returns(T.nilable(Time)) }
      attr_accessor :refresh_token_expires_at

      # The platform's username of the social account
      sig { returns(T.nilable(String)) }
      attr_accessor :username

      sig do
        params(
          access_token: String,
          access_token_expires_at: Time,
          platform: PostForMe::SocialAccountCreateParams::Platform::OrSymbol,
          user_id: String,
          external_id: T.nilable(String),
          metadata: T.anything,
          refresh_token: T.nilable(String),
          refresh_token_expires_at: T.nilable(Time),
          username: T.nilable(String),
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The access token of the social account
        access_token:,
        # The access token expiration date of the social account
        access_token_expires_at:,
        # The platform of the social account
        platform:,
        # The user id of the social account
        user_id:,
        # The external id of the social account
        external_id: nil,
        # The metadata of the social account
        metadata: nil,
        # The refresh token of the social account
        refresh_token: nil,
        # The refresh token expiration date of the social account
        refresh_token_expires_at: nil,
        # The platform's username of the social account
        username: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            access_token: String,
            access_token_expires_at: Time,
            platform: PostForMe::SocialAccountCreateParams::Platform::OrSymbol,
            user_id: String,
            external_id: T.nilable(String),
            metadata: T.anything,
            refresh_token: T.nilable(String),
            refresh_token_expires_at: T.nilable(Time),
            username: T.nilable(String),
            request_options: PostForMe::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The platform of the social account
      module Platform
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::SocialAccountCreateParams::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FACEBOOK =
          T.let(
            :facebook,
            PostForMe::SocialAccountCreateParams::Platform::TaggedSymbol
          )
        INSTAGRAM =
          T.let(
            :instagram,
            PostForMe::SocialAccountCreateParams::Platform::TaggedSymbol
          )
        X =
          T.let(
            :x,
            PostForMe::SocialAccountCreateParams::Platform::TaggedSymbol
          )
        TIKTOK =
          T.let(
            :tiktok,
            PostForMe::SocialAccountCreateParams::Platform::TaggedSymbol
          )
        YOUTUBE =
          T.let(
            :youtube,
            PostForMe::SocialAccountCreateParams::Platform::TaggedSymbol
          )
        PINTEREST =
          T.let(
            :pinterest,
            PostForMe::SocialAccountCreateParams::Platform::TaggedSymbol
          )
        LINKEDIN =
          T.let(
            :linkedin,
            PostForMe::SocialAccountCreateParams::Platform::TaggedSymbol
          )
        BLUESKY =
          T.let(
            :bluesky,
            PostForMe::SocialAccountCreateParams::Platform::TaggedSymbol
          )
        THREADS =
          T.let(
            :threads,
            PostForMe::SocialAccountCreateParams::Platform::TaggedSymbol
          )
        TIKTOK_BUSINESS =
          T.let(
            :tiktok_business,
            PostForMe::SocialAccountCreateParams::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PostForMe::SocialAccountCreateParams::Platform::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
