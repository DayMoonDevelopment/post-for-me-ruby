# typed: strong

module PostForMe
  module Models
    class YoutubeConfigurationDto < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::YoutubeConfigurationDto,
            PostForMe::Internal::AnyHash
          )
        end

      # Per-language localizations for the video title and description. Keys are BCP-47
      # language tags (e.g. "fr", "es"). Maps to localizations on the YouTube Data API
      # videos resource.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :localizations

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # YouTube video category id (maps to snippet.categoryId; see YouTube Data API
      # videoCategories.list)
      sig { returns(T.nilable(String)) }
      attr_accessor :category_id

      # If true, marks the video as containing altered or synthetic content per
      # YouTube's disclosure policy (maps to status.containsSyntheticMedia). YouTube
      # adds a "How this content was made" label to the description automatically.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :contains_synthetic_media

      # Default language of the video (BCP-47 language tag, e.g. "en"). Maps to
      # snippet.defaultLanguage.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_language

      # Description for the YouTube video (maps to snippet.description). Falls back to
      # the post caption when not provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # If true the video can be embedded on other websites (maps to status.embeddable).
      # Defaults to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :embeddable

      # The video's license (maps to status.license). "youtube" is the standard YouTube
      # license; "creativeCommon" is Creative Commons.
      sig do
        returns(
          T.nilable(PostForMe::YoutubeConfigurationDto::License::OrSymbol)
        )
      end
      attr_accessor :license

      # If true will notify YouTube the video is intended for kids (maps to
      # status.selfDeclaredMadeForKids), defaults to false
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :made_for_kids

      # Overrides the `media` from the post
      sig { returns(T.nilable(T::Array[PostForMe::SocialPostMedia])) }
      attr_accessor :media

      # Sets the privacy status of the video (maps to status.privacyStatus), will
      # default to public
      sig do
        returns(
          T.nilable(PostForMe::YoutubeConfigurationDto::PrivacyStatus::OrSymbol)
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

      # ISO 8601 date (YYYY-MM-DD) or datetime when the video was recorded (maps to
      # recordingDetails.recordingDate).
      sig { returns(T.nilable(String)) }
      attr_accessor :recording_date

      # YouTube video tags (maps to snippet.tags)
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :tags

      # Overrides the `title` from the post (maps to snippet.title)
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          localizations: T.nilable(T::Hash[Symbol, T.anything]),
          caption: T.nilable(T.anything),
          category_id: T.nilable(String),
          contains_synthetic_media: T.nilable(T::Boolean),
          default_language: T.nilable(String),
          description: T.nilable(String),
          embeddable: T.nilable(T::Boolean),
          license:
            T.nilable(PostForMe::YoutubeConfigurationDto::License::OrSymbol),
          made_for_kids: T.nilable(T::Boolean),
          media: T.nilable(T::Array[PostForMe::SocialPostMedia::OrHash]),
          privacy_status:
            T.nilable(
              PostForMe::YoutubeConfigurationDto::PrivacyStatus::OrSymbol
            ),
          public_stats_viewable: T.nilable(T::Boolean),
          publish_at: T.nilable(String),
          recording_date: T.nilable(String),
          tags: T.nilable(T::Array[String]),
          title: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Per-language localizations for the video title and description. Keys are BCP-47
        # language tags (e.g. "fr", "es"). Maps to localizations on the YouTube Data API
        # videos resource.
        localizations:,
        # Overrides the `caption` from the post
        caption: nil,
        # YouTube video category id (maps to snippet.categoryId; see YouTube Data API
        # videoCategories.list)
        category_id: nil,
        # If true, marks the video as containing altered or synthetic content per
        # YouTube's disclosure policy (maps to status.containsSyntheticMedia). YouTube
        # adds a "How this content was made" label to the description automatically.
        contains_synthetic_media: nil,
        # Default language of the video (BCP-47 language tag, e.g. "en"). Maps to
        # snippet.defaultLanguage.
        default_language: nil,
        # Description for the YouTube video (maps to snippet.description). Falls back to
        # the post caption when not provided.
        description: nil,
        # If true the video can be embedded on other websites (maps to status.embeddable).
        # Defaults to true.
        embeddable: nil,
        # The video's license (maps to status.license). "youtube" is the standard YouTube
        # license; "creativeCommon" is Creative Commons.
        license: nil,
        # If true will notify YouTube the video is intended for kids (maps to
        # status.selfDeclaredMadeForKids), defaults to false
        made_for_kids: nil,
        # Overrides the `media` from the post
        media: nil,
        # Sets the privacy status of the video (maps to status.privacyStatus), will
        # default to public
        privacy_status: nil,
        # If true, the extended video statistics are publicly viewable (maps to
        # status.publicStatsViewable). Defaults to true.
        public_stats_viewable: nil,
        # ISO 8601 datetime at which the video should be published. Only honoured when
        # privacy_status is "private" (maps to status.publishAt).
        publish_at: nil,
        # ISO 8601 date (YYYY-MM-DD) or datetime when the video was recorded (maps to
        # recordingDetails.recordingDate).
        recording_date: nil,
        # YouTube video tags (maps to snippet.tags)
        tags: nil,
        # Overrides the `title` from the post (maps to snippet.title)
        title: nil
      )
      end

      sig do
        override.returns(
          {
            localizations: T.nilable(T::Hash[Symbol, T.anything]),
            caption: T.nilable(T.anything),
            category_id: T.nilable(String),
            contains_synthetic_media: T.nilable(T::Boolean),
            default_language: T.nilable(String),
            description: T.nilable(String),
            embeddable: T.nilable(T::Boolean),
            license:
              T.nilable(PostForMe::YoutubeConfigurationDto::License::OrSymbol),
            made_for_kids: T.nilable(T::Boolean),
            media: T.nilable(T::Array[PostForMe::SocialPostMedia]),
            privacy_status:
              T.nilable(
                PostForMe::YoutubeConfigurationDto::PrivacyStatus::OrSymbol
              ),
            public_stats_viewable: T.nilable(T::Boolean),
            publish_at: T.nilable(String),
            recording_date: T.nilable(String),
            tags: T.nilable(T::Array[String]),
            title: T.nilable(String)
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
            T.all(Symbol, PostForMe::YoutubeConfigurationDto::License)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        YOUTUBE =
          T.let(
            :youtube,
            PostForMe::YoutubeConfigurationDto::License::TaggedSymbol
          )
        CREATIVE_COMMON =
          T.let(
            :creativeCommon,
            PostForMe::YoutubeConfigurationDto::License::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[PostForMe::YoutubeConfigurationDto::License::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sets the privacy status of the video (maps to status.privacyStatus), will
      # default to public
      module PrivacyStatus
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::YoutubeConfigurationDto::PrivacyStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC =
          T.let(
            :public,
            PostForMe::YoutubeConfigurationDto::PrivacyStatus::TaggedSymbol
          )
        PRIVATE =
          T.let(
            :private,
            PostForMe::YoutubeConfigurationDto::PrivacyStatus::TaggedSymbol
          )
        UNLISTED =
          T.let(
            :unlisted,
            PostForMe::YoutubeConfigurationDto::PrivacyStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PostForMe::YoutubeConfigurationDto::PrivacyStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
