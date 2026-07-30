# frozen_string_literal: true

module PostForMe
  module Models
    class TiktokBusinessVideoMetricPercentage < PostForMe::Internal::Type::BaseModel
      # @!attribute percentage
      #   Percentage value for the metric
      #
      #   @return [Float]
      required :percentage, Float

      # @!attribute second
      #   Time in seconds for the metric
      #
      #   @return [String]
      required :second, String

      # @!method initialize(percentage:, second:)
      #   @param percentage [Float] Percentage value for the metric
      #
      #   @param second [String] Time in seconds for the metric
    end
  end
end
