# frozen_string_literal: true

require_relative "../test_helper"

class PostForMe::Test::Resources::SocialAccountFeedsTest < PostForMe::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @post_for_me.social_account_feeds.list("social_account_id")

    assert_pattern do
      response => PostForMe::Models::SocialAccountFeedListResponse
    end

    assert_pattern do
      response => {
        data: ^(PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost]),
        meta: PostForMe::Models::SocialAccountFeedListResponse::Meta
      }
    end
  end
end
