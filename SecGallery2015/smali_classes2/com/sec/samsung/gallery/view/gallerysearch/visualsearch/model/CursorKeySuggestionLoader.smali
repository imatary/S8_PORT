.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;
.super Ljava/lang/Object;
.source "CursorKeySuggestionLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader$CoverBitmapTask;
    }
.end annotation


# static fields
.field static final FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

.field private static final TYPE_NANO_THUMBNAIL:I = 0x4

.field private static final VIDEO_SEARCH_DIR:Ljava/lang/String;

.field private static mImageCacheService:Lcom/sec/android/gallery3d/data/ImageCacheService;

.field private static mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mKeyword:Ljava/lang/String;

.field final mLocale:Ljava/util/Locale;

.field private final mThumbnailSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/.face/.videosearch/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->VIDEO_SEARCH_DIR:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mLocale:Ljava/util/Locale;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mKeyword:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b07d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mThumbnailSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->VIDEO_SEARCH_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mThumbnailSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;)Lcom/sec/android/gallery3d/data/ImageCacheService;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->getCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;

    move-result-object v0

    return-object v0
.end method

.method private getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x4

    const/4 v6, 0x0

    invoke-static {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->get()Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v5

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->getCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->getCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/ImageCacheService;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v0, Lcom/sec/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;

    iget-object v1, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v2, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v3, v5, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {v0, v1, v2, v3, v9}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :cond_0
    invoke-static {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    return-object v6

    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v0
.end method

.method private declared-synchronized getCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mImageCacheService:Lcom/sec/android/gallery3d/data/ImageCacheService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mImageCacheService:Lcom/sec/android/gallery3d/data/ImageCacheService;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mImageCacheService:Lcom/sec/android/gallery3d/data/ImageCacheService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    const-class v8, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized shutDownThreadPool()V
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method


# virtual methods
.method public setCoverBitmap(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V
    .locals 4

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader$CoverBitmapTask;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader$CoverBitmapTask;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    :try_start_0
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader$CoverBitmapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader$CoverBitmapTask;->cancel(Z)Z

    goto :goto_0
.end method
