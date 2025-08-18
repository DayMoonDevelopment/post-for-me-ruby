# typed: strong

module PostForMe
  module Models
    class CreateSocialPost < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::CreateSocialPost, PostForMe::Internal::AnyHash)
        end

      # Caption text for the post
      sig { returns(String) }
      attr_accessor :caption

      # Array of social account IDs for posting
      sig { returns(T::Array[String]) }
      attr_accessor :social_accounts

      # Account-specific configurations for the post
      sig do
        returns(
          T.nilable(T::Array[PostForMe::CreateSocialPost::AccountConfiguration])
        )
      end
      attr_accessor :account_configurations

      # Array of social account IDs for posting
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # If isDraft is set then the post will not be processed
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_draft

      # Array of media URLs associated with the post
      sig { returns(T.nilable(T::Array[PostForMe::CreateSocialPost::Media])) }
      attr_accessor :media

      # Platform-specific configurations for the post
      sig do
        returns(T.nilable(PostForMe::CreateSocialPost::PlatformConfigurations))
      end
      attr_reader :platform_configurations

      sig do
        params(
          platform_configurations:
            T.nilable(
              PostForMe::CreateSocialPost::PlatformConfigurations::OrHash
            )
        ).void
      end
      attr_writer :platform_configurations

      # Scheduled date and time for the post, setting to null or undefined will post
      # instantly
      sig { returns(T.nilable(Time)) }
      attr_accessor :scheduled_at

      sig do
        params(
          caption: String,
          social_accounts: T::Array[String],
          account_configurations:
            T.nilable(
              T::Array[
                PostForMe::CreateSocialPost::AccountConfiguration::OrHash
              ]
            ),
          external_id: T.nilable(String),
          is_draft: T.nilable(T::Boolean),
          media:
            T.nilable(T::Array[PostForMe::CreateSocialPost::Media::OrHash]),
          platform_configurations:
            T.nilable(
              PostForMe::CreateSocialPost::PlatformConfigurations::OrHash
            ),
          scheduled_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # Caption text for the post
        caption:,
        # Array of social account IDs for posting
        social_accounts:,
        # Account-specific configurations for the post
        account_configurations: nil,
        # Array of social account IDs for posting
        external_id: nil,
        # If isDraft is set then the post will not be processed
        is_draft: nil,
        # Array of media URLs associated with the post
        media: nil,
        # Platform-specific configurations for the post
        platform_configurations: nil,
        # Scheduled date and time for the post, setting to null or undefined will post
        # instantly
        scheduled_at: nil
      )
      end

      sig do
        override.returns(
          {
            caption: String,
            social_accounts: T::Array[String],
            account_configurations:
              T.nilable(
                T::Array[PostForMe::CreateSocialPost::AccountConfiguration]
              ),
            external_id: T.nilable(String),
            is_draft: T.nilable(T::Boolean),
            media: T.nilable(T::Array[PostForMe::CreateSocialPost::Media]),
            platform_configurations:
              T.nilable(PostForMe::CreateSocialPost::PlatformConfigurations),
            scheduled_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      class AccountConfiguration < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::CreateSocialPost::AccountConfiguration,
              PostForMe::Internal::AnyHash
            )
          end

        # Configuration for the social account
        sig do
          returns(
            PostForMe::CreateSocialPost::AccountConfiguration::Configuration
          )
        end
        attr_reader :configuration

        sig do
          params(
            configuration:
              PostForMe::CreateSocialPost::AccountConfiguration::Configuration::OrHash
          ).void
        end
        attr_writer :configuration

        # ID of the social account, you want to apply the configuration to
        sig { returns(String) }
        attr_accessor :social_account_id

        sig do
          params(
            configuration:
              PostForMe::CreateSocialPost::AccountConfiguration::Configuration::OrHash,
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
                PostForMe::CreateSocialPost::AccountConfiguration::Configuration,
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
                PostForMe::CreateSocialPost::AccountConfiguration::Configuration,
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

          # Pinterest board IDs
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :board_ids

          # Overrides the `caption` from the post
          sig { returns(T.nilable(T.anything)) }
          attr_accessor :caption

          # Disclose branded content on TikTok
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :disclose_branded_content

          # Disclose your brand on TikTok
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :disclose_your_brand

          # Pinterest post link
          sig { returns(T.nilable(String)) }
          attr_accessor :link

          # Overrides the `media` from the post
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :media

          # Post placement for Facebook/Instagram/Threads
          sig do
            returns(
              T.nilable(
                PostForMe::CreateSocialPost::AccountConfiguration::Configuration::Placement::OrSymbol
              )
            )
          end
          attr_accessor :placement

          # Sets the privacy status for TikTok (private, public)
          sig { returns(T.nilable(String)) }
          attr_accessor :privacy_status

          # Overrides the `title` from the post
          sig { returns(T.nilable(String)) }
          attr_accessor :title

          # Configuration for the social account
          sig do
            params(
              allow_comment: T.nilable(T::Boolean),
              allow_duet: T.nilable(T::Boolean),
              allow_stitch: T.nilable(T::Boolean),
              board_ids: T.nilable(T::Array[String]),
              caption: T.nilable(T.anything),
              disclose_branded_content: T.nilable(T::Boolean),
              disclose_your_brand: T.nilable(T::Boolean),
              link: T.nilable(String),
              media: T.nilable(T::Array[String]),
              placement:
                T.nilable(
                  PostForMe::CreateSocialPost::AccountConfiguration::Configuration::Placement::OrSymbol
                ),
              privacy_status: T.nilable(String),
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
            # Pinterest board IDs
            board_ids: nil,
            # Overrides the `caption` from the post
            caption: nil,
            # Disclose branded content on TikTok
            disclose_branded_content: nil,
            # Disclose your brand on TikTok
            disclose_your_brand: nil,
            # Pinterest post link
            link: nil,
            # Overrides the `media` from the post
            media: nil,
            # Post placement for Facebook/Instagram/Threads
            placement: nil,
            # Sets the privacy status for TikTok (private, public)
            privacy_status: nil,
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
                board_ids: T.nilable(T::Array[String]),
                caption: T.nilable(T.anything),
                disclose_branded_content: T.nilable(T::Boolean),
                disclose_your_brand: T.nilable(T::Boolean),
                link: T.nilable(String),
                media: T.nilable(T::Array[String]),
                placement:
                  T.nilable(
                    PostForMe::CreateSocialPost::AccountConfiguration::Configuration::Placement::OrSymbol
                  ),
                privacy_status: T.nilable(String),
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
                  PostForMe::CreateSocialPost::AccountConfiguration::Configuration::Placement
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REELS =
              T.let(
                :reels,
                PostForMe::CreateSocialPost::AccountConfiguration::Configuration::Placement::TaggedSymbol
              )
            TIMELINE =
              T.let(
                :timeline,
                PostForMe::CreateSocialPost::AccountConfiguration::Configuration::Placement::TaggedSymbol
              )
            STORIES =
              T.let(
                :stories,
                PostForMe::CreateSocialPost::AccountConfiguration::Configuration::Placement::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::CreateSocialPost::AccountConfiguration::Configuration::Placement::TaggedSymbol
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
            T.any(
              PostForMe::CreateSocialPost::Media,
              PostForMe::Internal::AnyHash
            )
          end

        # Public URL of the media
        sig { returns(String) }
        attr_accessor :url

        # Timestamp in milliseconds of frame to use as thumbnail for the media
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :thumbnail_timestamp_ms

        # Public URL of the thumbnail for the media
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :thumbnail_url

        sig do
          params(
            url: String,
            thumbnail_timestamp_ms: T.nilable(T.anything),
            thumbnail_url: T.nilable(T.anything)
          ).returns(T.attached_class)
        end
        def self.new(
          # Public URL of the media
          url:,
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
              thumbnail_timestamp_ms: T.nilable(T.anything),
              thumbnail_url: T.nilable(T.anything)
            }
          )
        end
        def to_hash
        end
      end

      class PlatformConfigurations < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::CreateSocialPost::PlatformConfigurations,
              PostForMe::Internal::AnyHash
            )
          end

        # Bluesky configuration
        sig do
          returns(
            T.nilable(
              PostForMe::CreateSocialPost::PlatformConfigurations::Bluesky
            )
          )
        end
        attr_reader :bluesky

        sig do
          params(
            bluesky:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Bluesky::OrHash
              )
          ).void
        end
        attr_writer :bluesky

        # Facebook configuration
        sig do
          returns(
            T.nilable(
              PostForMe::CreateSocialPost::PlatformConfigurations::Facebook
            )
          )
        end
        attr_reader :facebook

        sig do
          params(
            facebook:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Facebook::OrHash
              )
          ).void
        end
        attr_writer :facebook

        # Instagram configuration
        sig do
          returns(
            T.nilable(
              PostForMe::CreateSocialPost::PlatformConfigurations::Instagram
            )
          )
        end
        attr_reader :instagram

        sig do
          params(
            instagram:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Instagram::OrHash
              )
          ).void
        end
        attr_writer :instagram

        # LinkedIn configuration
        sig do
          returns(
            T.nilable(
              PostForMe::CreateSocialPost::PlatformConfigurations::Linkedin
            )
          )
        end
        attr_reader :linkedin

        sig do
          params(
            linkedin:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Linkedin::OrHash
              )
          ).void
        end
        attr_writer :linkedin

        # Pinterest configuration
        sig do
          returns(
            T.nilable(
              PostForMe::CreateSocialPost::PlatformConfigurations::Pinterest
            )
          )
        end
        attr_reader :pinterest

        sig do
          params(
            pinterest:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Pinterest::OrHash
              )
          ).void
        end
        attr_writer :pinterest

        # Threads configuration
        sig do
          returns(
            T.nilable(
              PostForMe::CreateSocialPost::PlatformConfigurations::Threads
            )
          )
        end
        attr_reader :threads

        sig do
          params(
            threads:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Threads::OrHash
              )
          ).void
        end
        attr_writer :threads

        # TikTok configuration
        sig { returns(T.nilable(PostForMe::TiktokConfiguration)) }
        attr_reader :tiktok

        sig do
          params(tiktok: T.nilable(PostForMe::TiktokConfiguration::OrHash)).void
        end
        attr_writer :tiktok

        # TikTok configuration
        sig { returns(T.nilable(PostForMe::TiktokConfiguration)) }
        attr_reader :tiktok_business

        sig do
          params(
            tiktok_business: T.nilable(PostForMe::TiktokConfiguration::OrHash)
          ).void
        end
        attr_writer :tiktok_business

        # Twitter configuration
        sig do
          returns(
            T.nilable(PostForMe::CreateSocialPost::PlatformConfigurations::X)
          )
        end
        attr_reader :x

        sig do
          params(
            x:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::X::OrHash
              )
          ).void
        end
        attr_writer :x

        # YouTube configuration
        sig do
          returns(
            T.nilable(
              PostForMe::CreateSocialPost::PlatformConfigurations::Youtube
            )
          )
        end
        attr_reader :youtube

        sig do
          params(
            youtube:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Youtube::OrHash
              )
          ).void
        end
        attr_writer :youtube

        # Platform-specific configurations for the post
        sig do
          params(
            bluesky:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Bluesky::OrHash
              ),
            facebook:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Facebook::OrHash
              ),
            instagram:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Instagram::OrHash
              ),
            linkedin:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Linkedin::OrHash
              ),
            pinterest:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Pinterest::OrHash
              ),
            threads:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Threads::OrHash
              ),
            tiktok: T.nilable(PostForMe::TiktokConfiguration::OrHash),
            tiktok_business: T.nilable(PostForMe::TiktokConfiguration::OrHash),
            x:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::X::OrHash
              ),
            youtube:
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Youtube::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Bluesky configuration
          bluesky: nil,
          # Facebook configuration
          facebook: nil,
          # Instagram configuration
          instagram: nil,
          # LinkedIn configuration
          linkedin: nil,
          # Pinterest configuration
          pinterest: nil,
          # Threads configuration
          threads: nil,
          # TikTok configuration
          tiktok: nil,
          # TikTok configuration
          tiktok_business: nil,
          # Twitter configuration
          x: nil,
          # YouTube configuration
          youtube: nil
        )
        end

        sig do
          override.returns(
            {
              bluesky:
                T.nilable(
                  PostForMe::CreateSocialPost::PlatformConfigurations::Bluesky
                ),
              facebook:
                T.nilable(
                  PostForMe::CreateSocialPost::PlatformConfigurations::Facebook
                ),
              instagram:
                T.nilable(
                  PostForMe::CreateSocialPost::PlatformConfigurations::Instagram
                ),
              linkedin:
                T.nilable(
                  PostForMe::CreateSocialPost::PlatformConfigurations::Linkedin
                ),
              pinterest:
                T.nilable(
                  PostForMe::CreateSocialPost::PlatformConfigurations::Pinterest
                ),
              threads:
                T.nilable(
                  PostForMe::CreateSocialPost::PlatformConfigurations::Threads
                ),
              tiktok: T.nilable(PostForMe::TiktokConfiguration),
              tiktok_business: T.nilable(PostForMe::TiktokConfiguration),
              x:
                T.nilable(
                  PostForMe::CreateSocialPost::PlatformConfigurations::X
                ),
              youtube:
                T.nilable(
                  PostForMe::CreateSocialPost::PlatformConfigurations::Youtube
                )
            }
          )
        end
        def to_hash
        end

        class Bluesky < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::CreateSocialPost::PlatformConfigurations::Bluesky,
                PostForMe::Internal::AnyHash
              )
            end

          # Overrides the `caption` from the post
          sig { returns(T.nilable(T.anything)) }
          attr_accessor :caption

          # Overrides the `media` from the post
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :media

          # Bluesky configuration
          sig do
            params(
              caption: T.nilable(T.anything),
              media: T.nilable(T::Array[String])
            ).returns(T.attached_class)
          end
          def self.new(
            # Overrides the `caption` from the post
            caption: nil,
            # Overrides the `media` from the post
            media: nil
          )
          end

          sig do
            override.returns(
              {
                caption: T.nilable(T.anything),
                media: T.nilable(T::Array[String])
              }
            )
          end
          def to_hash
          end
        end

        class Facebook < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::CreateSocialPost::PlatformConfigurations::Facebook,
                PostForMe::Internal::AnyHash
              )
            end

          # Overrides the `caption` from the post
          sig { returns(T.nilable(T.anything)) }
          attr_accessor :caption

          # Overrides the `media` from the post
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :media

          # Facebook post placement
          sig do
            returns(
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Facebook::Placement::OrSymbol
              )
            )
          end
          attr_accessor :placement

          # Facebook configuration
          sig do
            params(
              caption: T.nilable(T.anything),
              media: T.nilable(T::Array[String]),
              placement:
                T.nilable(
                  PostForMe::CreateSocialPost::PlatformConfigurations::Facebook::Placement::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Overrides the `caption` from the post
            caption: nil,
            # Overrides the `media` from the post
            media: nil,
            # Facebook post placement
            placement: nil
          )
          end

          sig do
            override.returns(
              {
                caption: T.nilable(T.anything),
                media: T.nilable(T::Array[String]),
                placement:
                  T.nilable(
                    PostForMe::CreateSocialPost::PlatformConfigurations::Facebook::Placement::OrSymbol
                  )
              }
            )
          end
          def to_hash
          end

          # Facebook post placement
          module Placement
            extend PostForMe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PostForMe::CreateSocialPost::PlatformConfigurations::Facebook::Placement
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REELS =
              T.let(
                :reels,
                PostForMe::CreateSocialPost::PlatformConfigurations::Facebook::Placement::TaggedSymbol
              )
            STORIES =
              T.let(
                :stories,
                PostForMe::CreateSocialPost::PlatformConfigurations::Facebook::Placement::TaggedSymbol
              )
            TIMELINE =
              T.let(
                :timeline,
                PostForMe::CreateSocialPost::PlatformConfigurations::Facebook::Placement::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::CreateSocialPost::PlatformConfigurations::Facebook::Placement::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Instagram < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::CreateSocialPost::PlatformConfigurations::Instagram,
                PostForMe::Internal::AnyHash
              )
            end

          # Overrides the `caption` from the post
          sig { returns(T.nilable(T.anything)) }
          attr_accessor :caption

          # Instagram usernames to be tagged as a collaborator
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :collaborators

          # Overrides the `media` from the post
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :media

          # Instagram post placement
          sig do
            returns(
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Instagram::Placement::OrSymbol
              )
            )
          end
          attr_accessor :placement

          # Instagram configuration
          sig do
            params(
              caption: T.nilable(T.anything),
              collaborators: T.nilable(T::Array[String]),
              media: T.nilable(T::Array[String]),
              placement:
                T.nilable(
                  PostForMe::CreateSocialPost::PlatformConfigurations::Instagram::Placement::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Overrides the `caption` from the post
            caption: nil,
            # Instagram usernames to be tagged as a collaborator
            collaborators: nil,
            # Overrides the `media` from the post
            media: nil,
            # Instagram post placement
            placement: nil
          )
          end

          sig do
            override.returns(
              {
                caption: T.nilable(T.anything),
                collaborators: T.nilable(T::Array[String]),
                media: T.nilable(T::Array[String]),
                placement:
                  T.nilable(
                    PostForMe::CreateSocialPost::PlatformConfigurations::Instagram::Placement::OrSymbol
                  )
              }
            )
          end
          def to_hash
          end

          # Instagram post placement
          module Placement
            extend PostForMe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PostForMe::CreateSocialPost::PlatformConfigurations::Instagram::Placement
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REELS =
              T.let(
                :reels,
                PostForMe::CreateSocialPost::PlatformConfigurations::Instagram::Placement::TaggedSymbol
              )
            STORIES =
              T.let(
                :stories,
                PostForMe::CreateSocialPost::PlatformConfigurations::Instagram::Placement::TaggedSymbol
              )
            TIMELINE =
              T.let(
                :timeline,
                PostForMe::CreateSocialPost::PlatformConfigurations::Instagram::Placement::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::CreateSocialPost::PlatformConfigurations::Instagram::Placement::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Linkedin < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::CreateSocialPost::PlatformConfigurations::Linkedin,
                PostForMe::Internal::AnyHash
              )
            end

          # Overrides the `caption` from the post
          sig { returns(T.nilable(T.anything)) }
          attr_accessor :caption

          # Overrides the `media` from the post
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :media

          # LinkedIn configuration
          sig do
            params(
              caption: T.nilable(T.anything),
              media: T.nilable(T::Array[String])
            ).returns(T.attached_class)
          end
          def self.new(
            # Overrides the `caption` from the post
            caption: nil,
            # Overrides the `media` from the post
            media: nil
          )
          end

          sig do
            override.returns(
              {
                caption: T.nilable(T.anything),
                media: T.nilable(T::Array[String])
              }
            )
          end
          def to_hash
          end
        end

        class Pinterest < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::CreateSocialPost::PlatformConfigurations::Pinterest,
                PostForMe::Internal::AnyHash
              )
            end

          # Pinterest board IDs
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :board_ids

          # Overrides the `caption` from the post
          sig { returns(T.nilable(T.anything)) }
          attr_accessor :caption

          # Pinterest post link
          sig { returns(T.nilable(String)) }
          attr_accessor :link

          # Overrides the `media` from the post
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :media

          # Pinterest configuration
          sig do
            params(
              board_ids: T.nilable(T::Array[String]),
              caption: T.nilable(T.anything),
              link: T.nilable(String),
              media: T.nilable(T::Array[String])
            ).returns(T.attached_class)
          end
          def self.new(
            # Pinterest board IDs
            board_ids: nil,
            # Overrides the `caption` from the post
            caption: nil,
            # Pinterest post link
            link: nil,
            # Overrides the `media` from the post
            media: nil
          )
          end

          sig do
            override.returns(
              {
                board_ids: T.nilable(T::Array[String]),
                caption: T.nilable(T.anything),
                link: T.nilable(String),
                media: T.nilable(T::Array[String])
              }
            )
          end
          def to_hash
          end
        end

        class Threads < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::CreateSocialPost::PlatformConfigurations::Threads,
                PostForMe::Internal::AnyHash
              )
            end

          # Overrides the `caption` from the post
          sig { returns(T.nilable(T.anything)) }
          attr_accessor :caption

          # Overrides the `media` from the post
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :media

          # Threads post placement
          sig do
            returns(
              T.nilable(
                PostForMe::CreateSocialPost::PlatformConfigurations::Threads::Placement::OrSymbol
              )
            )
          end
          attr_accessor :placement

          # Threads configuration
          sig do
            params(
              caption: T.nilable(T.anything),
              media: T.nilable(T::Array[String]),
              placement:
                T.nilable(
                  PostForMe::CreateSocialPost::PlatformConfigurations::Threads::Placement::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Overrides the `caption` from the post
            caption: nil,
            # Overrides the `media` from the post
            media: nil,
            # Threads post placement
            placement: nil
          )
          end

          sig do
            override.returns(
              {
                caption: T.nilable(T.anything),
                media: T.nilable(T::Array[String]),
                placement:
                  T.nilable(
                    PostForMe::CreateSocialPost::PlatformConfigurations::Threads::Placement::OrSymbol
                  )
              }
            )
          end
          def to_hash
          end

          # Threads post placement
          module Placement
            extend PostForMe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PostForMe::CreateSocialPost::PlatformConfigurations::Threads::Placement
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REELS =
              T.let(
                :reels,
                PostForMe::CreateSocialPost::PlatformConfigurations::Threads::Placement::TaggedSymbol
              )
            TIMELINE =
              T.let(
                :timeline,
                PostForMe::CreateSocialPost::PlatformConfigurations::Threads::Placement::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::CreateSocialPost::PlatformConfigurations::Threads::Placement::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class X < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::CreateSocialPost::PlatformConfigurations::X,
                PostForMe::Internal::AnyHash
              )
            end

          # Overrides the `caption` from the post
          sig { returns(T.nilable(T.anything)) }
          attr_accessor :caption

          # Overrides the `media` from the post
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :media

          # Twitter configuration
          sig do
            params(
              caption: T.nilable(T.anything),
              media: T.nilable(T::Array[String])
            ).returns(T.attached_class)
          end
          def self.new(
            # Overrides the `caption` from the post
            caption: nil,
            # Overrides the `media` from the post
            media: nil
          )
          end

          sig do
            override.returns(
              {
                caption: T.nilable(T.anything),
                media: T.nilable(T::Array[String])
              }
            )
          end
          def to_hash
          end
        end

        class Youtube < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::CreateSocialPost::PlatformConfigurations::Youtube,
                PostForMe::Internal::AnyHash
              )
            end

          # Overrides the `caption` from the post
          sig { returns(T.nilable(T.anything)) }
          attr_accessor :caption

          # Overrides the `media` from the post
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :media

          # Overrides the `title` from the post
          sig { returns(T.nilable(String)) }
          attr_accessor :title

          # YouTube configuration
          sig do
            params(
              caption: T.nilable(T.anything),
              media: T.nilable(T::Array[String]),
              title: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Overrides the `caption` from the post
            caption: nil,
            # Overrides the `media` from the post
            media: nil,
            # Overrides the `title` from the post
            title: nil
          )
          end

          sig do
            override.returns(
              {
                caption: T.nilable(T.anything),
                media: T.nilable(T::Array[String]),
                title: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
