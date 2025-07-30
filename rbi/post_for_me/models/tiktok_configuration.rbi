# typed: strong

module PostForMe
  module Models
    class TiktokConfiguration < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::TiktokConfiguration, PostForMe::Internal::AnyHash)
        end

      # Allow comments on TikTok
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_comment

      # Allow duets on TikTok
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_duet

      # Allow stitch on TikTok
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_stitch

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # Disclose branded content on TikTok
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :disclose_branded_content

      # Disclose your brand on TikTok
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :disclose_your_brand

      # Overrides the `media` from the post
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :media

      # Sets the privacy status for TikTok (private, public)
      sig { returns(T.nilable(String)) }
      attr_accessor :privacy_status

      # Overrides the `title` from the post
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          allow_comment: T.nilable(T::Boolean),
          allow_duet: T.nilable(T::Boolean),
          allow_stitch: T.nilable(T::Boolean),
          caption: T.nilable(T.anything),
          disclose_branded_content: T.nilable(T::Boolean),
          disclose_your_brand: T.nilable(T::Boolean),
          media: T.nilable(T::Array[String]),
          privacy_status: T.nilable(String),
          title: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Allow comments on TikTok
        allow_comment: nil,
        # Allow duets on TikTok
        allow_duet: nil,
        # Allow stitch on TikTok
        allow_stitch: nil,
        # Overrides the `caption` from the post
        caption: nil,
        # Disclose branded content on TikTok
        disclose_branded_content: nil,
        # Disclose your brand on TikTok
        disclose_your_brand: nil,
        # Overrides the `media` from the post
        media: nil,
        # Sets the privacy status for TikTok (private, public)
        privacy_status: nil,
        # Overrides the `title` from the post
        title: nil
      )
      end

      sig do
        override.returns(
          {
            allow_comment: T.nilable(T::Boolean),
            allow_duet: T.nilable(T::Boolean),
            allow_stitch: T.nilable(T::Boolean),
            caption: T.nilable(T.anything),
            disclose_branded_content: T.nilable(T::Boolean),
            disclose_your_brand: T.nilable(T::Boolean),
            media: T.nilable(T::Array[String]),
            privacy_status: T.nilable(String),
            title: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
