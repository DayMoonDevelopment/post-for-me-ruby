# typed: strong

module PostForMe
  module Models
    class PlatformPost < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::PlatformPost, PostForMe::Internal::AnyHash)
        end

      # Caption or text content of the post
      sig { returns(String) }
      attr_accessor :caption

      # Array of media items attached to the post
      sig { returns(T::Array[T::Array[T.anything]]) }
      attr_accessor :media

      # Social media platform name
      sig { returns(String) }
      attr_accessor :platform

      # Platform-specific account ID
      sig { returns(String) }
      attr_accessor :platform_account_id

      # Platform-specific post ID
      sig { returns(String) }
      attr_accessor :platform_post_id

      # URL to the post on the platform
      sig { returns(String) }
      attr_accessor :platform_url

      # ID of the social account
      sig { returns(String) }
      attr_accessor :social_account_id

      # External account ID from the platform
      sig { returns(T.nilable(String)) }
      attr_accessor :external_account_id

      # External post ID from the platform
      sig { returns(T.nilable(String)) }
      attr_accessor :external_post_id

      # Post metrics and analytics data
      sig { returns(T.nilable(PostForMe::PlatformPost::Metrics::Variants)) }
      attr_reader :metrics

      sig do
        params(
          metrics:
            T.any(
              PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::OrHash,
              PostForMe::PlatformPost::Metrics::TikTokPostMetricsDto::OrHash,
              PostForMe::PlatformPost::Metrics::InstagramPostMetricsDto::OrHash,
              PostForMe::PlatformPost::Metrics::YouTubePostMetricsDto::OrHash,
              PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::OrHash,
              PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::OrHash,
              PostForMe::PlatformPost::Metrics::ThreadsPostMetricsDto::OrHash,
              T.anything
            )
        ).void
      end
      attr_writer :metrics

      # Date the post was published
      sig { returns(T.nilable(Time)) }
      attr_reader :posted_at

      sig { params(posted_at: Time).void }
      attr_writer :posted_at

      # ID of the social post
      sig { returns(T.nilable(String)) }
      attr_accessor :social_post_id

      # ID of the social post result
      sig { returns(T.nilable(String)) }
      attr_accessor :social_post_result_id

      sig do
        params(
          caption: String,
          media: T::Array[T::Array[T.anything]],
          platform: String,
          platform_account_id: String,
          platform_post_id: String,
          platform_url: String,
          social_account_id: String,
          external_account_id: T.nilable(String),
          external_post_id: T.nilable(String),
          metrics:
            T.any(
              PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::OrHash,
              PostForMe::PlatformPost::Metrics::TikTokPostMetricsDto::OrHash,
              PostForMe::PlatformPost::Metrics::InstagramPostMetricsDto::OrHash,
              PostForMe::PlatformPost::Metrics::YouTubePostMetricsDto::OrHash,
              PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::OrHash,
              PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::OrHash,
              PostForMe::PlatformPost::Metrics::ThreadsPostMetricsDto::OrHash,
              T.anything
            ),
          posted_at: Time,
          social_post_id: T.nilable(String),
          social_post_result_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Caption or text content of the post
        caption:,
        # Array of media items attached to the post
        media:,
        # Social media platform name
        platform:,
        # Platform-specific account ID
        platform_account_id:,
        # Platform-specific post ID
        platform_post_id:,
        # URL to the post on the platform
        platform_url:,
        # ID of the social account
        social_account_id:,
        # External account ID from the platform
        external_account_id: nil,
        # External post ID from the platform
        external_post_id: nil,
        # Post metrics and analytics data
        metrics: nil,
        # Date the post was published
        posted_at: nil,
        # ID of the social post
        social_post_id: nil,
        # ID of the social post result
        social_post_result_id: nil
      )
      end

      sig do
        override.returns(
          {
            caption: String,
            media: T::Array[T::Array[T.anything]],
            platform: String,
            platform_account_id: String,
            platform_post_id: String,
            platform_url: String,
            social_account_id: String,
            external_account_id: T.nilable(String),
            external_post_id: T.nilable(String),
            metrics: PostForMe::PlatformPost::Metrics::Variants,
            posted_at: Time,
            social_post_id: T.nilable(String),
            social_post_result_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Post metrics and analytics data
      module Metrics
        extend PostForMe::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto,
              PostForMe::PlatformPost::Metrics::TikTokPostMetricsDto,
              PostForMe::PlatformPost::Metrics::InstagramPostMetricsDto,
              PostForMe::PlatformPost::Metrics::YouTubePostMetricsDto,
              PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto,
              PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto,
              PostForMe::PlatformPost::Metrics::ThreadsPostMetricsDto,
              T.anything
            )
          end

        class TikTokBusinessMetricsDto < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto,
                PostForMe::Internal::AnyHash
              )
            end

          # Number of address clicks
          sig { returns(Float) }
          attr_accessor :address_clicks

          # Number of app download clicks
          sig { returns(Float) }
          attr_accessor :app_download_clicks

          # Audience cities breakdown
          sig do
            returns(
              T::Array[
                PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCity
              ]
            )
          end
          attr_accessor :audience_cities

          # Audience countries breakdown
          sig do
            returns(
              T::Array[
                PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCountry
              ]
            )
          end
          attr_accessor :audience_countries

          # Audience genders breakdown
          sig do
            returns(
              T::Array[
                PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceGender
              ]
            )
          end
          attr_accessor :audience_genders

          # Audience types breakdown
          sig do
            returns(
              T::Array[
                PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceType
              ]
            )
          end
          attr_accessor :audience_types

          # Average time watched in seconds
          sig { returns(Float) }
          attr_accessor :average_time_watched

          # Number of comments on the post
          sig { returns(Float) }
          attr_accessor :comments

          # Number of email clicks
          sig { returns(Float) }
          attr_accessor :email_clicks

          # Engagement likes data by percentage and time
          sig do
            returns(
              T::Array[
                PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::EngagementLike
              ]
            )
          end
          attr_accessor :engagement_likes

          # Number of favorites on the post
          sig { returns(Float) }
          attr_accessor :favorites

          # Rate of full video watches as a percentage
          sig { returns(Float) }
          attr_accessor :full_video_watched_rate

          # Impression sources breakdown
          sig do
            returns(
              T::Array[
                PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::ImpressionSource
              ]
            )
          end
          attr_accessor :impression_sources

          # Number of lead submissions
          sig { returns(Float) }
          attr_accessor :lead_submissions

          # Number of likes on the post
          sig { returns(Float) }
          attr_accessor :likes

          # Number of new followers gained from the post
          sig { returns(Float) }
          attr_accessor :new_followers

          # Number of phone number clicks
          sig { returns(Float) }
          attr_accessor :phone_number_clicks

          # Number of profile views generated
          sig { returns(Float) }
          attr_accessor :profile_views

          # Total reach of the post
          sig { returns(Float) }
          attr_accessor :reach

          # Number of shares on the post
          sig { returns(Float) }
          attr_accessor :shares

          # Total time watched in seconds
          sig { returns(Float) }
          attr_accessor :total_time_watched

          # Video view retention data by percentage and time
          sig do
            returns(
              T::Array[
                PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::VideoViewRetention
              ]
            )
          end
          attr_accessor :video_view_retention

          # Total number of video views
          sig { returns(Float) }
          attr_accessor :video_views

          # Number of website clicks
          sig { returns(Float) }
          attr_accessor :website_clicks

          sig do
            params(
              address_clicks: Float,
              app_download_clicks: Float,
              audience_cities:
                T::Array[
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCity::OrHash
                ],
              audience_countries:
                T::Array[
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCountry::OrHash
                ],
              audience_genders:
                T::Array[
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceGender::OrHash
                ],
              audience_types:
                T::Array[
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceType::OrHash
                ],
              average_time_watched: Float,
              comments: Float,
              email_clicks: Float,
              engagement_likes:
                T::Array[
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::EngagementLike::OrHash
                ],
              favorites: Float,
              full_video_watched_rate: Float,
              impression_sources:
                T::Array[
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::ImpressionSource::OrHash
                ],
              lead_submissions: Float,
              likes: Float,
              new_followers: Float,
              phone_number_clicks: Float,
              profile_views: Float,
              reach: Float,
              shares: Float,
              total_time_watched: Float,
              video_view_retention:
                T::Array[
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::VideoViewRetention::OrHash
                ],
              video_views: Float,
              website_clicks: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Number of address clicks
            address_clicks:,
            # Number of app download clicks
            app_download_clicks:,
            # Audience cities breakdown
            audience_cities:,
            # Audience countries breakdown
            audience_countries:,
            # Audience genders breakdown
            audience_genders:,
            # Audience types breakdown
            audience_types:,
            # Average time watched in seconds
            average_time_watched:,
            # Number of comments on the post
            comments:,
            # Number of email clicks
            email_clicks:,
            # Engagement likes data by percentage and time
            engagement_likes:,
            # Number of favorites on the post
            favorites:,
            # Rate of full video watches as a percentage
            full_video_watched_rate:,
            # Impression sources breakdown
            impression_sources:,
            # Number of lead submissions
            lead_submissions:,
            # Number of likes on the post
            likes:,
            # Number of new followers gained from the post
            new_followers:,
            # Number of phone number clicks
            phone_number_clicks:,
            # Number of profile views generated
            profile_views:,
            # Total reach of the post
            reach:,
            # Number of shares on the post
            shares:,
            # Total time watched in seconds
            total_time_watched:,
            # Video view retention data by percentage and time
            video_view_retention:,
            # Total number of video views
            video_views:,
            # Number of website clicks
            website_clicks:
          )
          end

          sig do
            override.returns(
              {
                address_clicks: Float,
                app_download_clicks: Float,
                audience_cities:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCity
                  ],
                audience_countries:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCountry
                  ],
                audience_genders:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceGender
                  ],
                audience_types:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceType
                  ],
                average_time_watched: Float,
                comments: Float,
                email_clicks: Float,
                engagement_likes:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::EngagementLike
                  ],
                favorites: Float,
                full_video_watched_rate: Float,
                impression_sources:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::ImpressionSource
                  ],
                lead_submissions: Float,
                likes: Float,
                new_followers: Float,
                phone_number_clicks: Float,
                profile_views: Float,
                reach: Float,
                shares: Float,
                total_time_watched: Float,
                video_view_retention:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::VideoViewRetention
                  ],
                video_views: Float,
                website_clicks: Float
              }
            )
          end
          def to_hash
          end

          class AudienceCity < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCity,
                  PostForMe::Internal::AnyHash
                )
              end

            # City name
            sig { returns(String) }
            attr_accessor :city_name

            # Percentage of audience from this city
            sig { returns(Float) }
            attr_accessor :percentage

            sig do
              params(city_name: String, percentage: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # City name
              city_name:,
              # Percentage of audience from this city
              percentage:
            )
            end

            sig { override.returns({ city_name: String, percentage: Float }) }
            def to_hash
            end
          end

          class AudienceCountry < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCountry,
                  PostForMe::Internal::AnyHash
                )
              end

            # Country name
            sig { returns(String) }
            attr_accessor :country

            # Percentage of audience from this country
            sig { returns(Float) }
            attr_accessor :percentage

            sig do
              params(country: String, percentage: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Country name
              country:,
              # Percentage of audience from this country
              percentage:
            )
            end

            sig { override.returns({ country: String, percentage: Float }) }
            def to_hash
            end
          end

          class AudienceGender < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceGender,
                  PostForMe::Internal::AnyHash
                )
              end

            # Gender category
            sig { returns(String) }
            attr_accessor :gender

            # Percentage of audience of this gender
            sig { returns(Float) }
            attr_accessor :percentage

            sig do
              params(gender: String, percentage: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Gender category
              gender:,
              # Percentage of audience of this gender
              percentage:
            )
            end

            sig { override.returns({ gender: String, percentage: Float }) }
            def to_hash
            end
          end

          class AudienceType < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceType,
                  PostForMe::Internal::AnyHash
                )
              end

            # Percentage of audience of this type
            sig { returns(Float) }
            attr_accessor :percentage

            # Type of audience
            sig { returns(String) }
            attr_accessor :type

            sig do
              params(percentage: Float, type: String).returns(T.attached_class)
            end
            def self.new(
              # Percentage of audience of this type
              percentage:,
              # Type of audience
              type:
            )
            end

            sig { override.returns({ percentage: Float, type: String }) }
            def to_hash
            end
          end

          class EngagementLike < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::EngagementLike,
                  PostForMe::Internal::AnyHash
                )
              end

            # Percentage value for the metric
            sig { returns(Float) }
            attr_accessor :percentage

            # Time in seconds for the metric
            sig { returns(String) }
            attr_accessor :second

            sig do
              params(percentage: Float, second: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Percentage value for the metric
              percentage:,
              # Time in seconds for the metric
              second:
            )
            end

            sig { override.returns({ percentage: Float, second: String }) }
            def to_hash
            end
          end

          class ImpressionSource < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::ImpressionSource,
                  PostForMe::Internal::AnyHash
                )
              end

            # Name of the impression source
            sig { returns(String) }
            attr_accessor :impression_source

            # Percentage of impressions from this source
            sig { returns(Float) }
            attr_accessor :percentage

            sig do
              params(impression_source: String, percentage: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Name of the impression source
              impression_source:,
              # Percentage of impressions from this source
              percentage:
            )
            end

            sig do
              override.returns({ impression_source: String, percentage: Float })
            end
            def to_hash
            end
          end

          class VideoViewRetention < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::VideoViewRetention,
                  PostForMe::Internal::AnyHash
                )
              end

            # Percentage value for the metric
            sig { returns(Float) }
            attr_accessor :percentage

            # Time in seconds for the metric
            sig { returns(String) }
            attr_accessor :second

            sig do
              params(percentage: Float, second: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Percentage value for the metric
              percentage:,
              # Time in seconds for the metric
              second:
            )
            end

            sig { override.returns({ percentage: Float, second: String }) }
            def to_hash
            end
          end
        end

        class TikTokPostMetricsDto < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::PlatformPost::Metrics::TikTokPostMetricsDto,
                PostForMe::Internal::AnyHash
              )
            end

          # Number of comments on the video
          sig { returns(Float) }
          attr_accessor :comment_count

          # Number of likes on the video
          sig { returns(Float) }
          attr_accessor :like_count

          # Number of shares of the video
          sig { returns(Float) }
          attr_accessor :share_count

          # Number of views on the video
          sig { returns(Float) }
          attr_accessor :view_count

          sig do
            params(
              comment_count: Float,
              like_count: Float,
              share_count: Float,
              view_count: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Number of comments on the video
            comment_count:,
            # Number of likes on the video
            like_count:,
            # Number of shares of the video
            share_count:,
            # Number of views on the video
            view_count:
          )
          end

          sig do
            override.returns(
              {
                comment_count: Float,
                like_count: Float,
                share_count: Float,
                view_count: Float
              }
            )
          end
          def to_hash
          end
        end

        class InstagramPostMetricsDto < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::PlatformPost::Metrics::InstagramPostMetricsDto,
                PostForMe::Internal::AnyHash
              )
            end

          # Number of comments on the post
          sig { returns(T.nilable(Float)) }
          attr_reader :comments

          sig { params(comments: Float).void }
          attr_writer :comments

          # Number of new follows from this post
          sig { returns(T.nilable(Float)) }
          attr_reader :follows

          sig { params(follows: Float).void }
          attr_writer :follows

          # Average watch time for Reels (in milliseconds)
          sig { returns(T.nilable(Float)) }
          attr_reader :ig_reels_avg_watch_time

          sig { params(ig_reels_avg_watch_time: Float).void }
          attr_writer :ig_reels_avg_watch_time

          # Total watch time for Reels (in milliseconds)
          sig { returns(T.nilable(Float)) }
          attr_reader :ig_reels_video_view_total_time

          sig { params(ig_reels_video_view_total_time: Float).void }
          attr_writer :ig_reels_video_view_total_time

          # Number of likes on the post
          sig { returns(T.nilable(Float)) }
          attr_reader :likes

          sig { params(likes: Float).void }
          attr_writer :likes

          # Navigation actions taken on the media
          sig { returns(T.nilable(Float)) }
          attr_reader :navigation

          sig { params(navigation: Float).void }
          attr_writer :navigation

          # Profile activity generated from this post
          sig { returns(T.nilable(Float)) }
          attr_reader :profile_activity

          sig { params(profile_activity: Float).void }
          attr_writer :profile_activity

          # Number of profile visits from this post
          sig { returns(T.nilable(Float)) }
          attr_reader :profile_visits

          sig { params(profile_visits: Float).void }
          attr_writer :profile_visits

          # Total number of unique accounts that have seen the media
          sig { returns(T.nilable(Float)) }
          attr_reader :reach

          sig { params(reach: Float).void }
          attr_writer :reach

          # Number of replies to the story (story media only)
          sig { returns(T.nilable(Float)) }
          attr_reader :replies

          sig { params(replies: Float).void }
          attr_writer :replies

          # Total number of unique accounts that have saved the media
          sig { returns(T.nilable(Float)) }
          attr_reader :saved

          sig { params(saved: Float).void }
          attr_writer :saved

          # Total number of shares of the media
          sig { returns(T.nilable(Float)) }
          attr_reader :shares

          sig { params(shares: Float).void }
          attr_writer :shares

          # Total interactions on the post
          sig { returns(T.nilable(Float)) }
          attr_reader :total_interactions

          sig { params(total_interactions: Float).void }
          attr_writer :total_interactions

          # Number of views on the post
          sig { returns(T.nilable(Float)) }
          attr_reader :views

          sig { params(views: Float).void }
          attr_writer :views

          sig do
            params(
              comments: Float,
              follows: Float,
              ig_reels_avg_watch_time: Float,
              ig_reels_video_view_total_time: Float,
              likes: Float,
              navigation: Float,
              profile_activity: Float,
              profile_visits: Float,
              reach: Float,
              replies: Float,
              saved: Float,
              shares: Float,
              total_interactions: Float,
              views: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Number of comments on the post
            comments: nil,
            # Number of new follows from this post
            follows: nil,
            # Average watch time for Reels (in milliseconds)
            ig_reels_avg_watch_time: nil,
            # Total watch time for Reels (in milliseconds)
            ig_reels_video_view_total_time: nil,
            # Number of likes on the post
            likes: nil,
            # Navigation actions taken on the media
            navigation: nil,
            # Profile activity generated from this post
            profile_activity: nil,
            # Number of profile visits from this post
            profile_visits: nil,
            # Total number of unique accounts that have seen the media
            reach: nil,
            # Number of replies to the story (story media only)
            replies: nil,
            # Total number of unique accounts that have saved the media
            saved: nil,
            # Total number of shares of the media
            shares: nil,
            # Total interactions on the post
            total_interactions: nil,
            # Number of views on the post
            views: nil
          )
          end

          sig do
            override.returns(
              {
                comments: Float,
                follows: Float,
                ig_reels_avg_watch_time: Float,
                ig_reels_video_view_total_time: Float,
                likes: Float,
                navigation: Float,
                profile_activity: Float,
                profile_visits: Float,
                reach: Float,
                replies: Float,
                saved: Float,
                shares: Float,
                total_interactions: Float,
                views: Float
              }
            )
          end
          def to_hash
          end
        end

        class YouTubePostMetricsDto < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::PlatformPost::Metrics::YouTubePostMetricsDto,
                PostForMe::Internal::AnyHash
              )
            end

          # Number of comments on the video
          sig { returns(Float) }
          attr_accessor :comments

          # Number of dislikes on the video
          sig { returns(Float) }
          attr_accessor :dislikes

          # Number of likes on the video
          sig { returns(Float) }
          attr_accessor :likes

          # Number of views on the video
          sig { returns(Float) }
          attr_accessor :views

          # Number of clickable annotation impressions
          sig { returns(T.nilable(Float)) }
          attr_reader :annotation_clickable_impressions

          sig { params(annotation_clickable_impressions: Float).void }
          attr_writer :annotation_clickable_impressions

          # Number of annotation clicks
          sig { returns(T.nilable(Float)) }
          attr_reader :annotation_clicks

          sig { params(annotation_clicks: Float).void }
          attr_writer :annotation_clicks

          # Annotation click-through rate
          sig { returns(T.nilable(Float)) }
          attr_reader :annotation_click_through_rate

          sig { params(annotation_click_through_rate: Float).void }
          attr_writer :annotation_click_through_rate

          # Number of closable annotation impressions
          sig { returns(T.nilable(Float)) }
          attr_reader :annotation_closable_impressions

          sig { params(annotation_closable_impressions: Float).void }
          attr_writer :annotation_closable_impressions

          # Annotation close rate
          sig { returns(T.nilable(Float)) }
          attr_reader :annotation_close_rate

          sig { params(annotation_close_rate: Float).void }
          attr_writer :annotation_close_rate

          # Number of annotation closes
          sig { returns(T.nilable(Float)) }
          attr_reader :annotation_closes

          sig { params(annotation_closes: Float).void }
          attr_writer :annotation_closes

          # Number of annotation impressions
          sig { returns(T.nilable(Float)) }
          attr_reader :annotation_impressions

          sig { params(annotation_impressions: Float).void }
          attr_writer :annotation_impressions

          # Average view duration in seconds
          sig { returns(T.nilable(Float)) }
          attr_reader :average_view_duration

          sig { params(average_view_duration: Float).void }
          attr_writer :average_view_duration

          # Average percentage of the video watched
          sig { returns(T.nilable(Float)) }
          attr_reader :average_view_percentage

          sig { params(average_view_percentage: Float).void }
          attr_writer :average_view_percentage

          # Card click-through rate
          sig { returns(T.nilable(Float)) }
          attr_reader :card_click_rate

          sig { params(card_click_rate: Float).void }
          attr_writer :card_click_rate

          # Number of card clicks
          sig { returns(T.nilable(Float)) }
          attr_reader :card_clicks

          sig { params(card_clicks: Float).void }
          attr_writer :card_clicks

          # Number of card impressions
          sig { returns(T.nilable(Float)) }
          attr_reader :card_impressions

          sig { params(card_impressions: Float).void }
          attr_writer :card_impressions

          # Card teaser click-through rate
          sig { returns(T.nilable(Float)) }
          attr_reader :card_teaser_click_rate

          sig { params(card_teaser_click_rate: Float).void }
          attr_writer :card_teaser_click_rate

          # Number of card teaser clicks
          sig { returns(T.nilable(Float)) }
          attr_reader :card_teaser_clicks

          sig { params(card_teaser_clicks: Float).void }
          attr_writer :card_teaser_clicks

          # Number of card teaser impressions
          sig { returns(T.nilable(Float)) }
          attr_reader :card_teaser_impressions

          sig { params(card_teaser_impressions: Float).void }
          attr_writer :card_teaser_impressions

          # Number of engaged views
          sig { returns(T.nilable(Float)) }
          attr_reader :engaged_views

          sig { params(engaged_views: Float).void }
          attr_writer :engaged_views

          # Estimated minutes watched
          sig { returns(T.nilable(Float)) }
          attr_reader :estimated_minutes_watched

          sig { params(estimated_minutes_watched: Float).void }
          attr_writer :estimated_minutes_watched

          # Estimated minutes watched by YouTube Premium (Red) members
          sig { returns(T.nilable(Float)) }
          attr_reader :estimated_red_minutes_watched

          sig { params(estimated_red_minutes_watched: Float).void }
          attr_writer :estimated_red_minutes_watched

          # Number of views from YouTube Premium (Red) members
          sig { returns(T.nilable(Float)) }
          attr_reader :red_views

          sig { params(red_views: Float).void }
          attr_writer :red_views

          # Number of shares
          sig { returns(T.nilable(Float)) }
          attr_reader :shares

          sig { params(shares: Float).void }
          attr_writer :shares

          # Subscribers gained
          sig { returns(T.nilable(Float)) }
          attr_reader :subscribers_gained

          sig { params(subscribers_gained: Float).void }
          attr_writer :subscribers_gained

          # Subscribers lost
          sig { returns(T.nilable(Float)) }
          attr_reader :subscribers_lost

          sig { params(subscribers_lost: Float).void }
          attr_writer :subscribers_lost

          # Number of times the video was added to playlists
          sig { returns(T.nilable(Float)) }
          attr_reader :videos_added_to_playlists

          sig { params(videos_added_to_playlists: Float).void }
          attr_writer :videos_added_to_playlists

          # Number of times the video was removed from playlists
          sig { returns(T.nilable(Float)) }
          attr_reader :videos_removed_from_playlists

          sig { params(videos_removed_from_playlists: Float).void }
          attr_writer :videos_removed_from_playlists

          sig do
            params(
              comments: Float,
              dislikes: Float,
              likes: Float,
              views: Float,
              annotation_clickable_impressions: Float,
              annotation_clicks: Float,
              annotation_click_through_rate: Float,
              annotation_closable_impressions: Float,
              annotation_close_rate: Float,
              annotation_closes: Float,
              annotation_impressions: Float,
              average_view_duration: Float,
              average_view_percentage: Float,
              card_click_rate: Float,
              card_clicks: Float,
              card_impressions: Float,
              card_teaser_click_rate: Float,
              card_teaser_clicks: Float,
              card_teaser_impressions: Float,
              engaged_views: Float,
              estimated_minutes_watched: Float,
              estimated_red_minutes_watched: Float,
              red_views: Float,
              shares: Float,
              subscribers_gained: Float,
              subscribers_lost: Float,
              videos_added_to_playlists: Float,
              videos_removed_from_playlists: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Number of comments on the video
            comments:,
            # Number of dislikes on the video
            dislikes:,
            # Number of likes on the video
            likes:,
            # Number of views on the video
            views:,
            # Number of clickable annotation impressions
            annotation_clickable_impressions: nil,
            # Number of annotation clicks
            annotation_clicks: nil,
            # Annotation click-through rate
            annotation_click_through_rate: nil,
            # Number of closable annotation impressions
            annotation_closable_impressions: nil,
            # Annotation close rate
            annotation_close_rate: nil,
            # Number of annotation closes
            annotation_closes: nil,
            # Number of annotation impressions
            annotation_impressions: nil,
            # Average view duration in seconds
            average_view_duration: nil,
            # Average percentage of the video watched
            average_view_percentage: nil,
            # Card click-through rate
            card_click_rate: nil,
            # Number of card clicks
            card_clicks: nil,
            # Number of card impressions
            card_impressions: nil,
            # Card teaser click-through rate
            card_teaser_click_rate: nil,
            # Number of card teaser clicks
            card_teaser_clicks: nil,
            # Number of card teaser impressions
            card_teaser_impressions: nil,
            # Number of engaged views
            engaged_views: nil,
            # Estimated minutes watched
            estimated_minutes_watched: nil,
            # Estimated minutes watched by YouTube Premium (Red) members
            estimated_red_minutes_watched: nil,
            # Number of views from YouTube Premium (Red) members
            red_views: nil,
            # Number of shares
            shares: nil,
            # Subscribers gained
            subscribers_gained: nil,
            # Subscribers lost
            subscribers_lost: nil,
            # Number of times the video was added to playlists
            videos_added_to_playlists: nil,
            # Number of times the video was removed from playlists
            videos_removed_from_playlists: nil
          )
          end

          sig do
            override.returns(
              {
                comments: Float,
                dislikes: Float,
                likes: Float,
                views: Float,
                annotation_clickable_impressions: Float,
                annotation_clicks: Float,
                annotation_click_through_rate: Float,
                annotation_closable_impressions: Float,
                annotation_close_rate: Float,
                annotation_closes: Float,
                annotation_impressions: Float,
                average_view_duration: Float,
                average_view_percentage: Float,
                card_click_rate: Float,
                card_clicks: Float,
                card_impressions: Float,
                card_teaser_click_rate: Float,
                card_teaser_clicks: Float,
                card_teaser_impressions: Float,
                engaged_views: Float,
                estimated_minutes_watched: Float,
                estimated_red_minutes_watched: Float,
                red_views: Float,
                shares: Float,
                subscribers_gained: Float,
                subscribers_lost: Float,
                videos_added_to_playlists: Float,
                videos_removed_from_playlists: Float
              }
            )
          end
          def to_hash
          end
        end

        class FacebookPostMetricsDto < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto,
                PostForMe::Internal::AnyHash
              )
            end

          # Total activity breakdown by action type
          sig do
            returns(
              T.nilable(
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionType
                ]
              )
            )
          end
          attr_reader :activity_by_action_type

          sig do
            params(
              activity_by_action_type:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionType::OrHash
                ]
            ).void
          end
          attr_writer :activity_by_action_type

          # Unique users activity breakdown by action type
          sig do
            returns(
              T.nilable(
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionTypeUnique
                ]
              )
            )
          end
          attr_reader :activity_by_action_type_unique

          sig do
            params(
              activity_by_action_type_unique:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionTypeUnique::OrHash
                ]
            ).void
          end
          attr_writer :activity_by_action_type_unique

          # Number of comments (from post object)
          sig { returns(T.nilable(Float)) }
          attr_reader :comments

          sig { params(comments: Float).void }
          attr_writer :comments

          # Number of fans who saw the post
          sig { returns(T.nilable(Float)) }
          attr_reader :fan_reach

          sig { params(fan_reach: Float).void }
          attr_writer :fan_reach

          # Number of times the photo or video was viewed
          sig { returns(T.nilable(Float)) }
          attr_reader :media_views

          sig { params(media_views: Float).void }
          attr_writer :media_views

          # Number of people who saw the post via non-viral distribution
          sig { returns(T.nilable(Float)) }
          attr_reader :nonviral_reach

          sig { params(nonviral_reach: Float).void }
          attr_writer :nonviral_reach

          # Number of people who saw the post via organic distribution
          sig { returns(T.nilable(Float)) }
          attr_reader :organic_reach

          sig { params(organic_reach: Float).void }
          attr_writer :organic_reach

          # Number of people who saw the post via paid distribution
          sig { returns(T.nilable(Float)) }
          attr_reader :paid_reach

          sig { params(paid_reach: Float).void }
          attr_writer :paid_reach

          # Total number of unique people who saw the post
          sig { returns(T.nilable(Float)) }
          attr_reader :reach

          sig { params(reach: Float).void }
          attr_writer :reach

          # Number of anger reactions
          sig { returns(T.nilable(Float)) }
          attr_reader :reactions_anger

          sig { params(reactions_anger: Float).void }
          attr_writer :reactions_anger

          # Breakdown of all reaction types
          sig { returns(T.nilable(T.anything)) }
          attr_reader :reactions_by_type

          sig { params(reactions_by_type: T.anything).void }
          attr_writer :reactions_by_type

          # Number of haha reactions
          sig { returns(T.nilable(Float)) }
          attr_reader :reactions_haha

          sig { params(reactions_haha: Float).void }
          attr_writer :reactions_haha

          # Number of like reactions
          sig { returns(T.nilable(Float)) }
          attr_reader :reactions_like

          sig { params(reactions_like: Float).void }
          attr_writer :reactions_like

          # Number of love reactions
          sig { returns(T.nilable(Float)) }
          attr_reader :reactions_love

          sig { params(reactions_love: Float).void }
          attr_writer :reactions_love

          # Number of sad reactions
          sig { returns(T.nilable(Float)) }
          attr_reader :reactions_sorry

          sig { params(reactions_sorry: Float).void }
          attr_writer :reactions_sorry

          # Total number of reactions (all types)
          sig { returns(T.nilable(Float)) }
          attr_reader :reactions_total

          sig { params(reactions_total: Float).void }
          attr_writer :reactions_total

          # Number of wow reactions
          sig { returns(T.nilable(Float)) }
          attr_reader :reactions_wow

          sig { params(reactions_wow: Float).void }
          attr_writer :reactions_wow

          # Number of shares (from post object)
          sig { returns(T.nilable(Float)) }
          attr_reader :shares

          sig { params(shares: Float).void }
          attr_writer :shares

          # Average time video was viewed in milliseconds
          sig { returns(T.nilable(Float)) }
          attr_reader :video_avg_time_watched

          sig { params(video_avg_time_watched: Float).void }
          attr_writer :video_avg_time_watched

          # Number of times video was viewed to 95% organically
          sig { returns(T.nilable(Float)) }
          attr_reader :video_complete_views_organic

          sig { params(video_complete_views_organic: Float).void }
          attr_writer :video_complete_views_organic

          # Number of unique people who viewed video to 95% organically
          sig { returns(T.nilable(Float)) }
          attr_reader :video_complete_views_organic_unique

          sig { params(video_complete_views_organic_unique: Float).void }
          attr_writer :video_complete_views_organic_unique

          # Number of times video was viewed to 95% via paid distribution
          sig { returns(T.nilable(Float)) }
          attr_reader :video_complete_views_paid

          sig { params(video_complete_views_paid: Float).void }
          attr_writer :video_complete_views_paid

          # Number of unique people who viewed video to 95% via paid distribution
          sig { returns(T.nilable(Float)) }
          attr_reader :video_complete_views_paid_unique

          sig { params(video_complete_views_paid_unique: Float).void }
          attr_writer :video_complete_views_paid_unique

          # Length of the video in milliseconds
          sig { returns(T.nilable(Float)) }
          attr_reader :video_length

          sig { params(video_length: Float).void }
          attr_writer :video_length

          # Video retention graph for autoplayed views
          sig do
            returns(
              T.nilable(
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphAutoplayed
                ]
              )
            )
          end
          attr_reader :video_retention_graph_autoplayed

          sig do
            params(
              video_retention_graph_autoplayed:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphAutoplayed::OrHash
                ]
            ).void
          end
          attr_writer :video_retention_graph_autoplayed

          # Video retention graph for clicked-to-play views
          sig do
            returns(
              T.nilable(
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphClickedToPlay
                ]
              )
            )
          end
          attr_reader :video_retention_graph_clicked_to_play

          sig do
            params(
              video_retention_graph_clicked_to_play:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphClickedToPlay::OrHash
                ]
            ).void
          end
          attr_writer :video_retention_graph_clicked_to_play

          # Number of unique people who performed social actions on the video
          sig { returns(T.nilable(Float)) }
          attr_reader :video_social_actions_unique

          sig { params(video_social_actions_unique: Float).void }
          attr_writer :video_social_actions_unique

          # Total time video was viewed in milliseconds
          sig { returns(T.nilable(Float)) }
          attr_reader :video_view_time

          sig { params(video_view_time: Float).void }
          attr_writer :video_view_time

          # Video view time breakdown by age and gender
          sig do
            returns(
              T.nilable(
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByAgeGender
                ]
              )
            )
          end
          attr_reader :video_view_time_by_age_gender

          sig do
            params(
              video_view_time_by_age_gender:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByAgeGender::OrHash
                ]
            ).void
          end
          attr_writer :video_view_time_by_age_gender

          # Video view time breakdown by country
          sig do
            returns(
              T.nilable(
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByCountry
                ]
              )
            )
          end
          attr_reader :video_view_time_by_country

          sig do
            params(
              video_view_time_by_country:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByCountry::OrHash
                ]
            ).void
          end
          attr_writer :video_view_time_by_country

          # Video view time breakdown by distribution type
          sig { returns(T.nilable(T.anything)) }
          attr_reader :video_view_time_by_distribution_type

          sig { params(video_view_time_by_distribution_type: T.anything).void }
          attr_writer :video_view_time_by_distribution_type

          # Video view time breakdown by region
          sig do
            returns(
              T.nilable(
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByRegion
                ]
              )
            )
          end
          attr_reader :video_view_time_by_region

          sig do
            params(
              video_view_time_by_region:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByRegion::OrHash
                ]
            ).void
          end
          attr_writer :video_view_time_by_region

          # Total time video was viewed in milliseconds via organic distribution
          sig { returns(T.nilable(Float)) }
          attr_reader :video_view_time_organic

          sig { params(video_view_time_organic: Float).void }
          attr_writer :video_view_time_organic

          # Number of times video was viewed for 3+ seconds
          sig { returns(T.nilable(Float)) }
          attr_reader :video_views

          sig { params(video_views: Float).void }
          attr_writer :video_views

          # Number of times video was viewed for 15+ seconds
          sig { returns(T.nilable(Float)) }
          attr_reader :video_views_15s

          sig { params(video_views_15s: Float).void }
          attr_writer :video_views_15s

          # Number of times video was viewed for 60+ seconds (excludes videos shorter than
          # 60s)
          sig { returns(T.nilable(Float)) }
          attr_reader :video_views_60s

          sig { params(video_views_60s: Float).void }
          attr_writer :video_views_60s

          # Number of times video was autoplayed for 3+ seconds
          sig { returns(T.nilable(Float)) }
          attr_reader :video_views_autoplayed

          sig { params(video_views_autoplayed: Float).void }
          attr_writer :video_views_autoplayed

          # Video views breakdown by distribution type
          sig { returns(T.nilable(T.anything)) }
          attr_reader :video_views_by_distribution_type

          sig { params(video_views_by_distribution_type: T.anything).void }
          attr_writer :video_views_by_distribution_type

          # Number of times video was clicked to play for 3+ seconds
          sig { returns(T.nilable(Float)) }
          attr_reader :video_views_clicked_to_play

          sig { params(video_views_clicked_to_play: Float).void }
          attr_writer :video_views_clicked_to_play

          # Number of times video was viewed for 3+ seconds organically
          sig { returns(T.nilable(Float)) }
          attr_reader :video_views_organic

          sig { params(video_views_organic: Float).void }
          attr_writer :video_views_organic

          # Number of unique people who viewed the video for 3+ seconds organically
          sig { returns(T.nilable(Float)) }
          attr_reader :video_views_organic_unique

          sig { params(video_views_organic_unique: Float).void }
          attr_writer :video_views_organic_unique

          # Number of times video was viewed for 3+ seconds via paid distribution
          sig { returns(T.nilable(Float)) }
          attr_reader :video_views_paid

          sig { params(video_views_paid: Float).void }
          attr_writer :video_views_paid

          # Number of unique people who viewed the video for 3+ seconds via paid
          # distribution
          sig { returns(T.nilable(Float)) }
          attr_reader :video_views_paid_unique

          sig { params(video_views_paid_unique: Float).void }
          attr_writer :video_views_paid_unique

          # Number of times video was viewed with sound on
          sig { returns(T.nilable(Float)) }
          attr_reader :video_views_sound_on

          sig { params(video_views_sound_on: Float).void }
          attr_writer :video_views_sound_on

          # Number of unique people who viewed the video for 3+ seconds
          sig { returns(T.nilable(Float)) }
          attr_reader :video_views_unique

          sig { params(video_views_unique: Float).void }
          attr_writer :video_views_unique

          # Number of people who saw the post in News Feed via viral reach
          sig { returns(T.nilable(Float)) }
          attr_reader :viral_reach

          sig { params(viral_reach: Float).void }
          attr_writer :viral_reach

          sig do
            params(
              activity_by_action_type:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionType::OrHash
                ],
              activity_by_action_type_unique:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionTypeUnique::OrHash
                ],
              comments: Float,
              fan_reach: Float,
              media_views: Float,
              nonviral_reach: Float,
              organic_reach: Float,
              paid_reach: Float,
              reach: Float,
              reactions_anger: Float,
              reactions_by_type: T.anything,
              reactions_haha: Float,
              reactions_like: Float,
              reactions_love: Float,
              reactions_sorry: Float,
              reactions_total: Float,
              reactions_wow: Float,
              shares: Float,
              video_avg_time_watched: Float,
              video_complete_views_organic: Float,
              video_complete_views_organic_unique: Float,
              video_complete_views_paid: Float,
              video_complete_views_paid_unique: Float,
              video_length: Float,
              video_retention_graph_autoplayed:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphAutoplayed::OrHash
                ],
              video_retention_graph_clicked_to_play:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphClickedToPlay::OrHash
                ],
              video_social_actions_unique: Float,
              video_view_time: Float,
              video_view_time_by_age_gender:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByAgeGender::OrHash
                ],
              video_view_time_by_country:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByCountry::OrHash
                ],
              video_view_time_by_distribution_type: T.anything,
              video_view_time_by_region:
                T::Array[
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByRegion::OrHash
                ],
              video_view_time_organic: Float,
              video_views: Float,
              video_views_15s: Float,
              video_views_60s: Float,
              video_views_autoplayed: Float,
              video_views_by_distribution_type: T.anything,
              video_views_clicked_to_play: Float,
              video_views_organic: Float,
              video_views_organic_unique: Float,
              video_views_paid: Float,
              video_views_paid_unique: Float,
              video_views_sound_on: Float,
              video_views_unique: Float,
              viral_reach: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Total activity breakdown by action type
            activity_by_action_type: nil,
            # Unique users activity breakdown by action type
            activity_by_action_type_unique: nil,
            # Number of comments (from post object)
            comments: nil,
            # Number of fans who saw the post
            fan_reach: nil,
            # Number of times the photo or video was viewed
            media_views: nil,
            # Number of people who saw the post via non-viral distribution
            nonviral_reach: nil,
            # Number of people who saw the post via organic distribution
            organic_reach: nil,
            # Number of people who saw the post via paid distribution
            paid_reach: nil,
            # Total number of unique people who saw the post
            reach: nil,
            # Number of anger reactions
            reactions_anger: nil,
            # Breakdown of all reaction types
            reactions_by_type: nil,
            # Number of haha reactions
            reactions_haha: nil,
            # Number of like reactions
            reactions_like: nil,
            # Number of love reactions
            reactions_love: nil,
            # Number of sad reactions
            reactions_sorry: nil,
            # Total number of reactions (all types)
            reactions_total: nil,
            # Number of wow reactions
            reactions_wow: nil,
            # Number of shares (from post object)
            shares: nil,
            # Average time video was viewed in milliseconds
            video_avg_time_watched: nil,
            # Number of times video was viewed to 95% organically
            video_complete_views_organic: nil,
            # Number of unique people who viewed video to 95% organically
            video_complete_views_organic_unique: nil,
            # Number of times video was viewed to 95% via paid distribution
            video_complete_views_paid: nil,
            # Number of unique people who viewed video to 95% via paid distribution
            video_complete_views_paid_unique: nil,
            # Length of the video in milliseconds
            video_length: nil,
            # Video retention graph for autoplayed views
            video_retention_graph_autoplayed: nil,
            # Video retention graph for clicked-to-play views
            video_retention_graph_clicked_to_play: nil,
            # Number of unique people who performed social actions on the video
            video_social_actions_unique: nil,
            # Total time video was viewed in milliseconds
            video_view_time: nil,
            # Video view time breakdown by age and gender
            video_view_time_by_age_gender: nil,
            # Video view time breakdown by country
            video_view_time_by_country: nil,
            # Video view time breakdown by distribution type
            video_view_time_by_distribution_type: nil,
            # Video view time breakdown by region
            video_view_time_by_region: nil,
            # Total time video was viewed in milliseconds via organic distribution
            video_view_time_organic: nil,
            # Number of times video was viewed for 3+ seconds
            video_views: nil,
            # Number of times video was viewed for 15+ seconds
            video_views_15s: nil,
            # Number of times video was viewed for 60+ seconds (excludes videos shorter than
            # 60s)
            video_views_60s: nil,
            # Number of times video was autoplayed for 3+ seconds
            video_views_autoplayed: nil,
            # Video views breakdown by distribution type
            video_views_by_distribution_type: nil,
            # Number of times video was clicked to play for 3+ seconds
            video_views_clicked_to_play: nil,
            # Number of times video was viewed for 3+ seconds organically
            video_views_organic: nil,
            # Number of unique people who viewed the video for 3+ seconds organically
            video_views_organic_unique: nil,
            # Number of times video was viewed for 3+ seconds via paid distribution
            video_views_paid: nil,
            # Number of unique people who viewed the video for 3+ seconds via paid
            # distribution
            video_views_paid_unique: nil,
            # Number of times video was viewed with sound on
            video_views_sound_on: nil,
            # Number of unique people who viewed the video for 3+ seconds
            video_views_unique: nil,
            # Number of people who saw the post in News Feed via viral reach
            viral_reach: nil
          )
          end

          sig do
            override.returns(
              {
                activity_by_action_type:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionType
                  ],
                activity_by_action_type_unique:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionTypeUnique
                  ],
                comments: Float,
                fan_reach: Float,
                media_views: Float,
                nonviral_reach: Float,
                organic_reach: Float,
                paid_reach: Float,
                reach: Float,
                reactions_anger: Float,
                reactions_by_type: T.anything,
                reactions_haha: Float,
                reactions_like: Float,
                reactions_love: Float,
                reactions_sorry: Float,
                reactions_total: Float,
                reactions_wow: Float,
                shares: Float,
                video_avg_time_watched: Float,
                video_complete_views_organic: Float,
                video_complete_views_organic_unique: Float,
                video_complete_views_paid: Float,
                video_complete_views_paid_unique: Float,
                video_length: Float,
                video_retention_graph_autoplayed:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphAutoplayed
                  ],
                video_retention_graph_clicked_to_play:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphClickedToPlay
                  ],
                video_social_actions_unique: Float,
                video_view_time: Float,
                video_view_time_by_age_gender:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByAgeGender
                  ],
                video_view_time_by_country:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByCountry
                  ],
                video_view_time_by_distribution_type: T.anything,
                video_view_time_by_region:
                  T::Array[
                    PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByRegion
                  ],
                video_view_time_organic: Float,
                video_views: Float,
                video_views_15s: Float,
                video_views_60s: Float,
                video_views_autoplayed: Float,
                video_views_by_distribution_type: T.anything,
                video_views_clicked_to_play: Float,
                video_views_organic: Float,
                video_views_organic_unique: Float,
                video_views_paid: Float,
                video_views_paid_unique: Float,
                video_views_sound_on: Float,
                video_views_unique: Float,
                viral_reach: Float
              }
            )
          end
          def to_hash
          end

          class ActivityByActionType < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionType,
                  PostForMe::Internal::AnyHash
                )
              end

            # Action type (e.g., like, comment, share)
            sig { returns(String) }
            attr_accessor :action_type

            # Number of actions
            sig { returns(Float) }
            attr_accessor :value

            sig do
              params(action_type: String, value: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Action type (e.g., like, comment, share)
              action_type:,
              # Number of actions
              value:
            )
            end

            sig { override.returns({ action_type: String, value: Float }) }
            def to_hash
            end
          end

          class ActivityByActionTypeUnique < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionTypeUnique,
                  PostForMe::Internal::AnyHash
                )
              end

            # Action type (e.g., like, comment, share)
            sig { returns(String) }
            attr_accessor :action_type

            # Number of actions
            sig { returns(Float) }
            attr_accessor :value

            sig do
              params(action_type: String, value: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Action type (e.g., like, comment, share)
              action_type:,
              # Number of actions
              value:
            )
            end

            sig { override.returns({ action_type: String, value: Float }) }
            def to_hash
            end
          end

          class VideoRetentionGraphAutoplayed < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphAutoplayed,
                  PostForMe::Internal::AnyHash
                )
              end

            # Percentage of viewers at this time
            sig { returns(Float) }
            attr_accessor :rate

            # Time in seconds
            sig { returns(Float) }
            attr_accessor :time

            sig { params(rate: Float, time: Float).returns(T.attached_class) }
            def self.new(
              # Percentage of viewers at this time
              rate:,
              # Time in seconds
              time:
            )
            end

            sig { override.returns({ rate: Float, time: Float }) }
            def to_hash
            end
          end

          class VideoRetentionGraphClickedToPlay < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphClickedToPlay,
                  PostForMe::Internal::AnyHash
                )
              end

            # Percentage of viewers at this time
            sig { returns(Float) }
            attr_accessor :rate

            # Time in seconds
            sig { returns(Float) }
            attr_accessor :time

            sig { params(rate: Float, time: Float).returns(T.attached_class) }
            def self.new(
              # Percentage of viewers at this time
              rate:,
              # Time in seconds
              time:
            )
            end

            sig { override.returns({ rate: Float, time: Float }) }
            def to_hash
            end
          end

          class VideoViewTimeByAgeGender < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByAgeGender,
                  PostForMe::Internal::AnyHash
                )
              end

            # Demographic key (e.g., age_gender, region, country)
            sig { returns(String) }
            attr_accessor :key

            # Total view time in milliseconds
            sig { returns(Float) }
            attr_accessor :value

            sig { params(key: String, value: Float).returns(T.attached_class) }
            def self.new(
              # Demographic key (e.g., age_gender, region, country)
              key:,
              # Total view time in milliseconds
              value:
            )
            end

            sig { override.returns({ key: String, value: Float }) }
            def to_hash
            end
          end

          class VideoViewTimeByCountry < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByCountry,
                  PostForMe::Internal::AnyHash
                )
              end

            # Demographic key (e.g., age_gender, region, country)
            sig { returns(String) }
            attr_accessor :key

            # Total view time in milliseconds
            sig { returns(Float) }
            attr_accessor :value

            sig { params(key: String, value: Float).returns(T.attached_class) }
            def self.new(
              # Demographic key (e.g., age_gender, region, country)
              key:,
              # Total view time in milliseconds
              value:
            )
            end

            sig { override.returns({ key: String, value: Float }) }
            def to_hash
            end
          end

          class VideoViewTimeByRegion < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByRegion,
                  PostForMe::Internal::AnyHash
                )
              end

            # Demographic key (e.g., age_gender, region, country)
            sig { returns(String) }
            attr_accessor :key

            # Total view time in milliseconds
            sig { returns(Float) }
            attr_accessor :value

            sig { params(key: String, value: Float).returns(T.attached_class) }
            def self.new(
              # Demographic key (e.g., age_gender, region, country)
              key:,
              # Total view time in milliseconds
              value:
            )
            end

            sig { override.returns({ key: String, value: Float }) }
            def to_hash
            end
          end
        end

        class TwitterPostMetricsDto < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto,
                PostForMe::Internal::AnyHash
              )
            end

          # Non-public metrics for the Tweet (available to the Tweet owner or advertisers)
          sig do
            returns(
              T.nilable(
                PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::NonPublicMetrics
              )
            )
          end
          attr_reader :non_public_metrics

          sig do
            params(
              non_public_metrics:
                PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::NonPublicMetrics::OrHash
            ).void
          end
          attr_writer :non_public_metrics

          # Organic metrics for the Tweet (available to the Tweet owner)
          sig do
            returns(
              T.nilable(
                PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::OrganicMetrics
              )
            )
          end
          attr_reader :organic_metrics

          sig do
            params(
              organic_metrics:
                PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::OrganicMetrics::OrHash
            ).void
          end
          attr_writer :organic_metrics

          # Publicly available metrics for the Tweet
          sig do
            returns(
              T.nilable(
                PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::PublicMetrics
              )
            )
          end
          attr_reader :public_metrics

          sig do
            params(
              public_metrics:
                PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::PublicMetrics::OrHash
            ).void
          end
          attr_writer :public_metrics

          sig do
            params(
              non_public_metrics:
                PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::NonPublicMetrics::OrHash,
              organic_metrics:
                PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::OrganicMetrics::OrHash,
              public_metrics:
                PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::PublicMetrics::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Non-public metrics for the Tweet (available to the Tweet owner or advertisers)
            non_public_metrics: nil,
            # Organic metrics for the Tweet (available to the Tweet owner)
            organic_metrics: nil,
            # Publicly available metrics for the Tweet
            public_metrics: nil
          )
          end

          sig do
            override.returns(
              {
                non_public_metrics:
                  PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::NonPublicMetrics,
                organic_metrics:
                  PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::OrganicMetrics,
                public_metrics:
                  PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::PublicMetrics
              }
            )
          end
          def to_hash
          end

          class NonPublicMetrics < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::NonPublicMetrics,
                  PostForMe::Internal::AnyHash
                )
              end

            # Number of times this Tweet has been viewed via promoted distribution
            sig { returns(Float) }
            attr_accessor :impression_count

            # Number of clicks on links in this Tweet via promoted distribution
            sig { returns(Float) }
            attr_accessor :url_link_clicks

            # Number of clicks on the author's profile via promoted distribution
            sig { returns(Float) }
            attr_accessor :user_profile_clicks

            # Non-public metrics for the Tweet (available to the Tweet owner or advertisers)
            sig do
              params(
                impression_count: Float,
                url_link_clicks: Float,
                user_profile_clicks: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Number of times this Tweet has been viewed via promoted distribution
              impression_count:,
              # Number of clicks on links in this Tweet via promoted distribution
              url_link_clicks:,
              # Number of clicks on the author's profile via promoted distribution
              user_profile_clicks:
            )
            end

            sig do
              override.returns(
                {
                  impression_count: Float,
                  url_link_clicks: Float,
                  user_profile_clicks: Float
                }
              )
            end
            def to_hash
            end
          end

          class OrganicMetrics < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::OrganicMetrics,
                  PostForMe::Internal::AnyHash
                )
              end

            # Number of times this Tweet has been viewed organically
            sig { returns(Float) }
            attr_accessor :impression_count

            # Number of Likes of this Tweet from organic distribution
            sig { returns(Float) }
            attr_accessor :like_count

            # Number of Replies of this Tweet from organic distribution
            sig { returns(Float) }
            attr_accessor :reply_count

            # Number of Retweets of this Tweet from organic distribution
            sig { returns(Float) }
            attr_accessor :retweet_count

            # Number of clicks on links in this Tweet from organic distribution
            sig { returns(Float) }
            attr_accessor :url_link_clicks

            # Number of clicks on the author's profile from organic distribution
            sig { returns(Float) }
            attr_accessor :user_profile_clicks

            # Organic metrics for the Tweet (available to the Tweet owner)
            sig do
              params(
                impression_count: Float,
                like_count: Float,
                reply_count: Float,
                retweet_count: Float,
                url_link_clicks: Float,
                user_profile_clicks: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Number of times this Tweet has been viewed organically
              impression_count:,
              # Number of Likes of this Tweet from organic distribution
              like_count:,
              # Number of Replies of this Tweet from organic distribution
              reply_count:,
              # Number of Retweets of this Tweet from organic distribution
              retweet_count:,
              # Number of clicks on links in this Tweet from organic distribution
              url_link_clicks:,
              # Number of clicks on the author's profile from organic distribution
              user_profile_clicks:
            )
            end

            sig do
              override.returns(
                {
                  impression_count: Float,
                  like_count: Float,
                  reply_count: Float,
                  retweet_count: Float,
                  url_link_clicks: Float,
                  user_profile_clicks: Float
                }
              )
            end
            def to_hash
            end
          end

          class PublicMetrics < PostForMe::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::PublicMetrics,
                  PostForMe::Internal::AnyHash
                )
              end

            # Number of times this Tweet has been bookmarked
            sig { returns(Float) }
            attr_accessor :bookmark_count

            # Number of times this Tweet has been viewed
            sig { returns(Float) }
            attr_accessor :impression_count

            # Number of Likes of this Tweet
            sig { returns(Float) }
            attr_accessor :like_count

            # Number of Quotes of this Tweet
            sig { returns(Float) }
            attr_accessor :quote_count

            # Number of Replies of this Tweet
            sig { returns(Float) }
            attr_accessor :reply_count

            # Number of Retweets of this Tweet
            sig { returns(Float) }
            attr_accessor :retweet_count

            # Publicly available metrics for the Tweet
            sig do
              params(
                bookmark_count: Float,
                impression_count: Float,
                like_count: Float,
                quote_count: Float,
                reply_count: Float,
                retweet_count: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Number of times this Tweet has been bookmarked
              bookmark_count:,
              # Number of times this Tweet has been viewed
              impression_count:,
              # Number of Likes of this Tweet
              like_count:,
              # Number of Quotes of this Tweet
              quote_count:,
              # Number of Replies of this Tweet
              reply_count:,
              # Number of Retweets of this Tweet
              retweet_count:
            )
            end

            sig do
              override.returns(
                {
                  bookmark_count: Float,
                  impression_count: Float,
                  like_count: Float,
                  quote_count: Float,
                  reply_count: Float,
                  retweet_count: Float
                }
              )
            end
            def to_hash
            end
          end
        end

        class ThreadsPostMetricsDto < PostForMe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PostForMe::PlatformPost::Metrics::ThreadsPostMetricsDto,
                PostForMe::Internal::AnyHash
              )
            end

          # Number of likes on the post
          sig { returns(Float) }
          attr_accessor :likes

          # Number of quotes of the post
          sig { returns(Float) }
          attr_accessor :quotes

          # Number of replies on the post
          sig { returns(Float) }
          attr_accessor :replies

          # Number of reposts of the post
          sig { returns(Float) }
          attr_accessor :reposts

          # Number of shares of the post
          sig { returns(Float) }
          attr_accessor :shares

          # Number of views on the post
          sig { returns(Float) }
          attr_accessor :views

          sig do
            params(
              likes: Float,
              quotes: Float,
              replies: Float,
              reposts: Float,
              shares: Float,
              views: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Number of likes on the post
            likes:,
            # Number of quotes of the post
            quotes:,
            # Number of replies on the post
            replies:,
            # Number of reposts of the post
            reposts:,
            # Number of shares of the post
            shares:,
            # Number of views on the post
            views:
          )
          end

          sig do
            override.returns(
              {
                likes: Float,
                quotes: Float,
                replies: Float,
                reposts: Float,
                shares: Float,
                views: Float
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(T::Array[PostForMe::PlatformPost::Metrics::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
