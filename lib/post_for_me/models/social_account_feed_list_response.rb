# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialAccountFeeds#list
    class SocialAccountFeedListResponse < PostForMe::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<PostForMe::Models::PlatformPost>]
      required :data, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost] }

      # @!attribute meta
      #
      #   @return [PostForMe::Models::SocialAccountFeedListResponse::Meta]
      required :meta, -> { PostForMe::Models::SocialAccountFeedListResponse::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<PostForMe::Models::PlatformPost>]
      #   @param meta [PostForMe::Models::SocialAccountFeedListResponse::Meta]

      # @see PostForMe::Models::SocialAccountFeedListResponse#meta
      class Meta < PostForMe::Internal::Type::BaseModel
        # @!attribute cursor
        #   Id representing the next page of items
        #
        #   @return [String]
        required :cursor, String

        # @!attribute limit
        #   Maximum number of items returned.
        #
        #   @return [Float]
        required :limit, Float

        # @!attribute next_
        #   URL to the next page of results, or null if none.
        #
        #   @return [String, nil]
        required :next_, String, api_name: :next, nil?: true

        # @!attribute has_more
        #   Indicates if there are more results or not
        #
        #   @return [Boolean, nil]
        optional :has_more, PostForMe::Internal::Type::Boolean

        # @!method initialize(cursor:, limit:, next_:, has_more: nil)
        #   @param cursor [String] Id representing the next page of items
        #
        #   @param limit [Float] Maximum number of items returned.
        #
        #   @param next_ [String, nil] URL to the next page of results, or null if none.
        #
        #   @param has_more [Boolean] Indicates if there are more results or not
      end
    end
  end
end
