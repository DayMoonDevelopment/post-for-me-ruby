# frozen_string_literal: true

module PostForMe
  module Models
    class YoutubePostPlatformData < PostForMe::Internal::Type::BaseModel
      # @!attribute title
      #   Title of the post
      #
      #   @return [String]
      required :title, String

      # @!method initialize(title:)
      #   @param title [String] Title of the post
    end
  end
end
