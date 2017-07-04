.class public final Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "EventSharingSettingFragment.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$StoryShareOnOffListener;
    }
.end annotation


# static fields
.field private static final FEATURE_USE_NOTIFICATION_SETTING:Z

.field private static final KEY_PREFERENCE_SCREEN:Ljava/lang/String; = "setting_activity_top_title"

.field private static final KEY_REGISTER_INFO:Ljava/lang/String; = "register_info"

.field private static final KEY_SETTING_WIFI_ONLY:Ljava/lang/String; = "setting_wifi_only"

.field private static final KEY_SHARE_NOTIFICATION:Ljava/lang/String; = "share_notification"

.field private static final TAG:Ljava/lang/String; = "EventSharingFragment"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

.field private mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private mRegisterInfo:Landroid/preference/Preference;

.field private final mResourceId:I

.field private mShareNotification:Landroid/preference/SwitchPreference;

.field private mStoryShareOnOffListener:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$StoryShareOnOffListener;

.field private mWifiSetting:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNotificationsSetting:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->FEATURE_USE_NOTIFICATION_SETTING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNotificationsSetting:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080008

    :goto_0
    iput v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mResourceId:I

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f080007

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNotificationsSetting:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f080009

    :goto_2
    iput v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mResourceId:I

    goto :goto_1

    :cond_2
    const v0, 0x7f080006

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->handleUploadViaWifi(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->handleLaunchNotificationActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->handleRegisterInfo()V

    return-void
.end method

.method private createNotificationPreference()V
    .locals 1

    const-string/jumbo v0, "share_notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mShareNotification:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->loadNotificationPreference()V

    return-void
.end method

.method private createWifiPreference()V
    .locals 1

    const-string/jumbo v0, "setting_wifi_only"

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mWifiSetting:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->loadWifiPreference()V

    return-void
.end method

.method public static getShareNotificationPrefValue(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "event_share_notification"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private handleLaunchNotificationActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/gallery3d/settings/NotificationsSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "506"

    const-string/jumbo v2, "5053"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleRegisterInfo()V
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "EventSharingFragment"

    const-string/jumbo v2, "mOnRegisterInfoPreferenceClickListener : onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "506"

    const-string/jumbo v2, "5044"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isCoreAppsInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isCoreAppsSupportVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingRegisterOn(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->requestCoreAppsAccess(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a083b

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "RegisteredInformation"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method private handleUploadViaWifi(ZZ)V
    .locals 5

    if-ne p1, p2, :cond_2

    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;

    if-eqz p1, :cond_0

    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->WIFI_ONLY_ON:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    :goto_0
    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;Z)V

    const-string/jumbo v3, "StorySharing"

    invoke-virtual {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "UploadViaWiFiOnlyOn"

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v1, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_2
    return-void

    :cond_0
    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->WIFI_ONLY_OFF:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "UploadViaWiFiOnlyOff"

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->handleUploadViaWifi(Z)Z

    goto :goto_2
.end method

.method private handleUploadViaWifi(Z)Z
    .locals 8

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v6, "506"

    const-string/jumbo v7, "5042"

    if-eqz p1, :cond_2

    const-wide/16 v4, 0x1

    :goto_0
    invoke-static {v6, v7, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->turnOn(Landroid/content/Context;)V

    :goto_1
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;

    if-eqz p1, :cond_4

    sget-object v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->WIFI_ONLY_ON:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    :goto_2
    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;Z)V

    const-string/jumbo v4, "StorySharing"

    invoke-virtual {v3, v4}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mWifiSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    if-eqz p1, :cond_5

    const-string/jumbo v2, "UploadViaWiFiOnlyOn"

    :goto_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v2, v5, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_1
    :goto_4
    return p1

    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->showWifiOnlySettingsDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "EventSharingFragment"

    const-string/jumbo v5, "Can not set wifi only"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    :try_start_1
    sget-object v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->WIFI_ONLY_OFF:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "UploadViaWiFiOnlyOff"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private loadNotificationPreference()V
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->FEATURE_USE_NOTIFICATION_SETTING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mShareNotification:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$2;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mShareNotification:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->getShareNotificationPrefValue(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mShareNotification:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$3;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private loadPreferenceFragment()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->createWifiPreference()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->createNotificationPreference()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->setEnableItemPreference(Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->loadRegisterInfoPreference()V

    return-void
.end method

.method private loadRegisterInfoPreference()V
    .locals 2

    const-string/jumbo v0, "register_info"

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mRegisterInfo:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mRegisterInfo:Landroid/preference/Preference;

    new-instance v1, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$4;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingRegisterOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->setEnableRegisterInfoPreference(Z)V

    return-void
.end method

.method private loadWifiPreference()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mWifiSetting:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->isOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mWifiSetting:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$1;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private requestCoreAppsAccess(Z)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0a083b

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "RegisteredInformation"

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v4, v5, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.coreapps.easysignup.ACTION_LAUNCH_EASY_SIGNUP_BY_SETTING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "extra_setting_access_agent"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0a083c

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "RegisteredInformation"

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v4, v5, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "EventSharingFragment"

    const-string/jumbo v4, "ActivityNotFoundException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static saveNotificationPrefrence(Landroid/content/Context;Z)V
    .locals 7

    const-string/jumbo v3, "event_share_notification"

    invoke-static {p0, v3, p1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v3, "506"

    const-string/jumbo v6, "5043"

    if-eqz p1, :cond_1

    const-wide/16 v4, 0x1

    :goto_0
    invoke-static {v3, v6, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;

    if-eqz p1, :cond_2

    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->NOTI_ON:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    :goto_1
    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;Z)V

    const-string/jumbo v3, "StorySharing"

    invoke-virtual {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    if-eqz p1, :cond_3

    const-string/jumbo v1, "NotificationOn"

    :goto_2
    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v1, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->NOTI_OFF:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "NotificationOff"

    goto :goto_2
.end method

.method private saveNotificationPrefrence(Landroid/content/Context;ZZ)V
    .locals 5

    if-ne p2, p3, :cond_2

    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;

    if-eqz p2, :cond_0

    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->NOTI_ON:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    :goto_0
    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;Z)V

    const-string/jumbo v3, "StorySharing"

    invoke-virtual {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    if-eqz p2, :cond_1

    const-string/jumbo v1, "NotificationOn"

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v1, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_2
    return-void

    :cond_0
    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->NOTI_OFF:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "NotificationOff"

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mShareNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->saveNotificationPrefrence(Landroid/content/Context;Z)V

    goto :goto_2
.end method

.method private showWifiOnlySettingsDialog()V
    .locals 6

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a045a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a025f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a045b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0260

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02f4

    new-instance v5, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$6;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$6;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$5;

    invoke-direct {v5, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$5;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityOnBackPressed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "EventSharingFragment"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mResourceId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->loadPreferenceFragment()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogEventSharingSettingFragmentListenerImpl;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogEventSharingSettingFragmentListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/EventSharingSettingFragmentDCHandler;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/EventSharingSettingFragmentDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    :cond_0
    return-void
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const-string/jumbo v0, "EventSharingFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->loadNotificationPreference()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_0
    return-void
.end method

.method public setEnableItemPreference(Z)V
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "setting_activity_top_title"

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mWifiSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mShareNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mWifiSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mShareNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mWifiSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mShareNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setEnableRegisterInfoPreference(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->getEasySignupAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mRegisterInfo:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mRegisterInfo:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setStoryShareOnOffListener(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$StoryShareOnOffListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mStoryShareOnOffListener:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$StoryShareOnOffListener;

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 9

    const v8, 0x7f0a0806

    const/4 v7, 0x0

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    const-string/jumbo v4, "EventSharingFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Event update ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_NOTIFICATION_CONTROL:I

    if-ne v1, v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mShareNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-direct {p0, v4, v3, v5}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->saveNotificationPrefrence(Landroid/content/Context;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v8, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    const-string/jumbo v4, "NotificationOn"

    :goto_1
    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v5, v4, v6, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "NotificationOff"

    goto :goto_1

    :cond_3
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_UPLOAD_VIA_WIFI_ONLY_CONTROL:I

    if-ne v1, v4, :cond_6

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mWifiSetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->handleUploadViaWifi(ZZ)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v8, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_5

    const-string/jumbo v4, "UploadViaWiFiOnlyOn"

    :goto_2
    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v5, v4, v6, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "UploadViaWiFiOnlyOff"

    goto :goto_2

    :cond_6
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_SHARING_CONTROL:I

    if-ne v1, v4, :cond_7

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mStoryShareOnOffListener:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$StoryShareOnOffListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mStoryShareOnOffListener:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$StoryShareOnOffListener;

    invoke-interface {v4, v3}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$StoryShareOnOffListener;->onStoryShareOnOff(Z)V

    goto :goto_0

    :cond_7
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_NOTIFICATIONS:I

    if-ne v1, v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->handleLaunchNotificationActivity()V

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v8, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :cond_9
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_REGISTER_INFORMATION:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->handleRegisterInfo()V

    goto/16 :goto_0
.end method
