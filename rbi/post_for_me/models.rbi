# typed: strong

module PostForMe
  AccountConfiguration = PostForMe::Models::AccountConfiguration

  BlueskyConfigurationDto = PostForMe::Models::BlueskyConfigurationDto

  CreateSocialPost = PostForMe::Models::CreateSocialPost

  CreateSocialPostPreview = PostForMe::Models::CreateSocialPostPreview

  DeleteEntityResponse = PostForMe::Models::DeleteEntityResponse

  FacebookActivityByActionType = PostForMe::Models::FacebookActivityByActionType

  FacebookConfigurationDto = PostForMe::Models::FacebookConfigurationDto

  FacebookVideoRetentionGraph = PostForMe::Models::FacebookVideoRetentionGraph

  FacebookVideoViewTimeByDemographic =
    PostForMe::Models::FacebookVideoViewTimeByDemographic

  InstagramConfigurationDto = PostForMe::Models::InstagramConfigurationDto

  LinkedinConfigurationDto = PostForMe::Models::LinkedinConfigurationDto

  MediaCreateUploadURLParams = PostForMe::Models::MediaCreateUploadURLParams

  PinterestConfigurationDto = PostForMe::Models::PinterestConfigurationDto

  PinterestMetricsWindow = PostForMe::Models::PinterestMetricsWindow

  PlatformConfigurationsDto = PostForMe::Models::PlatformConfigurationsDto

  PlatformPost = PostForMe::Models::PlatformPost

  SocialAccount = PostForMe::Models::SocialAccount

  SocialAccountCreateAuthURLParams =
    PostForMe::Models::SocialAccountCreateAuthURLParams

  SocialAccountCreateParams = PostForMe::Models::SocialAccountCreateParams

  SocialAccountDisconnectParams =
    PostForMe::Models::SocialAccountDisconnectParams

  SocialAccountFeedListParams = PostForMe::Models::SocialAccountFeedListParams

  SocialAccountListParams = PostForMe::Models::SocialAccountListParams

  SocialAccountMetadata =
    T.let(
      PostForMe::Models::SocialAccountMetadata,
      PostForMe::Internal::Type::Converter
    )

  SocialAccountRetrieveParams = PostForMe::Models::SocialAccountRetrieveParams

  SocialAccountUpdateParams = PostForMe::Models::SocialAccountUpdateParams

  SocialPost = PostForMe::Models::SocialPost

  SocialPostCreateParams = PostForMe::Models::SocialPostCreateParams

  SocialPostDeleteParams = PostForMe::Models::SocialPostDeleteParams

  SocialPostListParams = PostForMe::Models::SocialPostListParams

  SocialPostMedia = PostForMe::Models::SocialPostMedia

  SocialPostPreview = PostForMe::Models::SocialPostPreview

  SocialPostPreviewCreateParams =
    PostForMe::Models::SocialPostPreviewCreateParams

  SocialPostResult = PostForMe::Models::SocialPostResult

  SocialPostResultListParams = PostForMe::Models::SocialPostResultListParams

  SocialPostResultRetrieveParams =
    PostForMe::Models::SocialPostResultRetrieveParams

  SocialPostRetrieveParams = PostForMe::Models::SocialPostRetrieveParams

  SocialPostUpdateParams = PostForMe::Models::SocialPostUpdateParams

  ThreadsConfigurationDto = PostForMe::Models::ThreadsConfigurationDto

  TiktokBusinessVideoMetricPercentage =
    PostForMe::Models::TiktokBusinessVideoMetricPercentage

  TiktokConfiguration = PostForMe::Models::TiktokConfiguration

  TwitterConfigurationDto = PostForMe::Models::TwitterConfigurationDto

  TwitterPoll = PostForMe::Models::TwitterPoll

  Webhook = PostForMe::Models::Webhook

  WebhookCreateParams = PostForMe::Models::WebhookCreateParams

  WebhookDeleteParams = PostForMe::Models::WebhookDeleteParams

  WebhookListParams = PostForMe::Models::WebhookListParams

  WebhookRetrieveParams = PostForMe::Models::WebhookRetrieveParams

  WebhookUpdateParams = PostForMe::Models::WebhookUpdateParams

  YoutubeConfigurationDto = PostForMe::Models::YoutubeConfigurationDto

  YoutubePostPlatformData = PostForMe::Models::YoutubePostPlatformData
end
