# frozen_string_literal: true

module PostForMe
  module Models
    class TiktokConfiguration < PostForMe::Internal::Type::BaseModel
      # @!attribute allow_comment
      #   Allow comments on TikTok
      #
      #   @return [Boolean, nil]
      optional :allow_comment, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute allow_duet
      #   Allow duets on TikTok
      #
      #   @return [Boolean, nil]
      optional :allow_duet, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute allow_stitch
      #   Allow stitch on TikTok
      #
      #   @return [Boolean, nil]
      optional :allow_stitch, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute auto_add_music
      #   Will automatically add music to photo posts
      #
      #   @return [Boolean, nil]
      optional :auto_add_music, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute disclose_branded_content
      #   Disclose branded content on TikTok
      #
      #   @return [Boolean, nil]
      optional :disclose_branded_content, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute disclose_your_brand
      #   Disclose your brand on TikTok
      #
      #   @return [Boolean, nil]
      optional :disclose_your_brand, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute is_ai_generated
      #   Flag content as AI generated on TikTok
      #
      #   @return [Boolean, nil]
      optional :is_ai_generated, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute is_draft
      #   Will create a draft upload to TikTok, posting will need to be completed from
      #   within the app
      #
      #   @return [Boolean, nil]
      optional :is_draft, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<PostForMe::Models::TiktokConfiguration::Media>, nil]
      optional :media,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::TiktokConfiguration::Media] },
               nil?: true

      # @!attribute privacy_status
      #   Sets the privacy status for TikTok (private, public)
      #
      #   @return [String, nil]
      optional :privacy_status, String, nil?: true

      # @!attribute title
      #   Overrides the `title` from the post
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(allow_comment: nil, allow_duet: nil, allow_stitch: nil, auto_add_music: nil, caption: nil, disclose_branded_content: nil, disclose_your_brand: nil, is_ai_generated: nil, is_draft: nil, media: nil, privacy_status: nil, title: nil)
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::TiktokConfiguration} for more details.
      #
      #   @param allow_comment [Boolean, nil] Allow comments on TikTok
      #
      #   @param allow_duet [Boolean, nil] Allow duets on TikTok
      #
      #   @param allow_stitch [Boolean, nil] Allow stitch on TikTok
      #
      #   @param auto_add_music [Boolean, nil] Will automatically add music to photo posts
      #
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param disclose_branded_content [Boolean, nil] Disclose branded content on TikTok
      #
      #   @param disclose_your_brand [Boolean, nil] Disclose your brand on TikTok
      #
      #   @param is_ai_generated [Boolean, nil] Flag content as AI generated on TikTok
      #
      #   @param is_draft [Boolean, nil] Will create a draft upload to TikTok, posting will need to be completed from wit
      #
      #   @param media [Array<PostForMe::Models::TiktokConfiguration::Media>, nil] Overrides the `media` from the post
      #
      #   @param privacy_status [String, nil] Sets the privacy status for TikTok (private, public)
      #
      #   @param title [String, nil] Overrides the `title` from the post

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
    end
  end
end
