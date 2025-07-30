# frozen_string_literal: true

require_relative "../test_helper"

class PostForMe::Test::Resources::SocialPostsTest < PostForMe::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response = @post_for_me.social_posts.create(caption: "caption", social_accounts: ["string"])

    assert_pattern do
      response => PostForMe::SocialPost
    end

    assert_pattern do
      response => {
        id: String,
        account_configurations: ^(PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]) | nil,
        caption: String,
        created_at: String,
        external_id: String | nil,
        media: PostForMe::Internal::Type::Unknown | nil,
        platform_configurations: PostForMe::Internal::Type::Unknown | nil,
        scheduled_at: String | nil,
        social_accounts: ^(PostForMe::Internal::Type::ArrayOf[String]),
        status: PostForMe::SocialPost::Status,
        updated_at: String
      }
    end
  end

  def test_retrieve
    skip("skipped: tests are disabled for the time being")

    response = @post_for_me.social_posts.retrieve("id")

    assert_pattern do
      response => PostForMe::SocialPost
    end

    assert_pattern do
      response => {
        id: String,
        account_configurations: ^(PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]) | nil,
        caption: String,
        created_at: String,
        external_id: String | nil,
        media: PostForMe::Internal::Type::Unknown | nil,
        platform_configurations: PostForMe::Internal::Type::Unknown | nil,
        scheduled_at: String | nil,
        social_accounts: ^(PostForMe::Internal::Type::ArrayOf[String]),
        status: PostForMe::SocialPost::Status,
        updated_at: String
      }
    end
  end

  def test_update_required_params
    skip("skipped: tests are disabled for the time being")

    response = @post_for_me.social_posts.update("id", caption: "caption", social_accounts: ["string"])

    assert_pattern do
      response => PostForMe::SocialPost
    end

    assert_pattern do
      response => {
        id: String,
        account_configurations: ^(PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]) | nil,
        caption: String,
        created_at: String,
        external_id: String | nil,
        media: PostForMe::Internal::Type::Unknown | nil,
        platform_configurations: PostForMe::Internal::Type::Unknown | nil,
        scheduled_at: String | nil,
        social_accounts: ^(PostForMe::Internal::Type::ArrayOf[String]),
        status: PostForMe::SocialPost::Status,
        updated_at: String
      }
    end
  end

  def test_list
    skip("skipped: tests are disabled for the time being")

    response = @post_for_me.social_posts.list

    assert_pattern do
      response => PostForMe::Models::SocialPostListResponse
    end

    assert_pattern do
      response => {
        data: ^(PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPost]),
        meta: PostForMe::Models::SocialPostListResponse::Meta
      }
    end
  end

  def test_delete
    skip("skipped: tests are disabled for the time being")

    response = @post_for_me.social_posts.delete("id")

    assert_pattern do
      response => PostForMe::Models::SocialPostDeleteResponse
    end

    assert_pattern do
      response => {
        success: PostForMe::Internal::Type::Boolean
      }
    end
  end
end
