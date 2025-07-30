# typed: strong

module PostForMe
  module Models
    class SocialAccountUpdateParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PostForMe::SocialAccountUpdateParams,
            PostForMe::Internal::AnyHash
          )
        end

      # The platform's external id of the social account
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # The platform's username of the social account
      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      sig do
        params(
          external_id: String,
          username: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The platform's external id of the social account
        external_id: nil,
        # The platform's username of the social account
        username: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            external_id: String,
            username: String,
            request_options: PostForMe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
