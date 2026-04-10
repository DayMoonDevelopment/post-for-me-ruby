# typed: strong

module PostForMe
  class Client < PostForMe::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    # Media are media assets (images, videos, etc.) that can be attached to posts
    # using the media url. These endpoints are only needed if your media is not
    # already available on a publicly accessible URL. Media assets are stored
    # temporarily and are automatically deleted in the following scenarios:
    #
    # - When the associated post is published
    # - After 24 hours if not attached to any post
    # - When the scheduled post is deleted
    sig { returns(PostForMe::Resources::Media) }
    attr_reader :media

    # Posts represent content that can be published across multiple social media
    # platforms. Each post can have platform-specific content variations, allowing
    # customization for different platforms and accounts. Content can be defined at
    # three levels:
    #
    # 1. Default content for all platforms
    # 2. Platform-specific content overrides
    # 3. Account-specific content overrides
    #
    # The system will use the most specific content override available when publishing
    # to each platform and account.
    sig { returns(PostForMe::Resources::SocialPosts) }
    attr_reader :social_posts

    # Post results represent the outcome of publishing content to various social media
    # platforms. They provide comprehensive information including:
    #
    # - Publication status (success/failure)
    # - Any errors or issues encountered during posting
    # - Platform url to view the published post
    sig { returns(PostForMe::Resources::SocialPostResults) }
    attr_reader :social_post_results

    # Social accounts represent platform-specific accounts (e.g. Twitter, LinkedIn,
    # Facebook) that are used for publishing posts. Each social account has a unique
    # `id` that can be referenced when creating or scheduling posts to specify which
    # platforms the content should be published to.
    sig { returns(PostForMe::Resources::SocialAccounts) }
    attr_reader :social_accounts

    # The social account feed is every post made for the social account, including
    # posts not made through our API. Use this endpoint to get the platform details
    # for any post made under the connected account. To use this endpoint accounts
    # must be connected with the **"feeds" permission**.
    #
    # Details will include:
    #
    # - Post information including caption, url, media, etc..
    # - When passing **expand=metrics**, Metrics information including views, likes,
    #   follows, etc..
    #
    # Note: Currently the following platforms are supported:
    #
    # - **Instagram**, may take up to 48 hours for some metrics to be avaialbe
    # - **Facebook**
    # - **TikTok**, consumer API exposes less analytics for more details connect
    #   through TikTok Business
    # - **TikTok Business**,
    # - **Youtube**
    # - **Threads**
    # - **X (Twitter)**
    # - **Bluesky**, Bluesky does not expose views or impressions through their API.
    # - **Pinterest**
    # - **LinkedIn**, metrics are only available for company pages. LinkedIn has
    #   currently stopped giving permission for personal page analytics, we are on the
    #   waitlist for when they resume.
    sig { returns(PostForMe::Resources::SocialAccountFeeds) }
    attr_reader :social_account_feeds

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["POST_FOR_ME_API_KEY"]`
      api_key: ENV["POST_FOR_ME_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["POST_FOR_ME_BASE_URL"]`
      base_url: ENV["POST_FOR_ME_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: PostForMe::Client::DEFAULT_MAX_RETRIES,
      timeout: PostForMe::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: PostForMe::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: PostForMe::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
