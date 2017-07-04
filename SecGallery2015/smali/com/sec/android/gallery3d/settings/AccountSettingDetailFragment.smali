.class public Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingDetailFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Lcom/sec/android/gallery3d/settings/AccountSettingManager$OnAccountUpdatedListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFY_SYNC_ON_TO_GALLERY:Ljava/lang/String; = "com.samsung.android.scloud.cloudAgent.CloudStore.ACTION_NOTIFY_SYNC_ON_TO_GALLERY"

.field private static final ADD_SAMSUNG_ACCOUNT:Ljava/lang/String; = "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

.field private static final FEATURE_ENABLE_IMAGE_ANALYSIS:Z

.field private static final FEATURE_USE_CLOUD_NAME_FOR_JAPAN:Z

.field private static final IMAGE_ANALYSIS_PROCESS_FAILURE:I = -0x1

.field private static final IMAGE_ANALYSIS_PROCESS_NORMAL:I = -0x2

.field private static final IMAGE_ANALYSIS_PROCESS_SUCCESS:I = 0x0

.field private static final PROGRESS_TIME_OUT:I = 0x9c40

.field private static final PROGRESS_TIME_OUT_CMD:I = 0x3e9

.field private static final PROGRESS_TIME_OUT_IMAGE_ANALYSIS_CMD:I = 0x3ea

.field private static final REQUEST_SAMSUNG_ACCOUNT_SIGN_IN:I = 0x1

.field private static final SA_CLIENT_ID:Ljava/lang/String; = "tj9u972o46"

.field private static final SA_CLIENT_MODE:Ljava/lang/String; = "ADD_ACCOUNT"

.field private static final SA_CLIENT_OSP_VERSION:Ljava/lang/String; = "OSP_02"

.field private static final SA_CLIENT_SECRET:Ljava/lang/String; = "D234AE3C42F092D4334433173AE9E264"

.field private static final SCLOUD_SETTING:Ljava/lang/String; = "com.samsung.android.scloud.GALLERY_SETTING"

.field private static final TAG:Ljava/lang/String; = "AccountSetting"

.field private static final VIEW_CLOUD_VIEW:Ljava/lang/String; = "com.samsung.android.gallery.action.VIEW_CLOUD_VIEW"

.field private static final VIEW_RECYCLE_BIN:Ljava/lang/String; = "com.samsung.android.gallery.action.VIEW_RECYCLEBIN_SCLOUD"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

.field private mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsKnox:Z

.field private mIsKnoxInstallMode:Z

.field private final mOnAboutPageClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private final mOnAccountClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private final mOnCheckChangeListener:Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;

.field private final mOnCloudViewClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private final mOnEventSharingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private final mOnImageAnalysisChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mOnRecycleBinClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiveCloudSyncOn:Z

.field private final mResourceId:I

.field private final mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

.field private final mSignInReceiver:Landroid/content/BroadcastReceiver;

.field private final mVCServiceConnectionListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;

.field private final mVCSettingListener:Lcom/samsung/android/visioncloudagent/aidl/IListener;

