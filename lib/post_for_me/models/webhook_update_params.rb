# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::Webhooks#update
    class WebhookUpdateParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute event_types
      #   List of events the webhook will recieve
      #
      #   @return [Array<Symbol, PostForMe::Models::WebhookUpdateParams::EventType>, nil]
      optional :event_types,
               -> { PostForMe::Internal::Type::ArrayOf[enum: PostForMe::WebhookUpdateParams::EventType] }

      # @!attribute url
      #   Public url to recieve event data
      #
      #   @return [String, nil]
      optional :url, String

      # @!method initialize(id:, event_types: nil, url: nil, request_options: {})
      #   @param id [String]
      #
      #   @param event_types [Array<Symbol, PostForMe::Models::WebhookUpdateParams::EventType>] List of events the webhook will recieve
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
