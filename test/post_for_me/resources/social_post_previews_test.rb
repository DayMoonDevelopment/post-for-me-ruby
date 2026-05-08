# frozen_string_literal: true

require_relative "../test_helper"

class PostForMe::Test::Resources::SocialPostPreviewsTest < PostForMe::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @post_for_me.social_post_previews.create(
        caption: "caption",
        preview_social_accounts: [{id: "id", platform: "platform"}]
      )

    assert_pattern do
      response => ^(PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostPreview])
    end
  end
end
