# frozen_string_literal: true

module PostForMe
  module Models
    class SocialPostPreview < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Caption text for the post
      #
      #   @return [String]
      required :caption, String

      # @!attribute platform
      #   Platform of the post
      #
      #   @return [String]
      required :platform, String

      # @!attribute social_account_id
      #   Id of the social account
      #
      #   @return [String]
      required :social_account_id, String

      # @!attribute configuration
      #   Additional configuration for this platform
      #
      #   @return [Object, nil]
      optional :configuration, PostForMe::Internal::Type::Unknown

      # @!attribute media
      #   Array of media URLs associated with the post
      #
      #   @return [Array<PostForMe::Models::SocialPostMedia>, nil]
      optional :media, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostMedia] }, nil?: true

      # @!attribute social_account_profile_picture_url
      #   Url of the social account profile picture
      #
      #   @return [Object, nil]
      optional :social_account_profile_picture_url, PostForMe::Internal::Type::Unknown

      # @!attribute social_account_username
      #   Username of the social account
      #
      #   @return [Object, nil]
      optional :social_account_username, PostForMe::Internal::Type::Unknown

      # @!method initialize(caption:, platform:, social_account_id:, configuration: nil, media: nil, social_account_profile_picture_url: nil, social_account_username: nil)
      #   @param caption [String] Caption text for the post
      #
      #   @param platform [String] Platform of the post
      #
      #   @param social_account_id [String] Id of the social account
      #
      #   @param configuration [Object] Additional configuration for this platform
      #
      #   @param media [Array<PostForMe::Models::SocialPostMedia>, nil] Array of media URLs associated with the post
      #
      #   @param social_account_profile_picture_url [Object] Url of the social account profile picture
      #
      #   @param social_account_username [Object] Username of the social account
    end
  end
end
