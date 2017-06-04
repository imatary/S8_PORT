.class public Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;
.super Landroid/app/Activity;
.source "EventSharingSettingActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Ljava/util/Observer;


# static fields
.field static final COREAPPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup"

.field private static final KEY_EVENT_VIEW_SETTING:Ljava/lang/String; = "event_view_setting"

.field private static final REQUEST_REGISTERED_INFO:I = 0x1

.field private static final REQUEST_REQ_AUTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EventSharingSetting"


# instance fields
.field private mAuthService:Z

.field private mContext:Landroid/content/Context;

.field private mEventSharingFragment:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

.field private mHasClick:Z

.field private mIsMainAction:Z

.field private mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

.field private mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

.field private mServiceId:I

.field private mStatusChangedFromOutside:Z

.field private mSwitchView:Landroid/widget/Switch;

.field private mUseService:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field private switchText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mStatusChangedFromOutside:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mIsMainAction:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->handleStorySharing(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->handleStorySharing(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->bindSettingView()V

    return-void
.end method

.method static synthetic access$602(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mAuthService:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mStatusChangedFromOutside:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->serviceOff()V

    return-void
.end method

.method private bindSettingView()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "bindSettingView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mEventSharingFragment:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->setEnableItemPreference(Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mEventSharingFragment:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->setEnableRegisterInfoPreference(Z)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->switchText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0185

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mEventSharingFragment:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->setEnableItemPreference(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mEventSharingFragment:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->setEnableItemPreference(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mEventSharingFragment:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->setEnableRegisterInfoPreference(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0184

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private getGroupsUserBelongs()V
    .locals 3

    const-string/jumbo v1, "EventSharingSetting"

    const-string/jumbo v2, "getGroupsUserBelongs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getEventValidInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->showEventSharingDisableDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->serviceOff()V

    goto :goto_0
.end method

.method private getSAScreenId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "506"

    return-object v0
.end method

.method private handleRegisterOnCoreApps(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mStatusChangedFromOutside:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    const/16 v3, 0x72

    invoke-direct {p0, v2, v3}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->showPermissionRequestDialog([Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mAuthService:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->registerOn()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isCoreAppsInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isCoreAppsSupportVersion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mHasClick:Z

    if-nez v2, :cond_5

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_4

    const-string/jumbo v1, "StorySharingOn"

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a07f9

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v1, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->requestCoreAppsAuth()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mHasClick:Z

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "StorySharingOff"

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "EventSharingSetting"

    const-string/jumbo v3, "coreApps is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleStorySharing(Z)V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "EventSharingSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSwitchView onCheckedChanged mIsChecked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mUseService : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mAuthService : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mAuthService:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getSAScreenId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "5041"

    if-eqz p1, :cond_4

    const-wide/16 v6, 0x1

    :goto_2
    invoke-static {v5, v8, v6, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez p1, :cond_5

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->isChangingConfigurations()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getGroupsUserBelongs()V

    :cond_3
    :goto_3
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;

    if-eqz p1, :cond_7

    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->STORY_SHARING_ON:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    :goto_4
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;Z)V

    const-string/jumbo v3, "StorySharing"

    invoke-virtual {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    if-eqz p1, :cond_8

    const-string/jumbo v1, "StorySharingOn"

    :goto_5
    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v1, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_1

    :cond_4
    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_3

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    const/16 v4, 0x71

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->showPermissionRequestDialog([Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->serviceOn()V

    goto :goto_3

    :cond_7
    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->STORY_SHARING_OFF:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    goto :goto_4

    :cond_8
    const-string/jumbo v1, "StorySharingOff"

    goto :goto_5

    :cond_9
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->handleRegisterOnCoreApps(Z)V

    goto/16 :goto_1
.end method

.method private handleStorySharing(ZZ)V
    .locals 5

    if-ne p1, p2, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;

    if-eqz p1, :cond_0

    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->STORY_SHARING_ON:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    :goto_0
    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;Z)V

    const-string/jumbo v3, "StorySharing"

    invoke-virtual {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "StorySharingOn"

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v1, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_2
    return-void

    :cond_0
    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->STORY_SHARING_OFF:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "StorySharingOff"

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->handleRegisterOnCoreApps(Z)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->handleStorySharing(Z)V

    goto :goto_2
.end method

.method private initialSettingView()V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v2, "EventSharingSetting"

    const-string/jumbo v3, "initialSettingView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f1200ea

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->progressBar:Landroid/widget/ProgressBar;

    const v2, 0x7f1200e9

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->switchText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->switchText:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0185

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mHasClick:Z

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->switchText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->switchText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    int-to-float v4, v1

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLargeTextSize(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, 0x7f1200e8

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$2;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f1200eb

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;

    new-instance v3, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$3;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;

    new-instance v3, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$4;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$4;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    new-instance v3, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$5;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$5;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->setRegisterOnListener(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$registerOnListener;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    new-instance v3, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$6;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$6;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->setServiceOnListener(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    new-instance v3, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$7;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$7;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->setServiceOffListener(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOffListener;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    new-instance v3, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$8;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->setAuthListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthListener;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    new-instance v3, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$9;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->setServiceListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountServiceListener;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0184

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private registerOn()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "registerOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1200ea

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->register(Z)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    return-void
.end method

.method private requestCoreAppsAuth()V
    .locals 9

    const v7, 0x7f0a00c9

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f0a00c8

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f0a00c7

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v7, 0x7f0a00ca

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f02008b

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.coreapps.easysignup.ACTION_SDK_REQ_AUTH"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "AuthRequestFrom"

    const-string/jumbo v8, "eventsharing"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "service_id"

    iget v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mServiceId:I

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {p0, v1, v7}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v7, "EventSharingSetting"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private serviceOff()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "serviceOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1200ea

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->serviceOff()V

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    return-void
.end method

.method private serviceOn()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "serviceOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1200ea

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->serviceOn(Z)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    return-void
.end method

.method private showEventSharingDisableDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0456

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0467

    new-instance v3, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$11;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$11;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$10;

    invoke-direct {v3, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$10;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$12;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$12;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPermissionRequestDialog([Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->getDisabledPermissionList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->dismissDialog()V

    :cond_0
    new-instance v2, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->showPermissionRationaleDialog()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isPermissionAlreadyRequested(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->setPermissionRequested(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, v2, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "onActivityResult : REQUEST_REQ_AUTH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mAuthService:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->registerOn()V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "onActivityResult : REQUEST_REGISTERED_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->bindSettingView()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mEventSharingFragment:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->onBackPressed()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/16 v11, 0x400

    const/4 v9, 0x0

    const-string/jumbo v8, "EventSharingSetting"

    const-string/jumbo v10, "onCreate"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f0c016d

    invoke-virtual {p0, v8}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mIsMainAction:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v10, "event_view_setting"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v1, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mIsMainAction:Z

    if-eqz v8, :cond_4

    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    :goto_1
    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const v8, 0x7f020046

    invoke-virtual {p0, v8}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :goto_2
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCondensedTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_1

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v10, "action_bar_title"

    const-string/jumbo v11, "id"

    const-string/jumbo v12, "android"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    const v8, 0x7f040061

    invoke-virtual {p0, v8}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->setContentView(I)V

    new-instance v8, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-direct {v8}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;-><init>()V

    iput-object v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mEventSharingFragment:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const v8, 0x7f1200ec

    iget-object v10, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mEventSharingFragment:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-virtual {v7, v8, v10}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v7, v9}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mEventSharingFragment:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    new-instance v9, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$1;

    invoke-direct {v9, p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity$1;-><init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;)V

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->setStoryShareOnOffListener(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$StoryShareOnOffListener;)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    iget-object v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingAuth(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mAuthService:Z

    iget-object v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->getServiceId(Landroid/content/Context;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mServiceId:I

    iget-object v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    if-nez v8, :cond_2

    new-instance v8, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    iget-object v9, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->initialSettingView()V

    return-void

    :cond_3
    move v8, v9

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_0

    const v8, 0x7f0a03c8

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v11, v11}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v8, "EventSharingSetting"

    const-string/jumbo v10, "Failed to obtain action bar title reference"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->setServiceListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountServiceListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->setAuthListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthListener;)V

    :cond_0
    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1080"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string/jumbo v0, "EventSharingSetting"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget v1, p3, v0

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->serviceOn()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_2

    aget v1, p3, v0

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mAuthService:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->registerOn()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isCoreAppsInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isCoreAppsSupportVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->requestCoreAppsAuth()V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "EventSharingSetting"

    const-string/jumbo v2, "coreApps is not supported."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v1, "EventSharingSetting"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mHasClick:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSDKRegister:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingAuth(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mAuthService:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mUseService:Z

    if-eq v1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->bindSettingView()V

    :cond_1
    sget-object v1, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mPermissionDialog:Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/PermissionsRequestRationaleDialog;->dismissDialog()V

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mIsMainAction:Z

    if-nez v1, :cond_3

    invoke-static {p0}, Lcom/sec/samsung/gallery/util/ActionBarHelper;->setDefaultHomeAsUpActionBar(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    const-string/jumbo v4, "EventSharingSetting"

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

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_SHARING_CONTROL:I

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;->handleStorySharing(ZZ)V

    :cond_0
    return-void
.end method
