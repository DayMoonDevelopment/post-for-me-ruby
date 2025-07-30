# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialAccounts#retrieve
    class SocialAccountRetrieveParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
