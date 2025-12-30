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
      #   @return [PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto, PostForMe::Models::PlatformPost::Metrics::TikTokPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::InstagramPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::YouTubePostMetricsDto, nil]
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
      #   @param metrics [PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto, PostForMe::Models::PlatformPost::Metrics::TikTokPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::InstagramPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::YouTubePostMetricsDto] Post metrics and analytics data
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

        # @!method self.variants
        #   @return [Array(PostForMe::Models::PlatformPost::Metrics::TikTokBusinessMetricsDto, PostForMe::Models::PlatformPost::Metrics::TikTokPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::InstagramPostMetricsDto, PostForMe::Models::PlatformPost::Metrics::YouTubePostMetricsDto)]
      end
    end
  end
end
