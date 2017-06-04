.class Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;
.super Ljava/lang/Object;
.source "LocalCameraMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCache"
.end annotation


# instance fields
.field private final mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mLastetCacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStartPos:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-void
.end method


# virtual methods
.method public getItem(ILjava/util/ArrayList;Z)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/sec/android/gallery3d/data/MediaItem;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    iget v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mStartPos:I

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    if-lt p1, v6, :cond_0

    add-int/lit8 v7, v6, 0x10

    if-lt p1, v7, :cond_4

    :cond_0
    const/4 v5, 0x1

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v7, v7, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz p2, :cond_5

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v7, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;

    const/16 v9, 0x10

    invoke-virtual {v7, p1, v9, p2, p3}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getMediaItemForBurstshot(IILjava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    :goto_1
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move v6, p1

    move-object v2, v3

    :cond_2
    if-lt p1, v6, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    add-int/2addr v7, v6

    if-lt p1, v7, :cond_6

    :cond_3
    iput v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mStartPos:I

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    move-object v7, v8

    :goto_2
    return-object v7

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    if-nez v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/16 v9, 0x10

    invoke-virtual {v7, p1, v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_6
    sub-int v7, p1, v6

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mStartPos:I

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    goto :goto_2

    :catch_0
    move-exception v4

    iput v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mStartPos:I

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    move-object v7, v8

    goto :goto_2

    :catch_1
    move-exception v4

    iput v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mStartPos:I

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    move-object v7, v8

    goto :goto_2

    :catchall_0
    move-exception v7

    iput v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mStartPos:I

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    throw v7
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    return-void
.end method
