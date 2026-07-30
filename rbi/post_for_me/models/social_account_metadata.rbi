# typed: strong

module PostForMe
  module Models
    SocialAccountMetadata =
      T.let(T.anything, PostForMe::Internal::Type::Converter)
  end
end
