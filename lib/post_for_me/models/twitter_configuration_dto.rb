# frozen_string_literal: true

module PostForMe
  module Models
    class TwitterConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute community_id
      #   Id of the community to post to
      #
      #   @return [String, nil]
      optional :community_id, String

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<PostForMe::Models::TwitterConfigurationDto::Media>, nil]
      optional :media,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::TwitterConfigurationDto::Media] },
               nil?: true

      # @!attribute poll
      #   Poll options for the tweet
      #
      #   @return [PostForMe::Models::TwitterConfigurationDto::Poll, nil]
      optional :poll, -> { PostForMe::TwitterConfigurationDto::Poll }

      # @!attribute quote_tweet_id
      #   Id of the tweet you want to quote
      #
      #   @return [String, nil]
      optional :quote_tweet_id, String

      # @!attribute reply_settings
      #   Who can reply to the tweet
      #
      #   @return [Symbol, PostForMe::Models::TwitterConfigurationDto::ReplySettings, nil]
      optional :reply_settings, enum: -> { PostForMe::TwitterConfigurationDto::ReplySettings }, nil?: true

      # @!method initialize(caption: nil, community_id: nil, media: nil, poll: nil, quote_tweet_id: nil, reply_settings: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param community_id [String] Id of the community to post to
      #
      #   @param media [Array<PostForMe::Models::TwitterConfigurationDto::Media>, nil] Overrides the `media` from the post
      #
      #   @param poll [PostForMe::Models::TwitterConfigurationDto::Poll] Poll options for the tweet
      #
      #   @param quote_tweet_id [String] Id of the tweet you want to quote
      #
      #   @param reply_settings [Symbol, PostForMe::Models::TwitterConfigurationDto::ReplySettings, nil] Who can reply to the tweet

      class Media < PostForMe::Internal::Type::BaseModel
        # @!attribute url
        #   Public URL of the media
        #
        #   @return [String]
        required :url, String

        # @!attribute tags
        #   List of tags to attach to the media
        #
        #   @return [Array<PostForMe::Models::TwitterConfigurationDto::Media::Tag>, nil]
        optional :tags,
                 -> { PostForMe::Internal::Type::ArrayOf[PostForMe::TwitterConfigurationDto::Media::Tag] },
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
        #   @param tags [Array<PostForMe::Models::TwitterConfigurationDto::Media::Tag>, nil] List of tags to attach to the media
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
          #   @return [Symbol, PostForMe::Models::TwitterConfigurationDto::Media::Tag::Platform]
          required :platform, enum: -> { PostForMe::TwitterConfigurationDto::Media::Tag::Platform }

          # @!attribute type
          #   The type of tag, user to tag accounts, product to tag products (only supported
          #   for instagram)
          #
          #   @return [Symbol, PostForMe::Models::TwitterConfigurationDto::Media::Tag::Type]
          required :type, enum: -> { PostForMe::TwitterConfigurationDto::Media::Tag::Type }

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
          #   {PostForMe::Models::TwitterConfigurationDto::Media::Tag} for more details.
          #
          #   @param id [String] Facebook User ID, Instagram Username or Instagram product id to tag
          #
          #   @param platform [Symbol, PostForMe::Models::TwitterConfigurationDto::Media::Tag::Platform] The platform for the tags
          #
          #   @param type [Symbol, PostForMe::Models::TwitterConfigurationDto::Media::Tag::Type] The type of tag, user to tag accounts, product to tag products (only supported f
          #
          #   @param x [Float] Percentage distance from left edge of the image, Not required for videos or stor
          #
          #   @param y_ [Float] Percentage distance from top edge of the image, Not required for videos or stori

          # The platform for the tags
          #
          # @see PostForMe::Models::TwitterConfigurationDto::Media::Tag#platform
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
          # @see PostForMe::Models::TwitterConfigurationDto::Media::Tag#type
          module Type
            extend PostForMe::Internal::Type::Enum

            USER = :user
            PRODUCT = :product

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @see PostForMe::Models::TwitterConfigurationDto#poll
      class Poll < PostForMe::Internal::Type::BaseModel
        # @!attribute duration_minutes
        #   Duration of the poll in minutes
        #
        #   @return [Float]
        required :duration_minutes, Float

        # @!attribute options
        #   The choices of the poll, requiring 2-4 options
        #
        #   @return [Array<String>]
        required :options, PostForMe::Internal::Type::ArrayOf[String]

        # @!attribute reply_settings
        #   Who can reply to the tweet
        #
        #   @return [Symbol, PostForMe::Models::TwitterConfigurationDto::Poll::ReplySettings, nil]
        optional :reply_settings, enum: -> { PostForMe::TwitterConfigurationDto::Poll::ReplySettings }

        # @!method initialize(duration_minutes:, options:, reply_settings: nil)
        #   Poll options for the tweet
        #
        #   @param duration_minutes [Float] Duration of the poll in minutes
        #
        #   @param options [Array<String>] The choices of the poll, requiring 2-4 options
        #
        #   @param reply_settings [Symbol, PostForMe::Models::TwitterConfigurationDto::Poll::ReplySettings] Who can reply to the tweet

        # Who can reply to the tweet
        #
        # @see PostForMe::Models::TwitterConfigurationDto::Poll#reply_settings
        module ReplySettings
          extend PostForMe::Internal::Type::Enum

          FOLLOWING = :following
          MENTIONED_USERS = :mentionedUsers
          SUBSCRIBERS = :subscribers
          VERIFIED = :verified

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Who can reply to the tweet
      #
      # @see PostForMe::Models::TwitterConfigurationDto#reply_settings
      module ReplySettings
        extend PostForMe::Internal::Type::Enum

        FOLLOWING = :following
        MENTIONED_USERS = :mentionedUsers
        SUBSCRIBERS = :subscribers
        VERIFIED = :verified

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
