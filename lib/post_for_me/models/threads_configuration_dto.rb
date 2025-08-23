# frozen_string_literal: true

module PostForMe
  module Models
    class ThreadsConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<String>, nil]
      optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute placement
      #   Threads post placement
      #
      #   @return [Symbol, PostForMe::Models::ThreadsConfigurationDto::Placement, nil]
      optional :placement, enum: -> { PostForMe::ThreadsConfigurationDto::Placement }, nil?: true

      # @!method initialize(caption: nil, media: nil, placement: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param media [Array<String>, nil] Overrides the `media` from the post
      #
      #   @param placement [Symbol, PostForMe::Models::ThreadsConfigurationDto::Placement, nil] Threads post placement

      # Threads post placement
      #
      # @see PostForMe::Models::ThreadsConfigurationDto#placement
      module Placement
        extend PostForMe::Internal::Type::Enum

        REELS = :reels
        TIMELINE = :timeline

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
