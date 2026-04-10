# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialPostResults#retrieve
    class SocialPostResult < PostForMe::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier of the post result
      #
      #   @return [String]
      required :id, String

      # @!attribute details
      #   Detailed logs from the post
      #
      #   @return [Object]
      required :details, PostForMe::Internal::Type::Unknown

      # @!attribute error
      #   Error message if the post failed
      #
      #   @return [Object]
      required :error, PostForMe::Internal::Type::Unknown

      # @!attribute media
      #   Array of media URLs associated with the post
      #
      #   @return [Array<PostForMe::Models::SocialPostResult::Media>, nil]
      required :media,
               -> {
                 PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostResult::Media]
               },
               nil?: true

      # @!attribute platform_data
      #   Platform-specific data
      #
      #   @return [PostForMe::Models::SocialPostResult::PlatformData]
      required :platform_data, -> { PostForMe::SocialPostResult::PlatformData }

      # @!attribute post_id
      #   The ID of the associated post
      #
      #   @return [String]
      required :post_id, String

      # @!attribute social_account_id
      #   The ID of the associated social account
      #
      #   @return [String]
      required :social_account_id, String

      # @!attribute success
      #   Indicates if the post was successful
      #
      #   @return [Boolean]
      required :success, PostForMe::Internal::Type::Boolean

      # @!method initialize(id:, details:, error:, media:, platform_data:, post_id:, social_account_id:, success:)
      #   @param id [String] The unique identifier of the post result
      #
      #   @param details [Object] Detailed logs from the post
      #
      #   @param error [Object] Error message if the post failed
      #
      #   @param media [Array<PostForMe::Models::SocialPostResult::Media>, nil] Array of media URLs associated with the post
      #
      #   @param platform_data [PostForMe::Models::SocialPostResult::PlatformData] Platform-specific data
      #
      #   @param post_id [String] The ID of the associated post
      #
      #   @param social_account_id [String] The ID of the associated social account
      #
      #   @param success [Boolean] Indicates if the post was successful

      class Media < PostForMe::Internal::Type::BaseModel
        # @!attribute url
        #   Public URL of the media
        #
        #   @return [String]
        required :url, String

        # @!attribute skip_processing
        #   If true the media will not be processed at all and instead be posted as is, this
        #   may increase chance of post failure if media does not meet platform's
        #   requirements. Best used for larger files.
        #
        #   @return [Boolean, nil]
        optional :skip_processing, PostForMe::Internal::Type::Boolean, nil?: true

        # @!attribute tags
        #   List of tags to attach to the media
        #
        #   @return [Array<PostForMe::Models::SocialPostResult::Media::Tag>, nil]
        optional :tags,
                 -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostResult::Media::Tag] },
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

        # @!method initialize(url:, skip_processing: nil, tags: nil, thumbnail_timestamp_ms: nil, thumbnail_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {PostForMe::Models::SocialPostResult::Media} for more details.
        #
        #   @param url [String] Public URL of the media
        #
        #   @param skip_processing [Boolean, nil] If true the media will not be processed at all and instead be posted as is, this
        #
        #   @param tags [Array<PostForMe::Models::SocialPostResult::Media::Tag>, nil] List of tags to attach to the media
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
          #   @return [Symbol, PostForMe::Models::SocialPostResult::Media::Tag::Platform]
          required :platform, enum: -> { PostForMe::SocialPostResult::Media::Tag::Platform }

          # @!attribute type
          #   The type of tag, user to tag accounts, product to tag products (only supported
          #   for instagram)
          #
          #   @return [Symbol, PostForMe::Models::SocialPostResult::Media::Tag::Type]
          required :type, enum: -> { PostForMe::SocialPostResult::Media::Tag::Type }

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
          #   {PostForMe::Models::SocialPostResult::Media::Tag} for more details.
          #
          #   @param id [String] Facebook User ID, Instagram Username or Instagram product id to tag
          #
          #   @param platform [Symbol, PostForMe::Models::SocialPostResult::Media::Tag::Platform] The platform for the tags
          #
          #   @param type [Symbol, PostForMe::Models::SocialPostResult::Media::Tag::Type] The type of tag, user to tag accounts, product to tag products (only supported f
          #
          #   @param x [Float] Percentage distance from left edge of the image, Not required for videos or stor
          #
          #   @param y_ [Float] Percentage distance from top edge of the image, Not required for videos or stori

          # The platform for the tags
          #
          # @see PostForMe::Models::SocialPostResult::Media::Tag#platform
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
          # @see PostForMe::Models::SocialPostResult::Media::Tag#type
          module Type
            extend PostForMe::Internal::Type::Enum

            USER = :user
            PRODUCT = :product

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @see PostForMe::Models::SocialPostResult#platform_data
      class PlatformData < PostForMe::Internal::Type::BaseModel
        # @!attribute id
        #   Platform-specific ID
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute url
        #   URL of the posted content
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(id: nil, url: nil)
        #   Platform-specific data
        #
        #   @param id [String] Platform-specific ID
        #
        #   @param url [String] URL of the posted content
      end
    end
  end
end
