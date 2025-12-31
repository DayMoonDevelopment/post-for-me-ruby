# typed: strong

module PostForMe
  module Models
    class SocialPost < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::SocialPost, PostForMe::Internal::AnyHash)
        end

      # Unique identifier of the post
      sig { returns(String) }
      attr_accessor :id

      # Account-specific configurations for the post
      sig do
        returns(
          T.nilable(T::Array[PostForMe::SocialPost::AccountConfiguration])
        )
      end
      attr_accessor :account_configurations

      # Caption text for the post
      sig { returns(String) }
      attr_accessor :caption

      # Timestamp when the post was created
      sig { returns(String) }
      attr_accessor :created_at

      # Provided unique identifier of the post
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Array of media URLs associated with the post
      sig { returns(T.nilable(T::Array[PostForMe::SocialPost::Media])) }
      attr_accessor :media

      # Platform-specific configurations for the post
      sig { returns(T.nilable(PostForMe::PlatformConfigurationsDto)) }
      attr_reader :platform_configurations

      sig do
        params(
          platform_configurations:
            T.nilable(PostForMe::PlatformConfigurationsDto::OrHash)
        ).void
      end
      attr_writer :platform_configurations

      # Scheduled date and time for the post
      sig { returns(T.nilable(String)) }
      attr_accessor :scheduled_at

      # Array of social account IDs for posting
      sig { returns(T::Array[PostForMe::SocialAccount]) }
      attr_accessor :social_accounts

      # Current status of the post: draft, processed, scheduled, or processing
      sig { returns(PostForMe::SocialPost::Status::TaggedSymbol) }
      attr_accessor :status

      # Timestamp when the post was last updated
      sig { returns(String) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          account_configurations:
            T.nilable(
              T::Array[PostForMe::SocialPost::AccountConfiguration::OrHash]
            ),
          caption: String,
          created_at: String,
          external_id: T.nilable(String),
          media: T.nilable(T::Array[PostForMe::SocialPost::Media::OrHash]),
          platform_configurations:
            T.nilable(PostForMe::PlatformConfigurationsDto::OrHash),
          scheduled_at: T.nilable(String),
          social_accounts: T::Array[PostForMe::SocialAccount::OrHash],
          status: PostForMe::SocialPost::Status::OrSymbol,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier of the post
        id:,
        # Account-specific configurations for the post
        account_configurations:,
        # Caption text for the post
        caption:,
        # Timestamp when the post was created
        created_at:,
        # Provided unique identifier of the post
        external_id:,
        # Array of media URLs associated with the post
        media:,
        # Platform-specific configurations for the post
        platform_configurations:,
        # Scheduled date and time for the post
        scheduled_at:,
        # Array of social account IDs for posting
        social_accounts:,
        # Current status of the post: draft, processed, scheduled, or processing
        status:,
        # Timestamp when the post was last updated
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_configurations:
              T.nilable(T::Array[PostForMe::SocialPost::AccountConfiguration]),
            caption: String,
            created_at: String,
            external_id: T.nilable(String),
            media: T.nilable(T::Array[PostForMe::SocialPost::Media]),
            platform_configurations:
              T.nilable(PostForMe::PlatformConfigurationsDto),
            scheduled_at: T.nilable(String),
            social_accounts: T::Array[PostForMe::SocialAccount],
            status: PostForMe::SocialPost::Status::TaggedSymbol,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      class AccountConfiguration < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::SocialPost::AccountConfiguration,
              PostForMe::Internal::AnyHash
            )
          end

        # Configuration for the social account
        sig do
          returns(PostForMe::SocialPost::AccountConfiguration::Configuration)
        end
        attr_reader :configuration

        sig do
          params(
            configuration:
              PostForMe::SocialPost::AccountConfiguration::Configuration::OrHash
          ).void
        end
        attr_writer :configuration

        # ID of the social account, you want to apply the configuration to
        sig { returns(String) }
        attr_accessor :social_account_id

        sig do
          params(
            configuration:
              PostForMe::SocialPost::AccountConfiguration::Configuration::OrHash,
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
              configuration:
                PostForMe::SocialPost::AccountConfiguration::Configuration,
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
                PostForMe::SocialPost::AccountConfiguration::Configuration,
                PostForMe::Internal::AnyHash
              )
            end

          # Allow comments on TikTok
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :allow_comment

          # Allow duets on TikTok
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :allow_duet

          # Allow stitch on TikTok
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :allow_stitch

          # Will automatically add music to photo posts on TikTok
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :auto_add_music

          # Pinterest board IDs
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :board_ids

          # Overrides the `caption` from the post
          sig { returns(T.nilable(T.anything)) }
          attr_accessor :caption

          # List of page ids or users to invite as collaborators for a Video Reel (Instagram
          # and Facebook)
          sig { returns(T.nilable(T::Array[T::Array[T.anything]])) }
          attr_accessor :collaborators

          # Id of the twitter community to post to
          sig { returns(T.nilable(String)) }
          attr_reader :community_id

          sig { params(community_id: String).void }
          attr_writer :community_id

          # Disclose branded content on TikTok
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :disclose_branded_content

          # Disclose your brand on TikTok
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :disclose_your_brand

          # Flag content as AI generated on TikTok
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :is_ai_generated

          # Will create a draft upload to TikTok, posting will need to be completed from
          # within the app
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :is_draft

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
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :media

          # Post placement for Facebook/Instagram/Threads
          sig do
            returns(
              T.nilable(
                PostForMe::SocialPost::AccountConfiguration::Configuration::Placement::TaggedSymbol
              )
            )
          end
          attr_accessor :placement

          # Poll options for the twitter
          sig do
            returns(
              T.nilable(
                PostForMe::SocialPost::AccountConfiguration::Configuration::Poll
              )
            )
          end
          attr_reader :poll

          sig do
            params(
              poll:
                PostForMe::SocialPost::AccountConfiguration::Configuration::Poll::OrHash
            ).void
          end
          attr_writer :poll

          # Sets the privacy status for TikTok (private, public), or YouTube (private,
          # public, unlisted)
          sig do
            returns(
              T.nilable(
                PostForMe::SocialPost::AccountConfiguration::Configuration::PrivacyStatus::TaggedSymbol
              )
            )
          end
          attr_accessor :privacy_status

          # Id of the tweet you want to quote
          sig { returns(T.nilable(String)) }
          attr_reader :quote_tweet_id

          sig { params(quote_tweet_id: String).void }
          attr_writer :quote_tweet_id

          # Who can reply to the tweet
          sig do
            returns(
              T.nilable(
                PostForMe::SocialPost::AccountConfiguration::Configuration::ReplySettings::TaggedSymbol
              )
            )
          end
          attr_accessor :reply_settings

          # If false Instagram video posts will only be shown in the Reels tab
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :share_to_feed

          # Overrides the `title` from the post
          sig { returns(T.nilable(String)) }
          attr_accessor :title

          # Configuration for the social account
          sig do
            params(
              allow_comment: T.nilable(T::Boolean),
              allow_duet: T.nilable(T::Boolean),
              allow_stitch: T.nilable(T::Boolean),
              auto_add_music: T.nilable(T::Boolean),
              board_ids: T.nilable(T::Array[String]),
              caption: T.nilable(T.anything),
              collaborators: T.nilable(T::Array[T::Array[T.anything]]),
              community_id: String,
              disclose_branded_content: T.nilable(T::Boolean),
              disclose_your_brand: T.nilable(T::Boolean),
              is_ai_generated: T.nilable(T::Boolean),
              is_draft: T.nilable(T::Boolean),
              link: T.nilable(String),
              location: T.nilable(String),
              made_for_kids: T.nilable(T::Boolean),
              media: T.nilable(T::Array[String]),
              placement:
                T.nilable(
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Placement::OrSymbol
                ),
              poll:
                PostForMe::SocialPost::AccountConfiguration::Configuration::Poll::OrHash,
              privacy_status:
                T.nilable(
                  PostForMe::SocialPost::AccountConfiguration::Configuration::PrivacyStatus::OrSymbol
                ),
              quote_tweet_id: String,
              reply_settings:
                T.nilable(
                  PostForMe::SocialPost::AccountConfiguration::Configuration::ReplySettings::OrSymbol
                ),
              share_to_feed: T.nilable(T::Boolean),
              title: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Allow comments on TikTok
            allow_comment: nil,
            # Allow duets on TikTok
            allow_duet: nil,
            # Allow stitch on TikTok
            allow_stitch: nil,
            # Will automatically add music to photo posts on TikTok
            auto_add_music: nil,
            # Pinterest board IDs
            board_ids: nil,
            # Overrides the `caption` from the post
            caption: nil,
            # List of page ids or users to invite as collaborators for a Video Reel (Instagram
            # and Facebook)
            collaborators: nil,
            # Id of the twitter community to post to
            community_id: nil,
            # Disclose branded content on TikTok
            disclose_branded_content: nil,
            # Disclose your brand on TikTok
            disclose_your_brand: nil,
            # Flag content as AI generated on TikTok
            is_ai_generated: nil,
            # Will create a draft upload to TikTok, posting will need to be completed from
            # within the app
            is_draft: nil,
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
            # Id of the tweet you want to quote
            quote_tweet_id: nil,
            # Who can reply to the tweet
            reply_settings: nil,
            # If false Instagram video posts will only be shown in the Reels tab
            share_to_feed: nil,
            # Overrides the `title` from the post
            title: nil
          )
          end

          sig do
            override.returns(
              {
                allow_comment: T.nilable(T::Boolean),
                allow_duet: T.nilable(T::Boolean),
                allow_stitch: T.nilable(T::Boolean),
                auto_add_music: T.nilable(T::Boolean),
                board_ids: T.nilable(T::Array[String]),
                caption: T.nilable(T.anything),
                collaborators: T.nilable(T::Array[T::Array[T.anything]]),
                community_id: String,
                disclose_branded_content: T.nilable(T::Boolean),
                disclose_your_brand: T.nilable(T::Boolean),
                is_ai_generated: T.nilable(T::Boolean),
                is_draft: T.nilable(T::Boolean),
                link: T.nilable(String),
                location: T.nilable(String),
                made_for_kids: T.nilable(T::Boolean),
                media: T.nilable(T::Array[String]),
                placement:
                  T.nilable(
                    PostForMe::SocialPost::AccountConfiguration::Configuration::Placement::TaggedSymbol
                  ),
                poll:
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Poll,
                privacy_status:
                  T.nilable(
                    PostForMe::SocialPost::AccountConfiguration::Configuration::PrivacyStatus::TaggedSymbol
                  ),
                quote_tweet_id: String,
                reply_settings:
                  T.nilable(
                    PostForMe::SocialPost::AccountConfiguration::Configuration::ReplySettings::TaggedSymbol
                  ),
                share_to_feed: T.nilable(T::Boolean),
                title: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          # Post placement for Facebook/Instagram/Threads
          module Placement
            extend PostForMe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Placement
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REELS =
              T.let(
                :reels,
                PostForMe::SocialPost::AccountConfiguration::Configuration::Placement::TaggedSymbol
              )
            TIMELINE =
              T.let(
                :timeline,
                PostForMe::SocialPost::AccountConfiguration::Configuration::Placement::TaggedSymbol
              )
            STORIES =
              T.let(
                :stories,
                PostForMe::SocialPost::AccountConfiguration::Configuration::Placement::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Placement::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Poll < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Poll,
                  PostForMe::Internal::AnyHash
                )
              end

            # Duration of the poll in minutes
            sig { returns(Float) }
            attr_accessor :duration_minutes

            # The choices of the poll, requiring 2-4 options
            sig { returns(T::Array[String]) }
            attr_accessor :options

            # Who can reply to the tweet
            sig do
              returns(
                T.nilable(
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Poll::ReplySettings::TaggedSymbol
                )
              )
            end
            attr_reader :reply_settings

            sig do
              params(
                reply_settings:
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Poll::ReplySettings::OrSymbol
              ).void
            end
            attr_writer :reply_settings

            # Poll options for the twitter
            sig do
              params(
                duration_minutes: Float,
                options: T::Array[String],
                reply_settings:
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Poll::ReplySettings::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Duration of the poll in minutes
              duration_minutes:,
              # The choices of the poll, requiring 2-4 options
              options:,
              # Who can reply to the tweet
              reply_settings: nil
            )
            end

            sig do
              override.returns(
                {
                  duration_minutes: Float,
                  options: T::Array[String],
                  reply_settings:
                    PostForMe::SocialPost::AccountConfiguration::Configuration::Poll::ReplySettings::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Who can reply to the tweet
            module ReplySettings
              extend PostForMe::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    PostForMe::SocialPost::AccountConfiguration::Configuration::Poll::ReplySettings
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FOLLOWING =
                T.let(
                  :following,
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Poll::ReplySettings::TaggedSymbol
                )
              MENTIONED_USERS =
                T.let(
                  :mentionedUsers,
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Poll::ReplySettings::TaggedSymbol
                )
              SUBSCRIBERS =
                T.let(
                  :subscribers,
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Poll::ReplySettings::TaggedSymbol
                )
              VERIFIED =
                T.let(
                  :verified,
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Poll::ReplySettings::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    PostForMe::SocialPost::AccountConfiguration::Configuration::Poll::ReplySettings::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
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
                  PostForMe::SocialPost::AccountConfiguration::Configuration::PrivacyStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PUBLIC =
              T.let(
                :public,
                PostForMe::SocialPost::AccountConfiguration::Configuration::PrivacyStatus::TaggedSymbol
              )
            PRIVATE =
              T.let(
                :private,
                PostForMe::SocialPost::AccountConfiguration::Configuration::PrivacyStatus::TaggedSymbol
              )
            UNLISTED =
              T.let(
                :unlisted,
                PostForMe::SocialPost::AccountConfiguration::Configuration::PrivacyStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::SocialPost::AccountConfiguration::Configuration::PrivacyStatus::TaggedSymbol
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
                  PostForMe::SocialPost::AccountConfiguration::Configuration::ReplySettings
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FOLLOWING =
              T.let(
                :following,
                PostForMe::SocialPost::AccountConfiguration::Configuration::ReplySettings::TaggedSymbol
              )
            MENTIONED_USERS =
              T.let(
                :mentionedUsers,
                PostForMe::SocialPost::AccountConfiguration::Configuration::ReplySettings::TaggedSymbol
              )
            SUBSCRIBERS =
              T.let(
                :subscribers,
                PostForMe::SocialPost::AccountConfiguration::Configuration::ReplySettings::TaggedSymbol
              )
            VERIFIED =
              T.let(
                :verified,
                PostForMe::SocialPost::AccountConfiguration::Configuration::ReplySettings::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::SocialPost::AccountConfiguration::Configuration::ReplySettings::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Media < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(PostForMe::SocialPost::Media, PostForMe::Internal::AnyHash)
          end

        # Public URL of the media
        sig { returns(String) }
        attr_accessor :url

        # List of tags to attach to the media
        sig { returns(T.nilable(T::Array[PostForMe::SocialPost::Media::Tag])) }
        attr_accessor :tags

        # Timestamp in milliseconds of frame to use as thumbnail for the media
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :thumbnail_timestamp_ms

        # Public URL of the thumbnail for the media
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :thumbnail_url

        sig do
          params(
            url: String,
            tags:
              T.nilable(T::Array[PostForMe::SocialPost::Media::Tag::OrHash]),
            thumbnail_timestamp_ms: T.nilable(T.anything),
            thumbnail_url: T.nilable(T.anything)
          ).returns(T.attached_class)
        end
        def self.new(
          # Public URL of the media
          url:,
          # List of tags to attach to the media
          tags: nil,
          # Timestamp in milliseconds of frame to use as thumbnail for the media
          thumbnail_timestamp_ms: nil,
          # Public URL of the thumbnail for the media
          thumbnail_url: nil
        )
        end

        sig do
          override.returns(
            {
              url: String,
              tags: T.nilable(T::Array[PostForMe::SocialPost::Media::Tag]),
              thumbnail_timestamp_ms: T.nilable(T.anything),
              thumbnail_url: T.nilable(T.anything)
            }
          )
        end
        def to_hash
        end

        class Tag < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::SocialPost::Media::Tag,
                PostForMe::Internal::AnyHash
              )
            end

          # Facebook User ID, Instagram Username or Instagram product id to tag
          sig { returns(String) }
          attr_accessor :id

          # The platform for the tags
          sig do
            returns(PostForMe::SocialPost::Media::Tag::Platform::TaggedSymbol)
          end
          attr_accessor :platform

          # The type of tag, user to tag accounts, product to tag products (only supported
          # for instagram)
          sig { returns(PostForMe::SocialPost::Media::Tag::Type::TaggedSymbol) }
          attr_accessor :type

          # Percentage distance from left edge of the image, Not required for videos or
          # stories
          sig { returns(T.nilable(Float)) }
          attr_reader :x

          sig { params(x: Float).void }
          attr_writer :x

          # Percentage distance from top edge of the image, Not required for videos or
          # stories
          sig { returns(T.nilable(Float)) }
          attr_reader :y_

          sig { params(y_: Float).void }
          attr_writer :y_

          sig do
            params(
              id: String,
              platform: PostForMe::SocialPost::Media::Tag::Platform::OrSymbol,
              type: PostForMe::SocialPost::Media::Tag::Type::OrSymbol,
              x: Float,
              y_: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Facebook User ID, Instagram Username or Instagram product id to tag
            id:,
            # The platform for the tags
            platform:,
            # The type of tag, user to tag accounts, product to tag products (only supported
            # for instagram)
            type:,
            # Percentage distance from left edge of the image, Not required for videos or
            # stories
            x: nil,
            # Percentage distance from top edge of the image, Not required for videos or
            # stories
            y_: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                platform:
                  PostForMe::SocialPost::Media::Tag::Platform::TaggedSymbol,
                type: PostForMe::SocialPost::Media::Tag::Type::TaggedSymbol,
                x: Float,
                y_: Float
              }
            )
          end
          def to_hash
          end

          # The platform for the tags
          module Platform
            extend PostForMe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, PostForMe::SocialPost::Media::Tag::Platform)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FACEBOOK =
              T.let(
                :facebook,
                PostForMe::SocialPost::Media::Tag::Platform::TaggedSymbol
              )
            INSTAGRAM =
              T.let(
                :instagram,
                PostForMe::SocialPost::Media::Tag::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::SocialPost::Media::Tag::Platform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The type of tag, user to tag accounts, product to tag products (only supported
          # for instagram)
          module Type
            extend PostForMe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, PostForMe::SocialPost::Media::Tag::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USER =
              T.let(
                :user,
                PostForMe::SocialPost::Media::Tag::Type::TaggedSymbol
              )
            PRODUCT =
              T.let(
                :product,
                PostForMe::SocialPost::Media::Tag::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[PostForMe::SocialPost::Media::Tag::Type::TaggedSymbol]
              )
            end
            def self.values
            end
          end
        end
      end

      # Current status of the post: draft, processed, scheduled, or processing
      module Status
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, PostForMe::SocialPost::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:draft, PostForMe::SocialPost::Status::TaggedSymbol)
        SCHEDULED =
          T.let(:scheduled, PostForMe::SocialPost::Status::TaggedSymbol)
        PROCESSING =
          T.let(:processing, PostForMe::SocialPost::Status::TaggedSymbol)
        PROCESSED =
          T.let(:processed, PostForMe::SocialPost::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[PostForMe::SocialPost::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
