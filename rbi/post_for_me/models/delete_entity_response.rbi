# typed: strong

module PostForMe
  module Models
    class DeleteEntityResponse < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::DeleteEntityResponse, PostForMe::Internal::AnyHash)
        end

      # Whether or not the entity was deleted
      sig { returns(T::Boolean) }
      attr_accessor :success

      sig { params(success: T::Boolean).returns(T.attached_class) }
      def self.new(
        # Whether or not the entity was deleted
        success:
      )
      end

      sig { override.returns({ success: T::Boolean }) }
      def to_hash
      end
    end
  end
end
