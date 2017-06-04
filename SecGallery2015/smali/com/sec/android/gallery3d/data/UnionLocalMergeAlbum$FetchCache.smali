.class Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;
.super Ljava/lang/Object;
.source "UnionLocalMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCache"
.end annotation


# static fields
.field private static final MAX_PAGE_SIZE:I = 0x7d0


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

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

.field private mOldestCacheRef:Ljava/lang/ref/SoftReference;
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
.method public constructor <init>(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

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

    const/4 v9, 0x0

    const/4 v4, 0x1

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/app/GalleryApp;->getSortByType()I

    move-result v8

    if-nez v8, :cond_5

    const/4 v4, 0x1

    :cond_0
    :goto_0
    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    :goto_1
    iget v7, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mStartPos:I

    :try_start_0
    # getter for: Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;->mUseMaxPageSize:Z
    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum;->access$000()Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v6, 0x7d0

    :goto_2
    const/4 v5, 0x0

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    if-lt p1, v7, :cond_1

    add-int v8, v7, v6

    if-lt p1, v8, :cond_8

    :cond_1
    const/4 v5, 0x1

    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v8, v8, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz p2, :cond_9

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v8, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;

    invoke-virtual {v8, p1, v6, p2, p3}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getMediaItemForBurstshot(IILjava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    :goto_4
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move v7, p1

    move-object v1, v2

    :cond_3
    if-lt p1, v7, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    add-int/2addr v8, v7

    if-lt p1, v8, :cond_b

    :cond_4
    iput v7, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mStartPos:I

    if-eqz v4, :cond_a

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    :goto_5
    move-object v8, v9

    :goto_6
    return-object v8

    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mOldestCacheRef:Ljava/lang/ref/SoftReference;

    goto :goto_1

    :cond_7
    const/16 v6, 0x40

    goto :goto_2

    :cond_8
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8, p1, v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_4

    :cond_a
    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mOldestCacheRef:Ljava/lang/ref/SoftReference;

    goto :goto_5

    :cond_b
    sub-int v8, p1, v7

    :try_start_2
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput v7, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mStartPos:I

    if-eqz v4, :cond_c

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    goto :goto_6

    :cond_c
    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mOldestCacheRef:Ljava/lang/ref/SoftReference;

    goto :goto_6

    :catch_0
    move-exception v3

    iput v7, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mStartPos:I

    if-eqz v4, :cond_d

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    :goto_7
    move-object v8, v9

    goto :goto_6

    :cond_d
    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mOldestCacheRef:Ljava/lang/ref/SoftReference;

    goto :goto_7

    :catch_1
    move-exception v3

    iput v7, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mStartPos:I

    if-eqz v4, :cond_e

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    :goto_8
    move-object v8, v9

    goto :goto_6

    :cond_e
    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mOldestCacheRef:Ljava/lang/ref/SoftReference;

    goto :goto_8

    :catchall_0
    move-exception v8

    iput v7, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mStartPos:I

    if-eqz v4, :cond_f

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    :goto_9
    throw v8

    :cond_f
    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mOldestCacheRef:Ljava/lang/ref/SoftReference;

    goto :goto_9
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mOldestCacheRef:Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalMergeAlbum$FetchCache;->mLastetCacheRef:Ljava/lang/ref/SoftReference;

    return-void
.end method
