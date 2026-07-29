# frozen_string_literal: true

module PostForMe
  module Models
    class YoutubeConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute localizations
      #   Per-language localizations for the video title and description. Keys are BCP-47
      #   language tags (e.g. "fr", "es"). Maps to localizations on the YouTube Data API
      #   videos resource.
      #
      #   @return [Hash{Symbol=>PostForMe::Models::YoutubeConfigurationDto::Localization}, nil]
      required :localizations,
               -> { PostForMe::Internal::Type::HashOf[PostForMe::YoutubeConfigurationDto::Localization] },
               nil?: true

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

      # @!attribute contains_synthetic_media
      #   If true, marks the video as containing altered or synthetic content per
      #   YouTube's disclosure policy (maps to status.containsSyntheticMedia). YouTube
      #   adds a "How this content was made" label to the description automatically.
      #
      #   @return [Boolean, nil]
      optional :contains_synthetic_media, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute default_language
      #   Default language of the video (BCP-47 language tag, e.g. "en"). Maps to
      #   snippet.defaultLanguage.
      #
      #   @return [String, nil]
      optional :default_language, String, nil?: true

      # @!attribute description
      #   Description for the YouTube video (maps to snippet.description). Falls back to
      #   the post caption when not provided.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute embeddable
      #   If true the video can be embedded on other websites (maps to status.embeddable).
      #   Defaults to true.
      #
      #   @return [Boolean, nil]
      optional :embeddable, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute license
      #   The video's license (maps to status.license). "youtube" is the standard YouTube
      #   license; "creativeCommon" is Creative Commons.
      #
      #   @return [Symbol, PostForMe::Models::YoutubeConfigurationDto::License, nil]
      optional :license, enum: -> { PostForMe::YoutubeConfigurationDto::License }, nil?: true

      # @!attribute made_for_kids
      #   If true will notify YouTube the video is intended for kids (maps to
      #   status.selfDeclaredMadeForKids), defaults to false
      #
      #   @return [Boolean, nil]
      optional :made_for_kids, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<PostForMe::Models::SocialPostMedia>, nil]
      optional :media, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostMedia] }, nil?: true

      # @!attribute privacy_status
      #   Sets the privacy status of the video (maps to status.privacyStatus), will
      #   default to public
      #
      #   @return [Symbol, PostForMe::Models::YoutubeConfigurationDto::PrivacyStatus, nil]
      optional :privacy_status, enum: -> { PostForMe::YoutubeConfigurationDto::PrivacyStatus }, nil?: true

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

      # @!attribute recording_date
      #   ISO 8601 date (YYYY-MM-DD) or datetime when the video was recorded (maps to
      #   recordingDetails.recordingDate).
      #
      #   @return [String, nil]
      optional :recording_date, String, nil?: true

      # @!attribute tags
      #   YouTube video tags (maps to snippet.tags)
      #
      #   @return [Array<String>, nil]
      optional :tags, PostForMe::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute title
      #   Overrides the `title` from the post (maps to snippet.title)
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(localizations:, caption: nil, category_id: nil, contains_synthetic_media: nil, default_language: nil, description: nil, embeddable: nil, license: nil, made_for_kids: nil, media: nil, privacy_status: nil, public_stats_viewable: nil, publish_at: nil, recording_date: nil, tags: nil, title: nil)
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::YoutubeConfigurationDto} for more details.
      #
      #   @param localizations [Hash{Symbol=>PostForMe::Models::YoutubeConfigurationDto::Localization}, nil] Per-language localizations for the video title and description. Keys are BCP-47
      #
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param category_id [String, nil] YouTube video category id (maps to snippet.categoryId; see YouTube Data API vide
      #
      #   @param contains_synthetic_media [Boolean, nil] If true, marks the video as containing altered or synthetic content per YouTube'
      #
      #   @param default_language [String, nil] Default language of the video (BCP-47 language tag, e.g. "en"). Maps to snippet.
      #
      #   @param description [String, nil] Description for the YouTube video (maps to snippet.description). Falls back to t
      #
      #   @param embeddable [Boolean, nil] If true the video can be embedded on other websites (maps to status.embeddable).
      #
      #   @param license [Symbol, PostForMe::Models::YoutubeConfigurationDto::License, nil] The video's license (maps to status.license). "youtube" is the standard YouTube
      #
      #   @param made_for_kids [Boolean, nil] If true will notify YouTube the video is intended for kids (maps to status.selfD
      #
      #   @param media [Array<PostForMe::Models::SocialPostMedia>, nil] Overrides the `media` from the post
      #
      #   @param privacy_status [Symbol, PostForMe::Models::YoutubeConfigurationDto::PrivacyStatus, nil] Sets the privacy status of the video (maps to status.privacyStatus), will defaul
      #
      #   @param public_stats_viewable [Boolean, nil] If true, the extended video statistics are publicly viewable (maps to status.pub
      #
      #   @param publish_at [String, nil] ISO 8601 datetime at which the video should be published. Only honoured when pri
      #
      #   @param recording_date [String, nil] ISO 8601 date (YYYY-MM-DD) or datetime when the video was recorded (maps to reco
      #
      #   @param tags [Array<String>, nil] YouTube video tags (maps to snippet.tags)
      #
      #   @param title [String, nil] Overrides the `title` from the post (maps to snippet.title)

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
      # @see PostForMe::Models::YoutubeConfigurationDto#license
      module License
        extend PostForMe::Internal::Type::Enum

        YOUTUBE = :youtube
        CREATIVE_COMMON = :creativeCommon

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sets the privacy status of the video (maps to status.privacyStatus), will
      # default to public
      #
      # @see PostForMe::Models::YoutubeConfigurationDto#privacy_status
      module PrivacyStatus
        extend PostForMe::Internal::Type::Enum

        PUBLIC = :public
        PRIVATE = :private
        UNLISTED = :unlisted

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
