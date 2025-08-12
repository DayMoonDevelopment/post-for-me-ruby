# frozen_string_literal: true

require_relative "../test_helper"

class PostForMe::Test::Resources::SocialPostResultsTest < PostForMe::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @post_for_me.social_post_results.retrieve("id")

    assert_pattern do
      response => PostForMe::SocialPostResult
    end

    assert_pattern do
      response => {
        id: String,
        details: PostForMe::Internal::Type::Unknown,
        error: PostForMe::Internal::Type::Unknown,
        platform_data: PostForMe::SocialPostResult::PlatformData,
        post_id: String,
        social_account_id: String,
        success: PostForMe::Internal::Type::Boolean
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @post_for_me.social_post_results.list

    assert_pattern do
      response => PostForMe::Models::SocialPostResultListResponse
    end

    assert_pattern do
      response => {
        data: ^(PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostResult]),
        meta: PostForMe::Models::SocialPostResultListResponse::Meta
      }
    end
  end
end
