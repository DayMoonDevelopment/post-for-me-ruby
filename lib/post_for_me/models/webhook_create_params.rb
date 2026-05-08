# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::Webhooks#create
    class WebhookCreateParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      # @!attribute event_types
      #   List of events the webhook will recieve
      #
      #   @return [Array<Symbol, PostForMe::Models::WebhookCreateParams::EventType>]
      required :event_types,
               -> { PostForMe::Internal::Type::ArrayOf[enum: PostForMe::WebhookCreateParams::EventType] }

      # @!attribute url
      #   Public url to recieve event data
      #
      #   @return [String]
      required :url, String

      # @!method initialize(event_types:, url:, request_options: {})
      #   @param event_types [Array<Symbol, PostForMe::Models::WebhookCreateParams::EventType>] List of events the webhook will recieve
      #
      #   @param url [String] Public url to recieve event data
      #
      #   @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}]

      module EventType
        extend PostForMe::Internal::Type::Enum

        SOCIAL_POST_CREATED = :"social.post.created"
        SOCIAL_POST_UPDATED = :"social.post.updated"
        SOCIAL_POST_DELETED = :"social.post.deleted"
        SOCIAL_POST_RESULT_CREATED = :"social.post.result.created"
        SOCIAL_ACCOUNT_CREATED = :"social.account.created"
        SOCIAL_ACCOUNT_UPDATED = :"social.account.updated"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
