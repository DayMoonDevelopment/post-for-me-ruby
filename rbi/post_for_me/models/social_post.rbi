# typed: strong

module PostForMe
  module Models
    class SocialPost < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::SocialPost, PostForMe::Internal::AnyHash)
        end

      # Unique identifier of the post
      sig { returns(String) }
      attr_accessor :id

      # Account-specific configurations for the post
      sig { returns(T.nilable(T::Array[PostForMe::AccountConfiguration])) }
      attr_accessor :account_configurations

      # Caption text for the post
      sig { returns(String) }
      attr_accessor :caption

      # Timestamp when the post was created
      sig { returns(String) }
      attr_accessor :created_at

      # Provided unique identifier of the post
      sig { returns(T.nilable(String)) }
      attr_accessor :external_id

      # Array of media associated with the post
      sig { returns(T.nilable(T::Array[PostForMe::SocialPostMedia])) }
      attr_accessor :media

      # Platform-specific configurations for the post
      sig { returns(T.nilable(PostForMe::PlatformConfigurationsDto)) }
      attr_reader :platform_configurations

      sig do
        params(
          platform_configurations:
            T.nilable(PostForMe::PlatformConfigurationsDto::OrHash)
        ).void
      end
      attr_writer :platform_configurations

      # Scheduled date and time for the post
      sig { returns(T.nilable(String)) }
      attr_accessor :scheduled_at

      # Array of social account IDs for posting
      sig { returns(T::Array[PostForMe::SocialAccount]) }
      attr_accessor :social_accounts

      # Current status of the post: draft, processed, scheduled, or processing
      sig { returns(PostForMe::SocialPost::Status::TaggedSymbol) }
      attr_accessor :status

      # Timestamp when the post was last updated
      sig { returns(String) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          account_configurations:
            T.nilable(T::Array[PostForMe::AccountConfiguration::OrHash]),
          caption: String,
          created_at: String,
          external_id: T.nilable(String),
          media: T.nilable(T::Array[PostForMe::SocialPostMedia::OrHash]),
          platform_configurations:
            T.nilable(PostForMe::PlatformConfigurationsDto::OrHash),
          scheduled_at: T.nilable(String),
          social_accounts: T::Array[PostForMe::SocialAccount::OrHash],
          status: PostForMe::SocialPost::Status::OrSymbol,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier of the post
        id:,
        # Account-specific configurations for the post
        account_configurations:,
        # Caption text for the post
        caption:,
        # Timestamp when the post was created
        created_at:,
        # Provided unique identifier of the post
        external_id:,
        # Array of media associated with the post
        media:,
        # Platform-specific configurations for the post
        platform_configurations:,
        # Scheduled date and time for the post
        scheduled_at:,
        # Array of social account IDs for posting
        social_accounts:,
        # Current status of the post: draft, processed, scheduled, or processing
        status:,
        # Timestamp when the post was last updated
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_configurations:
              T.nilable(T::Array[PostForMe::AccountConfiguration]),
            caption: String,
            created_at: String,
            external_id: T.nilable(String),
            media: T.nilable(T::Array[PostForMe::SocialPostMedia]),
            platform_configurations:
              T.nilable(PostForMe::PlatformConfigurationsDto),
            scheduled_at: T.nilable(String),
            social_accounts: T::Array[PostForMe::SocialAccount],
            status: PostForMe::SocialPost::Status::TaggedSymbol,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      # Current status of the post: draft, processed, scheduled, or processing
      module Status
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, PostForMe::SocialPost::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:draft, PostForMe::SocialPost::Status::TaggedSymbol)
        SCHEDULED =
          T.let(:scheduled, PostForMe::SocialPost::Status::TaggedSymbol)
        PROCESSING =
          T.let(:processing, PostForMe::SocialPost::Status::TaggedSymbol)
        PROCESSED =
          T.let(:processed, PostForMe::SocialPost::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[PostForMe::SocialPost::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
