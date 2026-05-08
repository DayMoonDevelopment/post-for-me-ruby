# typed: strong

module PostForMe
  module Models
    SocialPostPreviewCreateResponse =
      T.let(
        PostForMe::Internal::Type::ArrayOf[PostForMe::SocialPostPreview],
        PostForMe::Internal::Type::Converter
      )
  end
end
