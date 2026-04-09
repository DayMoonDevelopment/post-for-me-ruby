# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialPosts#update
    class SocialPostUpdateParams < PostForMe::Models::CreateSocialPost
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:, request_options: {})
      #   @param id [String]
      #   @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
