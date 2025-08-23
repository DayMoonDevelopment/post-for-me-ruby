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

  BlueskyConfigurationDto = PostForMe::Models::BlueskyConfigurationDto

  CreateSocialPost = PostForMe::Models::CreateSocialPost

  FacebookConfigurationDto = PostForMe::Models::FacebookConfigurationDto

  InstagramConfigurationDto = PostForMe::Models::InstagramConfigurationDto

  LinkedinConfigurationDto = PostForMe::Models::LinkedinConfigurationDto

  MediaCreateUploadURLParams = PostForMe::Models::MediaCreateUploadURLParams

  PinterestConfigurationDto = PostForMe::Models::PinterestConfigurationDto

  PlatformConfigurationsDto = PostForMe::Models::PlatformConfigurationsDto

  SocialAccount = PostForMe::Models::SocialAccount

  SocialAccountCreateAuthURLParams = PostForMe::Models::SocialAccountCreateAuthURLParams

  SocialAccountDisconnectParams = PostForMe::Models::SocialAccountDisconnectParams

  SocialAccountListParams = PostForMe::Models::SocialAccountListParams

  SocialAccountRetrieveParams = PostForMe::Models::SocialAccountRetrieveParams

  SocialAccountUpdateParams = PostForMe::Models::SocialAccountUpdateParams

  SocialPost = PostForMe::Models::SocialPost

  SocialPostCreateParams = PostForMe::Models::SocialPostCreateParams

  SocialPostDeleteParams = PostForMe::Models::SocialPostDeleteParams

  SocialPostListParams = PostForMe::Models::SocialPostListParams

  SocialPostResult = PostForMe::Models::SocialPostResult

  SocialPostResultListParams = PostForMe::Models::SocialPostResultListParams

  SocialPostResultRetrieveParams = PostForMe::Models::SocialPostResultRetrieveParams

  SocialPostRetrieveParams = PostForMe::Models::SocialPostRetrieveParams

  SocialPostUpdateParams = PostForMe::Models::SocialPostUpdateParams

  ThreadsConfigurationDto = PostForMe::Models::ThreadsConfigurationDto

  TiktokConfiguration = PostForMe::Models::TiktokConfiguration

  TwitterConfigurationDto = PostForMe::Models::TwitterConfigurationDto

  YoutubeConfigurationDto = PostForMe::Models::YoutubeConfigurationDto
end
