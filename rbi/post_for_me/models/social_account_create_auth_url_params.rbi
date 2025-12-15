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

      # List of permissions you want to allow. Will default to only post permissions.
      # You must include the "feeds" permission to request an account feed and metrics
      sig do
        returns(
          T.nilable(
            T::Array[
              PostForMe::SocialAccountCreateAuthURLParams::Permission::OrSymbol
            ]
          )
        )
      end
      attr_reader :permissions

      sig do
        params(
          permissions:
            T::Array[
              PostForMe::SocialAccountCreateAuthURLParams::Permission::OrSymbol
            ]
        ).void
      end
      attr_writer :permissions

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
          permissions:
            T::Array[
              PostForMe::SocialAccountCreateAuthURLParams::Permission::OrSymbol
            ],
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
        # List of permissions you want to allow. Will default to only post permissions.
        # You must include the "feeds" permission to request an account feed and metrics
        permissions: nil,
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
            permissions:
              T::Array[
                PostForMe::SocialAccountCreateAuthURLParams::Permission::OrSymbol
              ],
            platform_data:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData,
            redirect_url_override: String,
            request_options: PostForMe::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Permission
        extend PostForMe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PostForMe::SocialAccountCreateAuthURLParams::Permission
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POSTS =
          T.let(
            :posts,
            PostForMe::SocialAccountCreateAuthURLParams::Permission::TaggedSymbol
          )
        FEEDS =
          T.let(
            :feeds,
            PostForMe::SocialAccountCreateAuthURLParams::Permission::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PostForMe::SocialAccountCreateAuthURLParams::Permission::TaggedSymbol
            ]
          )
        end
        def self.values
        end
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

        # Additional data for connecting facebook accounts
        sig do
          returns(
            T.nilable(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Facebook
            )
          )
        end
        attr_reader :facebook

        sig do
          params(
            facebook:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Facebook::OrHash
          ).void
        end
        attr_writer :facebook

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

        # Additional data for connecting Pinterest accounts
        sig do
          returns(
            T.nilable(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Pinterest
            )
          )
        end
        attr_reader :pinterest

        sig do
          params(
            pinterest:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Pinterest::OrHash
          ).void
        end
        attr_writer :pinterest

        # Additional data for connecting Threads accounts
        sig do
          returns(
            T.nilable(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Threads
            )
          )
        end
        attr_reader :threads

        sig do
          params(
            threads:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Threads::OrHash
          ).void
        end
        attr_writer :threads

        # Additional data for connecting TikTok accounts
        sig do
          returns(
            T.nilable(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Tiktok
            )
          )
        end
        attr_reader :tiktok

        sig do
          params(
            tiktok:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Tiktok::OrHash
          ).void
        end
        attr_writer :tiktok

        # Additional data for connecting TikTok Business accounts
        sig do
          returns(
            T.nilable(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::TiktokBusiness
            )
          )
        end
        attr_reader :tiktok_business

        sig do
          params(
            tiktok_business:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::TiktokBusiness::OrHash
          ).void
        end
        attr_writer :tiktok_business

        # Additional data for connecting YouTube accounts
        sig do
          returns(
            T.nilable(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Youtube
            )
          )
        end
        attr_reader :youtube

        sig do
          params(
            youtube:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Youtube::OrHash
          ).void
        end
        attr_writer :youtube

        # Additional data needed for the provider
        sig do
          params(
            bluesky:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Bluesky::OrHash,
            facebook:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Facebook::OrHash,
            instagram:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::OrHash,
            linkedin:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::OrHash,
            pinterest:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Pinterest::OrHash,
            threads:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Threads::OrHash,
            tiktok:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Tiktok::OrHash,
            tiktok_business:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::TiktokBusiness::OrHash,
            youtube:
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Youtube::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Additional data needed for connecting bluesky accounts
          bluesky: nil,
          # Additional data for connecting facebook accounts
          facebook: nil,
          # Additional data for connecting instagram accounts
          instagram: nil,
          # Additional data for connecting linkedin accounts
          linkedin: nil,
          # Additional data for connecting Pinterest accounts
          pinterest: nil,
          # Additional data for connecting Threads accounts
          threads: nil,
          # Additional data for connecting TikTok accounts
          tiktok: nil,
          # Additional data for connecting TikTok Business accounts
          tiktok_business: nil,
          # Additional data for connecting YouTube accounts
          youtube: nil
        )
        end

        sig do
          override.returns(
            {
              bluesky:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Bluesky,
              facebook:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Facebook,
              instagram:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram,
              linkedin:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin,
              pinterest:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Pinterest,
              threads:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Threads,
              tiktok:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Tiktok,
              tiktok_business:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::TiktokBusiness,
              youtube:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Youtube
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

        class Facebook < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Facebook,
                PostForMe::Internal::AnyHash
              )
            end

          # Override the default permissions/scopes requested during OAuth. Default scopes:
          # public_profile, pages_show_list, pages_read_engagement, pages_manage_posts,
          # business_management
          sig { returns(T.nilable(T::Array[T::Array[T.anything]])) }
          attr_reader :permission_overrides

          sig do
            params(permission_overrides: T::Array[T::Array[T.anything]]).void
          end
          attr_writer :permission_overrides

          # Additional data for connecting facebook accounts
          sig do
            params(
              permission_overrides: T::Array[T::Array[T.anything]]
            ).returns(T.attached_class)
          end
          def self.new(
            # Override the default permissions/scopes requested during OAuth. Default scopes:
            # public_profile, pages_show_list, pages_read_engagement, pages_manage_posts,
            # business_management
            permission_overrides: nil
          )
          end

          sig do
            override.returns(
              { permission_overrides: T::Array[T::Array[T.anything]] }
            )
          end
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

          # Override the default permissions/scopes requested during OAuth. Default
          # instagram scopes: instagram_business_basic, instagram_business_content_publish.
          # Default facebook scopes: instagram_basic, instagram_content_publish,
          # pages_show_list, public_profile, business_management
          sig { returns(T.nilable(T::Array[T::Array[T.anything]])) }
          attr_reader :permission_overrides

          sig do
            params(permission_overrides: T::Array[T::Array[T.anything]]).void
          end
          attr_writer :permission_overrides

          # Additional data for connecting instagram accounts
          sig do
            params(
              connection_type:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType::OrSymbol,
              permission_overrides: T::Array[T::Array[T.anything]]
            ).returns(T.attached_class)
          end
          def self.new(
            # The type of connection; instagram for using login with instagram, facebook for
            # using login with facebook.
            connection_type:,
            # Override the default permissions/scopes requested during OAuth. Default
            # instagram scopes: instagram_business_basic, instagram_business_content_publish.
            # Default facebook scopes: instagram_basic, instagram_content_publish,
            # pages_show_list, public_profile, business_management
            permission_overrides: nil
          )
          end

          sig do
            override.returns(
              {
                connection_type:
                  PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Instagram::ConnectionType::OrSymbol,
                permission_overrides: T::Array[T::Array[T.anything]]
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

          # The type of connection; If using our provided credentials always use
          # "organization". If using your own crednetials then only use "organization" if
          # you are using the Community API
          sig do
            returns(
              PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType::OrSymbol
            )
          end
          attr_accessor :connection_type

          # Override the default permissions/scopes requested during OAuth. Default personal
          # scopes: openid, w_member_social, profile, email. Default organization scopes:
          # r_basicprofile, w_member_social, r_organization_social, w_organization_social,
          # rw_organization_admin
          sig { returns(T.nilable(T::Array[T::Array[T.anything]])) }
          attr_reader :permission_overrides

          sig do
            params(permission_overrides: T::Array[T::Array[T.anything]]).void
          end
          attr_writer :permission_overrides

          # Additional data for connecting linkedin accounts
          sig do
            params(
              connection_type:
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType::OrSymbol,
              permission_overrides: T::Array[T::Array[T.anything]]
            ).returns(T.attached_class)
          end
          def self.new(
            # The type of connection; If using our provided credentials always use
            # "organization". If using your own crednetials then only use "organization" if
            # you are using the Community API
            connection_type:,
            # Override the default permissions/scopes requested during OAuth. Default personal
            # scopes: openid, w_member_social, profile, email. Default organization scopes:
            # r_basicprofile, w_member_social, r_organization_social, w_organization_social,
            # rw_organization_admin
            permission_overrides: nil
          )
          end

          sig do
            override.returns(
              {
                connection_type:
                  PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Linkedin::ConnectionType::OrSymbol,
                permission_overrides: T::Array[T::Array[T.anything]]
              }
            )
          end
          def to_hash
          end

          # The type of connection; If using our provided credentials always use
          # "organization". If using your own crednetials then only use "organization" if
          # you are using the Community API
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

        class Pinterest < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Pinterest,
                PostForMe::Internal::AnyHash
              )
            end

          # Override the default permissions/scopes requested during OAuth. Default scopes:
          # boards:read, boards:write, pins:read, pins:write, user_accounts:read
          sig { returns(T.nilable(T::Array[T::Array[T.anything]])) }
          attr_reader :permission_overrides

          sig do
            params(permission_overrides: T::Array[T::Array[T.anything]]).void
          end
          attr_writer :permission_overrides

          # Additional data for connecting Pinterest accounts
          sig do
            params(
              permission_overrides: T::Array[T::Array[T.anything]]
            ).returns(T.attached_class)
          end
          def self.new(
            # Override the default permissions/scopes requested during OAuth. Default scopes:
            # boards:read, boards:write, pins:read, pins:write, user_accounts:read
            permission_overrides: nil
          )
          end

          sig do
            override.returns(
              { permission_overrides: T::Array[T::Array[T.anything]] }
            )
          end
          def to_hash
          end
        end

        class Threads < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Threads,
                PostForMe::Internal::AnyHash
              )
            end

          # Override the default permissions/scopes requested during OAuth. Default scopes:
          # threads_basic, threads_content_publish
          sig { returns(T.nilable(T::Array[T::Array[T.anything]])) }
          attr_reader :permission_overrides

          sig do
            params(permission_overrides: T::Array[T::Array[T.anything]]).void
          end
          attr_writer :permission_overrides

          # Additional data for connecting Threads accounts
          sig do
            params(
              permission_overrides: T::Array[T::Array[T.anything]]
            ).returns(T.attached_class)
          end
          def self.new(
            # Override the default permissions/scopes requested during OAuth. Default scopes:
            # threads_basic, threads_content_publish
            permission_overrides: nil
          )
          end

          sig do
            override.returns(
              { permission_overrides: T::Array[T::Array[T.anything]] }
            )
          end
          def to_hash
          end
        end

        class Tiktok < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Tiktok,
                PostForMe::Internal::AnyHash
              )
            end

          # Override the default permissions/scopes requested during OAuth. Default scopes:
          # user.info.basic, video.list, video.upload, video.publish
          sig { returns(T.nilable(T::Array[T::Array[T.anything]])) }
          attr_reader :permission_overrides

          sig do
            params(permission_overrides: T::Array[T::Array[T.anything]]).void
          end
          attr_writer :permission_overrides

          # Additional data for connecting TikTok accounts
          sig do
            params(
              permission_overrides: T::Array[T::Array[T.anything]]
            ).returns(T.attached_class)
          end
          def self.new(
            # Override the default permissions/scopes requested during OAuth. Default scopes:
            # user.info.basic, video.list, video.upload, video.publish
            permission_overrides: nil
          )
          end

          sig do
            override.returns(
              { permission_overrides: T::Array[T::Array[T.anything]] }
            )
          end
          def to_hash
          end
        end

        class TiktokBusiness < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::TiktokBusiness,
                PostForMe::Internal::AnyHash
              )
            end

          # Override the default permissions/scopes requested during OAuth. Default scopes:
          # user.info.basic, user.info.username, user.info.stats, user.info.profile,
          # user.account.type, user.insights, video.list, video.insights, comment.list,
          # comment.list.manage, video.publish, video.upload, biz.spark.auth,
          # discovery.search.words
          sig { returns(T.nilable(T::Array[T::Array[T.anything]])) }
          attr_reader :permission_overrides

          sig do
            params(permission_overrides: T::Array[T::Array[T.anything]]).void
          end
          attr_writer :permission_overrides

          # Additional data for connecting TikTok Business accounts
          sig do
            params(
              permission_overrides: T::Array[T::Array[T.anything]]
            ).returns(T.attached_class)
          end
          def self.new(
            # Override the default permissions/scopes requested during OAuth. Default scopes:
            # user.info.basic, user.info.username, user.info.stats, user.info.profile,
            # user.account.type, user.insights, video.list, video.insights, comment.list,
            # comment.list.manage, video.publish, video.upload, biz.spark.auth,
            # discovery.search.words
            permission_overrides: nil
          )
          end

          sig do
            override.returns(
              { permission_overrides: T::Array[T::Array[T.anything]] }
            )
          end
          def to_hash
          end
        end

        class Youtube < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::SocialAccountCreateAuthURLParams::PlatformData::Youtube,
                PostForMe::Internal::AnyHash
              )
            end

          # Override the default permissions/scopes requested during OAuth. Default scopes:
          # https://www.googleapis.com/auth/youtube.force-ssl,
          # https://www.googleapis.com/auth/youtube.upload,
          # https://www.googleapis.com/auth/youtube.readonly,
          # https://www.googleapis.com/auth/userinfo.profile
          sig { returns(T.nilable(T::Array[T::Array[T.anything]])) }
          attr_reader :permission_overrides

          sig do
            params(permission_overrides: T::Array[T::Array[T.anything]]).void
          end
          attr_writer :permission_overrides

          # Additional data for connecting YouTube accounts
          sig do
            params(
              permission_overrides: T::Array[T::Array[T.anything]]
            ).returns(T.attached_class)
          end
          def self.new(
            # Override the default permissions/scopes requested during OAuth. Default scopes:
            # https://www.googleapis.com/auth/youtube.force-ssl,
            # https://www.googleapis.com/auth/youtube.upload,
            # https://www.googleapis.com/auth/youtube.readonly,
            # https://www.googleapis.com/auth/userinfo.profile
            permission_overrides: nil
          )
          end

          sig do
            override.returns(
              { permission_overrides: T::Array[T::Array[T.anything]] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
