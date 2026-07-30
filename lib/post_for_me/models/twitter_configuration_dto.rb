# frozen_string_literal: true

module PostForMe
  module Models
    class TwitterConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute community_id
      #   Id of the community to post to
      #
      #   @return [String, nil]
      optional :community_id, String

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<PostForMe::Models::SocialPostMedia>, nil]
      optional :media, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostMedia] }, nil?: true

      # @!attribute poll
      #   Poll options for the tweet
      #
      #   @return [PostForMe::Models::TwitterPoll, nil]
      optional :poll, -> { PostForMe::TwitterPoll }

      # @!attribute quote_tweet_id
      #   Id of the tweet you want to quote
      #
      #   @return [String, nil]
      optional :quote_tweet_id, String

      # @!attribute reply_settings
      #   Who can reply to the tweet
      #
      #   @return [Symbol, PostForMe::Models::TwitterConfigurationDto::ReplySettings, nil]
      optional :reply_settings, enum: -> { PostForMe::TwitterConfigurationDto::ReplySettings }, nil?: true

      # @!method initialize(caption: nil, community_id: nil, media: nil, poll: nil, quote_tweet_id: nil, reply_settings: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param community_id [String] Id of the community to post to
      #
      #   @param media [Array<PostForMe::Models::SocialPostMedia>, nil] Overrides the `media` from the post
      #
      #   @param poll [PostForMe::Models::TwitterPoll] Poll options for the tweet
      #
      #   @param quote_tweet_id [String] Id of the tweet you want to quote
      #
      #   @param reply_settings [Symbol, PostForMe::Models::TwitterConfigurationDto::ReplySettings, nil] Who can reply to the tweet

      # Who can reply to the tweet
      #
      # @see PostForMe::Models::TwitterConfigurationDto#reply_settings
      module ReplySettings
        extend PostForMe::Internal::Type::Enum

        FOLLOWING = :following
        MENTIONED_USERS = :mentionedUsers
        SUBSCRIBERS = :subscribers
        VERIFIED = :verified

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
