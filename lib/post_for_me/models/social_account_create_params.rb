# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialAccounts#create
    class SocialAccountCreateParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

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

      # @!attribute platform
      #   The platform of the social account
      #
      #   @return [Symbol, PostForMe::Models::SocialAccountCreateParams::Platform]
      required :platform, enum: -> { PostForMe::SocialAccountCreateParams::Platform }

      # @!attribute user_id
      #   The user id of the social account
      #
      #   @return [String]
      required :user_id, String

      # @!attribute external_id
      #   The external id of the social account
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute metadata
      #   The metadata of the social account
      #
      #   @return [Object, nil]
      optional :metadata, PostForMe::Internal::Type::Unknown

      # @!attribute refresh_token
      #   The refresh token of the social account
      #
      #   @return [String, nil]
      optional :refresh_token, String, nil?: true

      # @!attribute refresh_token_expires_at
      #   The refresh token expiration date of the social account
      #
      #   @return [Time, nil]
      optional :refresh_token_expires_at, Time, nil?: true

      # @!attribute username
      #   The platform's username of the social account
      #
      #   @return [String, nil]
      optional :username, String, nil?: true

      # @!method initialize(access_token:, access_token_expires_at:, platform:, user_id:, external_id: nil, metadata: nil, refresh_token: nil, refresh_token_expires_at: nil, username: nil, request_options: {})
      #   @param access_token [String] The access token of the social account
      #
      #   @param access_token_expires_at [Time] The access token expiration date of the social account
      #
      #   @param platform [Symbol, PostForMe::Models::SocialAccountCreateParams::Platform] The platform of the social account
      #
      #   @param user_id [String] The user id of the social account
      #
      #   @param external_id [String, nil] The external id of the social account
      #
      #   @param metadata [Object] The metadata of the social account
      #
      #   @param refresh_token [String, nil] The refresh token of the social account
      #
      #   @param refresh_token_expires_at [Time, nil] The refresh token expiration date of the social account
      #
      #   @param username [String, nil] The platform's username of the social account
      #
      #   @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}]

      # The platform of the social account
      module Platform
        extend PostForMe::Internal::Type::Enum

        FACEBOOK = :facebook
        INSTAGRAM = :instagram
        X = :x
        TIKTOK = :tiktok
        YOUTUBE = :youtube
        PINTEREST = :pinterest
        LINKEDIN = :linkedin
        BLUESKY = :bluesky
        THREADS = :threads
        TIKTOK_BUSINESS = :tiktok_business

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
