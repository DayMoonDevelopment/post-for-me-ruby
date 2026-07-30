# typed: strong

module PostForMe
  module Models
    class YoutubePostPlatformData < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::YoutubePostPlatformData,
            PostForMe::Internal::AnyHash
          )
        end

      # Title of the post
      sig { returns(String) }
      attr_accessor :title

      sig { params(title: String).returns(T.attached_class) }
      def self.new(
        # Title of the post
        title:
      )
      end

      sig { override.returns({ title: String }) }
      def to_hash
      end
    end
  end
end
