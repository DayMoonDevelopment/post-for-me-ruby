# frozen_string_literal: true

module PostForMe
  class Client < PostForMe::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :api_key

    # Media are media assets (images, videos, etc.) that can be attached to posts
    # using the media url. These endpoints are only needed if your media is not
    # already available on a publicly accessible URL. Media assets are stored
    # temporarily and are automatically deleted in the following scenarios:
    #
    # - When the associated post is published
    # - After 24 hours if not attached to any post
    # - When the scheduled post is deleted
    # @return [PostForMe::Resources::Media]
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
    # @return [PostForMe::Resources::SocialPosts]
    attr_reader :social_posts

    # Post results represent the outcome of publishing content to various social media
    # platforms. They provide comprehensive information including:
    #
    # - Publication status (success/failure)
    # - Any errors or issues encountered during posting
    # - Platform url to view the published post
    # @return [PostForMe::Resources::SocialPostResults]
    attr_reader :social_post_results

    # Social accounts represent platform-specific accounts (e.g. Twitter, LinkedIn,
    # Facebook) that are used for publishing posts. Each social account has a unique
    # `id` that can be referenced when creating or scheduling posts to specify which
    # platforms the content should be published to.
    # @return [PostForMe::Resources::SocialAccounts]
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
    # - **Threads**, If using our Quickstart project then metrics are currently
    #   unavailable.
    # - **X (Twitter)**
    # - **Bluesky**, Bluesky does not expose views or impressions through their API.
    # - **Pinterest**
    # - **LinkedIn**, metrics are only available for company pages. LinkedIn has
    #   currently stopped giving permission for personal page analytics, we are on the
    #   waitlist for when they resume.
    # @return [PostForMe::Resources::SocialAccountFeeds]
    attr_reader :social_account_feeds

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["POST_FOR_ME_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["POST_FOR_ME_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["POST_FOR_ME_API_KEY"],
      base_url: ENV["POST_FOR_ME_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.postforme.dev"

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"POST_FOR_ME_API_KEY\"")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @media = PostForMe::Resources::Media.new(client: self)
      @social_posts = PostForMe::Resources::SocialPosts.new(client: self)
      @social_post_results = PostForMe::Resources::SocialPostResults.new(client: self)
      @social_accounts = PostForMe::Resources::SocialAccounts.new(client: self)
      @social_account_feeds = PostForMe::Resources::SocialAccountFeeds.new(client: self)
    end
  end
end
