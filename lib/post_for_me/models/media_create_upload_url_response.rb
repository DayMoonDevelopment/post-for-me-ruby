# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::Media#create_upload_url
    class MediaCreateUploadURLResponse < PostForMe::Internal::Type::BaseModel
      # @!attribute media_url
      #   The public URL for the media, to use once file has been uploaded
      #
      #   @return [String]
      required :media_url, String

      # @!attribute upload_url
      #   The signed upload URL for the client to upload the file
      #
      #   @return [String]
      required :upload_url, String

      # @!method initialize(media_url:, upload_url:)
      #   @param media_url [String] The public URL for the media, to use once file has been uploaded
      #
      #   @param upload_url [String] The signed upload URL for the client to upload the file
    end
  end
end
