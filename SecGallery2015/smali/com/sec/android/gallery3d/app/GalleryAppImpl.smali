.class public Lcom/sec/android/gallery3d/app/GalleryAppImpl;
.super Landroid/app/Application;
.source "GalleryAppImpl.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/GalleryApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/app/GalleryAppImpl$GalleryUncaughtExceptionHandler;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_CAPACITY:J = 0x4000000L

.field private static final DOWNLOAD_FOLDER:Ljava/lang/String; = "download"

.field private static final TAG:Ljava/lang/String; = "GalleryAppImpl"


# instance fields
.field private final mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mActivityRecreated:Z

.field public mAppCreateTime:J

.field private mClusterType:I

.field private mDCAppListenerImpl:Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;

.field private mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mDownloadCache:Lcom/sec/android/gallery3d/data/DownloadCache;

.field private mDrmUtil:Lcom/sec/android/gallery3d/util/ImageDRMUtil;

.field private mFeatureUseFaceTag:Z

.field private mImageCacheService:Lcom/sec/android/gallery3d/data/ImageCacheService;

.field private mImplFestivalEndTime:J

.field private mImplFestivalStartTime:J

.field private mIntent:Landroid/content/Intent;

.field private mIsBoundWithQuickViewService:Z

.field private mIsFestivalMode:Z

.field private mIsPhotoPage:Z

.field private final mLock:Ljava/lang/Object;

.field private mOperation:I

.field private mQuickViewService:Lcom/sec/android/gallery3d/service/IQuickViewService;

.field private mRestartClustering:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mSlideShowMode:Z

.field private mSortByFilterType:I

.field private mStopSmartClustering:Z

.field private mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field private mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mUseFeatureFestival:Z

.field private mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mIsPhotoPage:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mSlideShowMode:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mActivityRecreated:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mClusterType:I

    iput v1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mOperation:I

    iput v1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mSortByFilterType:I

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/GalleryActivityLifecycleCallback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mIsFestivalMode:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mUseFeatureFestival:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mStopSmartClustering:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mRestartClustering:Z

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryAppImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl$1;-><init>(Lcom/sec/android/gallery3d/app/GalleryAppImpl;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/app/GalleryAppImpl;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/app/GalleryAppImpl;Lcom/sec/android/gallery3d/service/IQuickViewService;)Lcom/sec/android/gallery3d/service/IQuickViewService;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mQuickViewService:Lcom/sec/android/gallery3d/service/IQuickViewService;

    return-object p1
.end method

