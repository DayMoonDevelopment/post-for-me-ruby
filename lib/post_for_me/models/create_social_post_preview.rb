# frozen_string_literal: true

module PostForMe
  module Models
    class CreateSocialPostPreview < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Caption text for the post
      #
      #   @return [String]
      required :caption, String

      # @!attribute preview_social_accounts
      #   Array of social accounts. Can preview non connected accounts, just specify a
      #   random ID
      #
      #   @return [Array<PostForMe::Models::CreateSocialPostPreview::PreviewSocialAccount>]
      required :preview_social_accounts,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::CreateSocialPostPreview::PreviewSocialAccount] }

      # @!attribute account_configurations
      #   Account-specific configurations for the post
      #
      #   @return [Array<PostForMe::Models::AccountConfiguration>, nil]
      optional :account_configurations,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::AccountConfiguration] },
               nil?: true

      # @!attribute media
      #   Array of media URLs associated with the post
      #
      #   @return [Array<PostForMe::Models::SocialPostMedia>, nil]
      optional :media, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostMedia] }, nil?: true

      # @!attribute platform_configurations
      #   Platform-specific configurations for the post
      #
      #   @return [PostForMe::Models::PlatformConfigurationsDto, nil]
      optional :platform_configurations, -> { PostForMe::PlatformConfigurationsDto }, nil?: true

      # @!method initialize(caption:, preview_social_accounts:, account_configurations: nil, media: nil, platform_configurations: nil)
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::CreateSocialPostPreview} for more details.
      #
      #   @param caption [String] Caption text for the post
      #
      #   @param preview_social_accounts [Array<PostForMe::Models::CreateSocialPostPreview::PreviewSocialAccount>] Array of social accounts. Can preview non connected accounts, just specify a ran
      #
      #   @param account_configurations [Array<PostForMe::Models::AccountConfiguration>, nil] Account-specific configurations for the post
      #
      #   @param media [Array<PostForMe::Models::SocialPostMedia>, nil] Array of media URLs associated with the post
      #
      #   @param platform_configurations [PostForMe::Models::PlatformConfigurationsDto, nil] Platform-specific configurations for the post

      class PreviewSocialAccount < PostForMe::Internal::Type::BaseModel
        # @!attribute id
        #   ID of the social account, ex: spc_12312
        #
        #   @return [String]
        required :id, String

        # @!attribute platform
        #   Platform of the social account
        #
        #   @return [String]
        required :platform, String

        # @!attribute username
        #   username of the social account
        #
        #   @return [String, nil]
        optional :username, String

        # @!method initialize(id:, platform:, username: nil)
        #   @param id [String] ID of the social account, ex: spc_12312
        #
        #   @param platform [String] Platform of the social account
        #
        #   @param username [String] username of the social account
      end
    end
  end
end
