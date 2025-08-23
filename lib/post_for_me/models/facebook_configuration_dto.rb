# frozen_string_literal: true

module PostForMe
  module Models
    class FacebookConfigurationDto < PostForMe::Internal::Type::BaseModel
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

      # @!attribute placement
      #   Facebook post placement
      #
      #   @return [Symbol, PostForMe::Models::FacebookConfigurationDto::Placement, nil]
      optional :placement, enum: -> { PostForMe::FacebookConfigurationDto::Placement }, nil?: true

      # @!method initialize(caption: nil, media: nil, placement: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param media [Array<String>, nil] Overrides the `media` from the post
      #
      #   @param placement [Symbol, PostForMe::Models::FacebookConfigurationDto::Placement, nil] Facebook post placement

      # Facebook post placement
      #
      # @see PostForMe::Models::FacebookConfigurationDto#placement
      module Placement
        extend PostForMe::Internal::Type::Enum

        REELS = :reels
        STORIES = :stories
        TIMELINE = :timeline

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
