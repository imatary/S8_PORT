.class public Lcom/sec/android/gallery3d/data/ImageDiskCache;
.super Ljava/lang/Object;
.source "ImageDiskCache.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ImageCachable;


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

.field static IMAGE_CACHE_MAX_BYTES:I = 0x0

.field private static IMAGE_CACHE_MAX_ENTRIES:I = 0x0

.field private static MICRO_CACHE_MAX_BYTES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImageDiskCache"


# instance fields
.field private final mCacheArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/gallery3d/common/BlobCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheManager:Lcom/sec/android/gallery3d/util/CacheManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v1, 0xc800000

    const/16 v0, 0x1388

    sput v0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->IMAGE_CACHE_MAX_ENTRIES:I

    sput v1, Lcom/sec/android/gallery3d/data/ImageDiskCache;->IMAGE_CACHE_MAX_BYTES:I

    sput v1, Lcom/sec/android/gallery3d/data/ImageDiskCache;->MICRO_CACHE_MAX_BYTES:I

    new-instance v0, Lcom/sec/android/gallery3d/data/ImageDiskCache$1;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/ImageDiskCache$1;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->CACHE_NAME_ARRAY:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/data/ImageDiskCache$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/data/ImageDiskCache$2;-><init>(Lcom/sec/android/gallery3d/data/ImageDiskCache;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->mCacheArray:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ImageDiskCache;->initializeMaxSize()V

    new-instance v0, Lcom/sec/android/gallery3d/util/CacheManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/util/CacheManager;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->mCacheManager:Lcom/sec/android/gallery3d/util/CacheManager;

    return-void
.end method

.method private createCache(I)Lcom/sec/android/gallery3d/common/BlobCache;
    .locals 6

    sget-object v0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->CACHE_NAME_ARRAY:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/ImageDiskCache;->getMaxBytes(I)I

    move-result v4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->mCacheManager:Lcom/sec/android/gallery3d/util/CacheManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/gallery3d/data/ImageDiskCache;->IMAGE_CACHE_MAX_ENTRIES:I

    const/16 v5, 0x9

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/sec/android/gallery3d/common/BlobCache;

    move-result-object v0

    return-object v0
.end method

.method private getCache(I)Lcom/sec/android/gallery3d/common/BlobCache;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/common/BlobCache;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/ImageDiskCache;->createCache(I)Lcom/sec/android/gallery3d/common/BlobCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private getMaxBytes(I)I
    .locals 2

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    const/high16 v0, 0x20000

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    sget v0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->MICRO_CACHE_MAX_BYTES:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->IMAGE_CACHE_MAX_BYTES:I

    goto :goto_0
.end method

.method private initializeMaxSize()V
    .locals 3

    const/high16 v2, 0xc800000

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

    sput v0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->IMAGE_CACHE_MAX_BYTES:I

    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->MICRO_CACHE_MAX_BYTES:I

    const/16 v0, 0x4e20

    sput v0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->IMAGE_CACHE_MAX_ENTRIES:I

    :goto_0
    return-void

    :cond_1
    sput v2, Lcom/sec/android/gallery3d/data/ImageDiskCache;->IMAGE_CACHE_MAX_BYTES:I

    sput v2, Lcom/sec/android/gallery3d/data/ImageDiskCache;->MICRO_CACHE_MAX_BYTES:I

    const/16 v0, 0x1388

    sput v0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->IMAGE_CACHE_MAX_ENTRIES:I

    goto :goto_0
.end method

.method private static isSameKey([B[B)Z
    .locals 5

    const/4 v2, 0x0

    array-length v1, p0

    array-length v3, p1

    if-ge v3, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearImageData([BI)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/data/ImageDiskCache;->getCache(I)Lcom/sec/android/gallery3d/common/BlobCache;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "ImageDiskCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "clearImageData> ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]\'s cache is null!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v2

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/common/BlobCache;->clearEntry(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getCurrentDiskCacheSize()J
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ImageDiskCache;->mCacheArray:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/ImageDiskCache;->getCache(I)Lcom/sec/android/gallery3d/common/BlobCache;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v6, "ImageDiskCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCurrentDiskCacheSize: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] type\'s cache is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/common/BlobCache;->getCurrentCacheSize()J

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
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/data/ImageDiskCache;->getCache(I)Lcom/sec/android/gallery3d/common/BlobCache;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v5, "ImageDiskCache"

    const-string/jumbo v6, "BlobCache is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v2

    :try_start_0
    new-instance v1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;-><init>()V

    iput-wide v2, v1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    iget-object v5, p3, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iput-object v5, v1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/common/BlobCache;->lookup(Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v5

    if-nez v5, :cond_2

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, v1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    invoke-static {p1, v5}, Lcom/sec/android/gallery3d/data/ImageDiskCache;->isSameKey([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iput-object v5, p3, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v5, p1

    iput v5, p3, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v5, v1, Lcom/sec/android/gallery3d/common/BlobCache$LookupRequest;->length:I

    iget v6, p3, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr v5, v6

    iput v5, p3, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public putImageData([BI[B)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/data/ImageDiskCache;->getCache(I)Lcom/sec/android/gallery3d/common/BlobCache;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v2

    array-length v4, p1

    array-length v5, p3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :catch_0
    move-exception v4

    goto :goto_1
.end method
