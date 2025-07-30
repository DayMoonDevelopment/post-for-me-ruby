# frozen_string_literal: true

module PostForMe
  module Resources
    class Media
      # To upload media to attach to your post, make a `POST` request to the
      # `/media/create-upload-url` endpoint.
      #
      # You'll receive the public url of your media item (which can be used when making
      # a post) and will include an `upload_url` which is a signed URL of the storage
      # location for uploading your file to.
      #
      # This URL is unique and publicly signed for a short time, so make sure to upload
      # your files in a timely manner.
      #
      # **Example flow using JavaScript and the Fetch API:**
      #
      # **Request an upload URL**
      #
      # ```js
      # // Step 1: Request an upload URL from your API
      # const response = await fetch(
      #   "https://api.postforme.dev/v1/media/create-upload-url",
      #   {
      #     method: "POST",
      #     headers: {
      #       "Content-Type": "application/json",
      #     },
      #   }
      # );
      #
      # const { media_url, upload_url } = await response.json();
      # ```
      #
      # **Upload your file to the signed URL**
      #
      # ```js
      # // Step 2: Upload your file to the signed URL
      # const file = /* your File or Blob object, e.g., from an <input type="file"> */;
      # await fetch(upload_url, {
      #   method: 'PUT',
      #   headers: {
      #     'Content-Type': 'image/jpeg'
      #   },
      #   body: file
      # });
      # ```
      #
      # **Use the `media_url` when creating your post**
      #
      #     ```js
      #     // Step 3: Use the `media_url` when creating your post
      #     const response = await fetch('https://api.postforme.dev/v1/social-posts', {
      #       method: 'POST',
      #       headers: {
      #         'Content-Type': 'application/json'
      #       },
      #       body: JSON.stringify({
      #         social_accounts: ['spc_...', ...],
      #         caption: 'My caption',
      #         media: [
      #           {
      #             url: media_url
      #           }
      #         ]
      #       })
      #     });
      #     ```
      #
      # @overload create_upload_url(request_options: {})
      #
      # @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PostForMe::Models::MediaCreateUploadURLResponse]
      #
      # @see PostForMe::Models::MediaCreateUploadURLParams
      def create_upload_url(params = {})
        @client.request(
          method: :post,
          path: "v1/media/create-upload-url",
          model: PostForMe::Models::MediaCreateUploadURLResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [PostForMe::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
