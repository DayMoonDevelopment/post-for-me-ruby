# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialPosts#list
    class SocialPostListParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      # @!attribute external_id
      #   Filter by external ID. Multiple values imply OR logic.
      #
      #   @return [Array<String>, nil]
      optional :external_id, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute limit
      #   Number of items to return
      #
      #   @return [Float, nil]
      optional :limit, Float

      # @!attribute offset
      #   Number of items to skip
      #
      #   @return [Float, nil]
      optional :offset, Float

      # @!attribute platform
      #   Filter by platforms. Multiple values imply OR logic.
      #
      #   @return [Array<Symbol, PostForMe::Models::SocialPostListParams::Platform>, nil]
      optional :platform,
               -> { PostForMe::Internal::Type::ArrayOf[enum: PostForMe::SocialPostListParams::Platform] }

      # @!attribute status
      #   Filter by post status. Multiple values imply OR logic.
      #
      #   @return [Array<Symbol, PostForMe::Models::SocialPostListParams::Status>, nil]
      optional :status,
               -> {
                 PostForMe::Internal::Type::ArrayOf[enum: PostForMe::SocialPostListParams::Status]
               }

      # @!method initialize(external_id: nil, limit: nil, offset: nil, platform: nil, status: nil, request_options: {})
      #   @param external_id [Array<String>] Filter by external ID. Multiple values imply OR logic.
      #
      #   @param limit [Float] Number of items to return
      #
      #   @param offset [Float] Number of items to skip
      #
      #   @param platform [Array<Symbol, PostForMe::Models::SocialPostListParams::Platform>] Filter by platforms. Multiple values imply OR logic.
      #
      #   @param status [Array<Symbol, PostForMe::Models::SocialPostListParams::Status>] Filter by post status. Multiple values imply OR logic.
      #
      #   @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}]

      module Platform
        extend PostForMe::Internal::Type::Enum

        BLUESKY = :bluesky
        FACEBOOK = :facebook
        INSTAGRAM = :instagram
        LINKEDIN = :linkedin
        PINTEREST = :pinterest
        THREADS = :threads
        TIKTOK = :tiktok
        TWITTER = :twitter
        YOUTUBE = :youtube

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
