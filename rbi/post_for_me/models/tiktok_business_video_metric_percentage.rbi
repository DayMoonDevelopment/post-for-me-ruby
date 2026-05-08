# typed: strong

module PostForMe
  module Models
    class TiktokBusinessVideoMetricPercentage < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::TiktokBusinessVideoMetricPercentage,
            PostForMe::Internal::AnyHash
          )
        end

      # Percentage value for the metric
      sig { returns(Float) }
      attr_accessor :percentage

      # Time in seconds for the metric
      sig { returns(String) }
      attr_accessor :second

      sig do
        params(percentage: Float, second: String).returns(T.attached_class)
      end
      def self.new(
        # Percentage value for the metric
        percentage:,
        # Time in seconds for the metric
        second:
      )
      end

      sig { override.returns({ percentage: Float, second: String }) }
      def to_hash
      end
    end
  end
end
