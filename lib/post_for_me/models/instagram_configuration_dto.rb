# frozen_string_literal: true

module PostForMe
  module Models
    class InstagramConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute collaborators
      #   Instagram usernames to be tagged as a collaborator
      #
      #   @return [Array<String>, nil]
      optional :collaborators, PostForMe::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute location
      #   Page id with a location that you want to tag the image or video with
      #
      #   @return [String, nil]
      optional :location, String, nil?: true

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<PostForMe::Models::SocialPostMedia>, nil]
      optional :media, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostMedia] }, nil?: true

      # @!attribute placement
      #   Instagram post placement
      #
      #   @return [Symbol, PostForMe::Models::InstagramConfigurationDto::Placement, nil]
      optional :placement, enum: -> { PostForMe::InstagramConfigurationDto::Placement }, nil?: true

      # @!attribute share_to_feed
      #   If false video posts will only be shown in the Reels tab
      #
      #   @return [Boolean, nil]
      optional :share_to_feed, PostForMe::Internal::Type::Boolean, nil?: true

      # @!attribute trial_reel_type
      #   Instagram trial reel type, when passed will be created as a trial reel. If
      #   manual the trial reel can be manually graduated in the native app. If perfomance
      #   the trial reel will be automatically graduated if the trial reel performs well.
      #
      #   @return [Symbol, PostForMe::Models::InstagramConfigurationDto::TrialReelType, nil]
      optional :trial_reel_type, enum: -> { PostForMe::InstagramConfigurationDto::TrialReelType }, nil?: true

      # @!method initialize(caption: nil, collaborators: nil, location: nil, media: nil, placement: nil, share_to_feed: nil, trial_reel_type: nil)
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::InstagramConfigurationDto} for more details.
      #
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param collaborators [Array<String>, nil] Instagram usernames to be tagged as a collaborator
      #
      #   @param location [String, nil] Page id with a location that you want to tag the image or video with
      #
      #   @param media [Array<PostForMe::Models::SocialPostMedia>, nil] Overrides the `media` from the post
      #
      #   @param placement [Symbol, PostForMe::Models::InstagramConfigurationDto::Placement, nil] Instagram post placement
      #
      #   @param share_to_feed [Boolean, nil] If false video posts will only be shown in the Reels tab
      #
      #   @param trial_reel_type [Symbol, PostForMe::Models::InstagramConfigurationDto::TrialReelType, nil] Instagram trial reel type, when passed will be created as a trial reel. If manua

      # Instagram post placement
      #
      # @see PostForMe::Models::InstagramConfigurationDto#placement
      module Placement
        extend PostForMe::Internal::Type::Enum

        REELS = :reels
        STORIES = :stories
        TIMELINE = :timeline

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Instagram trial reel type, when passed will be created as a trial reel. If
      # manual the trial reel can be manually graduated in the native app. If perfomance
      # the trial reel will be automatically graduated if the trial reel performs well.
      #
      # @see PostForMe::Models::InstagramConfigurationDto#trial_reel_type
      module TrialReelType
        extend PostForMe::Internal::Type::Enum

        MANUAL = :manual
        PERFORMANCE = :performance

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
