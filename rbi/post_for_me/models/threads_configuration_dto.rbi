# typed: strong

module PostForMe
  module Models
    class ThreadsConfigurationDto < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::ThreadsConfigurationDto,
            PostForMe::Internal::AnyHash
          )
        end

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # Overrides the `media` from the post
      sig do
        returns(T.nilable(T::Array[PostForMe::ThreadsConfigurationDto::Media]))
      end
      attr_accessor :media

      # Threads post placement
      sig do
        returns(
          T.nilable(PostForMe::ThreadsConfigurationDto::Placement::OrSymbol)
        )
      end
      attr_accessor :placement

      sig do
        params(
          caption: T.nilable(T.anything),
          media:
            T.nilable(
              T::Array[PostForMe::ThreadsConfigurationDto::Media::OrHash]
            ),
          placement:
            T.nilable(PostForMe::ThreadsConfigurationDto::Placement::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # Overrides the `caption` from the post
        caption: nil,
        # Overrides the `media` from the post
        media: nil,
        # Threads post placement
        placement: nil
      )
      end

      sig do
        override.returns(
          {
            caption: T.nilable(T.anything),
            media:
              T.nilable(T::Array[PostForMe::ThreadsConfigurationDto::Media]),
            placement:
              T.nilable(PostForMe::ThreadsConfigurationDto::Placement::OrSymbol)
          }
        )
      end
      def to_hash
      end

      class Media < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::ThreadsConfigurationDto::Media,
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

      # Threads post placement
      module Placement
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::ThreadsConfigurationDto::Placement)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REELS =
          T.let(
            :reels,
            PostForMe::ThreadsConfigurationDto::Placement::TaggedSymbol
          )
        TIMELINE =
          T.let(
            :timeline,
            PostForMe::ThreadsConfigurationDto::Placement::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PostForMe::ThreadsConfigurationDto::Placement::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
