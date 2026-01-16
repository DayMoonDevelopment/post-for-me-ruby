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

      # @!attribute location
      #   Page id with a location that you want to tag the image or video with
      #
      #   @return [String, nil]
      optional :location, String, nil?: true

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

      # @!attribute share_to_feed
      #   If false video posts will only be shown in the Reels tab
      #
      #   @return [Boolean, nil]
      optional :share_to_feed, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute trial_reel_type
      #   Instagram trial reel type, when passed will be created as a trial reel. If
      #   manual the trial reel can be manually graduated in the native app. If perfomance
      #   the trial reel will be automatically graduated if the trial reel performs well.
      #
      #   @return [Symbol, PostForMe::Models::InstagramConfigurationDto::TrialReelType, nil]
      optional :trial_reel_type, enum: -> { PostForMe::InstagramConfigurationDto::TrialReelType }, nil?: true

      # @!method initialize(caption: nil, collaborators: nil, location: nil, media: nil, placement: nil, share_to_feed: nil, trial_reel_type: nil)
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::InstagramConfigurationDto} for more details.
      #
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param collaborators [Array<String>, nil] Instagram usernames to be tagged as a collaborator
      #
      #   @param location [String, nil] Page id with a location that you want to tag the image or video with
      #
      #   @param media [Array<PostForMe::Models::InstagramConfigurationDto::Media>, nil] Overrides the `media` from the post
      #
      #   @param placement [Symbol, PostForMe::Models::InstagramConfigurationDto::Placement, nil] Instagram post placement
      #
      #   @param share_to_feed [Boolean, nil] If false video posts will only be shown in the Reels tab
      #
      #   @param trial_reel_type [Symbol, PostForMe::Models::InstagramConfigurationDto::TrialReelType, nil] Instagram trial reel type, when passed will be created as a trial reel. If manua

      class Media < PostForMe::Internal::Type::BaseModel
        # @!attribute url
        #   Public URL of the media
        #
        #   @return [String]
        required :url, String

        # @!attribute tags
        #   List of tags to attach to the media
        #
        #   @return [Array<PostForMe::Models::InstagramConfigurationDto::Media::Tag>, nil]
        optional :tags,
                 -> { PostForMe::Internal::Type::ArrayOf[PostForMe::InstagramConfigurationDto::Media::Tag] },
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
        #   @param tags [Array<PostForMe::Models::InstagramConfigurationDto::Media::Tag>, nil] List of tags to attach to the media
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
          #   @return [Symbol, PostForMe::Models::InstagramConfigurationDto::Media::Tag::Platform]
          required :platform, enum: -> { PostForMe::InstagramConfigurationDto::Media::Tag::Platform }

          # @!attribute type
          #   The type of tag, user to tag accounts, product to tag products (only supported
          #   for instagram)
          #
          #   @return [Symbol, PostForMe::Models::InstagramConfigurationDto::Media::Tag::Type]
          required :type, enum: -> { PostForMe::InstagramConfigurationDto::Media::Tag::Type }

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
          #   {PostForMe::Models::InstagramConfigurationDto::Media::Tag} for more details.
          #
          #   @param id [String] Facebook User ID, Instagram Username or Instagram product id to tag
          #
          #   @param platform [Symbol, PostForMe::Models::InstagramConfigurationDto::Media::Tag::Platform] The platform for the tags
          #
          #   @param type [Symbol, PostForMe::Models::InstagramConfigurationDto::Media::Tag::Type] The type of tag, user to tag accounts, product to tag products (only supported f
          #
          #   @param x [Float] Percentage distance from left edge of the image, Not required for videos or stor
          #
          #   @param y_ [Float] Percentage distance from top edge of the image, Not required for videos or stori

          # The platform for the tags
          #
          # @see PostForMe::Models::InstagramConfigurationDto::Media::Tag#platform
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
          # @see PostForMe::Models::InstagramConfigurationDto::Media::Tag#type
          module Type
            extend PostForMe::Internal::Type::Enum

            USER = :user
            PRODUCT = :product

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
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

      # Instagram trial reel type, when passed will be created as a trial reel. If
      # manual the trial reel can be manually graduated in the native app. If perfomance
      # the trial reel will be automatically graduated if the trial reel performs well.
      #
      # @see PostForMe::Models::InstagramConfigurationDto#trial_reel_type
      module TrialReelType
        extend PostForMe::Internal::Type::Enum

        MANUAL = :manual
        PERFORMANCE = :performance

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
