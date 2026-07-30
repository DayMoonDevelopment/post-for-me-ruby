# typed: strong

module PostForMe
  module Models
    class FacebookVideoViewTimeByDemographic < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::FacebookVideoViewTimeByDemographic,
            PostForMe::Internal::AnyHash
          )
        end

      # Demographic key (e.g., age_gender, region, country)
      sig { returns(String) }
      attr_accessor :key

      # Total view time in milliseconds
      sig { returns(Float) }
      attr_accessor :value

      sig { params(key: String, value: Float).returns(T.attached_class) }
      def self.new(
        # Demographic key (e.g., age_gender, region, country)
        key:,
        # Total view time in milliseconds
        value:
      )
      end

      sig { override.returns({ key: String, value: Float }) }
      def to_hash
      end
    end
  end
end
