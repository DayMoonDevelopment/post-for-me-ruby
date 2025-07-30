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
      #   @return [Array<Object>, nil]
      required :account_configurations,
               PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown],
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
      #   Array of media URLs associated with the post
      #
      #   @return [Object, nil]
      required :media, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute platform_configurations
      #   Platform-specific configurations for the post
      #
      #   @return [Object, nil]
      required :platform_configurations, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute scheduled_at
      #   Scheduled date and time for the post
      #
      #   @return [String, nil]
      required :scheduled_at, String, nil?: true

      # @!attribute social_accounts
      #   Array of social account IDs for posting
      #
      #   @return [Array<String>]
      required :social_accounts, PostForMe::Internal::Type::ArrayOf[String]

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
      #   @param account_configurations [Array<Object>, nil] Account-specific configurations for the post
      #
      #   @param caption [String] Caption text for the post
      #
      #   @param created_at [String] Timestamp when the post was created
      #
      #   @param external_id [String, nil] Provided unique identifier of the post
      #
      #   @param media [Object, nil] Array of media URLs associated with the post
      #
      #   @param platform_configurations [Object, nil] Platform-specific configurations for the post
      #
      #   @param scheduled_at [String, nil] Scheduled date and time for the post
      #
      #   @param social_accounts [Array<String>] Array of social account IDs for posting
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
