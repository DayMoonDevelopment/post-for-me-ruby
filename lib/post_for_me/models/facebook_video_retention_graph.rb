# frozen_string_literal: true

module PostForMe
  module Models
    class FacebookVideoRetentionGraph < PostForMe::Internal::Type::BaseModel
      # @!attribute rate
      #   Percentage of viewers at this time
      #
      #   @return [Float]
      required :rate, Float

      # @!attribute time
      #   Time in seconds
      #
      #   @return [Float]
      required :time, Float

      # @!method initialize(rate:, time:)
      #   @param rate [Float] Percentage of viewers at this time
      #
      #   @param time [Float] Time in seconds
    end
  end
end
