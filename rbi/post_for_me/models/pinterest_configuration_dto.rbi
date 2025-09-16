# typed: strong

module PostForMe
  module Models
    class PinterestConfigurationDto < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::PinterestConfigurationDto,
            PostForMe::Internal::AnyHash
          )
        end

      # Pinterest board IDs
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :board_ids

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # Pinterest post link
      sig { returns(T.nilable(String)) }
      attr_accessor :link

      # Overrides the `media` from the post
      sig do
        returns(
          T.nilable(T::Array[PostForMe::PinterestConfigurationDto::Media])
        )
      end
      attr_accessor :media

      sig do
        params(
          board_ids: T.nilable(T::Array[String]),
          caption: T.nilable(T.anything),
          link: T.nilable(String),
          media:
            T.nilable(
              T::Array[PostForMe::PinterestConfigurationDto::Media::OrHash]
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Pinterest board IDs
        board_ids: nil,
        # Overrides the `caption` from the post
        caption: nil,
        # Pinterest post link
        link: nil,
        # Overrides the `media` from the post
        media: nil
      )
      end

      sig do
        override.returns(
          {
            board_ids: T.nilable(T::Array[String]),
            caption: T.nilable(T.anything),
            link: T.nilable(String),
            media:
              T.nilable(T::Array[PostForMe::PinterestConfigurationDto::Media])
          }
        )
      end
      def to_hash
      end

      class Media < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::PinterestConfigurationDto::Media,
              PostForMe::Internal::AnyHash
            )
          end

        # Public URL of the media
        sig { returns(String) }
        attr_accessor :url

        # Timestamp in milliseconds of frame to use as thumbnail for the media
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :thumbnail_timestamp_ms

        # Public URL of the thumbnail for the media
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :thumbnail_url

        sig do
          params(
            url: String,
            thumbnail_timestamp_ms: T.nilable(T.anything),
            thumbnail_url: T.nilable(T.anything)
          ).returns(T.attached_class)
        end
        def self.new(
          # Public URL of the media
          url:,
          # Timestamp in milliseconds of frame to use as thumbnail for the media
          thumbnail_timestamp_ms: nil,
          # Public URL of the thumbnail for the media
          thumbnail_url: nil
        )
        end

        sig do
          override.returns(
            {
              url: String,
              thumbnail_timestamp_ms: T.nilable(T.anything),
              thumbnail_url: T.nilable(T.anything)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
