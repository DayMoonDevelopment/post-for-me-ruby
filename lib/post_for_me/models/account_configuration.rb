# frozen_string_literal: true

module PostForMe
  module Models
    class AccountConfiguration < PostForMe::Internal::Type::BaseModel
      # @!attribute configuration
      #   Configuration for the social account
      #
      #   @return [PostForMe::Models::AccountConfiguration::Configuration]
      required :configuration, -> { PostForMe::AccountConfiguration::Configuration }

      # @!attribute social_account_id
      #   ID of the social account, you want to apply the configuration to
      #
      #   @return [String]
      required :social_account_id, String

      # @!method initialize(configuration:, social_account_id:)
      #   @param configuration [PostForMe::Models::AccountConfiguration::Configuration] Configuration for the social account
      #
      #   @param social_account_id [String] ID of the social account, you want to apply the configuration to

      # @see PostForMe::Models::AccountConfiguration#configuration
      class Configuration < PostForMe::Internal::Type::BaseModel
        # @!attribute localizations
        #   Per-language localizations for the video title and description. Keys are BCP-47
        #   language tags (e.g. "fr", "es"). Maps to localizations on the YouTube Data API
        #   videos resource.
        #
        #   @return [Hash{Symbol=>PostForMe::Models::AccountConfiguration::Configuration::Localization}, nil]
        required :localizations,
                 -> {
                   PostForMe::Internal::Type::HashOf[PostForMe::AccountConfiguration::Configuration::Localization]
                 },
                 nil?: true

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

        # @!attribute audio_name
        #   Display name for the audio track on Instagram Reels. Only honored on Reels
        #   uploads, and only when the audio is original (Meta silently ignores it on
        #   licensed/fingerprinted tracks).
        #
        #   @return [String, nil]
        optional :audio_name, String, nil?: true

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

        # @!attribute category_id
        #   YouTube video category id (maps to snippet.categoryId; see YouTube Data API
        #   videoCategories.list)
        #
        #   @return [String, nil]
        optional :category_id, String, nil?: true

        # @!attribute collaborators
        #   List of page ids or users to invite as collaborators for a Video Reel (Instagram
        #   and Facebook)
        #
        #   @return [Array<Array<Object>>, nil]
        optional :collaborators,
                 PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]],
                 nil?: true

        # @!attribute community_id
        #   Id of the twitter community to post to
        #
        #   @return [String, nil]
        optional :community_id, String

        # @!attribute contains_synthetic_media
        #   If true, marks the YouTube video as containing altered or synthetic content per
        #   YouTube's disclosure policy. Sets status.containsSyntheticMedia on the
        #   videos.insert call; YouTube adds a "How this content was made" label to the
        #   description automatically.
        #
        #   @return [Boolean, nil]
        optional :contains_synthetic_media, PostForMe::Internal::Type::Boolean, nil?: true

        # @!attribute default_language
        #   Default language of the video (BCP-47 language tag, e.g. "en"). Maps to
        #   snippet.defaultLanguage.
        #
        #   @return [String, nil]
        optional :default_language, String, nil?: true

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

        # @!attribute embeddable
        #   If true the video can be embedded on other websites (maps to status.embeddable).
        #   Defaults to true.
        #
        #   @return [Boolean, nil]
        optional :embeddable, PostForMe::Internal::Type::Boolean, nil?: true

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

        # @!attribute license
        #   The video's license (maps to status.license). "youtube" is the standard YouTube
        #   license; "creativeCommon" is Creative Commons.
        #
        #   @return [Symbol, PostForMe::Models::AccountConfiguration::Configuration::License, nil]
        optional :license, enum: -> { PostForMe::AccountConfiguration::Configuration::License }, nil?: true

        # @!attribute link
        #   Pinterest post link
        #
        #   @return [String, nil]
        optional :link, String, nil?: true

        # @!attribute location
        #   Page id with a location that you want to tag the image or video with (Instagram
        #   and Facebook)
        #
        #   @return [String, nil]
        optional :location, String, nil?: true

        # @!attribute made_for_kids
        #   If true will notify YouTube the video is intended for kids, defaults to false
        #
        #   @return [Boolean, nil]
        optional :made_for_kids, PostForMe::Internal::Type::Boolean, nil?: true

        # @!attribute media
        #   Overrides the `media` from the post
        #
        #   @return [Array<PostForMe::Models::SocialPostMedia>, nil]
        optional :media, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostMedia] }, nil?: true

        # @!attribute placement
        #   Post placement for Facebook/Instagram/Threads
        #
        #   @return [Symbol, PostForMe::Models::AccountConfiguration::Configuration::Placement, nil]
        optional :placement,
                 enum: -> {
                   PostForMe::AccountConfiguration::Configuration::Placement
                 },
                 nil?: true

        # @!attribute poll
        #   Poll options for the twitter
        #
        #   @return [PostForMe::Models::TwitterPoll, nil]
        optional :poll, -> { PostForMe::TwitterPoll }

        # @!attribute privacy_status
        #   Sets the privacy status for TikTok (private, public), or YouTube (private,
        #   public, unlisted)
        #
        #   @return [Symbol, PostForMe::Models::AccountConfiguration::Configuration::PrivacyStatus, nil]
        optional :privacy_status,
                 enum: -> { PostForMe::AccountConfiguration::Configuration::PrivacyStatus },
                 nil?: true

        # @!attribute public_stats_viewable
        #   If true, the extended video statistics are publicly viewable (maps to
        #   status.publicStatsViewable). Defaults to true.
        #
        #   @return [Boolean, nil]
        optional :public_stats_viewable, PostForMe::Internal::Type::Boolean, nil?: true

        # @!attribute publish_at
        #   ISO 8601 datetime at which the video should be published. Only honoured when
        #   privacy_status is "private" (maps to status.publishAt).
        #
        #   @return [String, nil]
        optional :publish_at, String, nil?: true

        # @!attribute quote_tweet_id
        #   Id of the tweet you want to quote
        #
        #   @return [String, nil]
        optional :quote_tweet_id, String

        # @!attribute recording_date
        #   ISO 8601 date (YYYY-MM-DD) or datetime when the video was recorded (maps to
        #   recordingDetails.recordingDate).
        #
        #   @return [String, nil]
        optional :recording_date, String, nil?: true

        # @!attribute reply_settings
        #   Who can reply to the tweet
        #
        #   @return [Symbol, PostForMe::Models::AccountConfiguration::Configuration::ReplySettings, nil]
        optional :reply_settings,
                 enum: -> { PostForMe::AccountConfiguration::Configuration::ReplySettings },
                 nil?: true

        # @!attribute reshare_post_id
        #   LinkedIn UGC post id to reshare. The caption is used as the reshare commentary.
        #
        #   @return [String, nil]
        optional :reshare_post_id, String, nil?: true

        # @!attribute set_caption_for_each_image
        #   If true, include the caption on each image in a Facebook carousel upload; if
        #   false, only include it on the final carousel post
        #
        #   @return [Boolean, nil]
        optional :set_caption_for_each_image, PostForMe::Internal::Type::Boolean, nil?: true

        # @!attribute share_to_feed
        #   If false Instagram video posts will only be shown in the Reels tab
        #
        #   @return [Boolean, nil]
        optional :share_to_feed, PostForMe::Internal::Type::Boolean, nil?: true

        # @!attribute tags
        #   YouTube video tags
        #
        #   @return [Array<String>, nil]
        optional :tags, PostForMe::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute title
        #   Overrides the `title` from the post (Pinterest, TikTok, YouTube)
        #
        #   @return [String, nil]
        optional :title, String, nil?: true

        # @!attribute trial_reel_type
        #   Instagram trial reel type, when passed will be created as a trial reel. If
        #   manual the trial reel can be manually graduated in the native app. If perfomance
        #   the trial reel will be automatically graduated if the trial reel performs well.
        #
        #   @return [Symbol, PostForMe::Models::AccountConfiguration::Configuration::TrialReelType, nil]
        optional :trial_reel_type,
                 enum: -> { PostForMe::AccountConfiguration::Configuration::TrialReelType },
                 nil?: true

        # @!method initialize(localizations:, allow_comment: nil, allow_duet: nil, allow_stitch: nil, audio_name: nil, auto_add_music: nil, board_ids: nil, caption: nil, category_id: nil, collaborators: nil, community_id: nil, contains_synthetic_media: nil, default_language: nil, disclose_branded_content: nil, disclose_your_brand: nil, embeddable: nil, is_ai_generated: nil, is_draft: nil, license: nil, link: nil, location: nil, made_for_kids: nil, media: nil, placement: nil, poll: nil, privacy_status: nil, public_stats_viewable: nil, publish_at: nil, quote_tweet_id: nil, recording_date: nil, reply_settings: nil, reshare_post_id: nil, set_caption_for_each_image: nil, share_to_feed: nil, tags: nil, title: nil, trial_reel_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {PostForMe::Models::AccountConfiguration::Configuration} for more details.
        #
        #   Configuration for the social account
        #
        #   @param localizations [Hash{Symbol=>PostForMe::Models::AccountConfiguration::Configuration::Localization}, nil] Per-language localizations for the video title and description. Keys are BCP-47
        #
        #   @param allow_comment [Boolean, nil] Allow comments on TikTok
        #
        #   @param allow_duet [Boolean, nil] Allow duets on TikTok
        #
        #   @param allow_stitch [Boolean, nil] Allow stitch on TikTok
        #
        #   @param audio_name [String, nil] Display name for the audio track on Instagram Reels. Only honored on Reels uploa
        #
        #   @param auto_add_music [Boolean, nil] Will automatically add music to photo posts on TikTok
        #
        #   @param board_ids [Array<String>, nil] Pinterest board IDs
        #
        #   @param caption [Object, nil] Overrides the `caption` from the post
        #
        #   @param category_id [String, nil] YouTube video category id (maps to snippet.categoryId; see YouTube Data API vide
        #
        #   @param collaborators [Array<Array<Object>>, nil] List of page ids or users to invite as collaborators for a Video Reel (Instagram
        #
        #   @param community_id [String] Id of the twitter community to post to
        #
        #   @param contains_synthetic_media [Boolean, nil] If true, marks the YouTube video as containing altered or synthetic content per
        #
        #   @param default_language [String, nil] Default language of the video (BCP-47 language tag, e.g. "en"). Maps to snippet.
        #
        #   @param disclose_branded_content [Boolean, nil] Disclose branded content on TikTok
        #
        #   @param disclose_your_brand [Boolean, nil] Disclose your brand on TikTok
        #
        #   @param embeddable [Boolean, nil] If true the video can be embedded on other websites (maps to status.embeddable).
        #
        #   @param is_ai_generated [Boolean, nil] Flag content as AI generated on TikTok
        #
        #   @param is_draft [Boolean, nil] Will create a draft upload to TikTok, posting will need to be completed from wit
        #
        #   @param license [Symbol, PostForMe::Models::AccountConfiguration::Configuration::License, nil] The video's license (maps to status.license). "youtube" is the standard YouTube
        #
        #   @param link [String, nil] Pinterest post link
        #
        #   @param location [String, nil] Page id with a location that you want to tag the image or video with (Instagram
        #
        #   @param made_for_kids [Boolean, nil] If true will notify YouTube the video is intended for kids, defaults to false
        #
        #   @param media [Array<PostForMe::Models::SocialPostMedia>, nil] Overrides the `media` from the post
        #
        #   @param placement [Symbol, PostForMe::Models::AccountConfiguration::Configuration::Placement, nil] Post placement for Facebook/Instagram/Threads
        #
        #   @param poll [PostForMe::Models::TwitterPoll] Poll options for the twitter
        #
        #   @param privacy_status [Symbol, PostForMe::Models::AccountConfiguration::Configuration::PrivacyStatus, nil] Sets the privacy status for TikTok (private, public), or YouTube (private, publi
        #
        #   @param public_stats_viewable [Boolean, nil] If true, the extended video statistics are publicly viewable (maps to status.pub
        #
        #   @param publish_at [String, nil] ISO 8601 datetime at which the video should be published. Only honoured when pri
        #
        #   @param quote_tweet_id [String] Id of the tweet you want to quote
        #
        #   @param recording_date [String, nil] ISO 8601 date (YYYY-MM-DD) or datetime when the video was recorded (maps to reco
        #
        #   @param reply_settings [Symbol, PostForMe::Models::AccountConfiguration::Configuration::ReplySettings, nil] Who can reply to the tweet
        #
        #   @param reshare_post_id [String, nil] LinkedIn UGC post id to reshare. The caption is used as the reshare commentary.
        #
        #   @param set_caption_for_each_image [Boolean, nil] If true, include the caption on each image in a Facebook carousel upload; if fal
        #
        #   @param share_to_feed [Boolean, nil] If false Instagram video posts will only be shown in the Reels tab
        #
        #   @param tags [Array<String>, nil] YouTube video tags
        #
        #   @param title [String, nil] Overrides the `title` from the post (Pinterest, TikTok, YouTube)
        #
        #   @param trial_reel_type [Symbol, PostForMe::Models::AccountConfiguration::Configuration::TrialReelType, nil] Instagram trial reel type, when passed will be created as a trial reel. If manua

        class Localization < PostForMe::Internal::Type::BaseModel
          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute title
          #
          #   @return [String, nil]
          optional :title, String, nil?: true

          # @!method initialize(description: nil, title: nil)
          #   @param description [String, nil]
          #   @param title [String, nil]
        end

        # The video's license (maps to status.license). "youtube" is the standard YouTube
        # license; "creativeCommon" is Creative Commons.
        #
        # @see PostForMe::Models::AccountConfiguration::Configuration#license
        module License
          extend PostForMe::Internal::Type::Enum

          YOUTUBE = :youtube
          CREATIVE_COMMON = :creativeCommon

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Post placement for Facebook/Instagram/Threads
        #
        # @see PostForMe::Models::AccountConfiguration::Configuration#placement
        module Placement
          extend PostForMe::Internal::Type::Enum

          REELS = :reels
          TIMELINE = :timeline
          STORIES = :stories

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Sets the privacy status for TikTok (private, public), or YouTube (private,
        # public, unlisted)
        #
        # @see PostForMe::Models::AccountConfiguration::Configuration#privacy_status
        module PrivacyStatus
          extend PostForMe::Internal::Type::Enum

          PUBLIC = :public
          PRIVATE = :private
          UNLISTED = :unlisted

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Who can reply to the tweet
        #
        # @see PostForMe::Models::AccountConfiguration::Configuration#reply_settings
        module ReplySettings
          extend PostForMe::Internal::Type::Enum

          FOLLOWING = :following
          MENTIONED_USERS = :mentionedUsers
          SUBSCRIBERS = :subscribers
          VERIFIED = :verified

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Instagram trial reel type, when passed will be created as a trial reel. If
        # manual the trial reel can be manually graduated in the native app. If perfomance
        # the trial reel will be automatically graduated if the trial reel performs well.
        #
        # @see PostForMe::Models::AccountConfiguration::Configuration#trial_reel_type
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
end
