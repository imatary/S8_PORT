.class public Lcom/sec/android/gallery3d/data/LruCacheManager;
.super Ljava/lang/Object;
.source "LruCacheManager.java"


# static fields
.field private static final ATTRIBUTE_CACHE_MAX_BYTES:I = 0x20000

.field private static final CACHE_NAME_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMAGE_CACHE_MAX_BYTES_HIGH_DENSITY:I = 0x1f400000

.field private static final IMAGE_CACHE_MAX_BYTES_LOW_DENSITY:I = 0xc800000

.field private static LARGE_CACHE_MAX_BYTES:I = 0x0

.field private static MICRO_CACHE_MAX_BYTES:I = 0x0

.field private static MINI_CACHE_MAX_BYTES:I = 0x0

.field private static NANO_CACHE_MAX_BYTES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LruCacheManager"

.field private static WIDGET_CACHE_MAX_BYTES:I


# instance fields
.field private final mCacheArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/gallery3d/data/LruImageCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v1, 0xc800000

    const/high16 v0, 0x6400000

    sput v0, Lcom/sec/android/gallery3d/data/LruCacheManager;->NANO_CACHE_MAX_BYTES:I

    sput v1, Lcom/sec/android/gallery3d/data/LruCacheManager;->MINI_CACHE_MAX_BYTES:I

    const/high16 v0, 0x12c00000

    sput v0, Lcom/sec/android/gallery3d/data/LruCacheManager;->MICRO_CACHE_MAX_BYTES:I

    sput v1, Lcom/sec/android/gallery3d/data/LruCacheManager;->LARGE_CACHE_MAX_BYTES:I

    sput v1, Lcom/sec/android/gallery3d/data/LruCacheManager;->WIDGET_CACHE_MAX_BYTES:I

    new-instance v0, Lcom/sec/android/gallery3d/data/LruCacheManager$1;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/LruCacheManager$1;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/data/LruCacheManager;->CACHE_NAME_ARRAY:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/data/LruCacheManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/data/LruCacheManager$2;-><init>(Lcom/sec/android/gallery3d/data/LruCacheManager;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LruCacheManager;->initializeMaxSize()V

    return-void
.end method

.method private checkMemCacheAvailable(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCache(I)Lcom/sec/android/gallery3d/data/LruImageCache;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/LruImageCache;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LruCacheManager;->createCache(I)Lcom/sec/android/gallery3d/data/LruImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getMaxBytes(I)I
    .locals 2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    sget v0, Lcom/sec/android/gallery3d/data/LruCacheManager;->MICRO_CACHE_MAX_BYTES:I

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    sget v0, Lcom/sec/android/gallery3d/data/LruCacheManager;->MINI_CACHE_MAX_BYTES:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    sget v0, Lcom/sec/android/gallery3d/data/LruCacheManager;->NANO_CACHE_MAX_BYTES:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    sget v0, Lcom/sec/android/gallery3d/data/LruCacheManager;->LARGE_CACHE_MAX_BYTES:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    sget v0, Lcom/sec/android/gallery3d/data/LruCacheManager;->WIDGET_CACHE_MAX_BYTES:I

    goto :goto_0

    :cond_4
    const/high16 v0, 0x20000

    goto :goto_0
.end method

.method private initializeMaxSize()V
    .locals 3

    const/high16 v2, 0x1f400000

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayLongSideSize()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isOverWQHD(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayDensity()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/high16 v0, 0xc800000

    sput v0, Lcom/sec/android/gallery3d/data/LruCacheManager;->NANO_CACHE_MAX_BYTES:I

    sput v2, Lcom/sec/android/gallery3d/data/LruCacheManager;->MINI_CACHE_MAX_BYTES:I

    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/sec/android/gallery3d/data/LruCacheManager;->MICRO_CACHE_MAX_BYTES:I

    sput v2, Lcom/sec/android/gallery3d/data/LruCacheManager;->LARGE_CACHE_MAX_BYTES:I

    sput v2, Lcom/sec/android/gallery3d/data/LruCacheManager;->WIDGET_CACHE_MAX_BYTES:I

    :cond_1
    return-void
.end method


# virtual methods
.method public clearMemory()V
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/LruImageCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LruImageCache;->clearCache()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized createCache(I)Lcom/sec/android/gallery3d/data/LruImageCache;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/LruImageCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v1, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/gallery3d/data/LruCacheManager;->CACHE_NAME_ARRAY:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LruCacheManager;->getMaxBytes(I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->diskCacheSize:I

    new-instance v0, Lcom/sec/android/gallery3d/data/LruImageCache;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LruCacheManager;->checkMemCacheAvailable(I)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/LruImageCache;-><init>(Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCurrentDiskCacheSize()J
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    :goto_0
    if-ge v1, v5, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/data/LruCacheManager;->getCache(I)Lcom/sec/android/gallery3d/data/LruImageCache;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v6, "LruCacheManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCurrentDiskCacheSize: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] type\'s cache is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LruImageCache;->getCurrentDiskCacheSize()J

    move-result-wide v6

    add-long/2addr v2, v6

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_1
    return-wide v2
.end method

.method public getImageData([BILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/data/LruCacheManager;->getCache(I)Lcom/sec/android/gallery3d/data/LruImageCache;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v3, "LruCacheManager"

    const-string/jumbo v4, "ImageCache is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget-boolean v3, v0, Lcom/sec/android/gallery3d/data/LruImageCache;->bUseMemoryCache:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/String;

    array-length v4, p1

    invoke-direct {v3, p1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/LruImageCache;->getBitmapFromMemCache(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    iget-object v4, p3, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v4, v4

    if-le v3, v4, :cond_1

    array-length v3, v1

    new-array v3, v3, [B

    iput-object v3, p3, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    :cond_1
    iput v2, p3, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    array-length v3, v1

    iput v3, p3, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    iget-object v3, p3, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v4, v1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p3}, Lcom/sec/android/gallery3d/data/LruImageCache;->getBitmapFromDiskCache([BLcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1, p3}, Lcom/sec/android/gallery3d/data/LruImageCache;->getBitmapFromDiskCache([BLcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v2

    goto :goto_0
.end method

.method public getImageDiskCacheMaxBytes()I
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayLongSideSize()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isOverWQHD(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayDensity()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/high16 v0, 0x1f400000

    :goto_0
    return v0

    :cond_1
    const/high16 v0, 0xc800000

    goto :goto_0
.end method

.method public declared-synchronized isLruCacheCreated()Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LruCacheManager;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public putImageData([BI[B)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/data/LruCacheManager;->getCache(I)Lcom/sec/android/gallery3d/data/LruImageCache;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "LruCacheManager"

    const-string/jumbo v2, "ImageCache is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/sec/android/gallery3d/data/LruImageCache;->addBitmapToCache([B[B)V

    goto :goto_0
.end method

.method public removeImageData([BI)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/data/LruCacheManager;->getCache(I)Lcom/sec/android/gallery3d/data/LruImageCache;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "LruCacheManager"

    const-string/jumbo v2, "ImageCache is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/LruImageCache;->removeBitmapFromDiskCache([B)V

    goto :goto_0
.end method
