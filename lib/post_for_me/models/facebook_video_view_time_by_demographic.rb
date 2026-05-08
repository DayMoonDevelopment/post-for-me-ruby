# frozen_string_literal: true

module PostForMe
  module Models
    class FacebookVideoViewTimeByDemographic < PostForMe::Internal::Type::BaseModel
      # @!attribute key
      #   Demographic key (e.g., age_gender, region, country)
      #
      #   @return [String]
      required :key, String

      # @!attribute value
      #   Total view time in milliseconds
      #
      #   @return [Float]
      required :value, Float

      # @!method initialize(key:, value:)
      #   @param key [String] Demographic key (e.g., age_gender, region, country)
      #
      #   @param value [Float] Total view time in milliseconds
    end
  end
end
