# typed: strong

module PostForMe
  module Models
    class SocialAccountRetrieveParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PostForMe::SocialAccountRetrieveParams,
            PostForMe::Internal::AnyHash
          )
        end

      sig do
        params(request_options: PostForMe::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: PostForMe::RequestOptions }) }
      def to_hash
      end
    end
  end
end
