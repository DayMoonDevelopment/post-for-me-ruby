# frozen_string_literal: true

module PostForMe
  module Resources
    # Social Post Previews allow you to see what a Social Post will create for each
    # account in the post.
    class SocialPostPreviews
      # Some parameter documentations has been truncated, see
      # {PostForMe::Models::SocialPostPreviewCreateParams} for more details.
      #
      # Create Post Previews
      #
      # @overload create(caption:, preview_social_accounts:, account_configurations: nil, media: nil, platform_configurations: nil, request_options: {})
      #
      # @param caption [String] Caption text for the post
      #
      # @param preview_social_accounts [Array<PostForMe::Models::CreateSocialPostPreview::PreviewSocialAccount>] Array of social accounts. Can preview non connected accounts, just specify a ran
      #
      # @param account_configurations [Array<PostForMe::Models::AccountConfiguration>, nil] Account-specific configurations for the post
      #
      # @param media [Array<PostForMe::Models::SocialPostMedia>, nil] Array of media URLs associated with the post
      #
      # @param platform_configurations [PostForMe::Models::PlatformConfigurationsDto, nil] Platform-specific configurations for the post
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<PostForMe::Models::SocialPostPreview>]
      #
      # @see PostForMe::Models::SocialPostPreviewCreateParams
      def create(params)
        parsed, options = PostForMe::SocialPostPreviewCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/social-post-previews",
          body: parsed,
          model: PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostPreview],
          options: options
        )
      end

      # @api private
      #
      # @param client [PostForMe::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
