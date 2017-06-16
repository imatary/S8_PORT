.class public Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;
.super Landroid/util/LruCache;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISK_CACHE_LOCK:Ljava/lang/Object;

.field private static mHandler:Landroid/os/Handler;

.field private static mThumbnailCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->DISK_CACHE_LOCK:Ljava/lang/Object;

    sput-object v1, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->mHandler:Landroid/os/Handler;

    sput-object v1, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->mThumbnailCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->initHandler(Landroid/content/Context;)V

    return-void
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->mThumbnailCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->mThumbnailCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->evictAll()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->mThumbnailCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    return-void
.end method

.method public static getCache(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;
    .locals 6

    sget-object v5, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->DISK_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->mThumbnailCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    if-nez v4, :cond_0

    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    mul-int/lit16 v4, v2, 0x400

    mul-int/lit16 v3, v4, 0x400

    div-int/lit8 v0, v3, 0x8

    new-instance v4, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;-><init>(Landroid/content/Context;I)V

    sput-object v4, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->mThumbnailCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->mThumbnailCache:Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;

    return-object v4

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private initHandler(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private makeCacheKey(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache$1;

    invoke-direct {v1, p0, p3}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache$1;-><init>(Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;Landroid/graphics/Bitmap;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public get(Ljava/lang/String;JI)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->makeCacheKey(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public put(Ljava/lang/String;JILandroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->makeCacheKey(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/rcl/provider/cache/ThumbnailCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method
