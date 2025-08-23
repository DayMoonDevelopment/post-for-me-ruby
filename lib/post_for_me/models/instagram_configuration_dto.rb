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

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<String>, nil]
      optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute placement
      #   Instagram post placement
      #
      #   @return [Symbol, PostForMe::Models::InstagramConfigurationDto::Placement, nil]
      optional :placement, enum: -> { PostForMe::InstagramConfigurationDto::Placement }, nil?: true

      # @!method initialize(caption: nil, collaborators: nil, media: nil, placement: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param collaborators [Array<String>, nil] Instagram usernames to be tagged as a collaborator
      #
      #   @param media [Array<String>, nil] Overrides the `media` from the post
      #
      #   @param placement [Symbol, PostForMe::Models::InstagramConfigurationDto::Placement, nil] Instagram post placement

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
    end
  end
end
