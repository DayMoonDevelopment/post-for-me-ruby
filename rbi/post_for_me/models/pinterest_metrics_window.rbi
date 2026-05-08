# typed: strong

module PostForMe
  module Models
    class PinterestMetricsWindow < PostForMe::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PostForMe::PinterestMetricsWindow, PostForMe::Internal::AnyHash)
        end

      # Number of comments on the Pin
      sig { returns(T.nilable(Float)) }
      attr_reader :comment

      sig { params(comment: Float).void }
      attr_writer :comment

      # Number of times the Pin was shown (impressions)
      sig { returns(T.nilable(Float)) }
      attr_reader :impression

      sig { params(impression: Float).void }
      attr_writer :impression

      # The last time Pinterest updated these metrics
      sig { returns(T.nilable(String)) }
      attr_reader :last_updated

      sig { params(last_updated: String).void }
      attr_writer :last_updated

      # Number of clicks from the Pin to an external destination (outbound clicks)
      sig { returns(T.nilable(Float)) }
      attr_reader :outbound_click

      sig { params(outbound_click: Float).void }
      attr_writer :outbound_click

      # Number of clicks on the Pin to view it in closeup (Pin clicks)
      sig { returns(T.nilable(Float)) }
      attr_reader :pin_click

      sig { params(pin_click: Float).void }
      attr_writer :pin_click

      # Number of visits to the author's profile driven from the Pin
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :profile_visit

      # Total number of reactions on the Pin
      sig { returns(T.nilable(Float)) }
      attr_reader :reaction

      sig { params(reaction: Float).void }
      attr_writer :reaction

      # Number of saves of the Pin
      sig { returns(T.nilable(Float)) }
      attr_reader :save

      sig { params(save: Float).void }
      attr_writer :save

      # Number of follows driven from the Pin
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :user_follow

      # Number of video views of at least 10 seconds
      sig { returns(T.nilable(Float)) }
      attr_reader :video_10s_views

      sig { params(video_10s_views: Float).void }
      attr_writer :video_10s_views

      # Average watch time for the video
      sig { returns(T.nilable(Float)) }
      attr_reader :video_average_time

      sig { params(video_average_time: Float).void }
      attr_writer :video_average_time

      # Number of video views that reached 95% completion
      sig { returns(T.nilable(Float)) }
      attr_reader :video_p95_views

      sig { params(video_p95_views: Float).void }
      attr_writer :video_p95_views

      # Total watch time for the video
      sig { returns(T.nilable(Float)) }
      attr_reader :video_total_time

      sig { params(video_total_time: Float).void }
      attr_writer :video_total_time

      # Number of video views
      sig { returns(T.nilable(Float)) }
      attr_reader :video_views

      sig { params(video_views: Float).void }
      attr_writer :video_views

      sig do
        params(
          comment: Float,
          impression: Float,
          last_updated: String,
          outbound_click: Float,
          pin_click: Float,
          profile_visit: T.nilable(T.anything),
          reaction: Float,
          save: Float,
          user_follow: T.nilable(T.anything),
          video_10s_views: Float,
          video_average_time: Float,
          video_p95_views: Float,
          video_total_time: Float,
          video_views: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Number of comments on the Pin
        comment: nil,
        # Number of times the Pin was shown (impressions)
        impression: nil,
        # The last time Pinterest updated these metrics
        last_updated: nil,
        # Number of clicks from the Pin to an external destination (outbound clicks)
        outbound_click: nil,
        # Number of clicks on the Pin to view it in closeup (Pin clicks)
        pin_click: nil,
        # Number of visits to the author's profile driven from the Pin
        profile_visit: nil,
        # Total number of reactions on the Pin
        reaction: nil,
        # Number of saves of the Pin
        save: nil,
        # Number of follows driven from the Pin
        user_follow: nil,
        # Number of video views of at least 10 seconds
        video_10s_views: nil,
        # Average watch time for the video
        video_average_time: nil,
        # Number of video views that reached 95% completion
        video_p95_views: nil,
        # Total watch time for the video
        video_total_time: nil,
        # Number of video views
        video_views: nil
      )
      end

      sig do
        override.returns(
          {
            comment: Float,
            impression: Float,
            last_updated: String,
            outbound_click: Float,
            pin_click: Float,
            profile_visit: T.nilable(T.anything),
            reaction: Float,
            save: Float,
            user_follow: T.nilable(T.anything),
            video_10s_views: Float,
            video_average_time: Float,
            video_p95_views: Float,
            video_total_time: Float,
            video_views: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
