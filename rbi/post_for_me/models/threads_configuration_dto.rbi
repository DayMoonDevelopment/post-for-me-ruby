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

        # List of tags to attach to the media
        sig do
          returns(
            T.nilable(T::Array[PostForMe::ThreadsConfigurationDto::Media::Tag])
          )
        end
        attr_accessor :tags

        # Timestamp in milliseconds of frame to use as thumbnail for the media
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :thumbnail_timestamp_ms

        # Public URL of the thumbnail for the media
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :thumbnail_url

        sig do
          params(
            url: String,
            tags:
              T.nilable(
                T::Array[PostForMe::ThreadsConfigurationDto::Media::Tag::OrHash]
              ),
            thumbnail_timestamp_ms: T.nilable(T.anything),
            thumbnail_url: T.nilable(T.anything)
          ).returns(T.attached_class)
        end
        def self.new(
          # Public URL of the media
          url:,
          # List of tags to attach to the media
          tags: nil,
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
              tags:
                T.nilable(
                  T::Array[PostForMe::ThreadsConfigurationDto::Media::Tag]
                ),
              thumbnail_timestamp_ms: T.nilable(T.anything),
              thumbnail_url: T.nilable(T.anything)
            }
          )
        end
        def to_hash
        end

        class Tag < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::ThreadsConfigurationDto::Media::Tag,
                PostForMe::Internal::AnyHash
              )
            end

          # Facebook User ID, Instagram Username or Instagram product id to tag
          sig { returns(String) }
          attr_accessor :id

          # The platform for the tags
          sig do
            returns(
              PostForMe::ThreadsConfigurationDto::Media::Tag::Platform::OrSymbol
            )
          end
          attr_accessor :platform

          # The type of tag, user to tag accounts, product to tag products (only supported
          # for instagram)
          sig do
            returns(
              PostForMe::ThreadsConfigurationDto::Media::Tag::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Percentage distance from left edge of the image, Not required for videos or
          # stories
          sig { returns(T.nilable(Float)) }
          attr_reader :x

          sig { params(x: Float).void }
          attr_writer :x

          # Percentage distance from top edge of the image, Not required for videos or
          # stories
          sig { returns(T.nilable(Float)) }
          attr_reader :y_

          sig { params(y_: Float).void }
          attr_writer :y_

          sig do
            params(
              id: String,
              platform:
                PostForMe::ThreadsConfigurationDto::Media::Tag::Platform::OrSymbol,
              type:
                PostForMe::ThreadsConfigurationDto::Media::Tag::Type::OrSymbol,
              x: Float,
              y_: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Facebook User ID, Instagram Username or Instagram product id to tag
            id:,
            # The platform for the tags
            platform:,
            # The type of tag, user to tag accounts, product to tag products (only supported
            # for instagram)
            type:,
            # Percentage distance from left edge of the image, Not required for videos or
            # stories
            x: nil,
            # Percentage distance from top edge of the image, Not required for videos or
            # stories
            y_: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                platform:
                  PostForMe::ThreadsConfigurationDto::Media::Tag::Platform::OrSymbol,
                type:
                  PostForMe::ThreadsConfigurationDto::Media::Tag::Type::OrSymbol,
                x: Float,
                y_: Float
              }
            )
          end
          def to_hash
          end

          # The platform for the tags
          module Platform
            extend PostForMe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PostForMe::ThreadsConfigurationDto::Media::Tag::Platform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FACEBOOK =
              T.let(
                :facebook,
                PostForMe::ThreadsConfigurationDto::Media::Tag::Platform::TaggedSymbol
              )
            INSTAGRAM =
              T.let(
                :instagram,
                PostForMe::ThreadsConfigurationDto::Media::Tag::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::ThreadsConfigurationDto::Media::Tag::Platform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The type of tag, user to tag accounts, product to tag products (only supported
          # for instagram)
          module Type
            extend PostForMe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PostForMe::ThreadsConfigurationDto::Media::Tag::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USER =
              T.let(
                :user,
                PostForMe::ThreadsConfigurationDto::Media::Tag::Type::TaggedSymbol
              )
            PRODUCT =
              T.let(
                :product,
                PostForMe::ThreadsConfigurationDto::Media::Tag::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::ThreadsConfigurationDto::Media::Tag::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
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
