# typed: strong

module PostForMe
  module Models
    class AccountConfiguration < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::AccountConfiguration, PostForMe::Internal::AnyHash)
        end

      # Configuration for the social account
      sig { returns(PostForMe::AccountConfiguration::Configuration) }
      attr_reader :configuration

      sig do
        params(
          configuration: PostForMe::AccountConfiguration::Configuration::OrHash
        ).void
      end
      attr_writer :configuration

      # ID of the social account, you want to apply the configuration to
      sig { returns(String) }
      attr_accessor :social_account_id

      sig do
        params(
          configuration: PostForMe::AccountConfiguration::Configuration::OrHash,
          social_account_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Configuration for the social account
        configuration:,
        # ID of the social account, you want to apply the configuration to
        social_account_id:
      )
      end

      sig do
        override.returns(
          {
            configuration: PostForMe::AccountConfiguration::Configuration,
            social_account_id: String
          }
        )
      end
      def to_hash
      end

      class Configuration < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::AccountConfiguration::Configuration,
              PostForMe::Internal::AnyHash
            )
          end

        # Per-language localizations for the video title and description. Keys are BCP-47
        # language tags (e.g. "fr", "es"). Maps to localizations on the YouTube Data API
        # videos resource.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :localizations

        # Allow comments on TikTok
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :allow_comment

        # Allow duets on TikTok
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :allow_duet

        # Allow stitch on TikTok
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :allow_stitch

        # Display name for the audio track on Instagram Reels. Only honored on Reels
        # uploads, and only when the audio is original (Meta silently ignores it on
        # licensed/fingerprinted tracks).
        sig { returns(T.nilable(String)) }
        attr_accessor :audio_name

        # Will automatically add music to photo posts on TikTok
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :auto_add_music

        # Pinterest board IDs
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :board_ids

        # Overrides the `caption` from the post
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :caption

        # YouTube video category id (maps to snippet.categoryId; see YouTube Data API
        # videoCategories.list)
        sig { returns(T.nilable(String)) }
        attr_accessor :category_id

        # List of page ids or users to invite as collaborators for a Video Reel (Instagram
        # and Facebook)
        sig { returns(T.nilable(T::Array[T::Array[T.anything]])) }
        attr_accessor :collaborators

        # Id of the twitter community to post to
        sig { returns(T.nilable(String)) }
        attr_reader :community_id

        sig { params(community_id: String).void }
        attr_writer :community_id

        # If true, marks the YouTube video as containing altered or synthetic content per
        # YouTube's disclosure policy. Sets status.containsSyntheticMedia on the
        # videos.insert call; YouTube adds a "How this content was made" label to the
        # description automatically.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :contains_synthetic_media

        # Default language of the video (BCP-47 language tag, e.g. "en"). Maps to
        # snippet.defaultLanguage.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_language

        # Disclose branded content on TikTok
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :disclose_branded_content

        # Disclose your brand on TikTok
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :disclose_your_brand

        # If true the video can be embedded on other websites (maps to status.embeddable).
        # Defaults to true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :embeddable

        # Flag content as AI generated on TikTok
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :is_ai_generated

        # Will create a draft upload to TikTok, posting will need to be completed from
        # within the app
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :is_draft

        # The video's license (maps to status.license). "youtube" is the standard YouTube
        # license; "creativeCommon" is Creative Commons.
        sig do
          returns(
            T.nilable(
              PostForMe::AccountConfiguration::Configuration::License::OrSymbol
            )
          )
        end
        attr_accessor :license

        # Pinterest post link
        sig { returns(T.nilable(String)) }
        attr_accessor :link

        # Page id with a location that you want to tag the image or video with (Instagram
        # and Facebook)
        sig { returns(T.nilable(String)) }
        attr_accessor :location

        # If true will notify YouTube the video is intended for kids, defaults to false
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :made_for_kids

        # Overrides the `media` from the post
        sig { returns(T.nilable(T::Array[PostForMe::SocialPostMedia])) }
        attr_accessor :media

        # Post placement for Facebook/Instagram/Threads
        sig do
          returns(
            T.nilable(
              PostForMe::AccountConfiguration::Configuration::Placement::OrSymbol
            )
          )
        end
        attr_accessor :placement

        # Poll options for the twitter
        sig { returns(T.nilable(PostForMe::TwitterPoll)) }
        attr_reader :poll

        sig { params(poll: PostForMe::TwitterPoll::OrHash).void }
        attr_writer :poll

        # Sets the privacy status for TikTok (private, public), or YouTube (private,
        # public, unlisted)
        sig do
          returns(
            T.nilable(
              PostForMe::AccountConfiguration::Configuration::PrivacyStatus::OrSymbol
            )
          )
        end
        attr_accessor :privacy_status

        # If true, the extended video statistics are publicly viewable (maps to
        # status.publicStatsViewable). Defaults to true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :public_stats_viewable

        # ISO 8601 datetime at which the video should be published. Only honoured when
        # privacy_status is "private" (maps to status.publishAt).
        sig { returns(T.nilable(String)) }
        attr_accessor :publish_at

        # Id of the tweet you want to quote
        sig { returns(T.nilable(String)) }
        attr_reader :quote_tweet_id

        sig { params(quote_tweet_id: String).void }
        attr_writer :quote_tweet_id

        # ISO 8601 date (YYYY-MM-DD) or datetime when the video was recorded (maps to
        # recordingDetails.recordingDate).
        sig { returns(T.nilable(String)) }
        attr_accessor :recording_date

        # Who can reply to the tweet
        sig do
          returns(
            T.nilable(
              PostForMe::AccountConfiguration::Configuration::ReplySettings::OrSymbol
            )
          )
        end
        attr_accessor :reply_settings

        # LinkedIn UGC post id to reshare. The caption is used as the reshare commentary.
        sig { returns(T.nilable(String)) }
        attr_accessor :reshare_post_id

        # If true, include the caption on each image in a Facebook carousel upload; if
        # false, only include it on the final carousel post
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :set_caption_for_each_image

        # If false Instagram video posts will only be shown in the Reels tab
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :share_to_feed

        # YouTube video tags
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :tags

        # Overrides the `title` from the post (Pinterest, TikTok, YouTube)
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        # Instagram trial reel type, when passed will be created as a trial reel. If
        # manual the trial reel can be manually graduated in the native app. If perfomance
        # the trial reel will be automatically graduated if the trial reel performs well.
        sig do
          returns(
            T.nilable(
              PostForMe::AccountConfiguration::Configuration::TrialReelType::OrSymbol
            )
          )
        end
        attr_accessor :trial_reel_type

        # Configuration for the social account
        sig do
          params(
            localizations: T.nilable(T::Hash[Symbol, T.anything]),
            allow_comment: T.nilable(T::Boolean),
            allow_duet: T.nilable(T::Boolean),
            allow_stitch: T.nilable(T::Boolean),
            audio_name: T.nilable(String),
            auto_add_music: T.nilable(T::Boolean),
            board_ids: T.nilable(T::Array[String]),
            caption: T.nilable(T.anything),
            category_id: T.nilable(String),
            collaborators: T.nilable(T::Array[T::Array[T.anything]]),
            community_id: String,
            contains_synthetic_media: T.nilable(T::Boolean),
            default_language: T.nilable(String),
            disclose_branded_content: T.nilable(T::Boolean),
            disclose_your_brand: T.nilable(T::Boolean),
            embeddable: T.nilable(T::Boolean),
            is_ai_generated: T.nilable(T::Boolean),
            is_draft: T.nilable(T::Boolean),
            license:
              T.nilable(
                PostForMe::AccountConfiguration::Configuration::License::OrSymbol
              ),
            link: T.nilable(String),
            location: T.nilable(String),
            made_for_kids: T.nilable(T::Boolean),
            media: T.nilable(T::Array[PostForMe::SocialPostMedia::OrHash]),
            placement:
              T.nilable(
                PostForMe::AccountConfiguration::Configuration::Placement::OrSymbol
              ),
            poll: PostForMe::TwitterPoll::OrHash,
            privacy_status:
              T.nilable(
                PostForMe::AccountConfiguration::Configuration::PrivacyStatus::OrSymbol
              ),
            public_stats_viewable: T.nilable(T::Boolean),
            publish_at: T.nilable(String),
            quote_tweet_id: String,
            recording_date: T.nilable(String),
            reply_settings:
              T.nilable(
                PostForMe::AccountConfiguration::Configuration::ReplySettings::OrSymbol
              ),
            reshare_post_id: T.nilable(String),
            set_caption_for_each_image: T.nilable(T::Boolean),
            share_to_feed: T.nilable(T::Boolean),
            tags: T.nilable(T::Array[String]),
            title: T.nilable(String),
            trial_reel_type:
              T.nilable(
                PostForMe::AccountConfiguration::Configuration::TrialReelType::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Per-language localizations for the video title and description. Keys are BCP-47
          # language tags (e.g. "fr", "es"). Maps to localizations on the YouTube Data API
          # videos resource.
          localizations:,
          # Allow comments on TikTok
          allow_comment: nil,
          # Allow duets on TikTok
          allow_duet: nil,
          # Allow stitch on TikTok
          allow_stitch: nil,
          # Display name for the audio track on Instagram Reels. Only honored on Reels
          # uploads, and only when the audio is original (Meta silently ignores it on
          # licensed/fingerprinted tracks).
          audio_name: nil,
          # Will automatically add music to photo posts on TikTok
          auto_add_music: nil,
          # Pinterest board IDs
          board_ids: nil,
          # Overrides the `caption` from the post
          caption: nil,
          # YouTube video category id (maps to snippet.categoryId; see YouTube Data API
          # videoCategories.list)
          category_id: nil,
          # List of page ids or users to invite as collaborators for a Video Reel (Instagram
          # and Facebook)
          collaborators: nil,
          # Id of the twitter community to post to
          community_id: nil,
          # If true, marks the YouTube video as containing altered or synthetic content per
          # YouTube's disclosure policy. Sets status.containsSyntheticMedia on the
          # videos.insert call; YouTube adds a "How this content was made" label to the
          # description automatically.
          contains_synthetic_media: nil,
          # Default language of the video (BCP-47 language tag, e.g. "en"). Maps to
          # snippet.defaultLanguage.
          default_language: nil,
          # Disclose branded content on TikTok
          disclose_branded_content: nil,
          # Disclose your brand on TikTok
          disclose_your_brand: nil,
          # If true the video can be embedded on other websites (maps to status.embeddable).
          # Defaults to true.
          embeddable: nil,
          # Flag content as AI generated on TikTok
          is_ai_generated: nil,
          # Will create a draft upload to TikTok, posting will need to be completed from
          # within the app
          is_draft: nil,
          # The video's license (maps to status.license). "youtube" is the standard YouTube
          # license; "creativeCommon" is Creative Commons.
          license: nil,
          # Pinterest post link
          link: nil,
          # Page id with a location that you want to tag the image or video with (Instagram
          # and Facebook)
          location: nil,
          # If true will notify YouTube the video is intended for kids, defaults to false
          made_for_kids: nil,
          # Overrides the `media` from the post
          media: nil,
          # Post placement for Facebook/Instagram/Threads
          placement: nil,
          # Poll options for the twitter
          poll: nil,
          # Sets the privacy status for TikTok (private, public), or YouTube (private,
          # public, unlisted)
          privacy_status: nil,
          # If true, the extended video statistics are publicly viewable (maps to
          # status.publicStatsViewable). Defaults to true.
          public_stats_viewable: nil,
          # ISO 8601 datetime at which the video should be published. Only honoured when
          # privacy_status is "private" (maps to status.publishAt).
          publish_at: nil,
          # Id of the tweet you want to quote
          quote_tweet_id: nil,
          # ISO 8601 date (YYYY-MM-DD) or datetime when the video was recorded (maps to
          # recordingDetails.recordingDate).
          recording_date: nil,
          # Who can reply to the tweet
          reply_settings: nil,
          # LinkedIn UGC post id to reshare. The caption is used as the reshare commentary.
          reshare_post_id: nil,
          # If true, include the caption on each image in a Facebook carousel upload; if
          # false, only include it on the final carousel post
          set_caption_for_each_image: nil,
          # If false Instagram video posts will only be shown in the Reels tab
          share_to_feed: nil,
          # YouTube video tags
          tags: nil,
          # Overrides the `title` from the post (Pinterest, TikTok, YouTube)
          title: nil,
          # Instagram trial reel type, when passed will be created as a trial reel. If
          # manual the trial reel can be manually graduated in the native app. If perfomance
          # the trial reel will be automatically graduated if the trial reel performs well.
          trial_reel_type: nil
        )
        end

        sig do
          override.returns(
            {
              localizations: T.nilable(T::Hash[Symbol, T.anything]),
              allow_comment: T.nilable(T::Boolean),
              allow_duet: T.nilable(T::Boolean),
              allow_stitch: T.nilable(T::Boolean),
              audio_name: T.nilable(String),
              auto_add_music: T.nilable(T::Boolean),
              board_ids: T.nilable(T::Array[String]),
              caption: T.nilable(T.anything),
              category_id: T.nilable(String),
              collaborators: T.nilable(T::Array[T::Array[T.anything]]),
              community_id: String,
              contains_synthetic_media: T.nilable(T::Boolean),
              default_language: T.nilable(String),
              disclose_branded_content: T.nilable(T::Boolean),
              disclose_your_brand: T.nilable(T::Boolean),
              embeddable: T.nilable(T::Boolean),
              is_ai_generated: T.nilable(T::Boolean),
              is_draft: T.nilable(T::Boolean),
              license:
                T.nilable(
                  PostForMe::AccountConfiguration::Configuration::License::OrSymbol
                ),
              link: T.nilable(String),
              location: T.nilable(String),
              made_for_kids: T.nilable(T::Boolean),
              media: T.nilable(T::Array[PostForMe::SocialPostMedia]),
              placement:
                T.nilable(
                  PostForMe::AccountConfiguration::Configuration::Placement::OrSymbol
                ),
              poll: PostForMe::TwitterPoll,
              privacy_status:
                T.nilable(
                  PostForMe::AccountConfiguration::Configuration::PrivacyStatus::OrSymbol
                ),
              public_stats_viewable: T.nilable(T::Boolean),
              publish_at: T.nilable(String),
              quote_tweet_id: String,
              recording_date: T.nilable(String),
              reply_settings:
                T.nilable(
                  PostForMe::AccountConfiguration::Configuration::ReplySettings::OrSymbol
                ),
              reshare_post_id: T.nilable(String),
              set_caption_for_each_image: T.nilable(T::Boolean),
              share_to_feed: T.nilable(T::Boolean),
              tags: T.nilable(T::Array[String]),
              title: T.nilable(String),
              trial_reel_type:
                T.nilable(
                  PostForMe::AccountConfiguration::Configuration::TrialReelType::OrSymbol
                )
            }
          )
        end
        def to_hash
        end

        # The video's license (maps to status.license). "youtube" is the standard YouTube
        # license; "creativeCommon" is Creative Commons.
        module License
          extend PostForMe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PostForMe::AccountConfiguration::Configuration::License
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          YOUTUBE =
            T.let(
              :youtube,
              PostForMe::AccountConfiguration::Configuration::License::TaggedSymbol
            )
          CREATIVE_COMMON =
            T.let(
              :creativeCommon,
              PostForMe::AccountConfiguration::Configuration::License::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PostForMe::AccountConfiguration::Configuration::License::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Post placement for Facebook/Instagram/Threads
        module Placement
          extend PostForMe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PostForMe::AccountConfiguration::Configuration::Placement
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REELS =
            T.let(
              :reels,
              PostForMe::AccountConfiguration::Configuration::Placement::TaggedSymbol
            )
          TIMELINE =
            T.let(
              :timeline,
              PostForMe::AccountConfiguration::Configuration::Placement::TaggedSymbol
            )
          STORIES =
            T.let(
              :stories,
              PostForMe::AccountConfiguration::Configuration::Placement::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PostForMe::AccountConfiguration::Configuration::Placement::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sets the privacy status for TikTok (private, public), or YouTube (private,
        # public, unlisted)
        module PrivacyStatus
          extend PostForMe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PostForMe::AccountConfiguration::Configuration::PrivacyStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUBLIC =
            T.let(
              :public,
              PostForMe::AccountConfiguration::Configuration::PrivacyStatus::TaggedSymbol
            )
          PRIVATE =
            T.let(
              :private,
              PostForMe::AccountConfiguration::Configuration::PrivacyStatus::TaggedSymbol
            )
          UNLISTED =
            T.let(
              :unlisted,
              PostForMe::AccountConfiguration::Configuration::PrivacyStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PostForMe::AccountConfiguration::Configuration::PrivacyStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Who can reply to the tweet
        module ReplySettings
          extend PostForMe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PostForMe::AccountConfiguration::Configuration::ReplySettings
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FOLLOWING =
            T.let(
              :following,
              PostForMe::AccountConfiguration::Configuration::ReplySettings::TaggedSymbol
            )
          MENTIONED_USERS =
            T.let(
              :mentionedUsers,
              PostForMe::AccountConfiguration::Configuration::ReplySettings::TaggedSymbol
            )
          SUBSCRIBERS =
            T.let(
              :subscribers,
              PostForMe::AccountConfiguration::Configuration::ReplySettings::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              PostForMe::AccountConfiguration::Configuration::ReplySettings::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PostForMe::AccountConfiguration::Configuration::ReplySettings::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Instagram trial reel type, when passed will be created as a trial reel. If
        # manual the trial reel can be manually graduated in the native app. If perfomance
        # the trial reel will be automatically graduated if the trial reel performs well.
        module TrialReelType
          extend PostForMe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PostForMe::AccountConfiguration::Configuration::TrialReelType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MANUAL =
            T.let(
              :manual,
              PostForMe::AccountConfiguration::Configuration::TrialReelType::TaggedSymbol
            )
          PERFORMANCE =
            T.let(
              :performance,
              PostForMe::AccountConfiguration::Configuration::TrialReelType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PostForMe::AccountConfiguration::Configuration::TrialReelType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
