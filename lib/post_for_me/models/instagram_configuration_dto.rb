# frozen_string_literal: true

module PostForMe
  module Models
    class InstagramConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute collaborators
      #   Instagram usernames to be tagged as a collaborator
      #
      #   @return [Array<String>, nil]
      optional :collaborators, PostForMe::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<PostForMe::Models::InstagramConfigurationDto::Media>, nil]
      optional :media,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::InstagramConfigurationDto::Media] },
               nil?: true

      # @!attribute placement
      #   Instagram post placement
      #
      #   @return [Symbol, PostForMe::Models::InstagramConfigurationDto::Placement, nil]
      optional :placement, enum: -> { PostForMe::InstagramConfigurationDto::Placement }, nil?: true

      # @!method initialize(caption: nil, collaborators: nil, media: nil, placement: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param collaborators [Array<String>, nil] Instagram usernames to be tagged as a collaborator
      #
      #   @param media [Array<PostForMe::Models::InstagramConfigurationDto::Media>, nil] Overrides the `media` from the post
      #
      #   @param placement [Symbol, PostForMe::Models::InstagramConfigurationDto::Placement, nil] Instagram post placement

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

      # Instagram post placement
      #
      # @see PostForMe::Models::InstagramConfigurationDto#placement
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
