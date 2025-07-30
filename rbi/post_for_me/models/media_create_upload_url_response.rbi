# typed: strong

module PostForMe
  module Models
    class MediaCreateUploadURLResponse < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::Models::MediaCreateUploadURLResponse,
            PostForMe::Internal::AnyHash
          )
        end

      # The public URL for the media, to use once file has been uploaded
      sig { returns(String) }
      attr_accessor :media_url

      # The signed upload URL for the client to upload the file
      sig { returns(String) }
      attr_accessor :upload_url

      sig do
        params(media_url: String, upload_url: String).returns(T.attached_class)
      end
      def self.new(
        # The public URL for the media, to use once file has been uploaded
        media_url:,
        # The signed upload URL for the client to upload the file
        upload_url:
      )
      end

      sig { override.returns({ media_url: String, upload_url: String }) }
      def to_hash
      end
    end
  end
end
