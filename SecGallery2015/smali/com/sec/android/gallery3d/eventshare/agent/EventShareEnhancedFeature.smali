.class public Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;
.super Ljava/lang/Object;
.source "EventShareEnhancedFeature.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EvntShrEnhancedFeature"

.field private static mEnhancedAccount:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

.field private static mEnhancedAccountEx:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

.field private static mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

.field private static mEnhancedGroup:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

.field private static mEnhancedProfile:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

.field private static mEnhancedShare:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

.field private static mEnhancedSocial:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedAccount:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    return-object v0
.end method

.method public static getEnhancedAccountEx()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedAccountEx:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    return-object v0
.end method

.method public static getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    return-object v0
.end method

.method public static getEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedGroup:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    return-object v0
.end method

.method public static getEnhancedProfile()Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedProfile:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    return-object v0
.end method

.method public static getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedShare:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    return-object v0
.end method

.method public static getEnhancedSocial()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedSocial:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 8

    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "v6t16ikdtt"

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v3

    const-string/jumbo v4, "WZ3RJPXE1UYKQ5AS8NNIIB0641MC8DMQ"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addAppSecret(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v3

    const-string/jumbo v4, "QpA9zn84yZ"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addCid(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v3

    const-string/jumbo v4, "a681b96d184ec2d0"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addSppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v3

    const-string/jumbo v4, "905651381814"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addGcmId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addProfileSync(Z)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addEnhancedProfile(I)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->enableEnhancedModule()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    sget-boolean v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addEnhancedSocial()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v3

    sput-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v3

    sput-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedAccount:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    move-result-object v3

    sput-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedAccountEx:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccountEx;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v3

    sput-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedShare:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedShare:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedShare:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSharePushListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSharePushListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->addPushListener(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;)V

    :cond_1
    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    move-result-object v3

    sput-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedProfile:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedProfile:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedProfile:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->setProfileSetting(ZZZZ)V

    :cond_2
    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    move-result-object v3

    sput-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedGroup:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedGroup:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    if-eqz v3, :cond_3

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedGroup:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushListener;

    invoke-direct {v4, v2}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushListener;-><init>(Lcom/sec/android/gallery3d/eventshare/receiver/ChannelGroupPushReader;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->addPushListener(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;)V

    :cond_3
    sget-boolean v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    move-result-object v3

    sput-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedSocial:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedSocial:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->mEnhancedSocial:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/android/gallery3d/eventshare/receiver/ChannelSocialPushListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->addPushListener(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/EnhancedSocialPushListener;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "EvntShrEnhancedFeature"

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
