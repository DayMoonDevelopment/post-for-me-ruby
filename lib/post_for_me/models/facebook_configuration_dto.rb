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
      #   @return [Array<PostForMe::Models::FacebookConfigurationDto::Media>, nil]
      optional :media,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::FacebookConfigurationDto::Media] },
               nil?: true

      # @!attribute placement
      #   Facebook post placement
      #
      #   @return [Symbol, PostForMe::Models::FacebookConfigurationDto::Placement, nil]
      optional :placement, enum: -> { PostForMe::FacebookConfigurationDto::Placement }, nil?: true

      # @!method initialize(caption: nil, collaborators: nil, location: nil, media: nil, placement: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param collaborators [Array<Array<Object>>, nil] List of page ids to invite as collaborators for a Video Reel
      #
      #   @param location [String, nil] Page id with a location that you want to tag the image or video with
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

        # @!attribute tags
        #   List of tags to attach to the media
        #
        #   @return [Array<PostForMe::Models::FacebookConfigurationDto::Media::Tag>, nil]
        optional :tags,
                 -> { PostForMe::Internal::Type::ArrayOf[PostForMe::FacebookConfigurationDto::Media::Tag] },
                 nil?: true

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

        # @!method initialize(url:, tags: nil, thumbnail_timestamp_ms: nil, thumbnail_url: nil)
        #   @param url [String] Public URL of the media
        #
        #   @param tags [Array<PostForMe::Models::FacebookConfigurationDto::Media::Tag>, nil] List of tags to attach to the media
        #
        #   @param thumbnail_timestamp_ms [Object, nil] Timestamp in milliseconds of frame to use as thumbnail for the media
        #
        #   @param thumbnail_url [Object, nil] Public URL of the thumbnail for the media

        class Tag < PostForMe::Internal::Type::BaseModel
          # @!attribute id
          #   Facebook User ID, Instagram Username or Instagram product id to tag
          #
          #   @return [String]
          required :id, String

          # @!attribute platform
          #   The platform for the tags
          #
          #   @return [Symbol, PostForMe::Models::FacebookConfigurationDto::Media::Tag::Platform]
          required :platform, enum: -> { PostForMe::FacebookConfigurationDto::Media::Tag::Platform }

          # @!attribute type
          #   The type of tag, user to tag accounts, product to tag products (only supported
          #   for instagram)
          #
          #   @return [Symbol, PostForMe::Models::FacebookConfigurationDto::Media::Tag::Type]
          required :type, enum: -> { PostForMe::FacebookConfigurationDto::Media::Tag::Type }

          # @!attribute x
          #   Percentage distance from left edge of the image, Not required for videos or
          #   stories
          #
          #   @return [Float, nil]
          optional :x, Float

          # @!attribute y_
          #   Percentage distance from top edge of the image, Not required for videos or
          #   stories
          #
          #   @return [Float, nil]
          optional :y_, Float, api_name: :y

          # @!method initialize(id:, platform:, type:, x: nil, y_: nil)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::FacebookConfigurationDto::Media::Tag} for more details.
          #
          #   @param id [String] Facebook User ID, Instagram Username or Instagram product id to tag
          #
          #   @param platform [Symbol, PostForMe::Models::FacebookConfigurationDto::Media::Tag::Platform] The platform for the tags
          #
          #   @param type [Symbol, PostForMe::Models::FacebookConfigurationDto::Media::Tag::Type] The type of tag, user to tag accounts, product to tag products (only supported f
          #
          #   @param x [Float] Percentage distance from left edge of the image, Not required for videos or stor
          #
          #   @param y_ [Float] Percentage distance from top edge of the image, Not required for videos or stori

          # The platform for the tags
          #
          # @see PostForMe::Models::FacebookConfigurationDto::Media::Tag#platform
          module Platform
            extend PostForMe::Internal::Type::Enum

            FACEBOOK = :facebook
            INSTAGRAM = :instagram

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The type of tag, user to tag accounts, product to tag products (only supported
          # for instagram)
          #
          # @see PostForMe::Models::FacebookConfigurationDto::Media::Tag#type
          module Type
            extend PostForMe::Internal::Type::Enum

            USER = :user
            PRODUCT = :product

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
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
