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

      # @!attribute permissions
      #   List of permissions you want to allow. Will default to only post permissions.
      #   You must include the "feeds" permission to request an account feed and metrics
      #
      #   @return [Array<Symbol, PostForMe::Models::SocialAccountCreateAuthURLParams::Permission>, nil]
      optional :permissions,
               -> { PostForMe::Internal::Type::ArrayOf[enum: PostForMe::SocialAccountCreateAuthURLParams::Permission] }

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

      # @!method initialize(platform:, external_id: nil, permissions: nil, platform_data: nil, redirect_url_override: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PostForMe::Models::SocialAccountCreateAuthURLParams} for more details.
      #
      #   @param platform [String] The social account provider
      #
      #   @param external_id [String] Your unique identifier for the social account
      #
      #   @param permissions [Array<Symbol, PostForMe::Models::SocialAccountCreateAuthURLParams::Permission>] List of permissions you want to allow. Will default to only post permissions. Yo
      #
      #   @param platform_data [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData] Additional data needed for the provider
      #
      #   @param redirect_url_override [String] Override the default redirect URL for the OAuth flow. If provided, this URL will
      #
      #   @param request_options [PostForMe::RequestOptions, Hash{Symbol=>Object}]

      module Permission
        extend PostForMe::Internal::Type::Enum

        POSTS = :posts
        FEEDS = :feeds

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class PlatformData < PostForMe::Internal::Type::BaseModel
        # @!attribute bluesky
        #   Additional data needed for connecting bluesky accounts
        #
        #   @return [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Bluesky, nil]
        optional :bluesky, -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Bluesky }

        # @!attribute facebook
        #   Additional data for connecting facebook accounts
        #
        #   @return [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Facebook, nil]
        optional :facebook, -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Facebook }

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

        # @!attribute pinterest
        #   Additional data for connecting Pinterest accounts
        #
        #   @return [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Pinterest, nil]
        optional :pinterest, -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Pinterest }

        # @!attribute threads
        #   Additional data for connecting Threads accounts
        #
        #   @return [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Threads, nil]
        optional :threads, -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Threads }

        # @!attribute tiktok
        #   Additional data for connecting TikTok accounts
        #
        #   @return [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Tiktok, nil]
        optional :tiktok, -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Tiktok }

        # @!attribute tiktok_business
        #   Additional data for connecting TikTok Business accounts
        #
        #   @return [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::TiktokBusiness, nil]
        optional :tiktok_business,
                 -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::TiktokBusiness }

        # @!attribute youtube
        #   Additional data for connecting YouTube accounts
        #
        #   @return [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Youtube, nil]
        optional :youtube, -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Youtube }

        # @!method initialize(bluesky: nil, facebook: nil, instagram: nil, linkedin: nil, pinterest: nil, threads: nil, tiktok: nil, tiktok_business: nil, youtube: nil)
        #   Additional data needed for the provider
        #
        #   @param bluesky [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Bluesky] Additional data needed for connecting bluesky accounts
        #
        #   @param facebook [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Facebook] Additional data for connecting facebook accounts
        #
        #   @param instagram [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Instagram] Additional data for connecting instagram accounts
        #
        #   @param linkedin [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Linkedin] Additional data for connecting linkedin accounts
        #
        #   @param pinterest [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Pinterest] Additional data for connecting Pinterest accounts
        #
        #   @param threads [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Threads] Additional data for connecting Threads accounts
        #
        #   @param tiktok [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Tiktok] Additional data for connecting TikTok accounts
        #
        #   @param tiktok_business [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::TiktokBusiness] Additional data for connecting TikTok Business accounts
        #
        #   @param youtube [PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Youtube] Additional data for connecting YouTube accounts

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

        # @see PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData#facebook
        class Facebook < PostForMe::Internal::Type::BaseModel
          # @!attribute permission_overrides
          #   Override the default permissions/scopes requested during OAuth. Default scopes:
          #   public_profile, pages_show_list, pages_read_engagement, pages_manage_posts,
          #   business_management
          #
          #   @return [Array<Array<Object>>, nil]
          optional :permission_overrides,
                   PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]]

          # @!method initialize(permission_overrides: nil)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Facebook}
          #   for more details.
          #
          #   Additional data for connecting facebook accounts
          #
          #   @param permission_overrides [Array<Array<Object>>] Override the default permissions/scopes requested during OAuth. Default scopes:
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

          # @!attribute permission_overrides
          #   Override the default permissions/scopes requested during OAuth. Default
          #   instagram scopes: instagram_business_basic, instagram_business_content_publish.
          #   Default facebook scopes: instagram_basic, instagram_content_publish,
          #   pages_show_list, public_profile, business_management
          #
          #   @return [Array<Array<Object>>, nil]
          optional :permission_overrides,
                   PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]]

          # @!method initialize(connection_type:, permission_overrides: nil)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Instagram}
          #   for more details.
          #
          #   Additional data for connecting instagram accounts
          #
          #   @param connection_type [Symbol, PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType] The type of connection; instagram for using login with instagram, facebook for u
          #
          #   @param permission_overrides [Array<Array<Object>>] Override the default permissions/scopes requested during OAuth. Default instagra

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
          #   The type of connection; If using our provided credentials always use
          #   "organization". If using your own crednetials then only use "organization" if
          #   you are using the Community API
          #
          #   @return [Symbol, PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType]
          required :connection_type,
                   enum: -> { PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType }

          # @!attribute permission_overrides
          #   Override the default permissions/scopes requested during OAuth. Default personal
          #   scopes: openid, w_member_social, profile, email. Default organization scopes:
          #   r_basicprofile, w_member_social, r_organization_social, w_organization_social,
          #   rw_organization_admin
          #
          #   @return [Array<Array<Object>>, nil]
          optional :permission_overrides,
                   PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]]

          # @!method initialize(connection_type:, permission_overrides: nil)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Linkedin}
          #   for more details.
          #
          #   Additional data for connecting linkedin accounts
          #
          #   @param connection_type [Symbol, PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType] The type of connection; If using our provided credentials always use "organizati
          #
          #   @param permission_overrides [Array<Array<Object>>] Override the default permissions/scopes requested during OAuth. Default personal

          # The type of connection; If using our provided credentials always use
          # "organization". If using your own crednetials then only use "organization" if
          # you are using the Community API
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

        # @see PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData#pinterest
        class Pinterest < PostForMe::Internal::Type::BaseModel
          # @!attribute permission_overrides
          #   Override the default permissions/scopes requested during OAuth. Default scopes:
          #   boards:read, boards:write, pins:read, pins:write, user_accounts:read
          #
          #   @return [Array<Array<Object>>, nil]
          optional :permission_overrides,
                   PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]]

          # @!method initialize(permission_overrides: nil)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Pinterest}
          #   for more details.
          #
          #   Additional data for connecting Pinterest accounts
          #
          #   @param permission_overrides [Array<Array<Object>>] Override the default permissions/scopes requested during OAuth. Default scopes:
        end

        # @see PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData#threads
        class Threads < PostForMe::Internal::Type::BaseModel
          # @!attribute permission_overrides
          #   Override the default permissions/scopes requested during OAuth. Default scopes:
          #   threads_basic, threads_content_publish
          #
          #   @return [Array<Array<Object>>, nil]
          optional :permission_overrides,
                   PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]]

          # @!method initialize(permission_overrides: nil)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Threads} for
          #   more details.
          #
          #   Additional data for connecting Threads accounts
          #
          #   @param permission_overrides [Array<Array<Object>>] Override the default permissions/scopes requested during OAuth. Default scopes:
        end

        # @see PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData#tiktok
        class Tiktok < PostForMe::Internal::Type::BaseModel
          # @!attribute permission_overrides
          #   Override the default permissions/scopes requested during OAuth. Default scopes:
          #   user.info.basic, video.list, video.upload, video.publish
          #
          #   @return [Array<Array<Object>>, nil]
          optional :permission_overrides,
                   PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]]

          # @!method initialize(permission_overrides: nil)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Tiktok} for
          #   more details.
          #
          #   Additional data for connecting TikTok accounts
          #
          #   @param permission_overrides [Array<Array<Object>>] Override the default permissions/scopes requested during OAuth. Default scopes:
        end

        # @see PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData#tiktok_business
        class TiktokBusiness < PostForMe::Internal::Type::BaseModel
          # @!attribute permission_overrides
          #   Override the default permissions/scopes requested during OAuth. Default scopes:
          #   user.info.basic, user.info.username, user.info.stats, user.info.profile,
          #   user.account.type, user.insights, video.list, video.insights, comment.list,
          #   comment.list.manage, video.publish, video.upload, biz.spark.auth,
          #   discovery.search.words
          #
          #   @return [Array<Array<Object>>, nil]
          optional :permission_overrides,
                   PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]]

          # @!method initialize(permission_overrides: nil)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::TiktokBusiness}
          #   for more details.
          #
          #   Additional data for connecting TikTok Business accounts
          #
          #   @param permission_overrides [Array<Array<Object>>] Override the default permissions/scopes requested during OAuth. Default scopes:
        end

        # @see PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData#youtube
        class Youtube < PostForMe::Internal::Type::BaseModel
          # @!attribute permission_overrides
          #   Override the default permissions/scopes requested during OAuth. Default scopes:
          #   https://www.googleapis.com/auth/youtube.force-ssl,
          #   https://www.googleapis.com/auth/youtube.upload,
          #   https://www.googleapis.com/auth/youtube.readonly,
          #   https://www.googleapis.com/auth/userinfo.profile
          #
          #   @return [Array<Array<Object>>, nil]
          optional :permission_overrides,
                   PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]]

          # @!method initialize(permission_overrides: nil)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::SocialAccountCreateAuthURLParams::PlatformData::Youtube} for
          #   more details.
          #
          #   Additional data for connecting YouTube accounts
          #
          #   @param permission_overrides [Array<Array<Object>>] Override the default permissions/scopes requested during OAuth. Default scopes:
        end
      end
    end
  end
end