.method private initUncaughtExceptionHandler()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/sec/android/gallery3d/app/GalleryAppImpl$GalleryUncaughtExceptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/app/GalleryAppImpl$GalleryUncaughtExceptionHandler;-><init>(Lcom/sec/android/gallery3d/app/GalleryAppImpl;Lcom/sec/android/gallery3d/app/GalleryAppImpl$1;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method private setDCExecutorDefaultCallback()V
    .locals 1

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDCAppListenerImpl:Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDCAppListenerImpl:Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->onDeviceCogApplicationCreate()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->stopNearbyFramework(Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getAppIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getCurrentClusterType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mClusterType:I

    return v0
.end method

.method public declared-synchronized getDataManager()Lcom/sec/android/gallery3d/data/DataManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/gallery3d/data/DataManager;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/data/DataManager;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    new-instance v1, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/data/GalleryMediaSourceProvider;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->setMediaSourceProvider(Lcom/sec/android/gallery3d/data/MediaSourceProvider;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDownloadCache()Lcom/sec/android/gallery3d/data/DownloadCache;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/sec/android/gallery3d/data/DownloadCache;

    if-nez v2, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "download"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to create: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    new-instance v2, Lcom/sec/android/gallery3d/data/DownloadCache;

    const-wide/32 v4, 0x4000000

    invoke-direct {v2, p0, v0, v4, v5}, Lcom/sec/android/gallery3d/data/DownloadCache;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/io/File;J)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/sec/android/gallery3d/data/DownloadCache;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDownloadCache:Lcom/sec/android/gallery3d/data/DownloadCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDrmUtil:Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDrmUtil:Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDrmUtil:Lcom/sec/android/gallery3d/util/ImageDRMUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFestivalEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mImplFestivalEndTime:J

    return-wide v0
.end method

.method public getFestivalStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mImplFestivalStartTime:J

    return-wide v0
.end method

.method public getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/sec/android/gallery3d/data/ImageCacheService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/ImageCacheService;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/sec/android/gallery3d/data/ImageCacheService;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/sec/android/gallery3d/data/ImageCacheService;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;

    move-result-object v0

    return-object v0
.end method

.method public getQuickViewService()Lcom/sec/android/gallery3d/service/IQuickViewService;
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mQuickViewService:Lcom/sec/android/gallery3d/service/IQuickViewService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mIsBoundWithQuickViewService:Z

    if-nez v2, :cond_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.gallery3d"

    const-string/jumbo v3, "com.sec.android.gallery3d.service.QuickViewService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v4}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mIsBoundWithQuickViewService:Z

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mQuickViewService:Lcom/sec/android/gallery3d/service/IQuickViewService;

    return-object v2
.end method

.method public getRefreshOperation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mOperation:I

    return v0
.end method

.method public getResourceContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getRestartSmartClustering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mRestartClustering:Z

    return v0
.end method

.method public getSortByType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mSortByFilterType:I

    return v0
.end method

.method public getStopSmartClustering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mStopSmartClustering:Z

    return v0
.end method

.method public declared-synchronized getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/util/ThreadPool;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVisionCloudUtils()Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    return-object v0
.end method

.method public initializeDisplayMetrics()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->init(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->setThumbnailSizes(IF)V

    div-int/lit8 v2, v0, 0x2

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->setMaxSide(I)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/ui/TileImageView;->setDisplaySize(II)V

    return-void
.end method

.method public isActivityRecreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mActivityRecreated:Z

    return v0
.end method

.method public isArcMode()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mFeatureUseFaceTag:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x20

    iget v2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mClusterType:I

    if-eq v1, v2, :cond_2

    const/16 v1, 0x80

    iget v2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mClusterType:I

    if-eq v1, v2, :cond_2

    const/16 v1, 0x4000

    iget v2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mClusterType:I

    if-eq v1, v2, :cond_2

    const v1, 0x8000

    iget v2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mClusterType:I

    if-eq v1, v2, :cond_2

    const/high16 v1, 0x10000

    iget v2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mClusterType:I

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFestivalMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mUseFeatureFestival:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mIsFestivalMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoPage()Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mIsPhotoPage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlideShowMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mSlideShowMode:Z

    return v0
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mAppCreateTime:J

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "GalleryAppImpl onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->initUncaughtExceptionHandler()V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->initializeDisplayMetrics()V

    invoke-static {p0}, Lcom/sec/android/gallery3d/gadget/WidgetUtils;->initialize(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/TabTagType;->initializeEnum()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFestival:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mUseFeatureFestival:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mActivityLifecycleCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setDCExecutorDefaultCallback()V

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mFeatureUseFaceTag:Z

    invoke-static {p0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->init(Landroid/app/Application;)V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "GalleryAppImpl onCreate End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setActivityRecreated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mActivityRecreated:Z

    return-void
.end method

.method public setAppIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setCurrentClusterType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mClusterType:I

    return-void
.end method

.method public setDCActivityInfoListener(Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mDCAppListenerImpl:Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->setDCActivityInfoListener(Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;)V

    return-void
.end method

.method public setImplFestivalData(ZJJ)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mIsFestivalMode:Z

    if-eqz p1, :cond_0

    iput-wide p2, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mImplFestivalStartTime:J

    iput-wide p4, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mImplFestivalEndTime:J

    :cond_0
    return-void
.end method

.method public setIsPhotoPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mIsPhotoPage:Z

    return-void
.end method

.method public setRefreshOperation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mOperation:I

    return-void
.end method

.method public setRestartSmartClustering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mRestartClustering:Z

    return-void
.end method

.method public setSlideShowMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mSlideShowMode:Z

    return-void
.end method

.method public setSortByType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mSortByFilterType:I

    return-void
.end method

.method public setStopSmartClustering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mStopSmartClustering:Z

    return-void
.end method

.method public unbindQuickViewService()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mIsBoundWithQuickViewService:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->mIsBoundWithQuickViewService:Z

    :cond_0
    return-void
.end method
