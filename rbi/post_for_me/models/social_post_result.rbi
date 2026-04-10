# typed: strong

module PostForMe
  module Models
    class SocialPostResult < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::SocialPostResult, PostForMe::Internal::AnyHash)
        end

      # The unique identifier of the post result
      sig { returns(String) }
      attr_accessor :id

      # Detailed logs from the post
      sig { returns(T.anything) }
      attr_accessor :details

      # Error message if the post failed
      sig { returns(T.anything) }
      attr_accessor :error

      # Array of media URLs associated with the post
      sig { returns(T.nilable(T::Array[PostForMe::SocialPostResult::Media])) }
      attr_accessor :media

      # Platform-specific data
      sig { returns(PostForMe::SocialPostResult::PlatformData) }
      attr_reader :platform_data

      sig do
        params(
          platform_data: PostForMe::SocialPostResult::PlatformData::OrHash
        ).void
      end
      attr_writer :platform_data

      # The ID of the associated post
      sig { returns(String) }
      attr_accessor :post_id

      # The ID of the associated social account
      sig { returns(String) }
      attr_accessor :social_account_id

      # Indicates if the post was successful
      sig { returns(T::Boolean) }
      attr_accessor :success

      sig do
        params(
          id: String,
          details: T.anything,
          error: T.anything,
          media:
            T.nilable(T::Array[PostForMe::SocialPostResult::Media::OrHash]),
          platform_data: PostForMe::SocialPostResult::PlatformData::OrHash,
          post_id: String,
          social_account_id: String,
          success: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the post result
        id:,
        # Detailed logs from the post
        details:,
        # Error message if the post failed
        error:,
        # Array of media URLs associated with the post
        media:,
        # Platform-specific data
        platform_data:,
        # The ID of the associated post
        post_id:,
        # The ID of the associated social account
        social_account_id:,
        # Indicates if the post was successful
        success:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            details: T.anything,
            error: T.anything,
            media: T.nilable(T::Array[PostForMe::SocialPostResult::Media]),
            platform_data: PostForMe::SocialPostResult::PlatformData,
            post_id: String,
            social_account_id: String,
            success: T::Boolean
          }
        )
      end
      def to_hash
      end

      class Media < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::SocialPostResult::Media,
              PostForMe::Internal::AnyHash
            )
          end

        # Public URL of the media
        sig { returns(String) }
        attr_accessor :url

        # If true the media will not be processed at all and instead be posted as is, this
        # may increase chance of post failure if media does not meet platform's
        # requirements. Best used for larger files.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :skip_processing

        # List of tags to attach to the media
        sig do
          returns(T.nilable(T::Array[PostForMe::SocialPostResult::Media::Tag]))
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
            skip_processing: T.nilable(T::Boolean),
            tags:
              T.nilable(
                T::Array[PostForMe::SocialPostResult::Media::Tag::OrHash]
              ),
            thumbnail_timestamp_ms: T.nilable(T.anything),
            thumbnail_url: T.nilable(T.anything)
          ).returns(T.attached_class)
        end
        def self.new(
          # Public URL of the media
          url:,
          # If true the media will not be processed at all and instead be posted as is, this
          # may increase chance of post failure if media does not meet platform's
          # requirements. Best used for larger files.
          skip_processing: nil,
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
              skip_processing: T.nilable(T::Boolean),
              tags:
                T.nilable(T::Array[PostForMe::SocialPostResult::Media::Tag]),
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
                PostForMe::SocialPostResult::Media::Tag,
                PostForMe::Internal::AnyHash
              )
            end

          # Facebook User ID, Instagram Username or Instagram product id to tag
          sig { returns(String) }
          attr_accessor :id

          # The platform for the tags
          sig do
            returns(
              PostForMe::SocialPostResult::Media::Tag::Platform::TaggedSymbol
            )
          end
          attr_accessor :platform

          # The type of tag, user to tag accounts, product to tag products (only supported
          # for instagram)
          sig do
            returns(PostForMe::SocialPostResult::Media::Tag::Type::TaggedSymbol)
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
                PostForMe::SocialPostResult::Media::Tag::Platform::OrSymbol,
              type: PostForMe::SocialPostResult::Media::Tag::Type::OrSymbol,
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
                  PostForMe::SocialPostResult::Media::Tag::Platform::TaggedSymbol,
                type:
                  PostForMe::SocialPostResult::Media::Tag::Type::TaggedSymbol,
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
                T.all(Symbol, PostForMe::SocialPostResult::Media::Tag::Platform)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FACEBOOK =
              T.let(
                :facebook,
                PostForMe::SocialPostResult::Media::Tag::Platform::TaggedSymbol
              )
            INSTAGRAM =
              T.let(
                :instagram,
                PostForMe::SocialPostResult::Media::Tag::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::SocialPostResult::Media::Tag::Platform::TaggedSymbol
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
                T.all(Symbol, PostForMe::SocialPostResult::Media::Tag::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USER =
              T.let(
                :user,
                PostForMe::SocialPostResult::Media::Tag::Type::TaggedSymbol
              )
            PRODUCT =
              T.let(
                :product,
                PostForMe::SocialPostResult::Media::Tag::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::SocialPostResult::Media::Tag::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class PlatformData < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::SocialPostResult::PlatformData,
              PostForMe::Internal::AnyHash
            )
          end

        # Platform-specific ID
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # URL of the posted content
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # Platform-specific data
        sig { params(id: String, url: String).returns(T.attached_class) }
        def self.new(
          # Platform-specific ID
          id: nil,
          # URL of the posted content
          url: nil
        )
        end

        sig { override.returns({ id: String, url: String }) }
        def to_hash
        end
      end
    end
  end
end
