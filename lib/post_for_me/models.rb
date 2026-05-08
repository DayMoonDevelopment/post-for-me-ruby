# frozen_string_literal: true

module PostForMe
  [PostForMe::Internal::Type::BaseModel, *PostForMe::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, PostForMe::Internal::AnyHash) } }
  end

  PostForMe::Internal::Util.walk_namespaces(PostForMe::Models).each do |mod|
    case mod
    in PostForMe::Internal::Type::Enum | PostForMe::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  PostForMe::Internal::Util.walk_namespaces(PostForMe::Models)
                           .lazy
                           .grep(PostForMe::Internal::Type::Union)
                           .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AccountConfiguration = PostForMe::Models::AccountConfiguration

  BlueskyConfigurationDto = PostForMe::Models::BlueskyConfigurationDto

  CreateSocialPost = PostForMe::Models::CreateSocialPost

  CreateSocialPostPreview = PostForMe::Models::CreateSocialPostPreview

  DeleteEntityResponse = PostForMe::Models::DeleteEntityResponse

  FacebookActivityByActionType = PostForMe::Models::FacebookActivityByActionType

  FacebookConfigurationDto = PostForMe::Models::FacebookConfigurationDto

  FacebookVideoRetentionGraph = PostForMe::Models::FacebookVideoRetentionGraph

  FacebookVideoViewTimeByDemographic = PostForMe::Models::FacebookVideoViewTimeByDemographic

  InstagramConfigurationDto = PostForMe::Models::InstagramConfigurationDto

  LinkedinConfigurationDto = PostForMe::Models::LinkedinConfigurationDto

  MediaCreateUploadURLParams = PostForMe::Models::MediaCreateUploadURLParams

  PinterestConfigurationDto = PostForMe::Models::PinterestConfigurationDto

  PinterestMetricsWindow = PostForMe::Models::PinterestMetricsWindow

  PlatformConfigurationsDto = PostForMe::Models::PlatformConfigurationsDto

  PlatformPost = PostForMe::Models::PlatformPost

  SocialAccount = PostForMe::Models::SocialAccount

  SocialAccountCreateAuthURLParams = PostForMe::Models::SocialAccountCreateAuthURLParams

  SocialAccountCreateParams = PostForMe::Models::SocialAccountCreateParams

  SocialAccountDisconnectParams = PostForMe::Models::SocialAccountDisconnectParams

  SocialAccountFeedListParams = PostForMe::Models::SocialAccountFeedListParams

  SocialAccountListParams = PostForMe::Models::SocialAccountListParams

  # @type [PostForMe::Internal::Type::Converter]
  SocialAccountMetadata = PostForMe::Models::SocialAccountMetadata

  SocialAccountRetrieveParams = PostForMe::Models::SocialAccountRetrieveParams

  SocialAccountUpdateParams = PostForMe::Models::SocialAccountUpdateParams

  SocialPost = PostForMe::Models::SocialPost

  SocialPostCreateParams = PostForMe::Models::SocialPostCreateParams

  SocialPostDeleteParams = PostForMe::Models::SocialPostDeleteParams

  SocialPostListParams = PostForMe::Models::SocialPostListParams

  SocialPostMedia = PostForMe::Models::SocialPostMedia

  SocialPostPreview = PostForMe::Models::SocialPostPreview

  SocialPostPreviewCreateParams = PostForMe::Models::SocialPostPreviewCreateParams

  SocialPostResult = PostForMe::Models::SocialPostResult

  SocialPostResultListParams = PostForMe::Models::SocialPostResultListParams

  SocialPostResultRetrieveParams = PostForMe::Models::SocialPostResultRetrieveParams

  SocialPostRetrieveParams = PostForMe::Models::SocialPostRetrieveParams

  SocialPostUpdateParams = PostForMe::Models::SocialPostUpdateParams

  ThreadsConfigurationDto = PostForMe::Models::ThreadsConfigurationDto

  TiktokBusinessVideoMetricPercentage = PostForMe::Models::TiktokBusinessVideoMetricPercentage

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
