# frozen_string_literal: true

module PostForMe
  module Models
    class LinkedinConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<PostForMe::Models::LinkedinConfigurationDto::Media>, nil]
      optional :media,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::LinkedinConfigurationDto::Media] },
               nil?: true

      # @!method initialize(caption: nil, media: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param media [Array<PostForMe::Models::LinkedinConfigurationDto::Media>, nil] Overrides the `media` from the post

      class Media < PostForMe::Internal::Type::BaseModel
        # @!attribute url
        #   Public URL of the media
        #
        #   @return [String]
        required :url, String

        # @!attribute tags
        #   List of tags to attach to the media
        #
        #   @return [Array<PostForMe::Models::LinkedinConfigurationDto::Media::Tag>, nil]
        optional :tags,
                 -> { PostForMe::Internal::Type::ArrayOf[PostForMe::LinkedinConfigurationDto::Media::Tag] },
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
        #   @param tags [Array<PostForMe::Models::LinkedinConfigurationDto::Media::Tag>, nil] List of tags to attach to the media
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
          #   @return [Symbol, PostForMe::Models::LinkedinConfigurationDto::Media::Tag::Platform]
          required :platform, enum: -> { PostForMe::LinkedinConfigurationDto::Media::Tag::Platform }

          # @!attribute type
          #   The type of tag, user to tag accounts, product to tag products (only supported
          #   for instagram)
          #
          #   @return [Symbol, PostForMe::Models::LinkedinConfigurationDto::Media::Tag::Type]
          required :type, enum: -> { PostForMe::LinkedinConfigurationDto::Media::Tag::Type }

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
          #   {PostForMe::Models::LinkedinConfigurationDto::Media::Tag} for more details.
          #
          #   @param id [String] Facebook User ID, Instagram Username or Instagram product id to tag
          #
          #   @param platform [Symbol, PostForMe::Models::LinkedinConfigurationDto::Media::Tag::Platform] The platform for the tags
          #
          #   @param type [Symbol, PostForMe::Models::LinkedinConfigurationDto::Media::Tag::Type] The type of tag, user to tag accounts, product to tag products (only supported f
          #
          #   @param x [Float] Percentage distance from left edge of the image, Not required for videos or stor
          #
          #   @param y_ [Float] Percentage distance from top edge of the image, Not required for videos or stori

          # The platform for the tags
          #
          # @see PostForMe::Models::LinkedinConfigurationDto::Media::Tag#platform
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
          # @see PostForMe::Models::LinkedinConfigurationDto::Media::Tag#type
          module Type
            extend PostForMe::Internal::Type::Enum

            USER = :user
            PRODUCT = :product

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
