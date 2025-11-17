# typed: strong

module PostForMe
  module Models
    class SocialAccountCreateAuthURLParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PostForMe::SocialAccountCreateAuthURLParams,
            PostForMe::Internal::AnyHash
          )
        end

      # The social account provider
      sig { returns(String) }
      attr_accessor :platform

      # Your unique identifier for the social account
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # Additional data needed for the provider
      sig do
        returns(
          T.nilable(PostForMe::SocialAccountCreateAuthURLParams::PlatformData)
        )
      end
      attr_reader :platform_data

      sig do
        params(
          platform_data:
            PostForMe::SocialAccountCreateAuthURLParams::PlatformData::OrHash
        ).void
      end
      attr_writer :platform_data

      # Override the default redirect URL for the OAuth flow. If provided, this URL will
      # be used instead of our redirect URL. Make sure this URL is included in your
      # app's authorized redirect urls. This override will not work when using our
      # system credientals.
      sig { returns(T.nilable(String)) }
      attr_reader :redirect_url_override

      sig { params(redirect_url_override: String).void }
      attr_writer :redirect_url_override

      sig do
        params(
          platform: String,
          external_id: String,
          platform_data:
            PostForMe::SocialAccountCreateAuthURLParams::PlatformData::OrHash,
          redirect_url_override: String,
          request_options: PostForMe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The social account provider
        platform:,
        # Your unique identifier for the social account
        external_id: nil,
        # Additional data needed for the provider
        platform_data: nil,
        # Override the default redirect URL for the OAuth flow. If provided, this URL will
        # be used instead of our redirect URL. Make sure this URL is included in your
        # app's authorized redirect urls. This override will not work when using our
        # system credientals.
        redirect_url_override: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            platform: String,
            external_id: String,
            platform_data:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData,
            redirect_url_override: String,
            request_options: PostForMe::RequestOptions
          }
        )
      end
      def to_hash
      end

      class PlatformData < PostForMe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData,
              PostForMe::Internal::AnyHash
            )
          end

        # Additional data needed for connecting bluesky accounts
        sig do
          returns(
            T.nilable(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Bluesky
            )
          )
        end
        attr_reader :bluesky

        sig do
          params(
            bluesky:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Bluesky::OrHash
          ).void
        end
        attr_writer :bluesky

        # Additional data for connecting instagram accounts
        sig do
          returns(
            T.nilable(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram
            )
          )
        end
        attr_reader :instagram

        sig do
          params(
            instagram:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::OrHash
          ).void
        end
        attr_writer :instagram

        # Additional data for connecting linkedin accounts
        sig do
          returns(
            T.nilable(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin
            )
          )
        end
        attr_reader :linkedin

        sig do
          params(
            linkedin:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::OrHash
          ).void
        end
        attr_writer :linkedin

        # Additional data needed for the provider
        sig do
          params(
            bluesky:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Bluesky::OrHash,
            instagram:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::OrHash,
            linkedin:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Additional data needed for connecting bluesky accounts
          bluesky: nil,
          # Additional data for connecting instagram accounts
          instagram: nil,
          # Additional data for connecting linkedin accounts
          linkedin: nil
        )
        end

        sig do
          override.returns(
            {
              bluesky:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Bluesky,
              instagram:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram,
              linkedin:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin
            }
          )
        end
        def to_hash
        end

        class Bluesky < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Bluesky,
                PostForMe::Internal::AnyHash
              )
            end

          # The app password of the account
          sig { returns(String) }
          attr_accessor :app_password

          # The handle of the account
          sig { returns(String) }
          attr_accessor :handle

          # Additional data needed for connecting bluesky accounts
          sig do
            params(app_password: String, handle: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The app password of the account
            app_password:,
            # The handle of the account
            handle:
          )
          end

          sig { override.returns({ app_password: String, handle: String }) }
          def to_hash
          end
        end

        class Instagram < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram,
                PostForMe::Internal::AnyHash
              )
            end

          # The type of connection; instagram for using login with instagram, facebook for
          # using login with facebook.
          sig do
            returns(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType::OrSymbol
            )
          end
          attr_accessor :connection_type

          # Additional data for connecting instagram accounts
          sig do
            params(
              connection_type:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The type of connection; instagram for using login with instagram, facebook for
            # using login with facebook.
            connection_type:
          )
          end

          sig do
            override.returns(
              {
                connection_type:
                  PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The type of connection; instagram for using login with instagram, facebook for
          # using login with facebook.
          module ConnectionType
            extend PostForMe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INSTAGRAM =
              T.let(
                :instagram,
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType::TaggedSymbol
              )
            FACEBOOK =
              T.let(
                :facebook,
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Linkedin < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin,
                PostForMe::Internal::AnyHash
              )
            end

          # The type of connection; personal for posting on behalf of the user only,
          # organization for posting on behalf of both an organization and the user
          sig do
            returns(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType::OrSymbol
            )
          end
          attr_accessor :connection_type

          # Additional data for connecting linkedin accounts
          sig do
            params(
              connection_type:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The type of connection; personal for posting on behalf of the user only,
            # organization for posting on behalf of both an organization and the user
            connection_type:
          )
          end

          sig do
            override.returns(
              {
                connection_type:
                  PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The type of connection; personal for posting on behalf of the user only,
          # organization for posting on behalf of both an organization and the user
          module ConnectionType
            extend PostForMe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PERSONAL =
              T.let(
                :personal,
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType::TaggedSymbol
              )
            ORGANIZATION =
              T.let(
                :organization,
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
