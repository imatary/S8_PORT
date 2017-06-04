.class public Lcom/sec/android/gallery3d/data/LruImageCache;
.super Ljava/lang/Object;
.source "LruImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_SIZE:I = 0x6400000

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x2800

.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final ODTC_INFO_FILENAME:Ljava/lang/String; = ".ODTC_info"

.field private static final TAG:Ljava/lang/String; = "LruImageCache"


# instance fields
.field public final bUseMemoryCache:Z

.field private mCacheParams:Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskCacheStarting:Z

.field private mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;

.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskCacheLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskCacheStarting:Z

    iput-boolean p2, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->bUseMemoryCache:Z

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LruImageCache;->init(Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/gallery3d/data/LruImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private init(Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mCacheParams:Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LruImageCache;->initDiskCache()V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->bUseMemoryCache:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/LruImageCache$1;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mCacheParams:Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;

    # getter for: Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->memCacheSize:I
    invoke-static {v1}, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->access$000(Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/data/LruImageCache$1;-><init>(Lcom/sec/android/gallery3d/data/LruImageCache;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    :cond_0
    return-void
.end method

.method private initDiskCache()V
    .locals 12

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/DiskLruCache;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mCacheParams:Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;

    # getter for: Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;
    invoke-static {v7}, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->access$100(Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "micro"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "mini"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "nano"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mCacheParams:Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;

    iget-object v9, v9, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, ".ODTC_info"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-direct {v5, v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mCacheParams:Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;

    iget v9, v9, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->diskCacheSize:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mCacheParams:Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;

    iget-object v7, v7, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "is_low_storage"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0x9

    const/4 v9, 0x1

    :try_start_4
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mCacheParams:Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;

    iget v10, v10, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->diskCacheSize:I

    int-to-long v10, v10

    invoke-static {v1, v7, v9, v10, v11}, Lcom/sec/android/gallery3d/data/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/sec/android/gallery3d/data/DiskLruCache;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_1
    const/4 v7, 0x0

    :try_start_5
    iput-boolean v7, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskCacheStarting:Z

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catch_0
    move-exception v2

    :goto_2
    :try_start_6
    const-string/jumbo v7, "LruImageCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initDiskCache: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v7

    :catch_1
    move-exception v3

    :goto_3
    :try_start_8
    const-string/jumbo v7, "LruImageCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initDiskCache: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": write failed.\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    :goto_4
    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    :catch_2
    move-exception v2

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mCacheParams:Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;

    const/4 v9, 0x0

    # setter for: Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->diskCacheDir:Ljava/io/File;
    invoke-static {v7, v9}, Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;->access$102(Lcom/sec/android/gallery3d/data/LruImageCache$ImageCacheParams;Ljava/io/File;)Ljava/io/File;

    const-string/jumbo v7, "LruImageCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initDiskCache - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catchall_2
    move-exception v7

    move-object v4, v5

    goto :goto_4

    :catch_3
    move-exception v3

    move-object v4, v5

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v4, v5

    goto/16 :goto_2
.end method


# virtual methods
.method public addBitmapToCache([B[B)V
    .locals 9

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v5, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->bUseMemoryCache:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    new-instance v6, Ljava/lang/String;

    array-length v7, p1

    invoke-direct {v6, p1, v8, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/sec/android/gallery3d/data/DiskLruCache;->get(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/sec/android/gallery3d/data/DiskLruCache;->edit(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/DiskLruCache$Editor;->commit()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v5, "LruImageCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addBitmapToCache - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v5

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_5
    const-string/jumbo v5, "LruImageCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addBitmapToCache - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v5

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_2
    throw v5

    :catch_5
    move-exception v6

    goto :goto_2
.end method

.method public clearCache()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->bUseMemoryCache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    :cond_0
    return-void
.end method

.method public getBitmapFromDiskCache([BLcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z
    .locals 12

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-boolean v8, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskCacheStarting:Z

    if-eqz v8, :cond_0

    :try_start_0
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;

    if-eqz v8, :cond_3

    const/4 v3, 0x0

    :try_start_1
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;

    invoke-virtual {v8, v2}, Lcom/sec/android/gallery3d/data/DiskLruCache;->get(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v6, v8}, Lcom/sec/android/gallery3d/data/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    iget-object v8, p2, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    array-length v8, v8

    if-ge v8, v5, :cond_1

    new-array v8, v5, [B

    iput-object v8, p2, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    :cond_1
    iget-object v8, p2, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    const/4 v8, 0x0

    iput v8, p2, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iput v5, p2, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    iget-boolean v8, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->bUseMemoryCache:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v8, :cond_2

    iget v8, p2, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    new-array v4, v8, [B

    iget-object v8, p2, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p2, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    invoke-static {v8, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    array-length v11, p1

    invoke-direct {v9, p1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8, v9, v4}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    const/4 v7, 0x1

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_3
    :goto_1
    return v7

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_7
    const-string/jumbo v8, "LruImageCache"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    :catch_4
    move-exception v8

    goto :goto_1

    :catchall_0
    move-exception v7

    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_2
    throw v7

    :catch_5
    move-exception v8

    goto :goto_1

    :catch_6
    move-exception v8

    goto :goto_2
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->bUseMemoryCache:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :cond_0
    return-object v0
.end method

.method public getCurrentDiskCacheSize()J
    .locals 7

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/DiskLruCache;->size()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-string/jumbo v4, "LruImageCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DiskLruCache returns Negative Value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v2

    :cond_0
    move-wide v2, v0

    goto :goto_0
.end method

.method public removeBitmapFromDiskCache([B)V
    .locals 7

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->bUseMemoryCache:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-direct {v4, p1, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LruImageCache;->mDiskLruCache:Lcom/sec/android/gallery3d/data/DiskLruCache;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LruImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
