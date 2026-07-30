# frozen_string_literal: true

module PostForMe
  module Models
    class FacebookActivityByActionType < PostForMe::Internal::Type::BaseModel
      # @!attribute action_type
      #   Action type (e.g., like, comment, share)
      #
      #   @return [String]
      required :action_type, String

      # @!attribute value
      #   Number of actions
      #
      #   @return [Float]
      required :value, Float

      # @!method initialize(action_type:, value:)
      #   @param action_type [String] Action type (e.g., like, comment, share)
      #
      #   @param value [Float] Number of actions
    end
  end
end
