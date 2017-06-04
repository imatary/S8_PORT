.class public Lcom/sec/android/gallery3d/interfaces/GalleryLibController;
.super Ljava/lang/Object;
.source "GalleryLibController.java"

# interfaces
.implements Lcom/sec/android/gallery3d/interfaces/LibraryController;


# static fields
.field private static final KEY_URI_LIST:Ljava/lang/String; = "uriList"

.field private static final KEY_VIEW_SIGHT_MODE_IN_LOCK:Ljava/lang/String; = "isSightAlbumInLock"

.field private static final TAG:Ljava/lang/String; = "GalleryLibController"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method


# virtual methods
.method public cpuScrollBoostRelease()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;->BOOST_RELEASE:Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "CPU_BOOST_SCROLL"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public cpuScrollBoostStart()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;->BOOST_CPU:Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "CPU_BOOST_SCROLL"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public disableFinishingAtSecureLock()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->disableFinishingAtSecureLock()V

    return-void
.end method

.method public getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/sec/samsung/gallery/util/TTSUtil;->getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertMobileToTVLog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "SEMT"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public isASoundSceneFileSelected()Z
    .locals 12

    iget-object v8, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v5

    instance-of v8, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-nez v8, :cond_0

    instance-of v8, v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    if-eqz v8, :cond_4

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v4, :cond_1

    instance-of v9, v4, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v9, :cond_3

    move-object v6, v4

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v10, 0x10

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_3
    instance-of v9, v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v9, :cond_1

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v10, 0x10

    invoke-virtual {v4, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v9, v3, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v9, :cond_5

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v10, 0x10

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public isCameraQuickViewOnLockscreen()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public isDualScreenMode()Z
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    return v0
.end method

.method public isFromCamera()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCamera()Z

    move-result v0

    return v0
.end method

.method public isMultiWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    return v0
.end method

.method public isTalkBackEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiDisplayConnected()Z
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceToTV:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mWifiDisplayUtils:Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->isWifiDisplayConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeIntentForDualScreenMode(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->makeIntentForDualScreenMode(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public onCoverModeChanged()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->onCoverModeChanged()V

    :cond_0
    return-void
.end method

.method public play3DTour(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "PLAY_3DTOUR"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public playFastMotion(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;->START_FAST_MOTION:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "PLAY_MOTION_VIDEO"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public playFlipVideo(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "CHECK_VIDEO_PLAY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public playMagicShotStudio(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "MAGIC_SHOT_STUDIO"

    invoke-virtual {v2, v3, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public playMotionPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "com.samsung.android.app.motionpanoramaviewer"

    const-string/jumbo v3, "com.samsung.android.app.motionpanoramaviewer.ViewerActivity"

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkComponentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_MOTION_PANORAMA:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SCLOUD_TEMP_DOWNLOAD"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "PLAY_MOTION_PANAROMA"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public playMotionPhoto(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "com.sec.android.app.apex"

    const-string/jumbo v3, "com.sec.android.app.apex.player.PlayerActivity"

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkComponentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_MOTION_PHOTO:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SCLOUD_TEMP_DOWNLOAD"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "PLAY_MOTION_PHOTO"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public playSelfMotionPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "com.samsung.android.app.selfmotionpanoramaviewer"

    const-string/jumbo v3, "com.samsung.android.app.selfmotionpanoramaviewer.ViewerActivity"

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkComponentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_SELF_MOTION_PANORAMA:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SCLOUD_TEMP_DOWNLOAD"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v0, v6, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v1, v0, v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "PLAY_SELF_MOTION_PANAROMA"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public playSlowMotion(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;->START_SLOW_MOTION:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "PLAY_MOTION_VIDEO"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public playUnlockIcon(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/sec/android/gallery3d/app/GalleryOpaqueActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isSightAlbumInLock"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "isSightMode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "from-Camera"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v2, 0x1000c000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v2, "from-Unlock"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x14004000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GalleryLibController"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public playVideo(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-eqz p2, :cond_0

    const-string/jumbo v4, "uriList"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v4, "resume_position"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_0
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v5, v0, v4

    const/4 v4, 0x1

    aput-object p1, v0, v4

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v4, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "CHECK_VIDEO_PLAY"

    invoke-virtual {v4, v5, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public playVirtualShot(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "PLAY_INTERACTIVESHOT_IMAGE"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public runCategoryTag()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->UPDATE_SCREEN_CAHNGE_CATEGORY:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    const/4 v2, 0x2

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v2, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "START_CATEGORY_TAG"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public runIdleListener()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->RUN_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public runMoreInfoEvent(II)V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "MOREINFO_EVENT"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public runMoreInfoRename(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "RENAME_ALBUM_OR_FILE"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public sendItemChanged(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1, p2}, Lcom/sec/android/gallery3d/util/DualScreenManager;->sendItemChanged(Landroid/app/Activity;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V

    return-void
.end method

.method public setMultiWindow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setMultiWindow()V

    return-void
.end method
