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
              PostForMe::PlatformPost::Metrics::YouTubePostMetricsDto::OrHash
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
              PostForMe::PlatformPost::Metrics::YouTubePostMetricsDto::OrHash
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
              PostForMe::PlatformPost::Metrics::YouTubePostMetricsDto
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

        sig do
          override.returns(T::Array[PostForMe::PlatformPost::Metrics::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
