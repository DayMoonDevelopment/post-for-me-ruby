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
      sig { returns(T.nilable(T::Array[String])) }
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
          media: T.nilable(T::Array[String]),
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
            media: T.nilable(T::Array[String]),
            placement:
              T.nilable(PostForMe::ThreadsConfigurationDto::Placement::OrSymbol)
          }
        )
      end
      def to_hash
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
