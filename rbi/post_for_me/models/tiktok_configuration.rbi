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

      # Will automatically add music to photo posts
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_add_music

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # Disclose branded content on TikTok
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :disclose_branded_content

      # Disclose your brand on TikTok
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :disclose_your_brand

      # Flag content as AI generated on TikTok
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_ai_generated

      # Will create a draft upload to TikTok, posting will need to be completed from
      # within the app
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_draft

      # Overrides the `media` from the post
      sig do
        returns(T.nilable(T::Array[PostForMe::TiktokConfiguration::Media]))
      end
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
          auto_add_music: T.nilable(T::Boolean),
          caption: T.nilable(T.anything),
          disclose_branded_content: T.nilable(T::Boolean),
          disclose_your_brand: T.nilable(T::Boolean),
          is_ai_generated: T.nilable(T::Boolean),
          is_draft: T.nilable(T::Boolean),
          media:
            T.nilable(T::Array[PostForMe::TiktokConfiguration::Media::OrHash]),
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
        # Will automatically add music to photo posts
        auto_add_music: nil,
        # Overrides the `caption` from the post
        caption: nil,
        # Disclose branded content on TikTok
        disclose_branded_content: nil,
        # Disclose your brand on TikTok
        disclose_your_brand: nil,
        # Flag content as AI generated on TikTok
        is_ai_generated: nil,
        # Will create a draft upload to TikTok, posting will need to be completed from
        # within the app
        is_draft: nil,
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
            auto_add_music: T.nilable(T::Boolean),
            caption: T.nilable(T.anything),
            disclose_branded_content: T.nilable(T::Boolean),
            disclose_your_brand: T.nilable(T::Boolean),
            is_ai_generated: T.nilable(T::Boolean),
            is_draft: T.nilable(T::Boolean),
            media: T.nilable(T::Array[PostForMe::TiktokConfiguration::Media]),
            privacy_status: T.nilable(String),
            title: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Media < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::TiktokConfiguration::Media,
              PostForMe::Internal::AnyHash
            )
          end

        # Public URL of the media
        sig { returns(String) }
        attr_accessor :url

        # List of tags to attach to the media
        sig do
          returns(
            T.nilable(T::Array[PostForMe::TiktokConfiguration::Media::Tag])
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
                T::Array[PostForMe::TiktokConfiguration::Media::Tag::OrHash]
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
                T.nilable(T::Array[PostForMe::TiktokConfiguration::Media::Tag]),
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
                PostForMe::TiktokConfiguration::Media::Tag,
                PostForMe::Internal::AnyHash
              )
            end

          # Facebook User ID, Instagram Username or Instagram product id to tag
          sig { returns(String) }
          attr_accessor :id

          # The platform for the tags
          sig do
            returns(
              PostForMe::TiktokConfiguration::Media::Tag::Platform::OrSymbol
            )
          end
          attr_accessor :platform

          # The type of tag, user to tag accounts, product to tag products (only supported
          # for instagram)
          sig do
            returns(PostForMe::TiktokConfiguration::Media::Tag::Type::OrSymbol)
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
                PostForMe::TiktokConfiguration::Media::Tag::Platform::OrSymbol,
              type: PostForMe::TiktokConfiguration::Media::Tag::Type::OrSymbol,
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
                  PostForMe::TiktokConfiguration::Media::Tag::Platform::OrSymbol,
                type:
                  PostForMe::TiktokConfiguration::Media::Tag::Type::OrSymbol,
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
                  PostForMe::TiktokConfiguration::Media::Tag::Platform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FACEBOOK =
              T.let(
                :facebook,
                PostForMe::TiktokConfiguration::Media::Tag::Platform::TaggedSymbol
              )
            INSTAGRAM =
              T.let(
                :instagram,
                PostForMe::TiktokConfiguration::Media::Tag::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::TiktokConfiguration::Media::Tag::Platform::TaggedSymbol
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
                T.all(Symbol, PostForMe::TiktokConfiguration::Media::Tag::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USER =
              T.let(
                :user,
                PostForMe::TiktokConfiguration::Media::Tag::Type::TaggedSymbol
              )
            PRODUCT =
              T.let(
                :product,
                PostForMe::TiktokConfiguration::Media::Tag::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::TiktokConfiguration::Media::Tag::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
