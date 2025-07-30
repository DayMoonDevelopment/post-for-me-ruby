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
      #   @return [PostForMe::Models::CreateSocialPost::PlatformConfigurations, nil]
      optional :platform_configurations,
               -> {
                 PostForMe::CreateSocialPost::PlatformConfigurations
               },
               nil?: true

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
      #   @param platform_configurations [PostForMe::Models::CreateSocialPost::PlatformConfigurations, nil] Platform-specific configurations for the post
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

          # @!attribute link
          #   Pinterest post link
          #
          #   @return [String, nil]
          optional :link, String, nil?: true

          # @!attribute location
          #   Threads post location
          #
          #   @return [Symbol, PostForMe::Models::CreateSocialPost::AccountConfiguration::Configuration::Location, nil]
          optional :location,
                   enum: -> { PostForMe::CreateSocialPost::AccountConfiguration::Configuration::Location },
                   nil?: true

          # @!attribute media
          #   Overrides the `media` from the post
          #
          #   @return [Array<String>, nil]
          optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

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

          # @!method initialize(allow_comment: nil, allow_duet: nil, allow_stitch: nil, board_ids: nil, caption: nil, disclose_branded_content: nil, disclose_your_brand: nil, link: nil, location: nil, media: nil, privacy_status: nil, title: nil)
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
          #   @param link [String, nil] Pinterest post link
          #
          #   @param location [Symbol, PostForMe::Models::CreateSocialPost::AccountConfiguration::Configuration::Location, nil] Threads post location
          #
          #   @param media [Array<String>, nil] Overrides the `media` from the post
          #
          #   @param privacy_status [String, nil] Sets the privacy status for TikTok (private, public)
          #
          #   @param title [String, nil] Overrides the `title` from the post

          # Threads post location
          #
          # @see PostForMe::Models::CreateSocialPost::AccountConfiguration::Configuration#location
          module Location
            extend PostForMe::Internal::Type::Enum

            REELS = :reels
            TIMELINE = :timeline

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

      # @see PostForMe::Models::CreateSocialPost#platform_configurations
      class PlatformConfigurations < PostForMe::Internal::Type::BaseModel
        # @!attribute bluesky
        #   Bluesky configuration
        #
        #   @return [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Bluesky, nil]
        optional :bluesky, -> { PostForMe::CreateSocialPost::PlatformConfigurations::Bluesky }, nil?: true

        # @!attribute facebook
        #   Facebook configuration
        #
        #   @return [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Facebook, nil]
        optional :facebook, -> { PostForMe::CreateSocialPost::PlatformConfigurations::Facebook }, nil?: true

        # @!attribute instagram
        #   Instagram configuration
        #
        #   @return [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Instagram, nil]
        optional :instagram, -> { PostForMe::CreateSocialPost::PlatformConfigurations::Instagram }, nil?: true

        # @!attribute linkedin
        #   LinkedIn configuration
        #
        #   @return [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Linkedin, nil]
        optional :linkedin, -> { PostForMe::CreateSocialPost::PlatformConfigurations::Linkedin }, nil?: true

        # @!attribute pinterest
        #   Pinterest configuration
        #
        #   @return [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Pinterest, nil]
        optional :pinterest, -> { PostForMe::CreateSocialPost::PlatformConfigurations::Pinterest }, nil?: true

        # @!attribute threads
        #   Threads configuration
        #
        #   @return [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Threads, nil]
        optional :threads, -> { PostForMe::CreateSocialPost::PlatformConfigurations::Threads }, nil?: true

        # @!attribute tiktok
        #   TikTok configuration
        #
        #   @return [PostForMe::Models::TiktokConfiguration, nil]
        optional :tiktok, -> { PostForMe::TiktokConfiguration }, nil?: true

        # @!attribute tiktok_business
        #   TikTok configuration
        #
        #   @return [PostForMe::Models::TiktokConfiguration, nil]
        optional :tiktok_business, -> { PostForMe::TiktokConfiguration }, nil?: true

        # @!attribute x
        #   Twitter configuration
        #
        #   @return [PostForMe::Models::CreateSocialPost::PlatformConfigurations::X, nil]
        optional :x, -> { PostForMe::CreateSocialPost::PlatformConfigurations::X }, nil?: true

        # @!attribute youtube
        #   YouTube configuration
        #
        #   @return [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Youtube, nil]
        optional :youtube, -> { PostForMe::CreateSocialPost::PlatformConfigurations::Youtube }, nil?: true

        # @!method initialize(bluesky: nil, facebook: nil, instagram: nil, linkedin: nil, pinterest: nil, threads: nil, tiktok: nil, tiktok_business: nil, x: nil, youtube: nil)
        #   Platform-specific configurations for the post
        #
        #   @param bluesky [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Bluesky, nil] Bluesky configuration
        #
        #   @param facebook [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Facebook, nil] Facebook configuration
        #
        #   @param instagram [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Instagram, nil] Instagram configuration
        #
        #   @param linkedin [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Linkedin, nil] LinkedIn configuration
        #
        #   @param pinterest [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Pinterest, nil] Pinterest configuration
        #
        #   @param threads [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Threads, nil] Threads configuration
        #
        #   @param tiktok [PostForMe::Models::TiktokConfiguration, nil] TikTok configuration
        #
        #   @param tiktok_business [PostForMe::Models::TiktokConfiguration, nil] TikTok configuration
        #
        #   @param x [PostForMe::Models::CreateSocialPost::PlatformConfigurations::X, nil] Twitter configuration
        #
        #   @param youtube [PostForMe::Models::CreateSocialPost::PlatformConfigurations::Youtube, nil] YouTube configuration

        # @see PostForMe::Models::CreateSocialPost::PlatformConfigurations#bluesky
        class Bluesky < PostForMe::Internal::Type::BaseModel
          # @!attribute caption
          #   Overrides the `caption` from the post
          #
          #   @return [Object, nil]
          optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

          # @!attribute media
          #   Overrides the `media` from the post
          #
          #   @return [Array<String>, nil]
          optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

          # @!method initialize(caption: nil, media: nil)
          #   Bluesky configuration
          #
          #   @param caption [Object, nil] Overrides the `caption` from the post
          #
          #   @param media [Array<String>, nil] Overrides the `media` from the post
        end

        # @see PostForMe::Models::CreateSocialPost::PlatformConfigurations#facebook
        class Facebook < PostForMe::Internal::Type::BaseModel
          # @!attribute caption
          #   Overrides the `caption` from the post
          #
          #   @return [Object, nil]
          optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

          # @!attribute media
          #   Overrides the `media` from the post
          #
          #   @return [Array<String>, nil]
          optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

          # @!method initialize(caption: nil, media: nil)
          #   Facebook configuration
          #
          #   @param caption [Object, nil] Overrides the `caption` from the post
          #
          #   @param media [Array<String>, nil] Overrides the `media` from the post
        end

        # @see PostForMe::Models::CreateSocialPost::PlatformConfigurations#instagram
        class Instagram < PostForMe::Internal::Type::BaseModel
          # @!attribute caption
          #   Overrides the `caption` from the post
          #
          #   @return [Object, nil]
          optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

          # @!attribute media
          #   Overrides the `media` from the post
          #
          #   @return [Array<String>, nil]
          optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

          # @!method initialize(caption: nil, media: nil)
          #   Instagram configuration
          #
          #   @param caption [Object, nil] Overrides the `caption` from the post
          #
          #   @param media [Array<String>, nil] Overrides the `media` from the post
        end

        # @see PostForMe::Models::CreateSocialPost::PlatformConfigurations#linkedin
        class Linkedin < PostForMe::Internal::Type::BaseModel
          # @!attribute caption
          #   Overrides the `caption` from the post
          #
          #   @return [Object, nil]
          optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

          # @!attribute media
          #   Overrides the `media` from the post
          #
          #   @return [Array<String>, nil]
          optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

          # @!method initialize(caption: nil, media: nil)
          #   LinkedIn configuration
          #
          #   @param caption [Object, nil] Overrides the `caption` from the post
          #
          #   @param media [Array<String>, nil] Overrides the `media` from the post
        end

        # @see PostForMe::Models::CreateSocialPost::PlatformConfigurations#pinterest
        class Pinterest < PostForMe::Internal::Type::BaseModel
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

          # @!method initialize(board_ids: nil, caption: nil, link: nil, media: nil)
          #   Pinterest configuration
          #
          #   @param board_ids [Array<String>, nil] Pinterest board IDs
          #
          #   @param caption [Object, nil] Overrides the `caption` from the post
          #
          #   @param link [String, nil] Pinterest post link
          #
          #   @param media [Array<String>, nil] Overrides the `media` from the post
        end

        # @see PostForMe::Models::CreateSocialPost::PlatformConfigurations#threads
        class Threads < PostForMe::Internal::Type::BaseModel
          # @!attribute caption
          #   Overrides the `caption` from the post
          #
          #   @return [Object, nil]
          optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

          # @!attribute location
          #   Threads post location
          #
          #   @return [Symbol, PostForMe::Models::CreateSocialPost::PlatformConfigurations::Threads::Location, nil]
          optional :location,
                   enum: -> { PostForMe::CreateSocialPost::PlatformConfigurations::Threads::Location },
                   nil?: true

          # @!attribute media
          #   Overrides the `media` from the post
          #
          #   @return [Array<String>, nil]
          optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

          # @!method initialize(caption: nil, location: nil, media: nil)
          #   Threads configuration
          #
          #   @param caption [Object, nil] Overrides the `caption` from the post
          #
          #   @param location [Symbol, PostForMe::Models::CreateSocialPost::PlatformConfigurations::Threads::Location, nil] Threads post location
          #
          #   @param media [Array<String>, nil] Overrides the `media` from the post

          # Threads post location
          #
          # @see PostForMe::Models::CreateSocialPost::PlatformConfigurations::Threads#location
          module Location
            extend PostForMe::Internal::Type::Enum

            REELS = :reels
            TIMELINE = :timeline

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see PostForMe::Models::CreateSocialPost::PlatformConfigurations#x
        class X < PostForMe::Internal::Type::BaseModel
          # @!attribute caption
          #   Overrides the `caption` from the post
          #
          #   @return [Object, nil]
          optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

          # @!attribute media
          #   Overrides the `media` from the post
          #
          #   @return [Array<String>, nil]
          optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

          # @!method initialize(caption: nil, media: nil)
          #   Twitter configuration
          #
          #   @param caption [Object, nil] Overrides the `caption` from the post
          #
          #   @param media [Array<String>, nil] Overrides the `media` from the post
        end

        # @see PostForMe::Models::CreateSocialPost::PlatformConfigurations#youtube
        class Youtube < PostForMe::Internal::Type::BaseModel
          # @!attribute caption
          #   Overrides the `caption` from the post
          #
          #   @return [Object, nil]
          optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

          # @!attribute media
          #   Overrides the `media` from the post
          #
          #   @return [Array<String>, nil]
          optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute title
          #   Overrides the `title` from the post
          #
          #   @return [String, nil]
          optional :title, String, nil?: true

          # @!method initialize(caption: nil, media: nil, title: nil)
          #   YouTube configuration
          #
          #   @param caption [Object, nil] Overrides the `caption` from the post
          #
          #   @param media [Array<String>, nil] Overrides the `media` from the post
          #
          #   @param title [String, nil] Overrides the `title` from the post
        end
      end
    end
  end
end
