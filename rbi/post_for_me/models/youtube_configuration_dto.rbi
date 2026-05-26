# typed: strong

module PostForMe
  module Models
    class YoutubeConfigurationDto < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::YoutubeConfigurationDto,
            PostForMe::Internal::AnyHash
          )
        end

      # Overrides the `caption` from the post
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :caption

      # If true, marks the video as containing altered or synthetic content per
      # YouTube's disclosure policy. Sets status.containsSyntheticMedia on the YouTube
      # Data API videos.insert call; YouTube adds a "How this content was made" label to
      # the description automatically.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :contains_synthetic_media

      # If true will notify YouTube the video is intended for kids, defaults to false
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :made_for_kids

      # Overrides the `media` from the post
      sig { returns(T.nilable(T::Array[PostForMe::SocialPostMedia])) }
      attr_accessor :media

      # Sets the privacy status of the video, will default to public
      sig do
        returns(
          T.nilable(PostForMe::YoutubeConfigurationDto::PrivacyStatus::OrSymbol)
        )
      end
      attr_accessor :privacy_status

      # Overrides the `title` from the post
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          caption: T.nilable(T.anything),
          contains_synthetic_media: T.nilable(T::Boolean),
          made_for_kids: T.nilable(T::Boolean),
          media: T.nilable(T::Array[PostForMe::SocialPostMedia::OrHash]),
          privacy_status:
            T.nilable(
              PostForMe::YoutubeConfigurationDto::PrivacyStatus::OrSymbol
            ),
          title: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Overrides the `caption` from the post
        caption: nil,
        # If true, marks the video as containing altered or synthetic content per
        # YouTube's disclosure policy. Sets status.containsSyntheticMedia on the YouTube
        # Data API videos.insert call; YouTube adds a "How this content was made" label to
        # the description automatically.
        contains_synthetic_media: nil,
        # If true will notify YouTube the video is intended for kids, defaults to false
        made_for_kids: nil,
        # Overrides the `media` from the post
        media: nil,
        # Sets the privacy status of the video, will default to public
        privacy_status: nil,
        # Overrides the `title` from the post
        title: nil
      )
      end

      sig do
        override.returns(
          {
            caption: T.nilable(T.anything),
            contains_synthetic_media: T.nilable(T::Boolean),
            made_for_kids: T.nilable(T::Boolean),
            media: T.nilable(T::Array[PostForMe::SocialPostMedia]),
            privacy_status:
              T.nilable(
                PostForMe::YoutubeConfigurationDto::PrivacyStatus::OrSymbol
              ),
            title: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Sets the privacy status of the video, will default to public
      module PrivacyStatus
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::YoutubeConfigurationDto::PrivacyStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC =
          T.let(
            :public,
            PostForMe::YoutubeConfigurationDto::PrivacyStatus::TaggedSymbol
          )
        PRIVATE =
          T.let(
            :private,
            PostForMe::YoutubeConfigurationDto::PrivacyStatus::TaggedSymbol
          )
        UNLISTED =
          T.let(
            :unlisted,
            PostForMe::YoutubeConfigurationDto::PrivacyStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PostForMe::YoutubeConfigurationDto::PrivacyStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
