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

      # Page id with a location that you want to tag the image or video with
      sig { returns(T.nilable(String)) }
      attr_accessor :location

      # Overrides the `media` from the post
      sig { returns(T.nilable(T::Array[PostForMe::SocialPostMedia])) }
      attr_accessor :media

      # Instagram post placement
      sig do
        returns(
          T.nilable(PostForMe::InstagramConfigurationDto::Placement::OrSymbol)
        )
      end
      attr_accessor :placement

      # If false video posts will only be shown in the Reels tab
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :share_to_feed

      # Instagram trial reel type, when passed will be created as a trial reel. If
      # manual the trial reel can be manually graduated in the native app. If perfomance
      # the trial reel will be automatically graduated if the trial reel performs well.
      sig do
        returns(
          T.nilable(
            PostForMe::InstagramConfigurationDto::TrialReelType::OrSymbol
          )
        )
      end
      attr_accessor :trial_reel_type

      sig do
        params(
          caption: T.nilable(T.anything),
          collaborators: T.nilable(T::Array[String]),
          location: T.nilable(String),
          media: T.nilable(T::Array[PostForMe::SocialPostMedia::OrHash]),
          placement:
            T.nilable(
              PostForMe::InstagramConfigurationDto::Placement::OrSymbol
            ),
          share_to_feed: T.nilable(T::Boolean),
          trial_reel_type:
            T.nilable(
              PostForMe::InstagramConfigurationDto::TrialReelType::OrSymbol
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Overrides the `caption` from the post
        caption: nil,
        # Instagram usernames to be tagged as a collaborator
        collaborators: nil,
        # Page id with a location that you want to tag the image or video with
        location: nil,
        # Overrides the `media` from the post
        media: nil,
        # Instagram post placement
        placement: nil,
        # If false video posts will only be shown in the Reels tab
        share_to_feed: nil,
        # Instagram trial reel type, when passed will be created as a trial reel. If
        # manual the trial reel can be manually graduated in the native app. If perfomance
        # the trial reel will be automatically graduated if the trial reel performs well.
        trial_reel_type: nil
      )
      end

      sig do
        override.returns(
          {
            caption: T.nilable(T.anything),
            collaborators: T.nilable(T::Array[String]),
            location: T.nilable(String),
            media: T.nilable(T::Array[PostForMe::SocialPostMedia]),
            placement:
              T.nilable(
                PostForMe::InstagramConfigurationDto::Placement::OrSymbol
              ),
            share_to_feed: T.nilable(T::Boolean),
            trial_reel_type:
              T.nilable(
                PostForMe::InstagramConfigurationDto::TrialReelType::OrSymbol
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

      # Instagram trial reel type, when passed will be created as a trial reel. If
      # manual the trial reel can be manually graduated in the native app. If perfomance
      # the trial reel will be automatically graduated if the trial reel performs well.
      module TrialReelType
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::InstagramConfigurationDto::TrialReelType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANUAL =
          T.let(
            :manual,
            PostForMe::InstagramConfigurationDto::TrialReelType::TaggedSymbol
          )
        PERFORMANCE =
          T.let(
            :performance,
            PostForMe::InstagramConfigurationDto::TrialReelType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PostForMe::InstagramConfigurationDto::TrialReelType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
