# frozen_string_literal: true

module PostForMe
  module Models
    class ThreadsConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<PostForMe::Models::ThreadsConfigurationDto::Media>, nil]
      optional :media,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::ThreadsConfigurationDto::Media] },
               nil?: true

      # @!attribute placement
      #   Threads post placement
      #
      #   @return [Symbol, PostForMe::Models::ThreadsConfigurationDto::Placement, nil]
      optional :placement, enum: -> { PostForMe::ThreadsConfigurationDto::Placement }, nil?: true

      # @!method initialize(caption: nil, media: nil, placement: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param media [Array<PostForMe::Models::ThreadsConfigurationDto::Media>, nil] Overrides the `media` from the post
      #
      #   @param placement [Symbol, PostForMe::Models::ThreadsConfigurationDto::Placement, nil] Threads post placement

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

      # Threads post placement
      #
      # @see PostForMe::Models::ThreadsConfigurationDto#placement
      module Placement
        extend PostForMe::Internal::Type::Enum

        REELS = :reels
        TIMELINE = :timeline

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
