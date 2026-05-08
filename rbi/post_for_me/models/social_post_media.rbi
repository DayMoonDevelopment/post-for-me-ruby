# typed: strong

module PostForMe
  module Models
    class SocialPostMedia < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::SocialPostMedia, PostForMe::Internal::AnyHash)
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
      sig { returns(T.nilable(T::Array[PostForMe::SocialPostMedia::Tag])) }
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
          tags: T.nilable(T::Array[PostForMe::SocialPostMedia::Tag::OrHash]),
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
            tags: T.nilable(T::Array[PostForMe::SocialPostMedia::Tag]),
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
            T.any(PostForMe::SocialPostMedia::Tag, PostForMe::Internal::AnyHash)
          end

        # Facebook User ID, Instagram Username or Instagram product id to tag
        sig { returns(String) }
        attr_accessor :id

        # The platform for the tags
        sig { returns(PostForMe::SocialPostMedia::Tag::Platform::OrSymbol) }
        attr_accessor :platform

        # The type of tag, user to tag accounts, product to tag products (only supported
        # for instagram)
        sig { returns(PostForMe::SocialPostMedia::Tag::Type::OrSymbol) }
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
            platform: PostForMe::SocialPostMedia::Tag::Platform::OrSymbol,
            type: PostForMe::SocialPostMedia::Tag::Type::OrSymbol,
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
              platform: PostForMe::SocialPostMedia::Tag::Platform::OrSymbol,
              type: PostForMe::SocialPostMedia::Tag::Type::OrSymbol,
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
              T.all(Symbol, PostForMe::SocialPostMedia::Tag::Platform)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FACEBOOK =
            T.let(
              :facebook,
              PostForMe::SocialPostMedia::Tag::Platform::TaggedSymbol
            )
          INSTAGRAM =
            T.let(
              :instagram,
              PostForMe::SocialPostMedia::Tag::Platform::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[PostForMe::SocialPostMedia::Tag::Platform::TaggedSymbol]
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
              T.all(Symbol, PostForMe::SocialPostMedia::Tag::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USER =
            T.let(:user, PostForMe::SocialPostMedia::Tag::Type::TaggedSymbol)
          PRODUCT =
            T.let(:product, PostForMe::SocialPostMedia::Tag::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[PostForMe::SocialPostMedia::Tag::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
