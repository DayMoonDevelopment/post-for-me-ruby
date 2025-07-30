# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialAccounts#update
    class SocialAccountUpdateParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      # @!attribute external_id
      #   The platform's external id of the social account
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute username
      #   The platform's username of the social account
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(external_id: nil, username: nil, request_options: {})
      #   @param external_id [String] The platform's external id of the social account
      #
      #   @param username [String] The platform's username of the social account
      #
      #   @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