.field private mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseImageAnalysis:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_ENABLE_IMAGE_ANALYSIS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_USE_CLOUD_NAME_FOR_JAPAN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mIsKnoxInstallMode:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mIsKnox:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mReceiveCloudSyncOn:Z

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$1;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnAccountClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$2;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnCloudViewClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$3;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnRecycleBinClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$4;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnEventSharingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$5;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnImageAnalysisChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$6;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnCheckChangeListener:Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$7;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVCServiceConnectionListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$8;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnAboutPageClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$9;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$9;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVCSettingListener:Lcom/samsung/android/visioncloudagent/aidl/IListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSignInReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$11;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$11;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    const/high16 v0, 0x7f080000

    iput v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mResourceId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/settings/AccountSettingManager;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mIsKnoxInstallMode:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mIsKnox:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mReceiveCloudSyncOn:Z

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$1;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnAccountClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$2;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnCloudViewClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$3;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnRecycleBinClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$4;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnEventSharingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$5;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnImageAnalysisChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$6;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnCheckChangeListener:Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$7;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVCServiceConnectionListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$8;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnAboutPageClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$9;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$9;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVCSettingListener:Lcom/samsung/android/visioncloudagent/aidl/IListener;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$10;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSignInReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$11;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$11;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    iput p2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mResourceId:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOXInstallMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mIsKnoxInstallMode:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mIsKnox:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleCloudScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleCloudView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->setStateForImageAnalysis(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->setLoadingStateForImageAnalysis(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->showProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_USE_CLOUD_NAME_FOR_JAPAN:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->reloadPreference()V

    return-void
.end method

.method static synthetic access$1702(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mReceiveCloudSyncOn:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleAutoCreateStories(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleRecycleBin()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleGoToUrl(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleStoryShare()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Landroid/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleImageAnalysis(Landroid/preference/Preference;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleCloudSyncOnOff(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->resetImageAnalysisSettingPreferences()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleAboutPage()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->isLoadingForImageAnalysis()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAppUpdateIfNeed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkNeedToUpdateApk(Landroid/content/Context;Landroid/view/Menu;)V

    return-void
.end method

.method private createProcessForImageAnalysis()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_ENABLE_IMAGE_ANALYSIS:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private destroyProcessForImageAnalysis()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_ENABLE_IMAGE_ANALYSIS:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private getStateForImageAnalysis()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "image_analysis_result"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleAboutPage()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->startAboutPage()V

    return-void
.end method

.method private handleAutoCreateStories(IZZ)V
    .locals 5

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    :cond_0
    if-nez p2, :cond_3

    if-nez p1, :cond_3

    :cond_1
    new-instance v1, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;-><init>(IZZZ)V

    const-string/jumbo v2, "Settings"

    invoke-interface {v1, v2}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    const-string/jumbo v2, "AutoCreateStoriesOn"

    :goto_0
    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v2, v4, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "AutoCreateStoriesOff"

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleAutoCreateStories(Z)V

    goto :goto_1
.end method

.method private handleAutoCreateStories(Z)V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    move v3, v5

    :goto_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "auto_create_event"

    invoke-static {v7, v8, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.cmh.autoevent"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "auto_create_event"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p1, :cond_3

    const-string/jumbo v7, "501"

    const-string/jumbo v8, "5004"

    const-string/jumbo v9, "1"

    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "ACES"

    const/16 v9, 0x3e8

    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "auto_create_event"

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    new-instance v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;

    invoke-direct {v4, v6, p1, v5, v6}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;-><init>(IZZZ)V

    const-string/jumbo v5, "Settings"

    invoke-interface {v4, v5}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    const-string/jumbo v5, "AutoCreateStoriesOn"

    :goto_2
    sget-object v7, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, v5, v7, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_1
    return-void

    :cond_2
    move v3, v6

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "501"

    const-string/jumbo v8, "5004"

    const-string/jumbo v9, "0"

    invoke-static {v7, v8, v9}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "ACES"

    invoke-static {v7, v8, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "AutoCreateStoriesOff"

    goto :goto_2
.end method

.method private handleCloudScreen()Z
    .locals 9

    const/4 v8, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "501"

    const-string/jumbo v5, "5001"

    const-string/jumbo v6, "1"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "client_id"

    const-string/jumbo v5, "tj9u972o46"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "client_secret"

    const-string/jumbo v5, "D234AE3C42F092D4334433173AE9E264"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "mypackage"

    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "OSP_VER"

    const-string/jumbo v5, "OSP_02"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "MODE"

    const-string/jumbo v5, "ADD_ACCOUNT"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mReceiveCloudSyncOn:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSettingsState;-><init>(IZZZ)V

    const-string/jumbo v4, "CrossSamsungCloudCloudSyncScreen"

    invoke-interface {v2, v4}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "CrossSamsungCloudCloudSyncScreen"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_1
    return v8

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "501"

    const-string/jumbo v5, "5001"

    const-string/jumbo v6, "3"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.scloud.GALLERY_SETTING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "AccountSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity Not Found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "CrossSamsungCloudCloudSyncScreen"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_1

    :cond_1
    :try_start_1
    const-string/jumbo v4, "501"

    const-string/jumbo v5, "5001"

    const-string/jumbo v6, "2"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private handleCloudSyncOnOff(Z)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->changeSCloudContentSyncState(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->reloadPreference()V

    :goto_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v3, p1, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleCloudSyncOnOff(ZZZ)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$AccountSyncOnTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private handleCloudSyncOnOff(ZZZ)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "CloudSyncOn"

    :goto_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a07ef

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v1, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_2
    return-void

    :cond_0
    const-string/jumbo v1, "CloudSyncOff"

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a07f2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a07ee

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a07f1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleCloudSyncOnOff(Z)V

    goto :goto_2
.end method

.method private handleCloudView()V
    .locals 5

    :try_start_0
    const-string/jumbo v2, "501"

    const-string/jumbo v3, "5011"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.gallery.action.VIEW_CLOUD_VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AccountSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity Not Found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleGoToUrl(Z)V
    .locals 3

    const-string/jumbo v1, "501"

    const-string/jumbo v2, "5014"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "go_to_url"

    invoke-static {v0, v1, p1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private handleGoToUrlFromBixby(Z)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v4, "GoToUrlSettingOn"

    :goto_0
    const-string/jumbo v5, "go_to_url"

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v5, 0x7f0a0820

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    const-string/jumbo v4, "GoToUrlSettingOff"

    goto :goto_0

    :cond_1
    const v5, 0x7f0a0823

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleGoToUrl(Z)V

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const v5, 0x7f0a0821

    :goto_3
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    goto :goto_2

    :cond_3
    const v5, 0x7f0a0824

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0822

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_2
.end method

.method private handleImageAnalysis(Landroid/preference/Preference;Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-virtual {v1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->setAnalysisSetting(Z)V

    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->visibilityForImageAnalysis(Landroid/preference/Preference;Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->setLoadingStateForImageAnalysis(Z)V

    return-void
.end method

.method private handleImageAnalysisFromBixby(Z)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v4, "ImageAnalysisOn"

    :goto_0
    const-string/jumbo v5, "image_analysis"

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v5, 0x7f0a0817

    :goto_1
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    const-string/jumbo v4, "ImageAnalysisOff"

    goto :goto_0

    :cond_1
    const v5, 0x7f0a081a

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "image_analysis"

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleImageAnalysis(Landroid/preference/Preference;Z)V

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const v5, 0x7f0a0818

    :goto_3
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    goto :goto_2

    :cond_3
    const v5, 0x7f0a081b

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0819

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_2
.end method

.method private handleRecycleBin()V
    .locals 5

    :try_start_0
    const-string/jumbo v2, "501"

    const-string/jumbo v3, "5002"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.gallery.action.VIEW_RECYCLEBIN_SCLOUD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AccountSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity Not Found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "RecycleBin"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0
.end method

.method private handleStoryShare()V
    .locals 2

    const-string/jumbo v0, "501"

    const-string/jumbo v1, "5003"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->startEventSharingSetting()V

    :cond_0
    return-void
.end method

.method private handleSuggestImage(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "event_image_suggestion"

    invoke-static {v1, v2, p1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "freeze"

    invoke-static {v1, v2, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelFreezeColumn(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string/jumbo v1, "501"

    const-string/jumbo v2, "5005"

    const-string/jumbo v3, "1"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v4, p1, v5}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleSuggestImage(ZZZ)V

    const-string/jumbo v1, "image_suggestions"

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "freeze"

    invoke-static {v1, v2, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateChannelFreezeColumn(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string/jumbo v1, "501"

    const-string/jumbo v2, "5005"

    const-string/jumbo v3, "0"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSuggestImage(ZZZ)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "SuggestImagesOn"

    :goto_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0812

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v1, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_2
    return-void

    :cond_0
    const-string/jumbo v1, "SuggestImagesOff"

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0814

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0811

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    if-nez p1, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0813

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleSuggestImage(Z)V

    goto :goto_2
.end method

.method private isLoadingForImageAnalysis()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "image_analysis_loading"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private loadPreferenceFragment(Landroid/accounts/Account;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->resetCloudSyncPreferences(Landroid/accounts/Account;)V

    :cond_1
    :goto_1
    sget-boolean v6, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_ENABLE_IMAGE_ANALYSIS:Z

    if-eqz v6, :cond_6

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->resetImageAnalysisSettingPreferences()V

    :cond_2
    :goto_2
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->resetEventSettingPreferences()V

    :cond_3
    :goto_3
    const-string/jumbo v6, "advanced_setting"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToURL:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->resetGoToUrlPreferences()V

    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->resetAboutPagePreferences()V

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "samsung_cloud_sync"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "samsung_cloud_sync"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    const-string/jumbo v6, "image_analysis"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_7
    const-string/jumbo v6, "event_settings"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_3

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_8
    const-string/jumbo v6, "go_to_url"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    if-eqz v4, :cond_4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private reloadPreference()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    :try_start_0
    iget v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mResourceId:I

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->addPreferencesFromResource(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->loadPreferenceFragment(Landroid/accounts/Account;)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AccountSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to add preference. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetAboutPagePreferences()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "about_page"

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a0024

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0a0051

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnAboutPageClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->checkAppUpdateIfNeed()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->needToShowBadge(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f040018

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method private resetCloudSyncPreferences(Landroid/accounts/Account;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x1

    const-string/jumbo v6, "samsung_cloud_sync"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_0

    sget-boolean v6, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_USE_CLOUD_NAME_FOR_JAPAN:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    const-string/jumbo v6, "cloud_sync"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;

    if-eqz v0, :cond_1

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a043d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    if-nez p1, :cond_a

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setSwitchButtonVisibility(Z)V

    sget-boolean v6, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_USE_CLOUD_NAME_FOR_JAPAN:Z

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a03dd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setChecked(Z)V

    :goto_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f100111

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {p0, v0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->setSummaryColor(Landroid/preference/Preference;I)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnAccountClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnCheckChangeListener:Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setOnCheckChangeListener(Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference$OnSwitchChangeListener;)V

    :cond_1
    const-string/jumbo v6, "cloud_view"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_c

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_4
    const-string/jumbo v6, "recycle_bin"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_e

    if-eqz v3, :cond_3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_5
    return-void

    :cond_4
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01de

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0383

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    sget-boolean v6, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_USE_CLOUD_NAME_FOR_JAPAN:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0381

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0380

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a03de

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a043e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0382

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setSwitchButtonVisibility(Z)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScloudView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isDisabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_c
    sget-boolean v6, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_USE_CLOUD_NAME_FOR_JAPAN:Z

    if-eqz v6, :cond_d

    const v6, 0x7f0a020f

    :goto_6
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnCloudViewClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_4

    :cond_d
    const v6, 0x7f0a020e

    goto :goto_6

    :cond_e
    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnRecycleBinClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_5
.end method

.method private resetEventSettingPreferences()V
    .locals 9

    const-string/jumbo v6, "event_settings"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    const-string/jumbo v6, "event_sharing"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0185

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnEventSharingClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f100111

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->setSummaryColor(Landroid/preference/Preference;I)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mIsKnoxInstallMode:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mIsKnox:Z

    if-eqz v6, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string/jumbo v6, "auto_create_event"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "auto_create_event"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    new-instance v6, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$12;

    invoke-direct {v6, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$12;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    invoke-virtual {v0, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string/jumbo v6, "image_suggestions"

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_4

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f0a0209

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setTitle(I)V

    const v6, 0x7f0a020a

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_3
    new-instance v6, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$13;

    invoke-direct {v6, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$13;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    return-void

    :cond_5
    iget-object v6, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0184

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private resetGoToUrlPreferences()V
    .locals 2

    const-string/jumbo v1, "go_to_url"

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$14;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment$14;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private resetImageAnalysisSettingPreferences()V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "image_analysis"

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-boolean v4, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_USE_CLOUD_NAME_FOR_JAPAN:Z

    if-eqz v4, :cond_2

    const v4, 0x7f0a0201

    :goto_0
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mOnImageAnalysisChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->isLoadingForImageAnalysis()Z

    move-result v2

    if-nez v2, :cond_3

    move v4, v5

    :goto_1
    invoke-direct {p0, v1, v4}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->visibilityForImageAnalysis(Landroid/preference/Preference;Z)V

    const/4 v4, -0x2

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->setStateForImageAnalysis(I)V

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->setAnalysisSetting(Z)V

    const-string/jumbo v4, "AccountSetting"

    const-string/jumbo v5, "onNotifyToApp debug : Error, Reload request start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void

    :cond_2
    const v4, 0x7f0a0200

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->getAnalysisSetting()I

    move-result v3

    if-ltz v3, :cond_1

    if-eqz v3, :cond_5

    move v0, v5

    :goto_3
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0, v1, v5}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->visibilityForImageAnalysis(Landroid/preference/Preference;Z)V

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->setLoadingStateForImageAnalysis(Z)V

    goto :goto_2

    :cond_5
    move v0, v6

    goto :goto_3
.end method

.method private setLoadingStateForImageAnalysis(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "image_analysis_loading"

    invoke-static {v0, v1, p1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private setStateForImageAnalysis(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "image_analysis_result"

    invoke-static {v0, v1, p1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setSummaryColor(Landroid/preference/Preference;I)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showProgressDialog(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0335

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private startAboutPage()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a083e

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "AboutGallery"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void
.end method

.method private startEventSharingSetting()V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/gallery3d/settings/EventSharingSettingActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "event_view_setting"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;->STORY_SHARING_SCREEN:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgStorySharingState$StorySharingMenu;Z)V

    const-string/jumbo v3, "StorySharing"

    invoke-interface {v2, v3}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "StorySharing"

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v4, v5, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private visibilityForImageAnalysis(Landroid/preference/Preference;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string/jumbo v0, "AccountSetting"

    const-string/jumbo v1, "onActivityResult: SA Sign in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mReceiveCloudSyncOn:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->showProgressDialog(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mReceiveCloudSyncOn:Z

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->registerOnAccountUpdatedListener(Lcom/sec/android/gallery3d/settings/AccountSettingManager$OnAccountUpdatedListener;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityOnBackPressed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.scloud.cloudAgent.CloudStore.ACTION_NOTIFY_SYNC_ON_TO_GALLERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSignInReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v1, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_ENABLE_IMAGE_ANALYSIS:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVCServiceConnectionListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->setVCServiceConnectionListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVCSettingListener:Lcom/samsung/android/visioncloudagent/aidl/IListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->setVCSettingListener(Lcom/samsung/android/visioncloudagent/aidl/IListener;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->bindService()V

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogAccountSettingDetailFragmentListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    new-instance v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AccountSettingsDetailFragmentDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    :cond_1
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/16 v3, 0x3ea

    const/16 v2, 0x3e9

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSignInReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSignInReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    sget-boolean v0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->FEATURE_ENABLE_IMAGE_ANALYSIS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->unbindService()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_4
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->unregisterOnAccountUpdatedListener(Lcom/sec/android/gallery3d/settings/AccountSettingManager$OnAccountUpdatedListener;)V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->destroyProcessForImageAnalysis()V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->reloadPreference()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->createProcessForImageAnalysis()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v2}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v1, "image_analysis"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "image_analysis_loading"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getStateForImageAnalysis()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "image_analysis"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0, v0, v4}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->visibilityForImageAnalysis(Landroid/preference/Preference;Z)V

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->setStateForImageAnalysis(I)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "image_analysis"

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->getStateForImageAnalysis()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0, v4}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->visibilityForImageAnalysis(Landroid/preference/Preference;Z)V

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->setStateForImageAnalysis(I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3980a6c3 -> :sswitch_1
        0x2d641140 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSyncAccountsUpdated(Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->resetCloudSyncPreferences(Landroid/accounts/Account;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 14

    move-object/from16 v4, p2

    check-cast v4, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v5

    const-string/jumbo v11, "AccountSetting"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Event update ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_AUTO_CREATE_STORIES:I

    if-ne v5, v11, :cond_3

    const-string/jumbo v11, "auto_create_event"

    invoke-virtual {p0, v11}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v1, 0x1

    :goto_0
    const/4 v11, 0x0

    invoke-direct {p0, v1, v10, v11}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleAutoCreateStories(IZZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v11, "AccountSetting"

    const-string/jumbo v12, "autoCreateEvent preference is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_RECYCLE_BIN:I

    if-ne v5, v11, :cond_6

    iget-object v11, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleRecycleBin()V

    goto :goto_1

    :cond_4
    iget-object v11, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v12, 0x7f0a07f4

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v9

    iget-object v11, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "RecycleBin"

    sget-object v13, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v11, v12, v13, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v11, "501"

    const-string/jumbo v12, "5001"

    const-string/jumbo v13, "1"

    invoke-static {v11, v12, v13}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v11, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "client_id"

    const-string/jumbo v12, "tj9u972o46"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "client_secret"

    const-string/jumbo v12, "D234AE3C42F092D4334433173AE9E264"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "mypackage"

    iget-object v12, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "OSP_VER"

    const-string/jumbo v12, "OSP_02"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v11, "MODE"

    const-string/jumbo v12, "ADD_ACCOUNT"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mReceiveCloudSyncOn:Z

    const/4 v11, 0x1

    invoke-virtual {p0, v8, v11}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v11, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "RecycleBin"

    sget-object v13, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v11, v12, v13}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_1

    :cond_6
    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SUGGEST_IMAGES_CONTROL:I

    if-ne v5, v11, :cond_8

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const-string/jumbo v11, "image_suggestions"

    invoke-virtual {p0, v11}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    const/4 v11, 0x0

    invoke-direct {p0, v6, v10, v11}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleSuggestImage(ZZZ)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v11, "AccountSetting"

    const-string/jumbo v12, "imageSuggest preference is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_SHARING:I

    if-ne v5, v11, :cond_9

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleStoryShare()V

    goto/16 :goto_1

    :cond_9
    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CLOUD_SYNC_CONTROL:I

    if-ne v5, v11, :cond_b

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const-string/jumbo v11, "cloud_sync"

    invoke-virtual {p0, v11}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/settings/AccountSettingSwitchPreference;->isChecked()Z

    move-result v2

    const/4 v11, 0x0

    invoke-direct {p0, v2, v10, v11}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleCloudSyncOnOff(ZZZ)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v11, "AccountSetting"

    const-string/jumbo v12, "CloudSync preference is null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CLOUD_SYNC_ACTION:I

    if-ne v5, v11, :cond_c

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleCloudScreen()Z

    goto/16 :goto_1

    :cond_c
    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_GO_TO_URL_CONTROL:I

    if-ne v5, v11, :cond_d

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {p0, v10}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleGoToUrlFromBixby(Z)V

    goto/16 :goto_1

    :cond_d
    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_IMAGE_ANALYSIS_CONTROL:I

    if-ne v5, v11, :cond_e

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {p0, v10}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleImageAnalysisFromBixby(Z)V

    goto/16 :goto_1

    :cond_e
    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CLOUD_VIEW:I

    if-ne v5, v11, :cond_10

    iget-object v11, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleCloudView()V

    goto/16 :goto_1

    :cond_f
    iget-object v11, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const v12, 0x7f0a07f4

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v9

    iget-object v11, p0, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "CloudView"

    sget-object v13, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v11, v12, v13, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_1

    :cond_10
    sget v11, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ABOUT_GALLERY:I

    if-ne v5, v11, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->handleAboutPage()V

    goto/16 :goto_1
.end method
