.class public Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;
.super Ljava/lang/Object;
.source "ThumbnailDiskCache.java"


# static fields
.field private static final BYTEBUFFER_POOL_SIZE:I = 0x4

.field private static final BYTESBUFFER_SIZE:I = 0x32000

.field private static final CACHE_DIRECTORY:Ljava/lang/String;

.field private static final CACHE_MAX_ENTRIES:I = 0x2710

.field private static final CACHE_MAX_SIZE:I = 0x25800000

.field private static final CACHE_NAME_MEDIUM:Ljava/lang/String; = "cross"

.field private static final CACHE_VERSION:I = 0x8

.field private static final DEFAULT_JPEG_QUALITY:I = 0x64

.field private static final DISK_CACHE_LOCK:Ljava/lang/Object;

.field private static final EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

.field private static final INITIALCRC:J = -0x1L

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final TAG:Ljava/lang/String; = "ThumbnailDiskCache"

.field private static mCacheMedium:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;

.field private static sCrcTable:[J

.field private static final sMicroThumbBufferPool:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;

.field private static sThumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x100

    new-instance v6, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;

    const/4 v7, 0x4

    const v8, 0x32000

    invoke-direct {v6, v7, v8}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;-><init>(II)V

    sput-object v6, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sMicroThumbBufferPool:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sput-object v6, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->DISK_CACHE_LOCK:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->EXTERNAL_STORAGE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Android/data/com.sec.android.gallery3d/cache/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->CACHE_DIRECTORY:Ljava/lang/String;

    new-array v6, v9, [J

    sput-object v6, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sCrcTable:[J

    sput-object v10, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sThumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    sput-object v10, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->mCacheMedium:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_2

    int-to-long v2, v0

    const/4 v1, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v1, v6, :cond_1

    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const-wide v4, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    :goto_2
    const/4 v6, 0x1

    shr-long v6, v2, v6

    xor-long v2, v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sCrcTable:[J

    aput-wide v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ThumbnailDiskCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheDir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->CACHE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->CACHE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cross"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    new-instance v6, Ljava/io/File;

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->CACHE_DIRECTORY:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v8

    :cond_0
    if-eqz v8, :cond_1

    :try_start_0
    const-string v0, "ThumbnailDiskCache"

    const-string v2, "Create CrossBlobCache"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->mCacheMedium:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;

    const/16 v2, 0x2710

    const/high16 v3, 0x25800000

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;-><init>(Ljava/lang/String;IIZI)V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->mCacheMedium:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v7

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public static clear()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sMicroThumbBufferPool:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;->clear()V

    sput-object v1, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sThumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->mCacheMedium:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->mCacheMedium:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;->close()V

    sput-object v1, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->mCacheMedium:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;

    :cond_0
    return-void
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;)[B
    .locals 1

    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;I)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private crc64Long([B)J
    .locals 8

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    sget-object v4, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p1, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getCache()Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;
    .locals 2

    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->DISK_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sThumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sThumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sThumbnailDiskCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isSameKey([B[B)Z
    .locals 5

    const/4 v2, 0x0

    array-length v1, p1

    array-length v3, p2

    if-ge v3, v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-byte v3, p1, v0

    aget-byte v4, p2, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private makeCacheKey(Ljava/lang/String;JI)[B
    .locals 10

    const/16 v7, 0x2b

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    new-array v5, v6, [B

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    move v4, v3

    :goto_0
    if-ge v6, v8, :cond_0

    aget-char v0, v7, v6

    add-int/lit8 v3, v4, 0x1

    and-int/lit16 v9, v0, 0xff

    int-to-byte v9, v9

    aput-byte v9, v5, v4

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v9, v0, 0x8

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method private writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 13

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    array-length v1, v0

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    array-length v6, v5

    :cond_0
    const-string v10, "ThumbnailDiskCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bitmapLength = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", metadataLength = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "ThumbnailDiskCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isSound = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isGif = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int v10, v1, v6

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_1

    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1
    return-object v9

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;JI)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p4}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->makeCacheKey(Ljava/lang/String;JI)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->crc64Long([B)J

    move-result-wide v2

    sget-object v8, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sMicroThumbBufferPool:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;->get()Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;

    move-result-object v1

    :try_start_0
    new-instance v6, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache$LookupRequest;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache$LookupRequest;-><init>()V

    iput-wide v2, v6, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache$LookupRequest;->key:J

    iget-object v8, v1, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->data:[B

    iput-object v8, v6, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache$LookupRequest;->buffer:[B

    sget-object v9, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->DISK_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v8, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->mCacheMedium:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->mCacheMedium:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;

    invoke-virtual {v8, v6}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;->lookup(Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache$LookupRequest;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v9, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sMicroThumbBufferPool:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;

    invoke-virtual {v9, v1}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;->recycle(Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;)V

    :goto_0
    return-object v8

    :cond_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v8, v6, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache$LookupRequest;->buffer:[B

    invoke-direct {p0, v4, v8}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->isSameKey([B[B)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache$LookupRequest;->buffer:[B

    iput-object v8, v1, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->data:[B

    array-length v8, v4

    iput v8, v1, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->offset:I

    iget v8, v6, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache$LookupRequest;->length:I

    iget v9, v1, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr v8, v9

    iput v8, v1, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->length:I

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x1

    iput v8, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v8, 0x0

    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iget-object v8, v1, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->data:[B

    iget v9, v1, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->offset:I

    iget v10, v1, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;->length:I

    invoke-static {v8, v9, v10, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    sget-object v8, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sMicroThumbBufferPool:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;

    invoke-virtual {v8, v1}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;->recycle(Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;)V

    :goto_1
    move-object v8, v7

    goto :goto_0

    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v5

    const/4 v8, 0x0

    sget-object v9, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sMicroThumbBufferPool:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;

    invoke-virtual {v9, v1}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;->recycle(Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    sget-object v9, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sMicroThumbBufferPool:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;

    invoke-virtual {v9, v1}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;->recycle(Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;)V

    goto :goto_0

    :catch_1
    move-exception v5

    :try_start_6
    const-string v8, "ThumbnailDiskCache"

    const-string v9, "NPE is occured"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    sget-object v8, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sMicroThumbBufferPool:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;

    invoke-virtual {v8, v1}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;->recycle(Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;)V

    goto :goto_1

    :catchall_1
    move-exception v8

    sget-object v9, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->sMicroThumbBufferPool:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;

    invoke-virtual {v9, v1}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool;->recycle(Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBytesBufferPool$BytesBuffer;)V

    throw v8
.end method

.method public put(Ljava/lang/String;JILandroid/graphics/Bitmap;)V
    .locals 8

    invoke-direct {p0, p5}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->makeCacheKey(Ljava/lang/String;JI)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->crc64Long([B)J

    move-result-wide v2

    array-length v5, v4

    array-length v6, v0

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    sget-object v6, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->DISK_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->mCacheMedium:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    sget-object v5, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailDiskCache;->mCacheMedium:Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v5, v2, v3, v7}, Lcom/sec/android/gallery3d/rcl/provider/cache/CrossBlobCache;->insert(J[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :catch_0
    move-exception v5

    goto :goto_1
.end method
