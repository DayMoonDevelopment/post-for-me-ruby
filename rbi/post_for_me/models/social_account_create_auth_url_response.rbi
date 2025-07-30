# typed: strong

module PostForMe
  module Models
    class SocialAccountCreateAuthURLResponse < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::Models::SocialAccountCreateAuthURLResponse,
            PostForMe::Internal::AnyHash
          )
        end

      # The social account provider
      sig { returns(String) }
      attr_accessor :platform

      # The url to redirect the user to, in order to connect their account
      sig { returns(String) }
      attr_accessor :url

      sig { params(platform: String, url: String).returns(T.attached_class) }
      def self.new(
        # The social account provider
        platform:,
        # The url to redirect the user to, in order to connect their account
        url:
      )
      end

      sig { override.returns({ platform: String, url: String }) }
      def to_hash
      end
    end
  end
end
