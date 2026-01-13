# typed: strong

module PostForMe
  module Models
    class SocialPostListParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(PostForMe::SocialPostListParams, PostForMe::Internal::AnyHash)
        end

      # Filter by external ID. Multiple values imply OR logic.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :external_id

      sig { params(external_id: T::Array[String]).void }
      attr_writer :external_id

      # Number of items to return
      sig { returns(T.nilable(Float)) }
      attr_reader :limit

      sig { params(limit: Float).void }
      attr_writer :limit

      # Number of items to skip
      sig { returns(T.nilable(Float)) }
      attr_reader :offset

      sig { params(offset: Float).void }
      attr_writer :offset

      # Filter by platforms. Multiple values imply OR logic.
      sig do
        returns(
          T.nilable(
            T::Array[PostForMe::SocialPostListParams::Platform::OrSymbol]
          )
        )
      end
      attr_reader :platform

      sig do
        params(
          platform:
            T::Array[PostForMe::SocialPostListParams::Platform::OrSymbol]
        ).void
      end
      attr_writer :platform

      # Filter by social account ID. Multiple values imply OR logic.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :social_account_id

      sig { params(social_account_id: T::Array[String]).void }
      attr_writer :social_account_id

      # Filter by post status. Multiple values imply OR logic.
      sig do
        returns(
          T.nilable(T::Array[PostForMe::SocialPostListParams::Status::OrSymbol])
        )
      end
      attr_reader :status

      sig do
        params(
          status: T::Array[PostForMe::SocialPostListParams::Status::OrSymbol]
        ).void
      end
      attr_writer :status

      sig do
        params(
          external_id: T::Array[String],
          limit: Float,
          offset: Float,
          platform:
            T::Array[PostForMe::SocialPostListParams::Platform::OrSymbol],
          social_account_id: T::Array[String],
          status: T::Array[PostForMe::SocialPostListParams::Status::OrSymbol],
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by external ID. Multiple values imply OR logic.
        external_id: nil,
        # Number of items to return
        limit: nil,
        # Number of items to skip
        offset: nil,
        # Filter by platforms. Multiple values imply OR logic.
        platform: nil,
        # Filter by social account ID. Multiple values imply OR logic.
        social_account_id: nil,
        # Filter by post status. Multiple values imply OR logic.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            external_id: T::Array[String],
            limit: Float,
            offset: Float,
            platform:
              T::Array[PostForMe::SocialPostListParams::Platform::OrSymbol],
            social_account_id: T::Array[String],
            status: T::Array[PostForMe::SocialPostListParams::Status::OrSymbol],
            request_options: PostForMe::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Platform
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::SocialPostListParams::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BLUESKY =
          T.let(
            :bluesky,
            PostForMe::SocialPostListParams::Platform::TaggedSymbol
          )
        FACEBOOK =
          T.let(
            :facebook,
            PostForMe::SocialPostListParams::Platform::TaggedSymbol
          )
        INSTAGRAM =
          T.let(
            :instagram,
            PostForMe::SocialPostListParams::Platform::TaggedSymbol
          )
        LINKEDIN =
          T.let(
            :linkedin,
            PostForMe::SocialPostListParams::Platform::TaggedSymbol
          )
        PINTEREST =
          T.let(
            :pinterest,
            PostForMe::SocialPostListParams::Platform::TaggedSymbol
          )
        THREADS =
          T.let(
            :threads,
            PostForMe::SocialPostListParams::Platform::TaggedSymbol
          )
        TIKTOK =
          T.let(
            :tiktok,
            PostForMe::SocialPostListParams::Platform::TaggedSymbol
          )
        X = T.let(:x, PostForMe::SocialPostListParams::Platform::TaggedSymbol)
        YOUTUBE =
          T.let(
            :youtube,
            PostForMe::SocialPostListParams::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[PostForMe::SocialPostListParams::Platform::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::SocialPostListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT =
          T.let(:draft, PostForMe::SocialPostListParams::Status::TaggedSymbol)
        SCHEDULED =
          T.let(
            :scheduled,
            PostForMe::SocialPostListParams::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            PostForMe::SocialPostListParams::Status::TaggedSymbol
          )
        PROCESSED =
          T.let(
            :processed,
            PostForMe::SocialPostListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[PostForMe::SocialPostListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
