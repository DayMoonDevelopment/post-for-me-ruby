# typed: strong

module PostForMe
  module Models
    class SocialPostResult < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::SocialPostResult, PostForMe::Internal::AnyHash)
        end

      # The unique identifier of the post result
      sig { returns(String) }
      attr_accessor :id

      # Detailed logs from the post
      sig { returns(T.anything) }
      attr_accessor :details

      # Error message if the post failed
      sig { returns(T.anything) }
      attr_accessor :error

      # Platform-specific data
      sig { returns(PostForMe::SocialPostResult::PlatformData) }
      attr_reader :platform_data

      sig do
        params(
          platform_data: PostForMe::SocialPostResult::PlatformData::OrHash
        ).void
      end
      attr_writer :platform_data

      # The ID of the associated post
      sig { returns(String) }
      attr_accessor :post_id

      # The ID of the associated social account
      sig { returns(String) }
      attr_accessor :social_account_id

      # Indicates if the post was successful
      sig { returns(T::Boolean) }
      attr_accessor :success

      sig do
        params(
          id: String,
          details: T.anything,
          error: T.anything,
          platform_data: PostForMe::SocialPostResult::PlatformData::OrHash,
          post_id: String,
          social_account_id: String,
          success: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the post result
        id:,
        # Detailed logs from the post
        details:,
        # Error message if the post failed
        error:,
        # Platform-specific data
        platform_data:,
        # The ID of the associated post
        post_id:,
        # The ID of the associated social account
        social_account_id:,
        # Indicates if the post was successful
        success:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            details: T.anything,
            error: T.anything,
            platform_data: PostForMe::SocialPostResult::PlatformData,
            post_id: String,
            social_account_id: String,
            success: T::Boolean
          }
        )
      end
      def to_hash
      end

      class PlatformData < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::SocialPostResult::PlatformData,
              PostForMe::Internal::AnyHash
            )
          end

        # Platform-specific ID
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # URL of the posted content
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # Platform-specific data
        sig { params(id: String, url: String).returns(T.attached_class) }
        def self.new(
          # Platform-specific ID
          id: nil,
          # URL of the posted content
          url: nil
        )
        end

        sig { override.returns({ id: String, url: String }) }
        def to_hash
        end
      end
    end
  end
end
