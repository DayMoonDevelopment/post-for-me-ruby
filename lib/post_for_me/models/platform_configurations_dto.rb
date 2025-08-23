# frozen_string_literal: true

module PostForMe
  module Models
    class PlatformConfigurationsDto < PostForMe::Internal::Type::BaseModel
      # @!attribute bluesky
      #   Bluesky configuration
      #
      #   @return [PostForMe::Models::BlueskyConfigurationDto, nil]
      optional :bluesky, -> { PostForMe::BlueskyConfigurationDto }, nil?: true

      # @!attribute facebook
      #   Facebook configuration
      #
      #   @return [PostForMe::Models::FacebookConfigurationDto, nil]
      optional :facebook, -> { PostForMe::FacebookConfigurationDto }, nil?: true

      # @!attribute instagram
      #   Instagram configuration
      #
      #   @return [PostForMe::Models::InstagramConfigurationDto, nil]
      optional :instagram, -> { PostForMe::InstagramConfigurationDto }, nil?: true

      # @!attribute linkedin
      #   LinkedIn configuration
      #
      #   @return [PostForMe::Models::LinkedinConfigurationDto, nil]
      optional :linkedin, -> { PostForMe::LinkedinConfigurationDto }, nil?: true

      # @!attribute pinterest
      #   Pinterest configuration
      #
      #   @return [PostForMe::Models::PinterestConfigurationDto, nil]
      optional :pinterest, -> { PostForMe::PinterestConfigurationDto }, nil?: true

      # @!attribute threads
      #   Threads configuration
      #
      #   @return [PostForMe::Models::ThreadsConfigurationDto, nil]
      optional :threads, -> { PostForMe::ThreadsConfigurationDto }, nil?: true

      # @!attribute tiktok
      #   TikTok configuration
      #
      #   @return [PostForMe::Models::TiktokConfiguration, nil]
      optional :tiktok, -> { PostForMe::TiktokConfiguration }, nil?: true

      # @!attribute tiktok_business
      #   TikTok configuration
      #
      #   @return [PostForMe::Models::TiktokConfiguration, nil]
      optional :tiktok_business, -> { PostForMe::TiktokConfiguration }, nil?: true

      # @!attribute x
      #   Twitter configuration
      #
      #   @return [PostForMe::Models::TwitterConfigurationDto, nil]
      optional :x, -> { PostForMe::TwitterConfigurationDto }, nil?: true

      # @!attribute youtube
      #   YouTube configuration
      #
      #   @return [PostForMe::Models::YoutubeConfigurationDto, nil]
      optional :youtube, -> { PostForMe::YoutubeConfigurationDto }, nil?: true

      # @!method initialize(bluesky: nil, facebook: nil, instagram: nil, linkedin: nil, pinterest: nil, threads: nil, tiktok: nil, tiktok_business: nil, x: nil, youtube: nil)
      #   @param bluesky [PostForMe::Models::BlueskyConfigurationDto, nil] Bluesky configuration
      #
      #   @param facebook [PostForMe::Models::FacebookConfigurationDto, nil] Facebook configuration
      #
      #   @param instagram [PostForMe::Models::InstagramConfigurationDto, nil] Instagram configuration
      #
      #   @param linkedin [PostForMe::Models::LinkedinConfigurationDto, nil] LinkedIn configuration
      #
      #   @param pinterest [PostForMe::Models::PinterestConfigurationDto, nil] Pinterest configuration
      #
      #   @param threads [PostForMe::Models::ThreadsConfigurationDto, nil] Threads configuration
      #
      #   @param tiktok [PostForMe::Models::TiktokConfiguration, nil] TikTok configuration
      #
      #   @param tiktok_business [PostForMe::Models::TiktokConfiguration, nil] TikTok configuration
      #
      #   @param x [PostForMe::Models::TwitterConfigurationDto, nil] Twitter configuration
      #
      #   @param youtube [PostForMe::Models::YoutubeConfigurationDto, nil] YouTube configuration
    end
  end
end
