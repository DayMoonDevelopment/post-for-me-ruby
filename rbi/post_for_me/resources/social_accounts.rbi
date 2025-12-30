# typed: strong

module PostForMe
  module Resources
    class SocialAccounts
      # If a social account with the same platform and user_id already exists, it will
      # be updated. If not, a new social account will be created.
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
        ).returns(PostForMe::SocialAccount)
      end
      def create(
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

      # Get social account by ID
      sig do
        params(
          id: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::SocialAccount)
      end
      def retrieve(
        # Social Account ID
        id,
        request_options: {}
      )
      end

      # Update social account
      sig do
        params(
          id: String,
          external_id: String,
          username: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::SocialAccount)
      end
      def update(
        # Social Account ID
        id,
        # The platform's external id of the social account
        external_id: nil,
        # The platform's username of the social account
        username: nil,
        request_options: {}
      )
      end

      # Get a paginated result for social accounts based on the applied filters
      sig do
        params(
          id: T::Array[String],
          external_id: T::Array[String],
          limit: Float,
          offset: Float,
          platform: T::Array[String],
          username: T::Array[String],
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::Models::SocialAccountListResponse)
      end
      def list(
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
        # Filter by username(s). Multiple values imply OR logic (e.g.,
        # ?username=test&username=test2).
        username: nil,
        request_options: {}
      )
      end

      # Generates a URL that initiates the authentication flow for a user's social media
      # account. When visited, the user is redirected to the selected social platform's
      # login/authorization page. Upon successful authentication, they are redirected
      # back to your application
      sig do
        params(
          platform: String,
          external_id: String,
          permissions:
            T::Array[
              PostForMe::SocialAccountCreateAuthURLParams::Permission::OrSymbol
            ],
          platform_data:
            PostForMe::SocialAccountCreateAuthURLParams::PlatformData::OrHash,
          redirect_url_override: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::Models::SocialAccountCreateAuthURLResponse)
      end
      def create_auth_url(
        # The social account provider
        platform:,
        # Your unique identifier for the social account
        external_id: nil,
        # List of permissions you want to allow. Will default to only post permissions.
        # You must include the "feeds" permission to request an account feed and metrics
        permissions: nil,
        # Additional data needed for the provider
        platform_data: nil,
        # Override the default redirect URL for the OAuth flow. If provided, this URL will
        # be used instead of our redirect URL. Make sure this URL is included in your
        # app's authorized redirect urls. This override will not work when using our
        # system credientals.
        redirect_url_override: nil,
        request_options: {}
      )
      end

      # Disconnecting an account with remove all auth tokens and mark the account as
      # disconnected. The record of the account will be kept and can be retrieved and
      # reconnected by the owner of the account.
      sig do
        params(
          id: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(PostForMe::Models::SocialAccountDisconnectResponse)
      end
      def disconnect(id, request_options: {})
      end

      # @api private
      sig { params(client: PostForMe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
