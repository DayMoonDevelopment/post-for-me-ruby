# typed: strong

module PostForMe
  module Models
    class PlatformConfigurationsDto < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::PlatformConfigurationsDto,
            PostForMe::Internal::AnyHash
          )
        end

      # Bluesky configuration
      sig { returns(T.nilable(PostForMe::BlueskyConfigurationDto)) }
      attr_reader :bluesky

      sig do
        params(
          bluesky: T.nilable(PostForMe::BlueskyConfigurationDto::OrHash)
        ).void
      end
      attr_writer :bluesky

      # Facebook configuration
      sig { returns(T.nilable(PostForMe::FacebookConfigurationDto)) }
      attr_reader :facebook

      sig do
        params(
          facebook: T.nilable(PostForMe::FacebookConfigurationDto::OrHash)
        ).void
      end
      attr_writer :facebook

      # Instagram configuration
      sig { returns(T.nilable(PostForMe::InstagramConfigurationDto)) }
      attr_reader :instagram

      sig do
        params(
          instagram: T.nilable(PostForMe::InstagramConfigurationDto::OrHash)
        ).void
      end
      attr_writer :instagram

      # LinkedIn configuration
      sig { returns(T.nilable(PostForMe::LinkedinConfigurationDto)) }
      attr_reader :linkedin

      sig do
        params(
          linkedin: T.nilable(PostForMe::LinkedinConfigurationDto::OrHash)
        ).void
      end
      attr_writer :linkedin

      # Pinterest configuration
      sig { returns(T.nilable(PostForMe::PinterestConfigurationDto)) }
      attr_reader :pinterest

      sig do
        params(
          pinterest: T.nilable(PostForMe::PinterestConfigurationDto::OrHash)
        ).void
      end
      attr_writer :pinterest

      # Threads configuration
      sig { returns(T.nilable(PostForMe::ThreadsConfigurationDto)) }
      attr_reader :threads

      sig do
        params(
          threads: T.nilable(PostForMe::ThreadsConfigurationDto::OrHash)
        ).void
      end
      attr_writer :threads

      # TikTok configuration
      sig { returns(T.nilable(PostForMe::TiktokConfiguration)) }
      attr_reader :tiktok

      sig do
        params(tiktok: T.nilable(PostForMe::TiktokConfiguration::OrHash)).void
      end
      attr_writer :tiktok

      # TikTok configuration
      sig { returns(T.nilable(PostForMe::TiktokConfiguration)) }
      attr_reader :tiktok_business

      sig do
        params(
          tiktok_business: T.nilable(PostForMe::TiktokConfiguration::OrHash)
        ).void
      end
      attr_writer :tiktok_business

      # Twitter configuration
      sig { returns(T.nilable(PostForMe::TwitterConfigurationDto)) }
      attr_reader :x

      sig do
        params(x: T.nilable(PostForMe::TwitterConfigurationDto::OrHash)).void
      end
      attr_writer :x

      # YouTube configuration
      sig { returns(T.nilable(PostForMe::YoutubeConfigurationDto)) }
      attr_reader :youtube

      sig do
        params(
          youtube: T.nilable(PostForMe::YoutubeConfigurationDto::OrHash)
        ).void
      end
      attr_writer :youtube

      sig do
        params(
          bluesky: T.nilable(PostForMe::BlueskyConfigurationDto::OrHash),
          facebook: T.nilable(PostForMe::FacebookConfigurationDto::OrHash),
          instagram: T.nilable(PostForMe::InstagramConfigurationDto::OrHash),
          linkedin: T.nilable(PostForMe::LinkedinConfigurationDto::OrHash),
          pinterest: T.nilable(PostForMe::PinterestConfigurationDto::OrHash),
          threads: T.nilable(PostForMe::ThreadsConfigurationDto::OrHash),
          tiktok: T.nilable(PostForMe::TiktokConfiguration::OrHash),
          tiktok_business: T.nilable(PostForMe::TiktokConfiguration::OrHash),
          x: T.nilable(PostForMe::TwitterConfigurationDto::OrHash),
          youtube: T.nilable(PostForMe::YoutubeConfigurationDto::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Bluesky configuration
        bluesky: nil,
        # Facebook configuration
        facebook: nil,
        # Instagram configuration
        instagram: nil,
        # LinkedIn configuration
        linkedin: nil,
        # Pinterest configuration
        pinterest: nil,
        # Threads configuration
        threads: nil,
        # TikTok configuration
        tiktok: nil,
        # TikTok configuration
        tiktok_business: nil,
        # Twitter configuration
        x: nil,
        # YouTube configuration
        youtube: nil
      )
      end

      sig do
        override.returns(
          {
            bluesky: T.nilable(PostForMe::BlueskyConfigurationDto),
            facebook: T.nilable(PostForMe::FacebookConfigurationDto),
            instagram: T.nilable(PostForMe::InstagramConfigurationDto),
            linkedin: T.nilable(PostForMe::LinkedinConfigurationDto),
            pinterest: T.nilable(PostForMe::PinterestConfigurationDto),
            threads: T.nilable(PostForMe::ThreadsConfigurationDto),
            tiktok: T.nilable(PostForMe::TiktokConfiguration),
            tiktok_business: T.nilable(PostForMe::TiktokConfiguration),
            x: T.nilable(PostForMe::TwitterConfigurationDto),
            youtube: T.nilable(PostForMe::YoutubeConfigurationDto)
          }
        )
      end
      def to_hash
      end
    end
  end
end
