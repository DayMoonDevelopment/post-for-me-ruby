# frozen_string_literal: true

require_relative "../test_helper"

class PostForMe::Test::Resources::WebhooksTest < PostForMe::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @post_for_me.webhooks.create(event_types: [:"social.post.created"], url: "url")

    assert_pattern do
      response => PostForMe::Webhook
    end

    assert_pattern do
      response => {
        id: String,
        event_types: ^(PostForMe::Internal::Type::ArrayOf[String]),
        secret: String,
        url: String
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @post_for_me.webhooks.retrieve("id")

    assert_pattern do
      response => PostForMe::Webhook
    end

    assert_pattern do
      response => {
        id: String,
        event_types: ^(PostForMe::Internal::Type::ArrayOf[String]),
        secret: String,
        url: String
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @post_for_me.webhooks.update("id")

    assert_pattern do
      response => PostForMe::Webhook
    end

    assert_pattern do
      response => {
        id: String,
        event_types: ^(PostForMe::Internal::Type::ArrayOf[String]),
        secret: String,
        url: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @post_for_me.webhooks.list

    assert_pattern do
      response => PostForMe::Models::WebhookListResponse
    end

    assert_pattern do
      response => {
        data: ^(PostForMe::Internal::Type::ArrayOf[PostForMe::Webhook]),
        meta: PostForMe::Models::WebhookListResponse::Meta
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @post_for_me.webhooks.delete("id")

    assert_pattern do
      response => PostForMe::DeleteEntityResponse
    end

    assert_pattern do
      response => {
        success: PostForMe::Internal::Type::Boolean
      }
    end
  end
end
