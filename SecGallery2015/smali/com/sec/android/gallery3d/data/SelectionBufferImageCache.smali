.class public Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;
.super Landroid/util/LruCache;
.source "SelectionBufferImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Lcom/sec/android/gallery3d/data/MediaItem;",
        "Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_LOCK:Ljava/lang/Object;

.field private static final MAX_SIZE:I = 0x14

.field private static mSelectionBufferImageCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->CACHE_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->mSelectionBufferImageCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->mSelectionBufferImageCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->mSelectionBufferImageCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->evictAll()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->mSelectionBufferImageCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    return-void
.end method

.method public static getCache()Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;
    .locals 3

    sget-object v1, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->mSelectionBufferImageCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;-><init>(I)V

    sput-object v0, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->mSelectionBufferImageCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;->mSelectionBufferImageCache:Lcom/sec/android/gallery3d/data/SelectionBufferImageCache;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
