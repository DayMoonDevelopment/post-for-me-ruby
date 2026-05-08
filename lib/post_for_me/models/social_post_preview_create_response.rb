# frozen_string_literal: true

module PostForMe
  module Models
    # @type [PostForMe::Internal::Type::Converter]
    SocialPostPreviewCreateResponse = PostForMe::Internal::Type::ArrayOf[-> { PostForMe::SocialPostPreview }]
  end
end
