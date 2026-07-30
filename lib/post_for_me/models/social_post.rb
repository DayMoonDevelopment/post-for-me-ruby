# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialPosts#create
    class SocialPost < PostForMe::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier of the post
      #
      #   @return [String]
      required :id, String

      # @!attribute account_configurations
      #   Account-specific configurations for the post
      #
      #   @return [Array<PostForMe::Models::AccountConfiguration>, nil]
      required :account_configurations,
               -> { PostForMe::Internal::Type::ArrayOf[PostForMe::AccountConfiguration] },
               nil?: true

      # @!attribute caption
      #   Caption text for the post
      #
      #   @return [String]
      required :caption, String

      # @!attribute created_at
      #   Timestamp when the post was created
      #
      #   @return [String]
      required :created_at, String

      # @!attribute external_id
      #   Provided unique identifier of the post
      #
      #   @return [String, nil]
      required :external_id, String, nil?: true

      # @!attribute media
      #   Array of media associated with the post
      #
      #   @return [Array<PostForMe::Models::SocialPostMedia>, nil]
      required :media, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostMedia] }, nil?: true

      # @!attribute platform_configurations
      #   Platform-specific configurations for the post
      #
      #   @return [PostForMe::Models::PlatformConfigurationsDto, nil]
      required :platform_configurations, -> { PostForMe::PlatformConfigurationsDto }, nil?: true

      # @!attribute scheduled_at
      #   Scheduled date and time for the post
      #
      #   @return [String, nil]
      required :scheduled_at, String, nil?: true

      # @!attribute social_accounts
      #   Array of social account IDs for posting
      #
      #   @return [Array<PostForMe::Models::SocialAccount>]
      required :social_accounts, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialAccount] }

      # @!attribute status
      #   Current status of the post: draft, processed, scheduled, or processing
      #
      #   @return [Symbol, PostForMe::Models::SocialPost::Status]
      required :status, enum: -> { PostForMe::SocialPost::Status }

      # @!attribute updated_at
      #   Timestamp when the post was last updated
      #
      #   @return [String]
      required :updated_at, String

      # @!method initialize(id:, account_configurations:, caption:, created_at:, external_id:, media:, platform_configurations:, scheduled_at:, social_accounts:, status:, updated_at:)
      #   @param id [String] Unique identifier of the post
      #
      #   @param account_configurations [Array<PostForMe::Models::AccountConfiguration>, nil] Account-specific configurations for the post
      #
      #   @param caption [String] Caption text for the post
      #
      #   @param created_at [String] Timestamp when the post was created
      #
      #   @param external_id [String, nil] Provided unique identifier of the post
      #
      #   @param media [Array<PostForMe::Models::SocialPostMedia>, nil] Array of media associated with the post
      #
      #   @param platform_configurations [PostForMe::Models::PlatformConfigurationsDto, nil] Platform-specific configurations for the post
      #
      #   @param scheduled_at [String, nil] Scheduled date and time for the post
      #
      #   @param social_accounts [Array<PostForMe::Models::SocialAccount>] Array of social account IDs for posting
      #
      #   @param status [Symbol, PostForMe::Models::SocialPost::Status] Current status of the post: draft, processed, scheduled, or processing
      #
      #   @param updated_at [String] Timestamp when the post was last updated

      # Current status of the post: draft, processed, scheduled, or processing
      #
      # @see PostForMe::Models::SocialPost#status
      module Status
        extend PostForMe::Internal::Type::Enum

        DRAFT = :draft
        SCHEDULED = :scheduled
        PROCESSING = :processing
        PROCESSED = :processed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
