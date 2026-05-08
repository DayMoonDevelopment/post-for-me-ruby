# frozen_string_literal: true

module PostForMe
  module Models
    class YoutubeConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

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

      # @!attribute privacy_status
      #   Sets the privacy status of the video, will default to public
      #
      #   @return [Symbol, PostForMe::Models::YoutubeConfigurationDto::PrivacyStatus, nil]
      optional :privacy_status, enum: -> { PostForMe::YoutubeConfigurationDto::PrivacyStatus }, nil?: true

      # @!attribute title
      #   Overrides the `title` from the post
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(caption: nil, made_for_kids: nil, media: nil, privacy_status: nil, title: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param made_for_kids [Boolean, nil] If true will notify YouTube the video is intended for kids, defaults to false
      #
      #   @param media [Array<PostForMe::Models::SocialPostMedia>, nil] Overrides the `media` from the post
      #
      #   @param privacy_status [Symbol, PostForMe::Models::YoutubeConfigurationDto::PrivacyStatus, nil] Sets the privacy status of the video, will default to public
      #
      #   @param title [String, nil] Overrides the `title` from the post

      # Sets the privacy status of the video, will default to public
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
