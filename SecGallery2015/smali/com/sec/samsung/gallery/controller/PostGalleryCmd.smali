.class public Lcom/sec/samsung/gallery/controller/PostGalleryCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "PostGalleryCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;,
        Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;,
        Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;
    }
.end annotation


# static fields
.field private static final FeatureLowStorageMode:Z

.field private static final TAG:Ljava/lang/String; = "PostGalleryCmd"


# instance fields
.field private final enumType:[Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

.field private mActivity:Landroid/app/Activity;

.field private mBadgeUpdator:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

.field private final mCategoryContentObserver:Landroid/database/ContentObserver;

.field private mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mHandler:Landroid/os/Handler;

.field private final mNearbyDevicesObserver:Landroid/database/ContentObserver;

.field private final mPostCommandQueue:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;

.field private mSConnectManager:Lcom/sec/android/gallery3d/sconnect/SConnectManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->FeatureLowStorageMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;-><init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mPostCommandQueue:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;

    invoke-static {}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->values()[Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->enumType:[Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mNearbyDevicesObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$3;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCategoryContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)[Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->enumType:[Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;)Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->create(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->resume(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->updateGroup()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)Lorg/puremvc/java/multicore/patterns/facade/Facade;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->FeatureLowStorageMode:Z

    return v0
.end method

.method private checkLowMemoryAndFinishActivity()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkLowStorage(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCoverMode()Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCoverMode()Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    new-instance v3, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->showDialog()V

    move v1, v2

    goto :goto_0
.end method

.method private checkNearbyItem()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    const-string/jumbo v6, "nearby"

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v6, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v6, "PostGalleryCmd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkNearbyItem() : length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", bExist = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private cloudSync(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloud:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudRefer;->isCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudRefer;->cloudAlbumsSync(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->cloudAlbumsSync(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private create(Landroid/app/Activity;)V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "PostGalleryCmd create() START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostStart(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->start(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->start(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretDirMounted(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->initNearby(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->registerCategoryContentObserver()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->registerDesktopModeManagerListener()V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->init(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePeopleViewAsCategoryType:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->startSyncContact(Landroid/app/Activity;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->registerSettingsObserver()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->registerPackagesBroadcastReceiver()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->inserLogging()V

    const-string/jumbo v0, "com.samsung.android.gallery.action.VIEW_RECYCLEBIN_SCLOUD"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->remoteSync(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostRelease(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "PostGalleryCmd create() END"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private destroy(Landroid/app/Activity;)V
    .locals 5

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "PostGalleryCmd destroy() START "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->onDestroy()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->unregisterCategoryContentObserver()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->unregisterDesktopModeManagerListener()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->stopSyncContact(Landroid/app/Activity;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->dismissDialog()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->releaseInstance()V

    invoke-static {}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->releaseInstance()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLruCache:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "delete_blob_cache"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/ImageCacheService;->deleteBlobCache(Ljava/io/File;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "delete_blob_cache"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseExitQuickViewWithFlick:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "PostGalleryCmd destroy() END"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "PostGalleryCmd"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initNearby(Landroid/app/Activity;)V
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearby:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->setActivity(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/DataManager;)V

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->startNearbyFramework(Lcom/sec/android/gallery3d/data/DataManager;)V

    goto :goto_0
.end method

.method private inserLogging()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "auto_create_event"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "ACES"

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pause(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "PostGalleryCmd pause() START "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;->dismissDialog()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCheckStorageDialog:Lcom/sec/samsung/gallery/view/common/CheckStorageDialog;

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->unregisterNearbyContentObserver()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->unregisterSConnectManager()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventBadge:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mBadgeUpdator:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mBadgeUpdator:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->unregisterDownloadStateReceiver()V

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->getInstance()Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->stopFindNewEvent()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->releaseInstance()V

    invoke-static {p1}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/KNOXUtil;->releaseInstance()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseImageAnalysis:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SHOW_DISCLAIMER_DIALOG"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "PostGalleryCmd pause() END"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private postSpinnerMenu()V
    .locals 5

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNaviSpinner()Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->isNeedToPostJob()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "POST_UPDATE_DRAWER_GROUP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "UPDATE_SPINNER_EXPANSION_GROUP"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private registerCategoryContentObserver()V
    .locals 4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCategoryContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method private registerDesktopModeManagerListener()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$4;-><init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;)V

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->setDesktopModeManagerListener(Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;)V

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->registerListener()V

    return-void
.end method

.method private registerNearbyContentObserver()V
    .locals 4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearbyDMR:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportNearbyDeviceMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nearby://nearby"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mNearbyDevicesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerPackagesBroadcastReceiver()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "PACKAGES_BROADCAST_RECEIVER"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private registerSConnectManager()V
    .locals 2

    new-instance v1, Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mSConnectManager:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mSConnectManager:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->registerReceiver()V

    return-void
.end method

.method private registerSettingsObserver()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "REGISTER_SETTINGS_OBSERVER"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private remoteSync(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->cloudSync(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->showSCloudPopupForUPSM(Landroid/content/Context;)V

    return-void
.end method

.method private resume(Landroid/app/Activity;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v4, "PostGalleryCmd resume() START "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseImageAnalysis:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isOwnerUser(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getEnableImageAnalysisDisclaimer()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v4, "SHOW_DISCLAIMER_DIALOG"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    aput-object v6, v5, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostStart(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->postSpinnerMenu()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLruCache:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v4, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;

    invoke-direct {v4, p0, v3}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;-><init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;)V

    move-object v2, v3

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$LowMemoryCheckAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/TTSUtil;->onResume()V

    invoke-static {}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->getInstance()Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    move-result-object v2

    invoke-virtual {v2, p1, v8}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->startFindNewEvent(Landroid/content/Context;I)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1, v3, v7}, Lcom/sec/samsung/gallery/access/face/FaceInterface;->requestFaceScan(Landroid/content/Context;Ljava/util/List;Z)V

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->setAutoCreateEvent()V

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudWifiOnlyTurnedOn(Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v2, "PostGalleryCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scloud sync isWifiOnly ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "scloud_wifi_only"

    invoke-static {p1, v2, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "CHECK_TO_SHOW_SECURE_FOLDER_TOP_CARD"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->registerNearbyContentObserver()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->registerSConnectManager()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventBadge:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mBadgeUpdator:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    if-nez v2, :cond_5

    new-instance v2, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mBadgeUpdator:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mBadgeUpdator:Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/controller/PostGalleryCmdBadgeUpdator;->registerDownloadStateReceiver()V

    :cond_6
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->checkAllToUpdateDynamicTabs()V

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostRelease(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "PostGalleryCmd resume() END"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->checkLowMemoryAndFinishActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "PostGalleryCmd"

    const-string/jumbo v4, "onCreate : checkLowMemoryAndFinishActivity() == true, return"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PostGalleryCmd"

    const-string/jumbo v3, "Can not get wifi only setting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private run(Landroid/app/Activity;)V
    .locals 3

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mPostCommandQueue:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mPostCommandQueue:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->dequeue()Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->DESTROY:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->destroy(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->PAUSE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->pause(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setAutoCreateEvent()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "auto_create_event"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.cmh.autoevent"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string/jumbo v2, "auto_create_event"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string/jumbo v2, "auto_create_event"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showSCloudPopupForUPSM(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "SCLOUD_CHECK_UPSM"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private startSyncContact(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->CONTACTS_PERMISSION_GROUP:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "SYNC_CONTACTS"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;->START_SYNC:Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private stopSyncContact(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "SYNC_CONTACTS"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;->STOP_SYNC:Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterCategoryContentObserver()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mCategoryContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method private unregisterDesktopModeManagerListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->unregisterListener()V

    return-void
.end method

.method private unregisterNearbyContentObserver()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearbyDMR:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportNearbyDeviceMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mNearbyDevicesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterSConnectManager()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mSConnectManager:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mSConnectManager:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/sconnect/SConnectManager;->unregisterReceiver()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mSConnectManager:Lcom/sec/android/gallery3d/sconnect/SConnectManager;

    return-void
.end method

.method private updateGroup()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearbyDMR:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->updateNearbyItem()V

    :cond_0
    return-void
.end method

.method private updateNearbyItem()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->checkNearbyItem()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateNearbyDeviceMenu(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "UPDATE_MENU"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 5

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    check-cast v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/PostGalleryCmd;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mPostCommandQueue:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->RUN:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->run(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->CREATE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mPostCommandQueue:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;

    sget-object v4, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->CREATE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->enqueue(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    sget-object v2, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->RESUME:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mPostCommandQueue:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;

    sget-object v4, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->RESUME:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->enqueue(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->DESTROY:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mPostCommandQueue:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;

    sget-object v4, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->CREATE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->removeIfExist(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mPostCommandQueue:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;

    sget-object v4, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->DESTROY:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->enqueue(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->run(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->PAUSE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mPostCommandQueue:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;

    sget-object v4, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->RESUME:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->removeIfExist(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mPostCommandQueue:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;

    sget-object v4, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->PAUSE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostCommandQueue;->enqueue(Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd;->run(Landroid/app/Activity;)V

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
