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
              is_ai_generated: T.nilable(T::Boolean),
              is_draft: T.nilable(T::Boolean),
              link: T.nilable(String),
              media: T.nilable(T::Array[String]),
              placement:
                T.nilable(
                  PostForMe::SocialPost::AccountConfiguration::Configuration::Placement::OrSymbol
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
            # Flag content as AI generated on TikTok
            is_ai_generated: nil,
            # Will create a draft upload to TikTok, posting will need to be completed from
            # within the app
            is_draft: nil,
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
                is_ai_generated: T.nilable(T::Boolean),
                is_draft: T.nilable(T::Boolean),
                link: T.nilable(String),
                media: T.nilable(T::Array[String]),
                placement:
                  T.nilable(
                    PostForMe::SocialPost::AccountConfiguration::Configuration::Placement::TaggedSymbol
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
