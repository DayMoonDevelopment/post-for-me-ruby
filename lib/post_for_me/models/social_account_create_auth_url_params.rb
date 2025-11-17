# frozen_string_literal: true

module PostForMe
  module Models
    # @see PostForMe::Resources::SocialAccounts#create_auth_url
    class SocialAccountCreateAuthURLParams < PostForMe::Internal::Type::BaseModel
      extend PostForMe::Internal::Type::RequestParameters::Converter
      include PostForMe::Internal::Type::RequestParameters

      # @!attribute platform
      #   The social account provider
      #
      #   @return [String]
      required :platform, String

      # @!attribute external_id
      #   Your unique identifier for the social account
      #
      #   @return [String, nil]
      optional :external_id, String

      # @!attribute platform_data
      #   Additional data needed for the provider
      #
      #   @return [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData, nil]
      optional :platform_data, -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData }

      # @!attribute redirect_url_override
      #   Override the default redirect URL for the OAuth flow. If provided, this URL will
      #   be used instead of our redirect URL. Make sure this URL is included in your
      #   app's authorized redirect urls. This override will not work when using our
      #   system credientals.
      #
      #   @return [String, nil]
      optional :redirect_url_override, String

      # @!method initialize(platform:, external_id: nil, platform_data: nil, redirect_url_override: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::SocialAccountCreateAuthURLParams} for more details.
      #
      #   @param platform [String] The social account provider
      #
      #   @param external_id [String] Your unique identifier for the social account
      #
      #   @param platform_data [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData] Additional data needed for the provider
      #
      #   @param redirect_url_override [String] Override the default redirect URL for the OAuth flow. If provided, this URL will
      #
      #   @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}]

      class PlatformData < PostForMe::Internal::Type::BaseModel
        # @!attribute bluesky
        #   Additional data needed for connecting bluesky accounts
        #
        #   @return [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Bluesky, nil]
        optional :bluesky, -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Bluesky }

        # @!attribute instagram
        #   Additional data for connecting instagram accounts
        #
        #   @return [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Instagram, nil]
        optional :instagram, -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram }

        # @!attribute linkedin
        #   Additional data for connecting linkedin accounts
        #
        #   @return [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Linkedin, nil]
        optional :linkedin, -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin }

        # @!method initialize(bluesky: nil, instagram: nil, linkedin: nil)
        #   Additional data needed for the provider
        #
        #   @param bluesky [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Bluesky] Additional data needed for connecting bluesky accounts
        #
        #   @param instagram [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Instagram] Additional data for connecting instagram accounts
        #
        #   @param linkedin [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Linkedin] Additional data for connecting linkedin accounts

        # @see PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData#bluesky
        class Bluesky < PostForMe::Internal::Type::BaseModel
          # @!attribute app_password
          #   The app password of the account
          #
          #   @return [String]
          required :app_password, String

          # @!attribute handle
          #   The handle of the account
          #
          #   @return [String]
          required :handle, String

          # @!method initialize(app_password:, handle:)
          #   Additional data needed for connecting bluesky accounts
          #
          #   @param app_password [String] The app password of the account
          #
          #   @param handle [String] The handle of the account
        end

        # @see PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData#instagram
        class Instagram < PostForMe::Internal::Type::BaseModel
          # @!attribute connection_type
          #   The type of connection; instagram for using login with instagram, facebook for
          #   using login with facebook.
          #
          #   @return [Symbol, PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType]
          required :connection_type,
                   enum: -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType }

          # @!method initialize(connection_type:)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Instagram}
          #   for more details.
          #
          #   Additional data for connecting instagram accounts
          #
          #   @param connection_type [Symbol, PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType] The type of connection; instagram for using login with instagram, facebook for u

          # The type of connection; instagram for using login with instagram, facebook for
          # using login with facebook.
          #
          # @see PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Instagram#connection_type
          module ConnectionType
            extend PostForMe::Internal::Type::Enum

            INSTAGRAM = :instagram
            FACEBOOK = :facebook

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData#linkedin
        class Linkedin < PostForMe::Internal::Type::BaseModel
          # @!attribute connection_type
          #   The type of connection; personal for posting on behalf of the user only,
          #   organization for posting on behalf of both an organization and the user
          #
          #   @return [Symbol, PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType]
          required :connection_type,
                   enum: -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType }

          # @!method initialize(connection_type:)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Linkedin}
          #   for more details.
          #
          #   Additional data for connecting linkedin accounts
          #
          #   @param connection_type [Symbol, PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType] The type of connection; personal for posting on behalf of the user only, organiz

          # The type of connection; personal for posting on behalf of the user only,
          # organization for posting on behalf of both an organization and the user
          #
          # @see PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Linkedin#connection_type
          module ConnectionType
            extend PostForMe::Internal::Type::Enum

            PERSONAL = :personal
            ORGANIZATION = :organization

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
