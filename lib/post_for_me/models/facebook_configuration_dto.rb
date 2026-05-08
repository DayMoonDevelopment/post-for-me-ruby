# frozen_string_literal: true

module PostForMe
  module Models
    class FacebookConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute collaborators
      #   List of page ids to invite as collaborators for a Video Reel
      #
      #   @return [Array<Array<Object>>, nil]
      optional :collaborators,
               PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]],
               nil?: true

      # @!attribute location
      #   Page id with a location that you want to tag the image or video with
      #
      #   @return [String, nil]
      optional :location, String, nil?: true

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<PostForMe::Models::SocialPostMedia>, nil]
      optional :media, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostMedia] }, nil?: true

      # @!attribute placement
      #   Facebook post placement
      #
      #   @return [Symbol, PostForMe::Models::FacebookConfigurationDto::Placement, nil]
      optional :placement, enum: -> { PostForMe::FacebookConfigurationDto::Placement }, nil?: true

      # @!attribute set_caption_for_each_image
      #   If true, include the caption on each image in a carousel upload; if false, only
      #   include it on the final carousel post
      #
      #   @return [Boolean, nil]
      optional :set_caption_for_each_image, PostForMe::Internal::Type::Boolean, nil?: true

      # @!method initialize(caption: nil, collaborators: nil, location: nil, media: nil, placement: nil, set_caption_for_each_image: nil)
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::FacebookConfigurationDto} for more details.
      #
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param collaborators [Array<Array<Object>>, nil] List of page ids to invite as collaborators for a Video Reel
      #
      #   @param location [String, nil] Page id with a location that you want to tag the image or video with
      #
      #   @param media [Array<PostForMe::Models::SocialPostMedia>, nil] Overrides the `media` from the post
      #
      #   @param placement [Symbol, PostForMe::Models::FacebookConfigurationDto::Placement, nil] Facebook post placement
      #
      #   @param set_caption_for_each_image [Boolean, nil] If true, include the caption on each image in a carousel upload; if false, only

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
