# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialPosts#create
    class SocialPost < PostForMe::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier of the post
      #
      #   @return [String]
      required :id, String

      # @!attribute account_configurations
      #   Account-specific configurations for the post
      #
      #   @return [Array<PostForMe::Models::SocialPost::AccountConfiguration>, nil]
      required :account_configurations,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPost::AccountConfiguration] },
               nil?: true

      # @!attribute caption
      #   Caption text for the post
      #
      #   @return [String]
      required :caption, String

      # @!attribute created_at
      #   Timestamp when the post was created
      #
      #   @return [String]
      required :created_at, String

      # @!attribute external_id
      #   Provided unique identifier of the post
      #
      #   @return [String, nil]
      required :external_id, String, nil?: true

      # @!attribute media
      #   Array of media URLs associated with the post
      #
      #   @return [Array<PostForMe::Models::SocialPost::Media>, nil]
      required :media, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPost::Media] }, nil?: true

      # @!attribute platform_configurations
      #   Platform-specific configurations for the post
      #
      #   @return [PostForMe::Models::PlatformConfigurationsDto, nil]
      required :platform_configurations, -> { PostForMe::PlatformConfigurationsDto }, nil?: true

      # @!attribute scheduled_at
      #   Scheduled date and time for the post
      #
      #   @return [String, nil]
      required :scheduled_at, String, nil?: true

      # @!attribute social_accounts
      #   Array of social account IDs for posting
      #
      #   @return [Array<PostForMe::Models::SocialAccount>]
      required :social_accounts, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialAccount] }

      # @!attribute status
      #   Current status of the post: draft, processed, scheduled, or processing
      #
      #   @return [Symbol, PostForMe::Models::SocialPost::Status]
      required :status, enum: -> { PostForMe::SocialPost::Status }

      # @!attribute updated_at
      #   Timestamp when the post was last updated
      #
      #   @return [String]
      required :updated_at, String

      # @!method initialize(id:, account_configurations:, caption:, created_at:, external_id:, media:, platform_configurations:, scheduled_at:, social_accounts:, status:, updated_at:)
      #   @param id [String] Unique identifier of the post
      #
      #   @param account_configurations [Array<PostForMe::Models::SocialPost::AccountConfiguration>, nil] Account-specific configurations for the post
      #
      #   @param caption [String] Caption text for the post
      #
      #   @param created_at [String] Timestamp when the post was created
      #
      #   @param external_id [String, nil] Provided unique identifier of the post
      #
      #   @param media [Array<PostForMe::Models::SocialPost::Media>, nil] Array of media URLs associated with the post
      #
      #   @param platform_configurations [PostForMe::Models::PlatformConfigurationsDto, nil] Platform-specific configurations for the post
      #
      #   @param scheduled_at [String, nil] Scheduled date and time for the post
      #
      #   @param social_accounts [Array<PostForMe::Models::SocialAccount>] Array of social account IDs for posting
      #
      #   @param status [Symbol, PostForMe::Models::SocialPost::Status] Current status of the post: draft, processed, scheduled, or processing
      #
      #   @param updated_at [String] Timestamp when the post was last updated

      class AccountConfiguration < PostForMe::Internal::Type::BaseModel
        # @!attribute configuration
        #   Configuration for the social account
        #
        #   @return [PostForMe::Models::SocialPost::AccountConfiguration::Configuration]
        required :configuration, -> { PostForMe::SocialPost::AccountConfiguration::Configuration }

        # @!attribute social_account_id
        #   ID of the social account, you want to apply the configuration to
        #
        #   @return [String]
        required :social_account_id, String

        # @!method initialize(configuration:, social_account_id:)
        #   @param configuration [PostForMe::Models::SocialPost::AccountConfiguration::Configuration] Configuration for the social account
        #
        #   @param social_account_id [String] ID of the social account, you want to apply the configuration to

        # @see PostForMe::Models::SocialPost::AccountConfiguration#configuration
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

          # @!attribute auto_add_music
          #   Will automatically add music to photo posts on TikTok
          #
          #   @return [Boolean, nil]
          optional :auto_add_music, PostForMe::Internal::Type::Boolean, nil?: true

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
          #   @return [Symbol, PostForMe::Models::SocialPost::AccountConfiguration::Configuration::Placement, nil]
          optional :placement,
                   enum: -> { PostForMe::SocialPost::AccountConfiguration::Configuration::Placement },
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

          # @!method initialize(allow_comment: nil, allow_duet: nil, allow_stitch: nil, auto_add_music: nil, board_ids: nil, caption: nil, disclose_branded_content: nil, disclose_your_brand: nil, is_ai_generated: nil, is_draft: nil, link: nil, media: nil, placement: nil, privacy_status: nil, title: nil)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::SocialPost::AccountConfiguration::Configuration} for more
          #   details.
          #
          #   Configuration for the social account
          #
          #   @param allow_comment [Boolean, nil] Allow comments on TikTok
          #
          #   @param allow_duet [Boolean, nil] Allow duets on TikTok
          #
          #   @param allow_stitch [Boolean, nil] Allow stitch on TikTok
          #
          #   @param auto_add_music [Boolean, nil] Will automatically add music to photo posts on TikTok
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
          #   @param placement [Symbol, PostForMe::Models::SocialPost::AccountConfiguration::Configuration::Placement, nil] Post placement for Facebook/Instagram/Threads
          #
          #   @param privacy_status [String, nil] Sets the privacy status for TikTok (private, public)
          #
          #   @param title [String, nil] Overrides the `title` from the post

          # Post placement for Facebook/Instagram/Threads
          #
          # @see PostForMe::Models::SocialPost::AccountConfiguration::Configuration#placement
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

      # Current status of the post: draft, processed, scheduled, or processing
      #
      # @see PostForMe::Models::SocialPost#status
      module Status
        extend PostForMe::Internal::Type::Enum

        DRAFT = :draft
        SCHEDULED = :scheduled
        PROCESSING = :processing
        PROCESSED = :processed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
