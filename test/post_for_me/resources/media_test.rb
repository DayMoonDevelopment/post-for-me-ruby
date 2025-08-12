# frozen_string_literal: true

require_relative "../test_helper"

class PostForMe::Test::Resources::MediaTest < PostForMe::Test::ResourceTest
  def test_create_upload_url
    skip("Prism tests are disabled")

    response = @post_for_me.media.create_upload_url

    assert_pattern do
      response => PostForMe::Models::MediaCreateUploadURLResponse
    end

    assert_pattern do
      response => {
        media_url: String,
        upload_url: String
      }
    end
  end
end
