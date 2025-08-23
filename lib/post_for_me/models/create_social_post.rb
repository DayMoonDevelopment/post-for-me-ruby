# frozen_string_literal: true

module PostForMe
  module Models
    class CreateSocialPost < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Caption text for the post
      #
      #   @return [String]
      required :caption, String

      # @!attribute social_accounts
      #   Array of social account IDs for posting
      #
      #   @return [Array<String>]
      required :social_accounts, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute account_configurations
      #   Account-specific configurations for the post
      #
      #   @return [Array<PostForMe::Models::CreateSocialPost::AccountConfiguration>, nil]
      optional :account_configurations,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::CreateSocialPost::AccountConfiguration] },
               nil?: true

      # @!attribute external_id
      #   Array of social account IDs for posting
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute is_draft
      #   If isDraft is set then the post will not be processed
      #
      #   @return [Boolean, nil]
      optional :is_draft, PostForMe::Internal::Type::Boolean, api_name: :isDraft, nil?: true

      # @!attribute media
      #   Array of media URLs associated with the post
      #
      #   @return [Array<PostForMe::Models::CreateSocialPost::Media>, nil]
      optional :media,
               -> {
                 PostForMe::Internal::Type::ArrayOf[PostForMe::CreateSocialPost::Media]
               },
               nil?: true

      # @!attribute platform_configurations
      #   Platform-specific configurations for the post
      #
      #   @return [PostForMe::Models::PlatformConfigurationsDto, nil]
      optional :platform_configurations, -> { PostForMe::PlatformConfigurationsDto }, nil?: true

      # @!attribute scheduled_at
      #   Scheduled date and time for the post, setting to null or undefined will post
      #   instantly
      #
      #   @return [Time, nil]
      optional :scheduled_at, Time, nil?: true

      # @!method initialize(caption:, social_accounts:, account_configurations: nil, external_id: nil, is_draft: nil, media: nil, platform_configurations: nil, scheduled_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::CreateSocialPost} for more details.
      #
      #   @param caption [String] Caption text for the post
      #
      #   @param social_accounts [Array<String>] Array of social account IDs for posting
      #
      #   @param account_configurations [Array<PostForMe::Models::CreateSocialPost::AccountConfiguration>, nil] Account-specific configurations for the post
      #
      #   @param external_id [String, nil] Array of social account IDs for posting
      #
      #   @param is_draft [Boolean, nil] If isDraft is set then the post will not be processed
      #
      #   @param media [Array<PostForMe::Models::CreateSocialPost::Media>, nil] Array of media URLs associated with the post
      #
      #   @param platform_configurations [PostForMe::Models::PlatformConfigurationsDto, nil] Platform-specific configurations for the post
      #
      #   @param scheduled_at [Time, nil] Scheduled date and time for the post, setting to null or undefined will post ins

      class AccountConfiguration < PostForMe::Internal::Type::BaseModel
        # @!attribute configuration
        #   Configuration for the social account
        #
        #   @return [PostForMe::Models::CreateSocialPost::AccountConfiguration::Configuration]
        required :configuration, -> { PostForMe::CreateSocialPost::AccountConfiguration::Configuration }

        # @!attribute social_account_id
        #   ID of the social account, you want to apply the configuration to
        #
        #   @return [String]
        required :social_account_id, String

        # @!method initialize(configuration:, social_account_id:)
        #   @param configuration [PostForMe::Models::CreateSocialPost::AccountConfiguration::Configuration] Configuration for the social account
        #
        #   @param social_account_id [String] ID of the social account, you want to apply the configuration to

        # @see PostForMe::Models::CreateSocialPost::AccountConfiguration#configuration
        class Configuration < PostForMe::Internal::Type::BaseModel
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

          # @!attribute board_ids
          #   Pinterest board IDs
          #
          #   @return [Array<String>, nil]
          optional :board_ids, PostForMe::Internal::Type::ArrayOf[String], nil?: true

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

          # @!attribute link
          #   Pinterest post link
          #
          #   @return [String, nil]
          optional :link, String, nil?: true

          # @!attribute media
          #   Overrides the `media` from the post
          #
          #   @return [Array<String>, nil]
          optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute placement
          #   Post placement for Facebook/Instagram/Threads
          #
          #   @return [Symbol, PostForMe::Models::CreateSocialPost::AccountConfiguration::Configuration::Placement, nil]
          optional :placement,
                   enum: -> { PostForMe::CreateSocialPost::AccountConfiguration::Configuration::Placement },
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

          # @!method initialize(allow_comment: nil, allow_duet: nil, allow_stitch: nil, board_ids: nil, caption: nil, disclose_branded_content: nil, disclose_your_brand: nil, is_ai_generated: nil, is_draft: nil, link: nil, media: nil, placement: nil, privacy_status: nil, title: nil)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::CreateSocialPost::AccountConfiguration::Configuration} for
          #   more details.
          #
          #   Configuration for the social account
          #
          #   @param allow_comment [Boolean, nil] Allow comments on TikTok
          #
          #   @param allow_duet [Boolean, nil] Allow duets on TikTok
          #
          #   @param allow_stitch [Boolean, nil] Allow stitch on TikTok
          #
          #   @param board_ids [Array<String>, nil] Pinterest board IDs
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
          #   @param link [String, nil] Pinterest post link
          #
          #   @param media [Array<String>, nil] Overrides the `media` from the post
          #
          #   @param placement [Symbol, PostForMe::Models::CreateSocialPost::AccountConfiguration::Configuration::Placement, nil] Post placement for Facebook/Instagram/Threads
          #
          #   @param privacy_status [String, nil] Sets the privacy status for TikTok (private, public)
          #
          #   @param title [String, nil] Overrides the `title` from the post

          # Post placement for Facebook/Instagram/Threads
          #
          # @see PostForMe::Models::CreateSocialPost::AccountConfiguration::Configuration#placement
          module Placement
            extend PostForMe::Internal::Type::Enum

            REELS = :reels
            TIMELINE = :timeline
            STORIES = :stories

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

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
