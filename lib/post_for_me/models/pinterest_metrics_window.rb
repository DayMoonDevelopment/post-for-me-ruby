# frozen_string_literal: true

module PostForMe
  module Models
    class PinterestMetricsWindow < PostForMe::Internal::Type::BaseModel
      # @!attribute comment
      #   Number of comments on the Pin
      #
      #   @return [Float, nil]
      optional :comment, Float

      # @!attribute impression
      #   Number of times the Pin was shown (impressions)
      #
      #   @return [Float, nil]
      optional :impression, Float

      # @!attribute last_updated
      #   The last time Pinterest updated these metrics
      #
      #   @return [String, nil]
      optional :last_updated, String

      # @!attribute outbound_click
      #   Number of clicks from the Pin to an external destination (outbound clicks)
      #
      #   @return [Float, nil]
      optional :outbound_click, Float

      # @!attribute pin_click
      #   Number of clicks on the Pin to view it in closeup (Pin clicks)
      #
      #   @return [Float, nil]
      optional :pin_click, Float

      # @!attribute profile_visit
      #   Number of visits to the author's profile driven from the Pin
      #
      #   @return [Object, nil]
      optional :profile_visit, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute reaction
      #   Total number of reactions on the Pin
      #
      #   @return [Float, nil]
      optional :reaction, Float

      # @!attribute save
      #   Number of saves of the Pin
      #
      #   @return [Float, nil]
      optional :save, Float

      # @!attribute user_follow
      #   Number of follows driven from the Pin
      #
      #   @return [Object, nil]
      optional :user_follow, PostForMe::Internal::Type::Unknown, nil?: true

      # @!attribute video_10s_views
      #   Number of video views of at least 10 seconds
      #
      #   @return [Float, nil]
      optional :video_10s_views, Float

      # @!attribute video_average_time
      #   Average watch time for the video
      #
      #   @return [Float, nil]
      optional :video_average_time, Float

      # @!attribute video_p95_views
      #   Number of video views that reached 95% completion
      #
      #   @return [Float, nil]
      optional :video_p95_views, Float

      # @!attribute video_total_time
      #   Total watch time for the video
      #
      #   @return [Float, nil]
      optional :video_total_time, Float

      # @!attribute video_views
      #   Number of video views
      #
      #   @return [Float, nil]
      optional :video_views, Float

      # @!method initialize(comment: nil, impression: nil, last_updated: nil, outbound_click: nil, pin_click: nil, profile_visit: nil, reaction: nil, save: nil, user_follow: nil, video_10s_views: nil, video_average_time: nil, video_p95_views: nil, video_total_time: nil, video_views: nil)
      #   @param comment [Float] Number of comments on the Pin
      #
      #   @param impression [Float] Number of times the Pin was shown (impressions)
      #
      #   @param last_updated [String] The last time Pinterest updated these metrics
      #
      #   @param outbound_click [Float] Number of clicks from the Pin to an external destination (outbound clicks)
      #
      #   @param pin_click [Float] Number of clicks on the Pin to view it in closeup (Pin clicks)
      #
      #   @param profile_visit [Object, nil] Number of visits to the author's profile driven from the Pin
      #
      #   @param reaction [Float] Total number of reactions on the Pin
      #
      #   @param save [Float] Number of saves of the Pin
      #
      #   @param user_follow [Object, nil] Number of follows driven from the Pin
      #
      #   @param video_10s_views [Float] Number of video views of at least 10 seconds
      #
      #   @param video_average_time [Float] Average watch time for the video
      #
      #   @param video_p95_views [Float] Number of video views that reached 95% completion
      #
      #   @param video_total_time [Float] Total watch time for the video
      #
      #   @param video_views [Float] Number of video views
    end
  end
end
