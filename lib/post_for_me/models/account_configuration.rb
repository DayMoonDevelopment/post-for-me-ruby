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

        # @!attribute quote_tweet_id
        #   Id of the tweet you want to quote
        #
        #   @return [String, nil]
        optional :quote_tweet_id, String

        # @!attribute reply_settings
        #   Who can reply to the tweet
        #
        #   @return [Symbol, PostForMe::Models::AccountConfiguration::Configuration::ReplySettings, nil]
        optional :reply_settings,
                 enum: -> { PostForMe::AccountConfiguration::Configuration::ReplySettings },
                 nil?: true

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

        # @!method initialize(allow_comment: nil, allow_duet: nil, allow_stitch: nil, audio_name: nil, auto_add_music: nil, board_ids: nil, caption: nil, collaborators: nil, community_id: nil, contains_synthetic_media: nil, disclose_branded_content: nil, disclose_your_brand: nil, is_ai_generated: nil, is_draft: nil, link: nil, location: nil, made_for_kids: nil, media: nil, placement: nil, poll: nil, privacy_status: nil, quote_tweet_id: nil, reply_settings: nil, set_caption_for_each_image: nil, share_to_feed: nil, title: nil, trial_reel_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {PostForMe::Models::AccountConfiguration::Configuration} for more details.
        #
        #   Configuration for the social account
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
        #   @param collaborators [Array<Array<Object>>, nil] List of page ids or users to invite as collaborators for a Video Reel (Instagram
        #
        #   @param community_id [String] Id of the twitter community to post to
        #
        #   @param contains_synthetic_media [Boolean, nil] If true, marks the YouTube video as containing altered or synthetic content per
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
        #   @param quote_tweet_id [String] Id of the tweet you want to quote
        #
        #   @param reply_settings [Symbol, PostForMe::Models::AccountConfiguration::Configuration::ReplySettings, nil] Who can reply to the tweet
        #
        #   @param set_caption_for_each_image [Boolean, nil] If true, include the caption on each image in a Facebook carousel upload; if fal
        #
        #   @param share_to_feed [Boolean, nil] If false Instagram video posts will only be shown in the Reels tab
        #
        #   @param title [String, nil] Overrides the `title` from the post (Pinterest, TikTok, YouTube)
        #
        #   @param trial_reel_type [Symbol, PostForMe::Models::AccountConfiguration::Configuration::TrialReelType, nil] Instagram trial reel type, when passed will be created as a trial reel. If manua

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
