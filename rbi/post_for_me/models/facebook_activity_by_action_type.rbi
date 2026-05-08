# typed: strong

module PostForMe
  module Models
    class FacebookActivityByActionType < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::FacebookActivityByActionType,
            PostForMe::Internal::AnyHash
          )
        end

      # Action type (e.g., like, comment, share)
      sig { returns(String) }
      attr_accessor :action_type

      # Number of actions
      sig { returns(Float) }
      attr_accessor :value

      sig do
        params(action_type: String, value: Float).returns(T.attached_class)
      end
      def self.new(
        # Action type (e.g., like, comment, share)
        action_type:,
        # Number of actions
        value:
      )
      end

      sig { override.returns({ action_type: String, value: Float }) }
      def to_hash
      end
    end
  end
end
