# frozen_string_literal: true

module PostForMe
  module Models
    class PinterestConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute board_ids
      #   Pinterest board IDs
      #
      #   @return [Array<String>, nil]
      optional :board_ids, PostForMe::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute link
      #   Pinterest post link
      #
      #   @return [String, nil]
      optional :link, String, nil?: true

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<String>, nil]
      optional :media, PostForMe::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(board_ids: nil, caption: nil, link: nil, media: nil)
      #   @param board_ids [Array<String>, nil] Pinterest board IDs
      #
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param link [String, nil] Pinterest post link
      #
      #   @param media [Array<String>, nil] Overrides the `media` from the post
    end
  end
end
