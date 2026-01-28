# frozen_string_literal: true

module PostForMe
  module Models
    class PlatformPost < PostForMe::Internal::Type::BaseModel
      # @!attribute caption
      #   Caption or text content of the post
      #
      #   @return [String]
      required :caption, String

      # @!attribute media
      #   Array of media items attached to the post
      #
      #   @return [Array<Array<Object>>]
      required :media,
               PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::ArrayOf[PostForMe::Internal::Type::Unknown]]

      # @!attribute platform
      #   Social media platform name
      #
      #   @return [String]
      required :platform, String

      # @!attribute platform_account_id
      #   Platform-specific account ID
      #
      #   @return [String]
      required :platform_account_id, String

      # @!attribute platform_post_id
      #   Platform-specific post ID
      #
      #   @return [String]
      required :platform_post_id, String

      # @!attribute platform_url
      #   URL to the post on the platform
      #
      #   @return [String]
      required :platform_url, String

      # @!attribute social_account_id
      #   ID of the social account
      #
      #   @return [String]
      required :social_account_id, String

      # @!attribute external_account_id
      #   External account ID from the platform
      #
      #   @return [String, nil]
      optional :external_account_id, String, nil?: true

      # @!attribute external_post_id
      #   External post ID from the platform
      #
      #   @return [String, nil]
      optional :external_post_id, String, nil?: true

      # @!attribute metrics
      #   Post metrics and analytics data
      #
      #   @return [PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto, PostForMe::Models::PlatformPost::Metrics::TikTokPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::InstagramPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::YouTubePostMetricsDto, PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::TwitterPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::ThreadsPostMetricsDto, Object, nil]
      optional :metrics, union: -> { PostForMe::PlatformPost::Metrics }

      # @!attribute posted_at
      #   Date the post was published
      #
      #   @return [Time, nil]
      optional :posted_at, Time

      # @!attribute social_post_id
      #   ID of the social post
      #
      #   @return [String, nil]
      optional :social_post_id, String, nil?: true

      # @!attribute social_post_result_id
      #   ID of the social post result
      #
      #   @return [String, nil]
      optional :social_post_result_id, String, nil?: true

      # @!method initialize(caption:, media:, platform:, platform_account_id:, platform_post_id:, platform_url:, social_account_id:, external_account_id: nil, external_post_id: nil, metrics: nil, posted_at: nil, social_post_id: nil, social_post_result_id: nil)
      #   @param caption [String] Caption or text content of the post
      #
      #   @param media [Array<Array<Object>>] Array of media items attached to the post
      #
      #   @param platform [String] Social media platform name
      #
      #   @param platform_account_id [String] Platform-specific account ID
      #
      #   @param platform_post_id [String] Platform-specific post ID
      #
      #   @param platform_url [String] URL to the post on the platform
      #
      #   @param social_account_id [String] ID of the social account
      #
      #   @param external_account_id [String, nil] External account ID from the platform
      #
      #   @param external_post_id [String, nil] External post ID from the platform
      #
      #   @param metrics [PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto, PostForMe::Models::PlatformPost::Metrics::TikTokPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::InstagramPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::YouTubePostMetricsDto, PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::TwitterPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::ThreadsPostMetricsDto, Object] Post metrics and analytics data
      #
      #   @param posted_at [Time] Date the post was published
      #
      #   @param social_post_id [String, nil] ID of the social post
      #
      #   @param social_post_result_id [String, nil] ID of the social post result

      # Post metrics and analytics data
      #
      # @see PostForMe::Models::PlatformPost#metrics
      module Metrics
        extend PostForMe::Internal::Type::Union

        variant -> { PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto }

        variant -> { PostForMe::PlatformPost::Metrics::TikTokPostMetricsDto }

        variant -> { PostForMe::PlatformPost::Metrics::InstagramPostMetricsDto }

        variant -> { PostForMe::PlatformPost::Metrics::YouTubePostMetricsDto }

        variant -> { PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto }

        variant -> { PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto }

        variant -> { PostForMe::PlatformPost::Metrics::ThreadsPostMetricsDto }

        variant PostForMe::Internal::Type::Unknown

        class TikTokBusinessMetricsDto < PostForMe::Internal::Type::BaseModel
          # @!attribute address_clicks
          #   Number of address clicks
          #
          #   @return [Float]
          required :address_clicks, Float

          # @!attribute app_download_clicks
          #   Number of app download clicks
          #
          #   @return [Float]
          required :app_download_clicks, Float

          # @!attribute audience_cities
          #   Audience cities breakdown
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCity>]
          required :audience_cities,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCity] }

          # @!attribute audience_countries
          #   Audience countries breakdown
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCountry>]
          required :audience_countries,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCountry] }

          # @!attribute audience_genders
          #   Audience genders breakdown
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceGender>]
          required :audience_genders,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceGender] }

          # @!attribute audience_types
          #   Audience types breakdown
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceType>]
          required :audience_types,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceType] }

          # @!attribute average_time_watched
          #   Average time watched in seconds
          #
          #   @return [Float]
          required :average_time_watched, Float

          # @!attribute comments
          #   Number of comments on the post
          #
          #   @return [Float]
          required :comments, Float

          # @!attribute email_clicks
          #   Number of email clicks
          #
          #   @return [Float]
          required :email_clicks, Float

          # @!attribute engagement_likes
          #   Engagement likes data by percentage and time
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::EngagementLike>]
          required :engagement_likes,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::EngagementLike] }

          # @!attribute favorites
          #   Number of favorites on the post
          #
          #   @return [Float]
          required :favorites, Float

          # @!attribute full_video_watched_rate
          #   Rate of full video watches as a percentage
          #
          #   @return [Float]
          required :full_video_watched_rate, Float

          # @!attribute impression_sources
          #   Impression sources breakdown
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::ImpressionSource>]
          required :impression_sources,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::ImpressionSource] }

          # @!attribute lead_submissions
          #   Number of lead submissions
          #
          #   @return [Float]
          required :lead_submissions, Float

          # @!attribute likes
          #   Number of likes on the post
          #
          #   @return [Float]
          required :likes, Float

          # @!attribute new_followers
          #   Number of new followers gained from the post
          #
          #   @return [Float]
          required :new_followers, Float

          # @!attribute phone_number_clicks
          #   Number of phone number clicks
          #
          #   @return [Float]
          required :phone_number_clicks, Float

          # @!attribute profile_views
          #   Number of profile views generated
          #
          #   @return [Float]
          required :profile_views, Float

          # @!attribute reach
          #   Total reach of the post
          #
          #   @return [Float]
          required :reach, Float

          # @!attribute shares
          #   Number of shares on the post
          #
          #   @return [Float]
          required :shares, Float

          # @!attribute total_time_watched
          #   Total time watched in seconds
          #
          #   @return [Float]
          required :total_time_watched, Float

          # @!attribute video_view_retention
          #   Video view retention data by percentage and time
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::VideoViewRetention>]
          required :video_view_retention,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::TikTokBusinessMetricsDto::VideoViewRetention] }

          # @!attribute video_views
          #   Total number of video views
          #
          #   @return [Float]
          required :video_views, Float

          # @!attribute website_clicks
          #   Number of website clicks
          #
          #   @return [Float]
          required :website_clicks, Float

          # @!method initialize(address_clicks:, app_download_clicks:, audience_cities:, audience_countries:, audience_genders:, audience_types:, average_time_watched:, comments:, email_clicks:, engagement_likes:, favorites:, full_video_watched_rate:, impression_sources:, lead_submissions:, likes:, new_followers:, phone_number_clicks:, profile_views:, reach:, shares:, total_time_watched:, video_view_retention:, video_views:, website_clicks:)
          #   @param address_clicks [Float] Number of address clicks
          #
          #   @param app_download_clicks [Float] Number of app download clicks
          #
          #   @param audience_cities [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCity>] Audience cities breakdown
          #
          #   @param audience_countries [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceCountry>] Audience countries breakdown
          #
          #   @param audience_genders [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceGender>] Audience genders breakdown
          #
          #   @param audience_types [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::AudienceType>] Audience types breakdown
          #
          #   @param average_time_watched [Float] Average time watched in seconds
          #
          #   @param comments [Float] Number of comments on the post
          #
          #   @param email_clicks [Float] Number of email clicks
          #
          #   @param engagement_likes [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::EngagementLike>] Engagement likes data by percentage and time
          #
          #   @param favorites [Float] Number of favorites on the post
          #
          #   @param full_video_watched_rate [Float] Rate of full video watches as a percentage
          #
          #   @param impression_sources [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::ImpressionSource>] Impression sources breakdown
          #
          #   @param lead_submissions [Float] Number of lead submissions
          #
          #   @param likes [Float] Number of likes on the post
          #
          #   @param new_followers [Float] Number of new followers gained from the post
          #
          #   @param phone_number_clicks [Float] Number of phone number clicks
          #
          #   @param profile_views [Float] Number of profile views generated
          #
          #   @param reach [Float] Total reach of the post
          #
          #   @param shares [Float] Number of shares on the post
          #
          #   @param total_time_watched [Float] Total time watched in seconds
          #
          #   @param video_view_retention [Array<PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto::VideoViewRetention>] Video view retention data by percentage and time
          #
          #   @param video_views [Float] Total number of video views
          #
          #   @param website_clicks [Float] Number of website clicks

          class AudienceCity < PostForMe::Internal::Type::BaseModel
            # @!attribute city_name
            #   City name
            #
            #   @return [String]
            required :city_name, String

            # @!attribute percentage
            #   Percentage of audience from this city
            #
            #   @return [Float]
            required :percentage, Float

            # @!method initialize(city_name:, percentage:)
            #   @param city_name [String] City name
            #
            #   @param percentage [Float] Percentage of audience from this city
          end

          class AudienceCountry < PostForMe::Internal::Type::BaseModel
            # @!attribute country
            #   Country name
            #
            #   @return [String]
            required :country, String

            # @!attribute percentage
            #   Percentage of audience from this country
            #
            #   @return [Float]
            required :percentage, Float

            # @!method initialize(country:, percentage:)
            #   @param country [String] Country name
            #
            #   @param percentage [Float] Percentage of audience from this country
          end

          class AudienceGender < PostForMe::Internal::Type::BaseModel
            # @!attribute gender
            #   Gender category
            #
            #   @return [String]
            required :gender, String

            # @!attribute percentage
            #   Percentage of audience of this gender
            #
            #   @return [Float]
            required :percentage, Float

            # @!method initialize(gender:, percentage:)
            #   @param gender [String] Gender category
            #
            #   @param percentage [Float] Percentage of audience of this gender
          end

          class AudienceType < PostForMe::Internal::Type::BaseModel
            # @!attribute percentage
            #   Percentage of audience of this type
            #
            #   @return [Float]
            required :percentage, Float

            # @!attribute type
            #   Type of audience
            #
            #   @return [String]
            required :type, String

            # @!method initialize(percentage:, type:)
            #   @param percentage [Float] Percentage of audience of this type
            #
            #   @param type [String] Type of audience
          end

          class EngagementLike < PostForMe::Internal::Type::BaseModel
            # @!attribute percentage
            #   Percentage value for the metric
            #
            #   @return [Float]
            required :percentage, Float

            # @!attribute second
            #   Time in seconds for the metric
            #
            #   @return [String]
            required :second, String

            # @!method initialize(percentage:, second:)
            #   @param percentage [Float] Percentage value for the metric
            #
            #   @param second [String] Time in seconds for the metric
          end

          class ImpressionSource < PostForMe::Internal::Type::BaseModel
            # @!attribute impression_source
            #   Name of the impression source
            #
            #   @return [String]
            required :impression_source, String

            # @!attribute percentage
            #   Percentage of impressions from this source
            #
            #   @return [Float]
            required :percentage, Float

            # @!method initialize(impression_source:, percentage:)
            #   @param impression_source [String] Name of the impression source
            #
            #   @param percentage [Float] Percentage of impressions from this source
          end

          class VideoViewRetention < PostForMe::Internal::Type::BaseModel
            # @!attribute percentage
            #   Percentage value for the metric
            #
            #   @return [Float]
            required :percentage, Float

            # @!attribute second
            #   Time in seconds for the metric
            #
            #   @return [String]
            required :second, String

            # @!method initialize(percentage:, second:)
            #   @param percentage [Float] Percentage value for the metric
            #
            #   @param second [String] Time in seconds for the metric
          end
        end

        class TikTokPostMetricsDto < PostForMe::Internal::Type::BaseModel
          # @!attribute comment_count
          #   Number of comments on the video
          #
          #   @return [Float]
          required :comment_count, Float

          # @!attribute like_count
          #   Number of likes on the video
          #
          #   @return [Float]
          required :like_count, Float

          # @!attribute share_count
          #   Number of shares of the video
          #
          #   @return [Float]
          required :share_count, Float

          # @!attribute view_count
          #   Number of views on the video
          #
          #   @return [Float]
          required :view_count, Float

          # @!method initialize(comment_count:, like_count:, share_count:, view_count:)
          #   @param comment_count [Float] Number of comments on the video
          #
          #   @param like_count [Float] Number of likes on the video
          #
          #   @param share_count [Float] Number of shares of the video
          #
          #   @param view_count [Float] Number of views on the video
        end

        class InstagramPostMetricsDto < PostForMe::Internal::Type::BaseModel
          # @!attribute comments
          #   Number of comments on the post
          #
          #   @return [Float, nil]
          optional :comments, Float

          # @!attribute follows
          #   Number of new follows from this post
          #
          #   @return [Float, nil]
          optional :follows, Float

          # @!attribute ig_reels_avg_watch_time
          #   Average watch time for Reels (in milliseconds)
          #
          #   @return [Float, nil]
          optional :ig_reels_avg_watch_time, Float

          # @!attribute ig_reels_video_view_total_time
          #   Total watch time for Reels (in milliseconds)
          #
          #   @return [Float, nil]
          optional :ig_reels_video_view_total_time, Float

          # @!attribute likes
          #   Number of likes on the post
          #
          #   @return [Float, nil]
          optional :likes, Float

          # @!attribute navigation
          #   Navigation actions taken on the media
          #
          #   @return [Float, nil]
          optional :navigation, Float

          # @!attribute profile_activity
          #   Profile activity generated from this post
          #
          #   @return [Float, nil]
          optional :profile_activity, Float

          # @!attribute profile_visits
          #   Number of profile visits from this post
          #
          #   @return [Float, nil]
          optional :profile_visits, Float

          # @!attribute reach
          #   Total number of unique accounts that have seen the media
          #
          #   @return [Float, nil]
          optional :reach, Float

          # @!attribute replies
          #   Number of replies to the story (story media only)
          #
          #   @return [Float, nil]
          optional :replies, Float

          # @!attribute saved
          #   Total number of unique accounts that have saved the media
          #
          #   @return [Float, nil]
          optional :saved, Float

          # @!attribute shares
          #   Total number of shares of the media
          #
          #   @return [Float, nil]
          optional :shares, Float

          # @!attribute total_interactions
          #   Total interactions on the post
          #
          #   @return [Float, nil]
          optional :total_interactions, Float

          # @!attribute views
          #   Number of views on the post
          #
          #   @return [Float, nil]
          optional :views, Float

          # @!method initialize(comments: nil, follows: nil, ig_reels_avg_watch_time: nil, ig_reels_video_view_total_time: nil, likes: nil, navigation: nil, profile_activity: nil, profile_visits: nil, reach: nil, replies: nil, saved: nil, shares: nil, total_interactions: nil, views: nil)
          #   @param comments [Float] Number of comments on the post
          #
          #   @param follows [Float] Number of new follows from this post
          #
          #   @param ig_reels_avg_watch_time [Float] Average watch time for Reels (in milliseconds)
          #
          #   @param ig_reels_video_view_total_time [Float] Total watch time for Reels (in milliseconds)
          #
          #   @param likes [Float] Number of likes on the post
          #
          #   @param navigation [Float] Navigation actions taken on the media
          #
          #   @param profile_activity [Float] Profile activity generated from this post
          #
          #   @param profile_visits [Float] Number of profile visits from this post
          #
          #   @param reach [Float] Total number of unique accounts that have seen the media
          #
          #   @param replies [Float] Number of replies to the story (story media only)
          #
          #   @param saved [Float] Total number of unique accounts that have saved the media
          #
          #   @param shares [Float] Total number of shares of the media
          #
          #   @param total_interactions [Float] Total interactions on the post
          #
          #   @param views [Float] Number of views on the post
        end

        class YouTubePostMetricsDto < PostForMe::Internal::Type::BaseModel
          # @!attribute comments
          #   Number of comments on the video
          #
          #   @return [Float]
          required :comments, Float

          # @!attribute dislikes
          #   Number of dislikes on the video
          #
          #   @return [Float]
          required :dislikes, Float

          # @!attribute likes
          #   Number of likes on the video
          #
          #   @return [Float]
          required :likes, Float

          # @!attribute views
          #   Number of views on the video
          #
          #   @return [Float]
          required :views, Float

          # @!attribute annotation_clickable_impressions
          #   Number of clickable annotation impressions
          #
          #   @return [Float, nil]
          optional :annotation_clickable_impressions, Float, api_name: :annotationClickableImpressions

          # @!attribute annotation_clicks
          #   Number of annotation clicks
          #
          #   @return [Float, nil]
          optional :annotation_clicks, Float, api_name: :annotationClicks

          # @!attribute annotation_click_through_rate
          #   Annotation click-through rate
          #
          #   @return [Float, nil]
          optional :annotation_click_through_rate, Float, api_name: :annotationClickThroughRate

          # @!attribute annotation_closable_impressions
          #   Number of closable annotation impressions
          #
          #   @return [Float, nil]
          optional :annotation_closable_impressions, Float, api_name: :annotationClosableImpressions

          # @!attribute annotation_close_rate
          #   Annotation close rate
          #
          #   @return [Float, nil]
          optional :annotation_close_rate, Float, api_name: :annotationCloseRate

          # @!attribute annotation_closes
          #   Number of annotation closes
          #
          #   @return [Float, nil]
          optional :annotation_closes, Float, api_name: :annotationCloses

          # @!attribute annotation_impressions
          #   Number of annotation impressions
          #
          #   @return [Float, nil]
          optional :annotation_impressions, Float, api_name: :annotationImpressions

          # @!attribute average_view_duration
          #   Average view duration in seconds
          #
          #   @return [Float, nil]
          optional :average_view_duration, Float, api_name: :averageViewDuration

          # @!attribute average_view_percentage
          #   Average percentage of the video watched
          #
          #   @return [Float, nil]
          optional :average_view_percentage, Float, api_name: :averageViewPercentage

          # @!attribute card_click_rate
          #   Card click-through rate
          #
          #   @return [Float, nil]
          optional :card_click_rate, Float, api_name: :cardClickRate

          # @!attribute card_clicks
          #   Number of card clicks
          #
          #   @return [Float, nil]
          optional :card_clicks, Float, api_name: :cardClicks

          # @!attribute card_impressions
          #   Number of card impressions
          #
          #   @return [Float, nil]
          optional :card_impressions, Float, api_name: :cardImpressions

          # @!attribute card_teaser_click_rate
          #   Card teaser click-through rate
          #
          #   @return [Float, nil]
          optional :card_teaser_click_rate, Float, api_name: :cardTeaserClickRate

          # @!attribute card_teaser_clicks
          #   Number of card teaser clicks
          #
          #   @return [Float, nil]
          optional :card_teaser_clicks, Float, api_name: :cardTeaserClicks

          # @!attribute card_teaser_impressions
          #   Number of card teaser impressions
          #
          #   @return [Float, nil]
          optional :card_teaser_impressions, Float, api_name: :cardTeaserImpressions

          # @!attribute engaged_views
          #   Number of engaged views
          #
          #   @return [Float, nil]
          optional :engaged_views, Float, api_name: :engagedViews

          # @!attribute estimated_minutes_watched
          #   Estimated minutes watched
          #
          #   @return [Float, nil]
          optional :estimated_minutes_watched, Float, api_name: :estimatedMinutesWatched

          # @!attribute estimated_red_minutes_watched
          #   Estimated minutes watched by YouTube Premium (Red) members
          #
          #   @return [Float, nil]
          optional :estimated_red_minutes_watched, Float, api_name: :estimatedRedMinutesWatched

          # @!attribute red_views
          #   Number of views from YouTube Premium (Red) members
          #
          #   @return [Float, nil]
          optional :red_views, Float, api_name: :redViews

          # @!attribute shares
          #   Number of shares
          #
          #   @return [Float, nil]
          optional :shares, Float

          # @!attribute subscribers_gained
          #   Subscribers gained
          #
          #   @return [Float, nil]
          optional :subscribers_gained, Float, api_name: :subscribersGained

          # @!attribute subscribers_lost
          #   Subscribers lost
          #
          #   @return [Float, nil]
          optional :subscribers_lost, Float, api_name: :subscribersLost

          # @!attribute videos_added_to_playlists
          #   Number of times the video was added to playlists
          #
          #   @return [Float, nil]
          optional :videos_added_to_playlists, Float, api_name: :videosAddedToPlaylists

          # @!attribute videos_removed_from_playlists
          #   Number of times the video was removed from playlists
          #
          #   @return [Float, nil]
          optional :videos_removed_from_playlists, Float, api_name: :videosRemovedFromPlaylists

          # @!method initialize(comments:, dislikes:, likes:, views:, annotation_clickable_impressions: nil, annotation_clicks: nil, annotation_click_through_rate: nil, annotation_closable_impressions: nil, annotation_close_rate: nil, annotation_closes: nil, annotation_impressions: nil, average_view_duration: nil, average_view_percentage: nil, card_click_rate: nil, card_clicks: nil, card_impressions: nil, card_teaser_click_rate: nil, card_teaser_clicks: nil, card_teaser_impressions: nil, engaged_views: nil, estimated_minutes_watched: nil, estimated_red_minutes_watched: nil, red_views: nil, shares: nil, subscribers_gained: nil, subscribers_lost: nil, videos_added_to_playlists: nil, videos_removed_from_playlists: nil)
          #   @param comments [Float] Number of comments on the video
          #
          #   @param dislikes [Float] Number of dislikes on the video
          #
          #   @param likes [Float] Number of likes on the video
          #
          #   @param views [Float] Number of views on the video
          #
          #   @param annotation_clickable_impressions [Float] Number of clickable annotation impressions
          #
          #   @param annotation_clicks [Float] Number of annotation clicks
          #
          #   @param annotation_click_through_rate [Float] Annotation click-through rate
          #
          #   @param annotation_closable_impressions [Float] Number of closable annotation impressions
          #
          #   @param annotation_close_rate [Float] Annotation close rate
          #
          #   @param annotation_closes [Float] Number of annotation closes
          #
          #   @param annotation_impressions [Float] Number of annotation impressions
          #
          #   @param average_view_duration [Float] Average view duration in seconds
          #
          #   @param average_view_percentage [Float] Average percentage of the video watched
          #
          #   @param card_click_rate [Float] Card click-through rate
          #
          #   @param card_clicks [Float] Number of card clicks
          #
          #   @param card_impressions [Float] Number of card impressions
          #
          #   @param card_teaser_click_rate [Float] Card teaser click-through rate
          #
          #   @param card_teaser_clicks [Float] Number of card teaser clicks
          #
          #   @param card_teaser_impressions [Float] Number of card teaser impressions
          #
          #   @param engaged_views [Float] Number of engaged views
          #
          #   @param estimated_minutes_watched [Float] Estimated minutes watched
          #
          #   @param estimated_red_minutes_watched [Float] Estimated minutes watched by YouTube Premium (Red) members
          #
          #   @param red_views [Float] Number of views from YouTube Premium (Red) members
          #
          #   @param shares [Float] Number of shares
          #
          #   @param subscribers_gained [Float] Subscribers gained
          #
          #   @param subscribers_lost [Float] Subscribers lost
          #
          #   @param videos_added_to_playlists [Float] Number of times the video was added to playlists
          #
          #   @param videos_removed_from_playlists [Float] Number of times the video was removed from playlists
        end

        class FacebookPostMetricsDto < PostForMe::Internal::Type::BaseModel
          # @!attribute activity_by_action_type
          #   Total activity breakdown by action type
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionType>, nil]
          optional :activity_by_action_type,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionType] }

          # @!attribute activity_by_action_type_unique
          #   Unique users activity breakdown by action type
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionTypeUnique>, nil]
          optional :activity_by_action_type_unique,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionTypeUnique] }

          # @!attribute comments
          #   Number of comments (from post object)
          #
          #   @return [Float, nil]
          optional :comments, Float

          # @!attribute fan_reach
          #   Number of fans who saw the post
          #
          #   @return [Float, nil]
          optional :fan_reach, Float

          # @!attribute media_views
          #   Number of times the photo or video was viewed
          #
          #   @return [Float, nil]
          optional :media_views, Float

          # @!attribute nonviral_reach
          #   Number of people who saw the post via non-viral distribution
          #
          #   @return [Float, nil]
          optional :nonviral_reach, Float

          # @!attribute organic_reach
          #   Number of people who saw the post via organic distribution
          #
          #   @return [Float, nil]
          optional :organic_reach, Float

          # @!attribute paid_reach
          #   Number of people who saw the post via paid distribution
          #
          #   @return [Float, nil]
          optional :paid_reach, Float

          # @!attribute reach
          #   Total number of unique people who saw the post
          #
          #   @return [Float, nil]
          optional :reach, Float

          # @!attribute reactions_anger
          #   Number of anger reactions
          #
          #   @return [Float, nil]
          optional :reactions_anger, Float

          # @!attribute reactions_by_type
          #   Breakdown of all reaction types
          #
          #   @return [Object, nil]
          optional :reactions_by_type, PostForMe::Internal::Type::Unknown

          # @!attribute reactions_haha
          #   Number of haha reactions
          #
          #   @return [Float, nil]
          optional :reactions_haha, Float

          # @!attribute reactions_like
          #   Number of like reactions
          #
          #   @return [Float, nil]
          optional :reactions_like, Float

          # @!attribute reactions_love
          #   Number of love reactions
          #
          #   @return [Float, nil]
          optional :reactions_love, Float

          # @!attribute reactions_sorry
          #   Number of sad reactions
          #
          #   @return [Float, nil]
          optional :reactions_sorry, Float

          # @!attribute reactions_total
          #   Total number of reactions (all types)
          #
          #   @return [Float, nil]
          optional :reactions_total, Float

          # @!attribute reactions_wow
          #   Number of wow reactions
          #
          #   @return [Float, nil]
          optional :reactions_wow, Float

          # @!attribute shares
          #   Number of shares (from post object)
          #
          #   @return [Float, nil]
          optional :shares, Float

          # @!attribute video_avg_time_watched
          #   Average time video was viewed in milliseconds
          #
          #   @return [Float, nil]
          optional :video_avg_time_watched, Float

          # @!attribute video_complete_views_organic
          #   Number of times video was viewed to 95% organically
          #
          #   @return [Float, nil]
          optional :video_complete_views_organic, Float

          # @!attribute video_complete_views_organic_unique
          #   Number of unique people who viewed video to 95% organically
          #
          #   @return [Float, nil]
          optional :video_complete_views_organic_unique, Float

          # @!attribute video_complete_views_paid
          #   Number of times video was viewed to 95% via paid distribution
          #
          #   @return [Float, nil]
          optional :video_complete_views_paid, Float

          # @!attribute video_complete_views_paid_unique
          #   Number of unique people who viewed video to 95% via paid distribution
          #
          #   @return [Float, nil]
          optional :video_complete_views_paid_unique, Float

          # @!attribute video_length
          #   Length of the video in milliseconds
          #
          #   @return [Float, nil]
          optional :video_length, Float

          # @!attribute video_retention_graph_autoplayed
          #   Video retention graph for autoplayed views
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphAutoplayed>, nil]
          optional :video_retention_graph_autoplayed,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphAutoplayed] }

          # @!attribute video_retention_graph_clicked_to_play
          #   Video retention graph for clicked-to-play views
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphClickedToPlay>, nil]
          optional :video_retention_graph_clicked_to_play,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphClickedToPlay] }

          # @!attribute video_social_actions_unique
          #   Number of unique people who performed social actions on the video
          #
          #   @return [Float, nil]
          optional :video_social_actions_unique, Float

          # @!attribute video_view_time
          #   Total time video was viewed in milliseconds
          #
          #   @return [Float, nil]
          optional :video_view_time, Float

          # @!attribute video_view_time_by_age_gender
          #   Video view time breakdown by age and gender
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByAgeGender>, nil]
          optional :video_view_time_by_age_gender,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByAgeGender] }

          # @!attribute video_view_time_by_country
          #   Video view time breakdown by country
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByCountry>, nil]
          optional :video_view_time_by_country,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByCountry] }

          # @!attribute video_view_time_by_distribution_type
          #   Video view time breakdown by distribution type
          #
          #   @return [Object, nil]
          optional :video_view_time_by_distribution_type, PostForMe::Internal::Type::Unknown

          # @!attribute video_view_time_by_region
          #   Video view time breakdown by region
          #
          #   @return [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByRegion>, nil]
          optional :video_view_time_by_region,
                   -> { PostForMe::Internal::Type::ArrayOf[PostForMe::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByRegion] }

          # @!attribute video_view_time_organic
          #   Total time video was viewed in milliseconds via organic distribution
          #
          #   @return [Float, nil]
          optional :video_view_time_organic, Float

          # @!attribute video_views
          #   Number of times video was viewed for 3+ seconds
          #
          #   @return [Float, nil]
          optional :video_views, Float

          # @!attribute video_views_15s
          #   Number of times video was viewed for 15+ seconds
          #
          #   @return [Float, nil]
          optional :video_views_15s, Float

          # @!attribute video_views_60s
          #   Number of times video was viewed for 60+ seconds (excludes videos shorter than
          #   60s)
          #
          #   @return [Float, nil]
          optional :video_views_60s, Float

          # @!attribute video_views_autoplayed
          #   Number of times video was autoplayed for 3+ seconds
          #
          #   @return [Float, nil]
          optional :video_views_autoplayed, Float

          # @!attribute video_views_by_distribution_type
          #   Video views breakdown by distribution type
          #
          #   @return [Object, nil]
          optional :video_views_by_distribution_type, PostForMe::Internal::Type::Unknown

          # @!attribute video_views_clicked_to_play
          #   Number of times video was clicked to play for 3+ seconds
          #
          #   @return [Float, nil]
          optional :video_views_clicked_to_play, Float

          # @!attribute video_views_organic
          #   Number of times video was viewed for 3+ seconds organically
          #
          #   @return [Float, nil]
          optional :video_views_organic, Float

          # @!attribute video_views_organic_unique
          #   Number of unique people who viewed the video for 3+ seconds organically
          #
          #   @return [Float, nil]
          optional :video_views_organic_unique, Float

          # @!attribute video_views_paid
          #   Number of times video was viewed for 3+ seconds via paid distribution
          #
          #   @return [Float, nil]
          optional :video_views_paid, Float

          # @!attribute video_views_paid_unique
          #   Number of unique people who viewed the video for 3+ seconds via paid
          #   distribution
          #
          #   @return [Float, nil]
          optional :video_views_paid_unique, Float

          # @!attribute video_views_sound_on
          #   Number of times video was viewed with sound on
          #
          #   @return [Float, nil]
          optional :video_views_sound_on, Float

          # @!attribute video_views_unique
          #   Number of unique people who viewed the video for 3+ seconds
          #
          #   @return [Float, nil]
          optional :video_views_unique, Float

          # @!attribute viral_reach
          #   Number of people who saw the post in News Feed via viral reach
          #
          #   @return [Float, nil]
          optional :viral_reach, Float

          # @!method initialize(activity_by_action_type: nil, activity_by_action_type_unique: nil, comments: nil, fan_reach: nil, media_views: nil, nonviral_reach: nil, organic_reach: nil, paid_reach: nil, reach: nil, reactions_anger: nil, reactions_by_type: nil, reactions_haha: nil, reactions_like: nil, reactions_love: nil, reactions_sorry: nil, reactions_total: nil, reactions_wow: nil, shares: nil, video_avg_time_watched: nil, video_complete_views_organic: nil, video_complete_views_organic_unique: nil, video_complete_views_paid: nil, video_complete_views_paid_unique: nil, video_length: nil, video_retention_graph_autoplayed: nil, video_retention_graph_clicked_to_play: nil, video_social_actions_unique: nil, video_view_time: nil, video_view_time_by_age_gender: nil, video_view_time_by_country: nil, video_view_time_by_distribution_type: nil, video_view_time_by_region: nil, video_view_time_organic: nil, video_views: nil, video_views_15s: nil, video_views_60s: nil, video_views_autoplayed: nil, video_views_by_distribution_type: nil, video_views_clicked_to_play: nil, video_views_organic: nil, video_views_organic_unique: nil, video_views_paid: nil, video_views_paid_unique: nil, video_views_sound_on: nil, video_views_unique: nil, viral_reach: nil)
          #   Some parameter documentations has been truncated, see
          #   {PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto} for more
          #   details.
          #
          #   @param activity_by_action_type [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionType>] Total activity breakdown by action type
          #
          #   @param activity_by_action_type_unique [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::ActivityByActionTypeUnique>] Unique users activity breakdown by action type
          #
          #   @param comments [Float] Number of comments (from post object)
          #
          #   @param fan_reach [Float] Number of fans who saw the post
          #
          #   @param media_views [Float] Number of times the photo or video was viewed
          #
          #   @param nonviral_reach [Float] Number of people who saw the post via non-viral distribution
          #
          #   @param organic_reach [Float] Number of people who saw the post via organic distribution
          #
          #   @param paid_reach [Float] Number of people who saw the post via paid distribution
          #
          #   @param reach [Float] Total number of unique people who saw the post
          #
          #   @param reactions_anger [Float] Number of anger reactions
          #
          #   @param reactions_by_type [Object] Breakdown of all reaction types
          #
          #   @param reactions_haha [Float] Number of haha reactions
          #
          #   @param reactions_like [Float] Number of like reactions
          #
          #   @param reactions_love [Float] Number of love reactions
          #
          #   @param reactions_sorry [Float] Number of sad reactions
          #
          #   @param reactions_total [Float] Total number of reactions (all types)
          #
          #   @param reactions_wow [Float] Number of wow reactions
          #
          #   @param shares [Float] Number of shares (from post object)
          #
          #   @param video_avg_time_watched [Float] Average time video was viewed in milliseconds
          #
          #   @param video_complete_views_organic [Float] Number of times video was viewed to 95% organically
          #
          #   @param video_complete_views_organic_unique [Float] Number of unique people who viewed video to 95% organically
          #
          #   @param video_complete_views_paid [Float] Number of times video was viewed to 95% via paid distribution
          #
          #   @param video_complete_views_paid_unique [Float] Number of unique people who viewed video to 95% via paid distribution
          #
          #   @param video_length [Float] Length of the video in milliseconds
          #
          #   @param video_retention_graph_autoplayed [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphAutoplayed>] Video retention graph for autoplayed views
          #
          #   @param video_retention_graph_clicked_to_play [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::VideoRetentionGraphClickedToPlay>] Video retention graph for clicked-to-play views
          #
          #   @param video_social_actions_unique [Float] Number of unique people who performed social actions on the video
          #
          #   @param video_view_time [Float] Total time video was viewed in milliseconds
          #
          #   @param video_view_time_by_age_gender [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByAgeGender>] Video view time breakdown by age and gender
          #
          #   @param video_view_time_by_country [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByCountry>] Video view time breakdown by country
          #
          #   @param video_view_time_by_distribution_type [Object] Video view time breakdown by distribution type
          #
          #   @param video_view_time_by_region [Array<PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto::VideoViewTimeByRegion>] Video view time breakdown by region
          #
          #   @param video_view_time_organic [Float] Total time video was viewed in milliseconds via organic distribution
          #
          #   @param video_views [Float] Number of times video was viewed for 3+ seconds
          #
          #   @param video_views_15s [Float] Number of times video was viewed for 15+ seconds
          #
          #   @param video_views_60s [Float] Number of times video was viewed for 60+ seconds (excludes videos shorter than 6
          #
          #   @param video_views_autoplayed [Float] Number of times video was autoplayed for 3+ seconds
          #
          #   @param video_views_by_distribution_type [Object] Video views breakdown by distribution type
          #
          #   @param video_views_clicked_to_play [Float] Number of times video was clicked to play for 3+ seconds
          #
          #   @param video_views_organic [Float] Number of times video was viewed for 3+ seconds organically
          #
          #   @param video_views_organic_unique [Float] Number of unique people who viewed the video for 3+ seconds organically
          #
          #   @param video_views_paid [Float] Number of times video was viewed for 3+ seconds via paid distribution
          #
          #   @param video_views_paid_unique [Float] Number of unique people who viewed the video for 3+ seconds via paid distributio
          #
          #   @param video_views_sound_on [Float] Number of times video was viewed with sound on
          #
          #   @param video_views_unique [Float] Number of unique people who viewed the video for 3+ seconds
          #
          #   @param viral_reach [Float] Number of people who saw the post in News Feed via viral reach

          class ActivityByActionType < PostForMe::Internal::Type::BaseModel
            # @!attribute action_type
            #   Action type (e.g., like, comment, share)
            #
            #   @return [String]
            required :action_type, String

            # @!attribute value
            #   Number of actions
            #
            #   @return [Float]
            required :value, Float

            # @!method initialize(action_type:, value:)
            #   @param action_type [String] Action type (e.g., like, comment, share)
            #
            #   @param value [Float] Number of actions
          end

          class ActivityByActionTypeUnique < PostForMe::Internal::Type::BaseModel
            # @!attribute action_type
            #   Action type (e.g., like, comment, share)
            #
            #   @return [String]
            required :action_type, String

            # @!attribute value
            #   Number of actions
            #
            #   @return [Float]
            required :value, Float

            # @!method initialize(action_type:, value:)
            #   @param action_type [String] Action type (e.g., like, comment, share)
            #
            #   @param value [Float] Number of actions
          end

          class VideoRetentionGraphAutoplayed < PostForMe::Internal::Type::BaseModel
            # @!attribute rate
            #   Percentage of viewers at this time
            #
            #   @return [Float]
            required :rate, Float

            # @!attribute time
            #   Time in seconds
            #
            #   @return [Float]
            required :time, Float

            # @!method initialize(rate:, time:)
            #   @param rate [Float] Percentage of viewers at this time
            #
            #   @param time [Float] Time in seconds
          end

          class VideoRetentionGraphClickedToPlay < PostForMe::Internal::Type::BaseModel
            # @!attribute rate
            #   Percentage of viewers at this time
            #
            #   @return [Float]
            required :rate, Float

            # @!attribute time
            #   Time in seconds
            #
            #   @return [Float]
            required :time, Float

            # @!method initialize(rate:, time:)
            #   @param rate [Float] Percentage of viewers at this time
            #
            #   @param time [Float] Time in seconds
          end

          class VideoViewTimeByAgeGender < PostForMe::Internal::Type::BaseModel
            # @!attribute key
            #   Demographic key (e.g., age_gender, region, country)
            #
            #   @return [String]
            required :key, String

            # @!attribute value
            #   Total view time in milliseconds
            #
            #   @return [Float]
            required :value, Float

            # @!method initialize(key:, value:)
            #   @param key [String] Demographic key (e.g., age_gender, region, country)
            #
            #   @param value [Float] Total view time in milliseconds
          end

          class VideoViewTimeByCountry < PostForMe::Internal::Type::BaseModel
            # @!attribute key
            #   Demographic key (e.g., age_gender, region, country)
            #
            #   @return [String]
            required :key, String

            # @!attribute value
            #   Total view time in milliseconds
            #
            #   @return [Float]
            required :value, Float

            # @!method initialize(key:, value:)
            #   @param key [String] Demographic key (e.g., age_gender, region, country)
            #
            #   @param value [Float] Total view time in milliseconds
          end

          class VideoViewTimeByRegion < PostForMe::Internal::Type::BaseModel
            # @!attribute key
            #   Demographic key (e.g., age_gender, region, country)
            #
            #   @return [String]
            required :key, String

            # @!attribute value
            #   Total view time in milliseconds
            #
            #   @return [Float]
            required :value, Float

            # @!method initialize(key:, value:)
            #   @param key [String] Demographic key (e.g., age_gender, region, country)
            #
            #   @param value [Float] Total view time in milliseconds
          end
        end

        class TwitterPostMetricsDto < PostForMe::Internal::Type::BaseModel
          # @!attribute non_public_metrics
          #   Non-public metrics for the Tweet (available to the Tweet owner or advertisers)
          #
          #   @return [PostForMe::Models::PlatformPost::Metrics::TwitterPostMetricsDto::NonPublicMetrics, nil]
          optional :non_public_metrics,
                   -> { PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::NonPublicMetrics }

          # @!attribute organic_metrics
          #   Organic metrics for the Tweet (available to the Tweet owner)
          #
          #   @return [PostForMe::Models::PlatformPost::Metrics::TwitterPostMetricsDto::OrganicMetrics, nil]
          optional :organic_metrics, -> { PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::OrganicMetrics }

          # @!attribute public_metrics
          #   Publicly available metrics for the Tweet
          #
          #   @return [PostForMe::Models::PlatformPost::Metrics::TwitterPostMetricsDto::PublicMetrics, nil]
          optional :public_metrics, -> { PostForMe::PlatformPost::Metrics::TwitterPostMetricsDto::PublicMetrics }

          # @!method initialize(non_public_metrics: nil, organic_metrics: nil, public_metrics: nil)
          #   @param non_public_metrics [PostForMe::Models::PlatformPost::Metrics::TwitterPostMetricsDto::NonPublicMetrics] Non-public metrics for the Tweet (available to the Tweet owner or advertisers)
          #
          #   @param organic_metrics [PostForMe::Models::PlatformPost::Metrics::TwitterPostMetricsDto::OrganicMetrics] Organic metrics for the Tweet (available to the Tweet owner)
          #
          #   @param public_metrics [PostForMe::Models::PlatformPost::Metrics::TwitterPostMetricsDto::PublicMetrics] Publicly available metrics for the Tweet

          # @see PostForMe::Models::PlatformPost::Metrics::TwitterPostMetricsDto#non_public_metrics
          class NonPublicMetrics < PostForMe::Internal::Type::BaseModel
            # @!attribute impression_count
            #   Number of times this Tweet has been viewed via promoted distribution
            #
            #   @return [Float]
            required :impression_count, Float

            # @!attribute url_link_clicks
            #   Number of clicks on links in this Tweet via promoted distribution
            #
            #   @return [Float]
            required :url_link_clicks, Float

            # @!attribute user_profile_clicks
            #   Number of clicks on the author's profile via promoted distribution
            #
            #   @return [Float]
            required :user_profile_clicks, Float

            # @!method initialize(impression_count:, url_link_clicks:, user_profile_clicks:)
            #   Non-public metrics for the Tweet (available to the Tweet owner or advertisers)
            #
            #   @param impression_count [Float] Number of times this Tweet has been viewed via promoted distribution
            #
            #   @param url_link_clicks [Float] Number of clicks on links in this Tweet via promoted distribution
            #
            #   @param user_profile_clicks [Float] Number of clicks on the author's profile via promoted distribution
          end

          # @see PostForMe::Models::PlatformPost::Metrics::TwitterPostMetricsDto#organic_metrics
          class OrganicMetrics < PostForMe::Internal::Type::BaseModel
            # @!attribute impression_count
            #   Number of times this Tweet has been viewed organically
            #
            #   @return [Float]
            required :impression_count, Float

            # @!attribute like_count
            #   Number of Likes of this Tweet from organic distribution
            #
            #   @return [Float]
            required :like_count, Float

            # @!attribute reply_count
            #   Number of Replies of this Tweet from organic distribution
            #
            #   @return [Float]
            required :reply_count, Float

            # @!attribute retweet_count
            #   Number of Retweets of this Tweet from organic distribution
            #
            #   @return [Float]
            required :retweet_count, Float

            # @!attribute url_link_clicks
            #   Number of clicks on links in this Tweet from organic distribution
            #
            #   @return [Float]
            required :url_link_clicks, Float

            # @!attribute user_profile_clicks
            #   Number of clicks on the author's profile from organic distribution
            #
            #   @return [Float]
            required :user_profile_clicks, Float

            # @!method initialize(impression_count:, like_count:, reply_count:, retweet_count:, url_link_clicks:, user_profile_clicks:)
            #   Organic metrics for the Tweet (available to the Tweet owner)
            #
            #   @param impression_count [Float] Number of times this Tweet has been viewed organically
            #
            #   @param like_count [Float] Number of Likes of this Tweet from organic distribution
            #
            #   @param reply_count [Float] Number of Replies of this Tweet from organic distribution
            #
            #   @param retweet_count [Float] Number of Retweets of this Tweet from organic distribution
            #
            #   @param url_link_clicks [Float] Number of clicks on links in this Tweet from organic distribution
            #
            #   @param user_profile_clicks [Float] Number of clicks on the author's profile from organic distribution
          end

          # @see PostForMe::Models::PlatformPost::Metrics::TwitterPostMetricsDto#public_metrics
          class PublicMetrics < PostForMe::Internal::Type::BaseModel
            # @!attribute bookmark_count
            #   Number of times this Tweet has been bookmarked
            #
            #   @return [Float]
            required :bookmark_count, Float

            # @!attribute impression_count
            #   Number of times this Tweet has been viewed
            #
            #   @return [Float]
            required :impression_count, Float

            # @!attribute like_count
            #   Number of Likes of this Tweet
            #
            #   @return [Float]
            required :like_count, Float

            # @!attribute quote_count
            #   Number of Quotes of this Tweet
            #
            #   @return [Float]
            required :quote_count, Float

            # @!attribute reply_count
            #   Number of Replies of this Tweet
            #
            #   @return [Float]
            required :reply_count, Float

            # @!attribute retweet_count
            #   Number of Retweets of this Tweet
            #
            #   @return [Float]
            required :retweet_count, Float

            # @!method initialize(bookmark_count:, impression_count:, like_count:, quote_count:, reply_count:, retweet_count:)
            #   Publicly available metrics for the Tweet
            #
            #   @param bookmark_count [Float] Number of times this Tweet has been bookmarked
            #
            #   @param impression_count [Float] Number of times this Tweet has been viewed
            #
            #   @param like_count [Float] Number of Likes of this Tweet
            #
            #   @param quote_count [Float] Number of Quotes of this Tweet
            #
            #   @param reply_count [Float] Number of Replies of this Tweet
            #
            #   @param retweet_count [Float] Number of Retweets of this Tweet
          end
        end

        class ThreadsPostMetricsDto < PostForMe::Internal::Type::BaseModel
          # @!attribute likes
          #   Number of likes on the post
          #
          #   @return [Float]
          required :likes, Float

          # @!attribute quotes
          #   Number of quotes of the post
          #
          #   @return [Float]
          required :quotes, Float

          # @!attribute replies
          #   Number of replies on the post
          #
          #   @return [Float]
          required :replies, Float

          # @!attribute reposts
          #   Number of reposts of the post
          #
          #   @return [Float]
          required :reposts, Float

          # @!attribute shares
          #   Number of shares of the post
          #
          #   @return [Float]
          required :shares, Float

          # @!attribute views
          #   Number of views on the post
          #
          #   @return [Float]
          required :views, Float

          # @!method initialize(likes:, quotes:, replies:, reposts:, shares:, views:)
          #   @param likes [Float] Number of likes on the post
          #
          #   @param quotes [Float] Number of quotes of the post
          #
          #   @param replies [Float] Number of replies on the post
          #
          #   @param reposts [Float] Number of reposts of the post
          #
          #   @param shares [Float] Number of shares of the post
          #
          #   @param views [Float] Number of views on the post
        end

        # @!method self.variants
        #   @return [Array(PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto, PostForMe::Models::PlatformPost::Metrics::TikTokPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::InstagramPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::YouTubePostMetricsDto, PostForMe::Models::PlatformPost::Metrics::FacebookPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::TwitterPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::ThreadsPostMetricsDto, Object)]
      end
    end
  end
end
