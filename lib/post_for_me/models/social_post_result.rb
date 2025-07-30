# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialPostResults#retrieve
    class SocialPostResult < PostForMe::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier of the post result
      #
      #   @return [String]
      required :id, String

      # @!attribute details
      #   Detailed logs from the post
      #
      #   @return [Object]
      required :details, PostForMe::Internal::Type::Unknown

      # @!attribute error
      #   Error message if the post failed
      #
      #   @return [Object]
      required :error, PostForMe::Internal::Type::Unknown

      # @!attribute platform_data
      #   Platform-specific data
      #
      #   @return [PostForMe::Models::SocialPostResult::PlatformData]
      required :platform_data, -> { PostForMe::SocialPostResult::PlatformData }

      # @!attribute post_id
      #   The ID of the associated post
      #
      #   @return [String]
      required :post_id, String

      # @!attribute social_account_id
      #   The ID of the associated social account
      #
      #   @return [String]
      required :social_account_id, String

      # @!attribute success
      #   Indicates if the post was successful
      #
      #   @return [Boolean]
      required :success, PostForMe::Internal::Type::Boolean

      # @!method initialize(id:, details:, error:, platform_data:, post_id:, social_account_id:, success:)
      #   @param id [String] The unique identifier of the post result
      #
      #   @param details [Object] Detailed logs from the post
      #
      #   @param error [Object] Error message if the post failed
      #
      #   @param platform_data [PostForMe::Models::SocialPostResult::PlatformData] Platform-specific data
      #
      #   @param post_id [String] The ID of the associated post
      #
      #   @param social_account_id [String] The ID of the associated social account
      #
      #   @param success [Boolean] Indicates if the post was successful

      # @see PostForMe::Models::SocialPostResult#platform_data
      class PlatformData < PostForMe::Internal::Type::BaseModel
        # @!attribute id
        #   Platform-specific ID
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute url
        #   URL of the posted content
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(id: nil, url: nil)
        #   Platform-specific data
        #
        #   @param id [String] Platform-specific ID
        #
        #   @param url [String] URL of the posted content
      end
    end
  end
end
