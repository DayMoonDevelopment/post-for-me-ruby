# frozen_string_literal: true

module PostForMe
  module Models
    class BlueskyConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<String>, nil]
      optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(caption: nil, media: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param media [Array<String>, nil] Overrides the `media` from the post
    end
  end
end
