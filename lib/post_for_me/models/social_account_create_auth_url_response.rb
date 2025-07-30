# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialAccounts#create_auth_url
    class SocialAccountCreateAuthURLResponse < PostForMe::Internal::Type::BaseModel
      # @!attribute platform
      #   The social account provider
      #
      #   @return [String]
      required :platform, String

      # @!attribute url
      #   The url to redirect the user to, in order to connect their account
      #
      #   @return [String]
      required :url, String

      # @!method initialize(platform:, url:)
      #   @param platform [String] The social account provider
      #
      #   @param url [String] The url to redirect the user to, in order to connect their account
    end
  end
end
