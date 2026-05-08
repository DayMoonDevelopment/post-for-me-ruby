# frozen_string_literal: true

module PostForMe
  module Models
    class TwitterPoll < PostForMe::Internal::Type::BaseModel
      # @!attribute duration_minutes
      #   Duration of the poll in minutes
      #
      #   @return [Float]
      required :duration_minutes, Float

      # @!attribute options
      #   The choices of the poll, requiring 2-4 options
      #
      #   @return [Array<String>]
      required :options, PostForMe::Internal::Type::ArrayOf[String]

      # @!attribute reply_settings
      #   Who can reply to the tweet
      #
      #   @return [Symbol, PostForMe::Models::TwitterPoll::ReplySettings, nil]
      optional :reply_settings, enum: -> { PostForMe::TwitterPoll::ReplySettings }

      # @!method initialize(duration_minutes:, options:, reply_settings: nil)
      #   @param duration_minutes [Float] Duration of the poll in minutes
      #
      #   @param options [Array<String>] The choices of the poll, requiring 2-4 options
      #
      #   @param reply_settings [Symbol, PostForMe::Models::TwitterPoll::ReplySettings] Who can reply to the tweet

      # Who can reply to the tweet
      #
      # @see PostForMe::Models::TwitterPoll#reply_settings
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
