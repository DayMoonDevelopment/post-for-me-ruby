# frozen_string_literal: true

require_relative "../test_helper"

class PostForMe::Test::Resources::SocialAccountsTest < PostForMe::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @post_for_me.social_accounts.retrieve("id")

    assert_pattern do
      response => PostForMe::SocialAccount
    end

    assert_pattern do
      response => {
        id: String,
        access_token: String,
        access_token_expires_at: Time,
        external_id: String | nil,
        metadata: PostForMe::Internal::Type::Unknown | nil,
        platform: String,
        refresh_token: String | nil,
        refresh_token_expires_at: Time | nil,
        status: PostForMe::SocialAccount::Status,
        user_id: String,
        username: String | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @post_for_me.social_accounts.update("id")

    assert_pattern do
      response => PostForMe::SocialAccount
    end

    assert_pattern do
      response => {
        id: String,
        access_token: String,
        access_token_expires_at: Time,
        external_id: String | nil,
        metadata: PostForMe::Internal::Type::Unknown | nil,
        platform: String,
        refresh_token: String | nil,
        refresh_token_expires_at: Time | nil,
        status: PostForMe::SocialAccount::Status,
        user_id: String,
        username: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @post_for_me.social_accounts.list

    assert_pattern do
      response => PostForMe::Models::SocialAccountListResponse
    end

    assert_pattern do
      response => {
        data: ^(PostForMe::Internal::Type::ArrayOf[PostForMe::SocialAccount]),
        meta: PostForMe::Models::SocialAccountListResponse::Meta
      }
    end
  end

  def test_create_auth_url_required_params
    skip("Prism tests are disabled")

    response = @post_for_me.social_accounts.create_auth_url(platform: "platform")

    assert_pattern do
      response => PostForMe::Models::SocialAccountCreateAuthURLResponse
    end

    assert_pattern do
      response => {
        platform: String,
        url: String
      }
    end
  end

  def test_disconnect
    skip("Prism tests are disabled")

    response = @post_for_me.social_accounts.disconnect("id")

    assert_pattern do
      response => PostForMe::Models::SocialAccountDisconnectResponse
    end

    assert_pattern do
      response => {
        id: String,
        access_token: String,
        access_token_expires_at: Time,
        external_id: String | nil,
        metadata: PostForMe::Internal::Type::Unknown | nil,
        platform: String,
        refresh_token: String | nil,
        refresh_token_expires_at: Time | nil,
        status: PostForMe::Models::SocialAccountDisconnectResponse::Status,
        user_id: String,
        username: String | nil
      }
    end
  end
end
