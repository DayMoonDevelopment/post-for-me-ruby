# typed: strong

module PostForMe
  module Models
    class InstagramConfigurationDto < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::InstagramConfigurationDto,
            PostForMe::Internal::AnyHash
          )
        end

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # Instagram usernames to be tagged as a collaborator
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :collaborators

      # Overrides the `media` from the post
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :media

      # Instagram post placement
      sig do
        returns(
          T.nilable(PostForMe::InstagramConfigurationDto::Placement::OrSymbol)
        )
      end
      attr_accessor :placement

      sig do
        params(
          caption: T.nilable(T.anything),
          collaborators: T.nilable(T::Array[String]),
          media: T.nilable(T::Array[String]),
          placement:
            T.nilable(PostForMe::InstagramConfigurationDto::Placement::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # Overrides the `caption` from the post
        caption: nil,
        # Instagram usernames to be tagged as a collaborator
        collaborators: nil,
        # Overrides the `media` from the post
        media: nil,
        # Instagram post placement
        placement: nil
      )
      end

      sig do
        override.returns(
          {
            caption: T.nilable(T.anything),
            collaborators: T.nilable(T::Array[String]),
            media: T.nilable(T::Array[String]),
            placement:
              T.nilable(
                PostForMe::InstagramConfigurationDto::Placement::OrSymbol
              )
          }
        )
      end
      def to_hash
      end

      # Instagram post placement
      module Placement
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::InstagramConfigurationDto::Placement)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REELS =
          T.let(
            :reels,
            PostForMe::InstagramConfigurationDto::Placement::TaggedSymbol
          )
        STORIES =
          T.let(
            :stories,
            PostForMe::InstagramConfigurationDto::Placement::TaggedSymbol
          )
        TIMELINE =
          T.let(
            :timeline,
            PostForMe::InstagramConfigurationDto::Placement::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PostForMe::InstagramConfigurationDto::Placement::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
