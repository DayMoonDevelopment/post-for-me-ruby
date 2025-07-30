# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialPosts#delete
    class SocialPostDeleteResponse < PostForMe::Internal::Type::BaseModel
      # @!attribute success
      #   Whether or not the entity was deleted
      #
      #   @return [Boolean]
      required :success, PostForMe::Internal::Type::Boolean

      # @!method initialize(success:)
      #   @param success [Boolean] Whether or not the entity was deleted
    end
  end
end
