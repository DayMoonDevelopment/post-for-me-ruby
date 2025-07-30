# typed: strong

module PostForMe
  module Models
    class SocialPostResultListResponse < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PostForMe::Models::SocialPostResultListResponse,
            PostForMe::Internal::AnyHash
          )
        end

      sig { returns(T::Array[PostForMe::SocialPostResult]) }
      attr_accessor :data

      sig { returns(PostForMe::Models::SocialPostResultListResponse::Meta) }
      attr_reader :meta

      sig do
        params(
          meta: PostForMe::Models::SocialPostResultListResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[PostForMe::SocialPostResult::OrHash],
          meta: PostForMe::Models::SocialPostResultListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: T::Array[PostForMe::SocialPostResult],
            meta: PostForMe::Models::SocialPostResultListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Meta < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::Models::SocialPostResultListResponse::Meta,
              PostForMe::Internal::AnyHash
            )
          end

        # Maximum number of items returned.
        sig { returns(Float) }
        attr_accessor :limit

        # URL to the next page of results, or null if none.
        sig { returns(T.nilable(String)) }
        attr_accessor :next_

        # Number of items skipped.
        sig { returns(Float) }
        attr_accessor :offset

        # Total number of items available.
        sig { returns(Float) }
        attr_accessor :total

        sig do
          params(
            limit: Float,
            next_: T.nilable(String),
            offset: Float,
            total: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Maximum number of items returned.
          limit:,
          # URL to the next page of results, or null if none.
          next_:,
          # Number of items skipped.
          offset:,
          # Total number of items available.
          total:
        )
        end

        sig do
          override.returns(
            {
              limit: Float,
              next_: T.nilable(String),
              offset: Float,
              total: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
