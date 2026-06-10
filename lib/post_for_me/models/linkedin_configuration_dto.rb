# frozen_string_literal: true

module PostForMe
  module Models
    class LinkedinConfigurationDto < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Overrides the `caption` from the post
      #
      #   @return [Object, nil]
      optional :caption, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute media
      #   Overrides the `media` from the post
      #
      #   @return [Array<PostForMe::Models::SocialPostMedia>, nil]
      optional :media, -> { PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostMedia] }, nil?: true

      # @!attribute reshare_post_id
      #   LinkedIn UGC post id to reshare. The caption is used as the reshare commentary.
      #
      #   @return [String, nil]
      optional :reshare_post_id, String, nil?: true

      # @!method initialize(caption: nil, media: nil, reshare_post_id: nil)
      #   @param caption [Object, nil] Overrides the `caption` from the post
      #
      #   @param media [Array<PostForMe::Models::SocialPostMedia>, nil] Overrides the `media` from the post
      #
      #   @param reshare_post_id [String, nil] LinkedIn UGC post id to reshare. The caption is used as the reshare commentary.
    end
  end
end
