# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialAccounts#list
    class SocialAccountListParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      # @!attribute id
      #   Filter by id(s). Multiple values imply OR logic (e.g.,
      #   ?id=spc_xxxxxx&id=spc_yyyyyy).
      #
      #   @return [Array<String>, nil]
      optional :id, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute external_id
      #   Filter by externalId(s). Multiple values imply OR logic (e.g.,
      #   ?externalId=test&externalId=test2).
      #
      #   @return [Array<String>, nil]
      optional :external_id, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute limit
      #   Number of items to return
      #
      #   @return [Float, nil]
      optional :limit, Float

      # @!attribute offset
      #   Number of items to skip
      #
      #   @return [Float, nil]
      optional :offset, Float

      # @!attribute platform
      #   Filter by platform(s). Multiple values imply OR logic (e.g.,
      #   ?platform=x&platform=facebook).
      #
      #   @return [Array<String>, nil]
      optional :platform, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute username
      #   Filter by username(s). Multiple values imply OR logic (e.g.,
      #   ?username=test&username=test2).
      #
      #   @return [Array<String>, nil]
      optional :username, PostForMe::Internal::Type::ArrayOf[String]

      # @!method initialize(id: nil, external_id: nil, limit: nil, offset: nil, platform: nil, username: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::SocialAccountListParams} for more details.
      #
      #   @param id [Array<String>] Filter by id(s). Multiple values imply OR logic (e.g., ?id=spc_xxxxxx&id=spc_yyy
      #
      #   @param external_id [Array<String>] Filter by externalId(s). Multiple values imply OR logic (e.g., ?externalId=test&
      #
      #   @param limit [Float] Number of items to return
      #
      #   @param offset [Float] Number of items to skip
      #
      #   @param platform [Array<String>] Filter by platform(s). Multiple values imply OR logic (e.g., ?platform=x&platfor
      #
      #   @param username [Array<String>] Filter by username(s). Multiple values imply OR logic (e.g., ?username=test&user
      #
      #   @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
