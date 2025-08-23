# typed: strong

module PostForMe
  module Models
    class LinkedinConfigurationDto < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::LinkedinConfigurationDto,
            PostForMe::Internal::AnyHash
          )
        end

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # Overrides the `media` from the post
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :media

      sig do
        params(
          caption: T.nilable(T.anything),
          media: T.nilable(T::Array[String])
        ).returns(T.attached_class)
      end
      def self.new(
        # Overrides the `caption` from the post
        caption: nil,
        # Overrides the `media` from the post
        media: nil
      )
      end

      sig do
        override.returns(
          { caption: T.nilable(T.anything), media: T.nilable(T::Array[String]) }
        )
      end
      def to_hash
      end
    end
  end
end
