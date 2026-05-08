# typed: strong

module PostForMe
  module Models
    class FacebookVideoRetentionGraph < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::FacebookVideoRetentionGraph,
            PostForMe::Internal::AnyHash
          )
        end

      # Percentage of viewers at this time
      sig { returns(Float) }
      attr_accessor :rate

      # Time in seconds
      sig { returns(Float) }
      attr_accessor :time

      sig { params(rate: Float, time: Float).returns(T.attached_class) }
      def self.new(
        # Percentage of viewers at this time
        rate:,
        # Time in seconds
        time:
      )
      end

      sig { override.returns({ rate: Float, time: Float }) }
      def to_hash
      end
    end
  end
end
