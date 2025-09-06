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
      #   @return [Array<PostForMe::Models::FacebookConfigurationDto::Media>, nil]
      optional :media,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::FacebookConfigurationDto::Media] },
               nil?: true

      # @!attribute placement
      #   Facebook post placement
      #
      #   @return [Symbol, PostForMe::Models::FacebookConfigurationDto::Placement, nil]
      optional :placement, enum: -> { PostForMe::FacebookConfigurationDto::Placement }, nil?: true

      # @!method initialize(caption: nil, media: nil, placement: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param media [Array<PostForMe::Models::FacebookConfigurationDto::Media>, nil] Overrides the `media` from the post
      #
      #   @param placement [Symbol, PostForMe::Models::FacebookConfigurationDto::Placement, nil] Facebook post placement

      class Media < PostForMe::Internal::Type::BaseModel
        # @!attribute url
        #   Public URL of the media
        #
        #   @return [String]
        required :url, String

        # @!attribute thumbnail_timestamp_ms
        #   Timestamp in milliseconds of frame to use as thumbnail for the media
        #
        #   @return [Object, nil]
        optional :thumbnail_timestamp_ms, PostForMe::Internal::Type::Unknown, nil?: true

        # @!attribute thumbnail_url
        #   Public URL of the thumbnail for the media
        #
        #   @return [Object, nil]
        optional :thumbnail_url, PostForMe::Internal::Type::Unknown, nil?: true

        # @!method initialize(url:, thumbnail_timestamp_ms: nil, thumbnail_url: nil)
        #   @param url [String] Public URL of the media
        #
        #   @param thumbnail_timestamp_ms [Object, nil] Timestamp in milliseconds of frame to use as thumbnail for the media
        #
        #   @param thumbnail_url [Object, nil] Public URL of the thumbnail for the media
      end

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
