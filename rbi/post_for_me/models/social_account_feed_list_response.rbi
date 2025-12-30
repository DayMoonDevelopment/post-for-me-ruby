# typed: strong

module PostForMe
  module Models
    class SocialAccountFeedListResponse < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::Models::SocialAccountFeedListResponse,
            PostForMe::Internal::AnyHash
          )
        end

      sig { returns(T::Array[PostForMe::PlatformPost]) }
      attr_accessor :data

      sig { returns(PostForMe::Models::SocialAccountFeedListResponse::Meta) }
      attr_reader :meta

      sig do
        params(
          meta: PostForMe::Models::SocialAccountFeedListResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[PostForMe::PlatformPost::OrHash],
          meta: PostForMe::Models::SocialAccountFeedListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: T::Array[PostForMe::PlatformPost],
            meta: PostForMe::Models::SocialAccountFeedListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Meta < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::Models::SocialAccountFeedListResponse::Meta,
              PostForMe::Internal::AnyHash
            )
          end

        # Id representing the next page of items
        sig { returns(String) }
        attr_accessor :cursor

        # Maximum number of items returned.
        sig { returns(Float) }
        attr_accessor :limit

        # URL to the next page of results, or null if none.
        sig { returns(T.nilable(String)) }
        attr_accessor :next_

        # Indicates if there are more results or not
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_more

        sig { params(has_more: T::Boolean).void }
        attr_writer :has_more

        sig do
          params(
            cursor: String,
            limit: Float,
            next_: T.nilable(String),
            has_more: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Id representing the next page of items
          cursor:,
          # Maximum number of items returned.
          limit:,
          # URL to the next page of results, or null if none.
          next_:,
          # Indicates if there are more results or not
          has_more: nil
        )
        end

        sig do
          override.returns(
            {
              cursor: String,
              limit: Float,
              next_: T.nilable(String),
              has_more: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
