# typed: strong

module PostForMe
  module Models
    class SocialAccountFeedListParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PostForMe::SocialAccountFeedListParams,
            PostForMe::Internal::AnyHash
          )
        end

      # Cursor identifying next page of results
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Expand additional data in the response. Currently supports: "metrics" to include
      # post analytics data.
      sig do
        returns(
          T.nilable(
            T::Array[PostForMe::SocialAccountFeedListParams::Expand::OrSymbol]
          )
        )
      end
      attr_reader :expand

      sig do
        params(
          expand:
            T::Array[PostForMe::SocialAccountFeedListParams::Expand::OrSymbol]
        ).void
      end
      attr_writer :expand

      # Filter by Post for Me Social Postexternal ID. Multiple values imply OR logic
      # (e.g., ?external_post_id=xxxxxx&external_post_id=yyyyyy).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :external_post_id

      sig { params(external_post_id: T::Array[String]).void }
      attr_writer :external_post_id

      # Number of items to return; Note: some platforms will have different max limits,
      # in the case the provided limit is over the platform's limit we will return the
      # max allowed by the platform.
      sig { returns(T.nilable(Float)) }
      attr_reader :limit

      sig { params(limit: Float).void }
      attr_writer :limit

      # Filter by the platform's id(s). Multiple values imply OR logic (e.g.,
      # ?social_post_id=spr_xxxxxx&social_post_id=spr_yyyyyy).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :platform_post_id

      sig { params(platform_post_id: T::Array[String]).void }
      attr_writer :platform_post_id

      # Filter by Post for Me Social Post id(s). Multiple values imply OR logic (e.g.,
      # ?social_post_id=sp_xxxxxx&social_post_id=sp_yyyyyy).
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :social_post_id

      sig { params(social_post_id: T::Array[String]).void }
      attr_writer :social_post_id

      sig do
        params(
          cursor: String,
          expand:
            T::Array[PostForMe::SocialAccountFeedListParams::Expand::OrSymbol],
          external_post_id: T::Array[String],
          limit: Float,
          platform_post_id: T::Array[String],
          social_post_id: T::Array[String],
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Cursor identifying next page of results
        cursor: nil,
        # Expand additional data in the response. Currently supports: "metrics" to include
        # post analytics data.
        expand: nil,
        # Filter by Post for Me Social Postexternal ID. Multiple values imply OR logic
        # (e.g., ?external_post_id=xxxxxx&external_post_id=yyyyyy).
        external_post_id: nil,
        # Number of items to return; Note: some platforms will have different max limits,
        # in the case the provided limit is over the platform's limit we will return the
        # max allowed by the platform.
        limit: nil,
        # Filter by the platform's id(s). Multiple values imply OR logic (e.g.,
        # ?social_post_id=spr_xxxxxx&social_post_id=spr_yyyyyy).
        platform_post_id: nil,
        # Filter by Post for Me Social Post id(s). Multiple values imply OR logic (e.g.,
        # ?social_post_id=sp_xxxxxx&social_post_id=sp_yyyyyy).
        social_post_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            cursor: String,
            expand:
              T::Array[
                PostForMe::SocialAccountFeedListParams::Expand::OrSymbol
              ],
            external_post_id: T::Array[String],
            limit: Float,
            platform_post_id: T::Array[String],
            social_post_id: T::Array[String],
            request_options: PostForMe::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Expand
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PostForMe::SocialAccountFeedListParams::Expand)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        METRICS =
          T.let(
            :metrics,
            PostForMe::SocialAccountFeedListParams::Expand::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PostForMe::SocialAccountFeedListParams::Expand::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
