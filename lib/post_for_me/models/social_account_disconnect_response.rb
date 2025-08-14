# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialAccounts#disconnect
    class SocialAccountDisconnectResponse < PostForMe::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier of the social account
      #
      #   @return [String]
      required :id, String

      # @!attribute access_token
      #   The access token of the social account
      #
      #   @return [String]
      required :access_token, String

      # @!attribute access_token_expires_at
      #   The access token expiration date of the social account
      #
      #   @return [Time]
      required :access_token_expires_at, Time

      # @!attribute external_id
      #   The external id of the social account
      #
      #   @return [String, nil]
      required :external_id, String, nil?: true

      # @!attribute metadata
      #   The metadata of the social account
      #
      #   @return [Object, nil]
      required :metadata, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute platform
      #   The platform of the social account
      #
      #   @return [String]
      required :platform, String

      # @!attribute refresh_token
      #   The refresh token of the social account
      #
      #   @return [String, nil]
      required :refresh_token, String, nil?: true

      # @!attribute refresh_token_expires_at
      #   The refresh token expiration date of the social account
      #
      #   @return [Time, nil]
      required :refresh_token_expires_at, Time, nil?: true

      # @!attribute status
      #   Status of the account
      #
      #   @return [Symbol, PostForMe::Models::SocialAccountDisconnectResponse::Status]
      required :status, enum: -> { PostForMe::Models::SocialAccountDisconnectResponse::Status }

      # @!attribute user_id
      #   The platform's id of the social account
      #
      #   @return [String]
      required :user_id, String

      # @!attribute username
      #   The platform's username of the social account
      #
      #   @return [String, nil]
      required :username, String, nil?: true

      # @!method initialize(id:, access_token:, access_token_expires_at:, external_id:, metadata:, platform:, refresh_token:, refresh_token_expires_at:, status:, user_id:, username:)
      #   @param id [String] The unique identifier of the social account
      #
      #   @param access_token [String] The access token of the social account
      #
      #   @param access_token_expires_at [Time] The access token expiration date of the social account
      #
      #   @param external_id [String, nil] The external id of the social account
      #
      #   @param metadata [Object, nil] The metadata of the social account
      #
      #   @param platform [String] The platform of the social account
      #
      #   @param refresh_token [String, nil] The refresh token of the social account
      #
      #   @param refresh_token_expires_at [Time, nil] The refresh token expiration date of the social account
      #
      #   @param status [Symbol, PostForMe::Models::SocialAccountDisconnectResponse::Status] Status of the account
      #
      #   @param user_id [String] The platform's id of the social account
      #
      #   @param username [String, nil] The platform's username of the social account

      # Status of the account
      #
      # @see PostForMe::Models::SocialAccountDisconnectResponse#status
      module Status
        extend PostForMe::Internal::Type::Enum

        DISCONNECTED = :disconnected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
