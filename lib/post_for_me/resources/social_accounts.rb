# frozen_string_literal: true

module PostForMe
  module Resources
    class SocialAccounts
      # If a social account with the same platform and user_id already exists, it will
      # be updated. If not, a new social account will be created.
      #
      # @overload create(access_token:, access_token_expires_at:, platform:, user_id:, external_id: nil, metadata: nil, refresh_token: nil, refresh_token_expires_at: nil, username: nil, request_options: {})
      #
      # @param access_token [String] The access token of the social account
      #
      # @param access_token_expires_at [Time] The access token expiration date of the social account
      #
      # @param platform [Symbol, PostForMe::Models::SocialAccountCreateParams::Platform] The platform of the social account
      #
      # @param user_id [String] The user id of the social account
      #
      # @param external_id [String, nil] The external id of the social account
      #
      # @param metadata [Object] The metadata of the social account
      #
      # @param refresh_token [String, nil] The refresh token of the social account
      #
      # @param refresh_token_expires_at [Time, nil] The refresh token expiration date of the social account
      #
      # @param username [String, nil] The platform's username of the social account
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialAccount]
      #
      # @see PostForMe::Models::SocialAccountCreateParams
      def create(params)
        parsed, options = PostForMe::SocialAccountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/social-accounts",
          body: parsed,
          model: PostForMe::SocialAccount,
          options: options
        )
      end

      # Get social account by ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Social Account ID
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialAccount]
      #
      # @see PostForMe::Models::SocialAccountRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["v1/social-accounts/%1$s", id],
          model: PostForMe::SocialAccount,
          options: params[:request_options]
        )
      end

      # Update social account
      #
      # @overload update(id, external_id: nil, username: nil, request_options: {})
      #
      # @param id [String] Social Account ID
      #
      # @param external_id [String] The platform's external id of the social account
      #
      # @param username [String] The platform's username of the social account
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialAccount]
      #
      # @see PostForMe::Models::SocialAccountUpdateParams
      def update(id, params = {})
        parsed, options = PostForMe::SocialAccountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/social-accounts/%1$s", id],
          body: parsed,
          model: PostForMe::SocialAccount,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {PostForMe::Models::SocialAccountListParams} for more details.
      #
      # Get a paginated result for social accounts based on the applied filters
      #
      # @overload list(id: nil, external_id: nil, limit: nil, offset: nil, platform: nil, username: nil, request_options: {})
      #
      # @param id [Array<String>] Filter by id(s). Multiple values imply OR logic (e.g., ?id=spc_xxxxxx&id=spc_yyy
      #
      # @param external_id [Array<String>] Filter by externalId(s). Multiple values imply OR logic (e.g., ?externalId=test&
      #
      # @param limit [Float] Number of items to return
      #
      # @param offset [Float] Number of items to skip
      #
      # @param platform [Array<String>] Filter by platform(s). Multiple values imply OR logic (e.g., ?platform=x&platfor
      #
      # @param username [Array<String>] Filter by username(s). Multiple values imply OR logic (e.g., ?username=test&user
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialAccountListResponse]
      #
      # @see PostForMe::Models::SocialAccountListParams
      def list(params = {})
        parsed, options = PostForMe::SocialAccountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/social-accounts",
          query: parsed,
          model: PostForMe::Models::SocialAccountListResponse,
          options: options
        )
      end

      # Generates a URL that initiates the authentication flow for a user's social media
      # account. When visited, the user is redirected to the selected social platform's
      # login/authorization page. Upon successful authentication, they are redirected
      # back to your application
      #
      # @overload create_auth_url(platform:, external_id: nil, platform_data: nil, request_options: {})
      #
      # @param platform [String] The social account provider
      #
      # @param external_id [String] Your unique identifier for the social account
      #
      # @param platform_data [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData] Additional data needed for the provider
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialAccountCreateAuthURLResponse]
      #
      # @see PostForMe::Models::SocialAccountCreateAuthURLParams
      def create_auth_url(params)
        parsed, options = PostForMe::SocialAccountCreateAuthURLParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/social-accounts/auth-url",
          body: parsed,
          model: PostForMe::Models::SocialAccountCreateAuthURLResponse,
          options: options
        )
      end

      # Disconnecting an account with remove all auth tokens and mark the account as
      # disconnected. The record of the account will be kept and can be retrieved and
      # reconnected by the owner of the account.
      #
      # @overload disconnect(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::SocialAccountDisconnectResponse]
      #
      # @see PostForMe::Models::SocialAccountDisconnectParams
      def disconnect(id, params = {})
        @client.request(
          method: :post,
          path: ["v1/social-accounts/%1$s/disconnect", id],
          model: PostForMe::Models::SocialAccountDisconnectResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [PostForMe::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
