# frozen_string_literal: true

module PostForMe
  module Models
    class SocialPostMedia < PostForMe::Internal::Type::BaseModel
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
      #   @return [Array<PostForMe::Models::SocialPostMedia::Tag>, nil]
      optional :tags, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostMedia::Tag] }, nil?: true

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
      #   {PostForMe::Models::SocialPostMedia} for more details.
      #
      #   @param url [String] Public URL of the media
      #
      #   @param skip_processing [Boolean, nil] If true the media will not be processed at all and instead be posted as is, this
      #
      #   @param tags [Array<PostForMe::Models::SocialPostMedia::Tag>, nil] List of tags to attach to the media
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
        #   @return [Symbol, PostForMe::Models::SocialPostMedia::Tag::Platform]
        required :platform, enum: -> { PostForMe::SocialPostMedia::Tag::Platform }

        # @!attribute type
        #   The type of tag, user to tag accounts, product to tag products (only supported
        #   for instagram)
        #
        #   @return [Symbol, PostForMe::Models::SocialPostMedia::Tag::Type]
        required :type, enum: -> { PostForMe::SocialPostMedia::Tag::Type }

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
        #   {PostForMe::Models::SocialPostMedia::Tag} for more details.
        #
        #   @param id [String] Facebook User ID, Instagram Username or Instagram product id to tag
        #
        #   @param platform [Symbol, PostForMe::Models::SocialPostMedia::Tag::Platform] The platform for the tags
        #
        #   @param type [Symbol, PostForMe::Models::SocialPostMedia::Tag::Type] The type of tag, user to tag accounts, product to tag products (only supported f
        #
        #   @param x [Float] Percentage distance from left edge of the image, Not required for videos or stor
        #
        #   @param y_ [Float] Percentage distance from top edge of the image, Not required for videos or stori

        # The platform for the tags
        #
        # @see PostForMe::Models::SocialPostMedia::Tag#platform
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
        # @see PostForMe::Models::SocialPostMedia::Tag#type
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
