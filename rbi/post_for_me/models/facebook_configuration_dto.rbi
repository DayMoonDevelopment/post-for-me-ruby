# typed: strong

module PostForMe
  module Models
    class FacebookConfigurationDto < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::FacebookConfigurationDto,
            PostForMe::Internal::AnyHash
          )
        end

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # List of page ids to invite as collaborators for a Video Reel
      sig { returns(T.nilable(T::Array[T::Array[T.anything]])) }
      attr_accessor :collaborators

      # Page id with a location that you want to tag the image or video with
      sig { returns(T.nilable(String)) }
      attr_accessor :location

      # Overrides the `media` from the post
      sig { returns(T.nilable(T::Array[PostForMe::SocialPostMedia])) }
      attr_accessor :media

      # Facebook post placement
      sig do
        returns(
          T.nilable(PostForMe::FacebookConfigurationDto::Placement::OrSymbol)
        )
      end
      attr_accessor :placement

      # If true, include the caption on each image in a carousel upload; if false, only
      # include it on the final carousel post
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :set_caption_for_each_image

      sig do
        params(
          caption: T.nilable(T.anything),
          collaborators: T.nilable(T::Array[T::Array[T.anything]]),
          location: T.nilable(String),
          media: T.nilable(T::Array[PostForMe::SocialPostMedia::OrHash]),
          placement:
            T.nilable(PostForMe::FacebookConfigurationDto::Placement::OrSymbol),
          set_caption_for_each_image: T.nilable(T::Boolean)
        ).returns(T.attached_class)
      end
      def self.new(
        # Overrides the `caption` from the post
        caption: nil,
        # List of page ids to invite as collaborators for a Video Reel
        collaborators: nil,
        # Page id with a location that you want to tag the image or video with
        location: nil,
        # Overrides the `media` from the post
        media: nil,
        # Facebook post placement
        placement: nil,
        # If true, include the caption on each image in a carousel upload; if false, only
        # include it on the final carousel post
        set_caption_for_each_image: nil
      )
      end

      sig do
        override.returns(
          {
            caption: T.nilable(T.anything),
            collaborators: T.nilable(T::Array[T::Array[T.anything]]),
            location: T.nilable(String),
            media: T.nilable(T::Array[PostForMe::SocialPostMedia]),
            placement:
              T.nilable(
                PostForMe::FacebookConfigurationDto::Placement::OrSymbol
              ),
            set_caption_for_each_image: T.nilable(T::Boolean)
          }
        )
      end
      def to_hash
      end

      # Facebook post placement
      module Placement
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::FacebookConfigurationDto::Placement)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REELS =
          T.let(
            :reels,
            PostForMe::FacebookConfigurationDto::Placement::TaggedSymbol
          )
        STORIES =
          T.let(
            :stories,
            PostForMe::FacebookConfigurationDto::Placement::TaggedSymbol
          )
        TIMELINE =
          T.let(
            :timeline,
            PostForMe::FacebookConfigurationDto::Placement::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PostForMe::FacebookConfigurationDto::Placement::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
