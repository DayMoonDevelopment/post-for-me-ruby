# typed: strong

module PostForMe
  module Models
    class TwitterConfigurationDto < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::TwitterConfigurationDto,
            PostForMe::Internal::AnyHash
          )
        end

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # Id of the community to post to
      sig { returns(T.nilable(String)) }
      attr_reader :community_id

      sig { params(community_id: String).void }
      attr_writer :community_id

      # Overrides the `media` from the post
      sig do
        returns(T.nilable(T::Array[PostForMe::TwitterConfigurationDto::Media]))
      end
      attr_accessor :media

      # Poll options for the tweet
      sig { returns(T.nilable(PostForMe::TwitterConfigurationDto::Poll)) }
      attr_reader :poll

      sig do
        params(poll: PostForMe::TwitterConfigurationDto::Poll::OrHash).void
      end
      attr_writer :poll

      # Id of the tweet you want to quote
      sig { returns(T.nilable(String)) }
      attr_reader :quote_tweet_id

      sig { params(quote_tweet_id: String).void }
      attr_writer :quote_tweet_id

      # Who can reply to the tweet
      sig do
        returns(
          T.nilable(PostForMe::TwitterConfigurationDto::ReplySettings::OrSymbol)
        )
      end
      attr_accessor :reply_settings

      sig do
        params(
          caption: T.nilable(T.anything),
          community_id: String,
          media:
            T.nilable(
              T::Array[PostForMe::TwitterConfigurationDto::Media::OrHash]
            ),
          poll: PostForMe::TwitterConfigurationDto::Poll::OrHash,
          quote_tweet_id: String,
          reply_settings:
            T.nilable(
              PostForMe::TwitterConfigurationDto::ReplySettings::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Overrides the `caption` from the post
        caption: nil,
        # Id of the community to post to
        community_id: nil,
        # Overrides the `media` from the post
        media: nil,
        # Poll options for the tweet
        poll: nil,
        # Id of the tweet you want to quote
        quote_tweet_id: nil,
        # Who can reply to the tweet
        reply_settings: nil
      )
      end

      sig do
        override.returns(
          {
            caption: T.nilable(T.anything),
            community_id: String,
            media:
              T.nilable(T::Array[PostForMe::TwitterConfigurationDto::Media]),
            poll: PostForMe::TwitterConfigurationDto::Poll,
            quote_tweet_id: String,
            reply_settings:
              T.nilable(
                PostForMe::TwitterConfigurationDto::ReplySettings::OrSymbol
              )
          }
        )
      end
      def to_hash
      end

      class Media < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::TwitterConfigurationDto::Media,
              PostForMe::Internal::AnyHash
            )
          end

        # Public URL of the media
        sig { returns(String) }
        attr_accessor :url

        # List of tags to attach to the media
        sig do
          returns(
            T.nilable(T::Array[PostForMe::TwitterConfigurationDto::Media::Tag])
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
                T::Array[PostForMe::TwitterConfigurationDto::Media::Tag::OrHash]
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
                  T::Array[PostForMe::TwitterConfigurationDto::Media::Tag]
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
                PostForMe::TwitterConfigurationDto::Media::Tag,
                PostForMe::Internal::AnyHash
              )
            end

          # Facebook User ID, Instagram Username or Instagram product id to tag
          sig { returns(String) }
          attr_accessor :id

          # The platform for the tags
          sig do
            returns(
              PostForMe::TwitterConfigurationDto::Media::Tag::Platform::OrSymbol
            )
          end
          attr_accessor :platform

          # The type of tag, user to tag accounts, product to tag products (only supported
          # for instagram)
          sig do
            returns(
              PostForMe::TwitterConfigurationDto::Media::Tag::Type::OrSymbol
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
                PostForMe::TwitterConfigurationDto::Media::Tag::Platform::OrSymbol,
              type:
                PostForMe::TwitterConfigurationDto::Media::Tag::Type::OrSymbol,
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
                  PostForMe::TwitterConfigurationDto::Media::Tag::Platform::OrSymbol,
                type:
                  PostForMe::TwitterConfigurationDto::Media::Tag::Type::OrSymbol,
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
                  PostForMe::TwitterConfigurationDto::Media::Tag::Platform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FACEBOOK =
              T.let(
                :facebook,
                PostForMe::TwitterConfigurationDto::Media::Tag::Platform::TaggedSymbol
              )
            INSTAGRAM =
              T.let(
                :instagram,
                PostForMe::TwitterConfigurationDto::Media::Tag::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::TwitterConfigurationDto::Media::Tag::Platform::TaggedSymbol
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
                  PostForMe::TwitterConfigurationDto::Media::Tag::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USER =
              T.let(
                :user,
                PostForMe::TwitterConfigurationDto::Media::Tag::Type::TaggedSymbol
              )
            PRODUCT =
              T.let(
                :product,
                PostForMe::TwitterConfigurationDto::Media::Tag::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::TwitterConfigurationDto::Media::Tag::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Poll < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::TwitterConfigurationDto::Poll,
              PostForMe::Internal::AnyHash
            )
          end

        # Duration of the poll in minutes
        sig { returns(Float) }
        attr_accessor :duration_minutes

        # The choices of the poll, requiring 2-4 options
        sig { returns(T::Array[String]) }
        attr_accessor :options

        # Who can reply to the tweet
        sig do
          returns(
            T.nilable(
              PostForMe::TwitterConfigurationDto::Poll::ReplySettings::OrSymbol
            )
          )
        end
        attr_reader :reply_settings

        sig do
          params(
            reply_settings:
              PostForMe::TwitterConfigurationDto::Poll::ReplySettings::OrSymbol
          ).void
        end
        attr_writer :reply_settings

        # Poll options for the tweet
        sig do
          params(
            duration_minutes: Float,
            options: T::Array[String],
            reply_settings:
              PostForMe::TwitterConfigurationDto::Poll::ReplySettings::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Duration of the poll in minutes
          duration_minutes:,
          # The choices of the poll, requiring 2-4 options
          options:,
          # Who can reply to the tweet
          reply_settings: nil
        )
        end

        sig do
          override.returns(
            {
              duration_minutes: Float,
              options: T::Array[String],
              reply_settings:
                PostForMe::TwitterConfigurationDto::Poll::ReplySettings::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Who can reply to the tweet
        module ReplySettings
          extend PostForMe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PostForMe::TwitterConfigurationDto::Poll::ReplySettings
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FOLLOWING =
            T.let(
              :following,
              PostForMe::TwitterConfigurationDto::Poll::ReplySettings::TaggedSymbol
            )
          MENTIONED_USERS =
            T.let(
              :mentionedUsers,
              PostForMe::TwitterConfigurationDto::Poll::ReplySettings::TaggedSymbol
            )
          SUBSCRIBERS =
            T.let(
              :subscribers,
              PostForMe::TwitterConfigurationDto::Poll::ReplySettings::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              PostForMe::TwitterConfigurationDto::Poll::ReplySettings::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PostForMe::TwitterConfigurationDto::Poll::ReplySettings::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Who can reply to the tweet
      module ReplySettings
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::TwitterConfigurationDto::ReplySettings)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FOLLOWING =
          T.let(
            :following,
            PostForMe::TwitterConfigurationDto::ReplySettings::TaggedSymbol
          )
        MENTIONED_USERS =
          T.let(
            :mentionedUsers,
            PostForMe::TwitterConfigurationDto::ReplySettings::TaggedSymbol
          )
        SUBSCRIBERS =
          T.let(
            :subscribers,
            PostForMe::TwitterConfigurationDto::ReplySettings::TaggedSymbol
          )
        VERIFIED =
          T.let(
            :verified,
            PostForMe::TwitterConfigurationDto::ReplySettings::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PostForMe::TwitterConfigurationDto::ReplySettings::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
