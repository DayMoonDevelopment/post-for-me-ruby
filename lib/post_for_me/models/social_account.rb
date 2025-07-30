# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialAccounts#retrieve
    class SocialAccount < PostForMe::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier of the social account
      #
      #   @return [String]
      required :id, String

      # @!attribute external_id
      #   The external id of the social account
      #
      #   @return [String, nil]
      required :external_id, String, nil?: true

      # @!attribute platform
      #   The platform of the social account
      #
      #   @return [String]
      required :platform, String

      # @!attribute status
      #   Status of the account
      #
      #   @return [Symbol, PostForMe::Models::SocialAccount::Status]
      required :status, enum: -> { PostForMe::SocialAccount::Status }

      # @!attribute username
      #   The platform's username of the social account
      #
      #   @return [String, nil]
      required :username, String, nil?: true

      # @!method initialize(id:, external_id:, platform:, status:, username:)
      #   @param id [String] The unique identifier of the social account
      #
      #   @param external_id [String, nil] The external id of the social account
      #
      #   @param platform [String] The platform of the social account
      #
      #   @param status [Symbol, PostForMe::Models::SocialAccount::Status] Status of the account
      #
      #   @param username [String, nil] The platform's username of the social account

      # Status of the account
      #
      # @see PostForMe::Models::SocialAccount#status
      module Status
        extend PostForMe::Internal::Type::Enum

        CONNECTED = :connected
        DISCONNECTED = :disconnected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
