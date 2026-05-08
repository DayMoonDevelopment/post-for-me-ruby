# frozen_string_literal: true

module PostForMe
  module Models
    class CreateSocialPost < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Caption text for the post
      #
      #   @return [String]
      required :caption, String

      # @!attribute social_accounts
      #   Array of social account IDs for posting
      #
      #   @return [Array<String>]
      required :social_accounts, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute account_configurations
      #   Account-specific configurations for the post
      #
      #   @return [Array<PostForMe::Models::AccountConfiguration>, nil]
      optional :account_configurations,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::AccountConfiguration] },
               nil?: true

      # @!attribute external_id
      #   Array of social account IDs for posting
      #
      #   @return [String, nil]
      optional :external_id, String, nil?: true

      # @!attribute is_draft
      #   If isDraft is set then the post will not be processed
      #
      #   @return [Boolean, nil]
      optional :is_draft, PostForMe::Internal::Type::Boolean, api_name: :isDraft, nil?: true

      # @!attribute media
      #   Array of media associated with the post. If multiple media items are provided
      #   and the placement is `stories`, individual posts are created per media item.
      #
      #   @return [Array<PostForMe::Models::SocialPostMedia>, nil]
      optional :media, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostMedia] }, nil?: true

      # @!attribute platform_configurations
      #   Platform-specific configurations for the post
      #
      #   @return [PostForMe::Models::PlatformConfigurationsDto, nil]
      optional :platform_configurations, -> { PostForMe::PlatformConfigurationsDto }, nil?: true

      # @!attribute scheduled_at
      #   Scheduled date and time for the post, setting to null or undefined will post
      #   instantly
      #
      #   @return [Time, nil]
      optional :scheduled_at, Time, nil?: true

      # @!method initialize(caption:, social_accounts:, account_configurations: nil, external_id: nil, is_draft: nil, media: nil, platform_configurations: nil, scheduled_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::CreateSocialPost} for more details.
      #
      #   @param caption [String] Caption text for the post
      #
      #   @param social_accounts [Array<String>] Array of social account IDs for posting
      #
      #   @param account_configurations [Array<PostForMe::Models::AccountConfiguration>, nil] Account-specific configurations for the post
      #
      #   @param external_id [String, nil] Array of social account IDs for posting
      #
      #   @param is_draft [Boolean, nil] If isDraft is set then the post will not be processed
      #
      #   @param media [Array<PostForMe::Models::SocialPostMedia>, nil] Array of media associated with the post. If multiple media items are provided an
      #
      #   @param platform_configurations [PostForMe::Models::PlatformConfigurationsDto, nil] Platform-specific configurations for the post
      #
      #   @param scheduled_at [Time, nil] Scheduled date and time for the post, setting to null or undefined will post ins
    end
  end
end
