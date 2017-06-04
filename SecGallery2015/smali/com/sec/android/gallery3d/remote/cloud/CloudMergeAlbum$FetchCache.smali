.class Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;
.super Ljava/lang/Object;
.source "CloudMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCache"
.end annotation


# instance fields
.field private final mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mCacheRef:Ljava/lang/ref/SoftReference;
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v4, :cond_0

    iget v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;->mStartPos:I

    add-int/lit8 v4, v4, 0x40

    if-lt p1, v4, :cond_4

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/16 v6, 0x40

    invoke-virtual {v4, p1, v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    iput p1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;->mStartPos:I

    :cond_2
    iget v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v4, :cond_3

    iget v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;->mStartPos:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    if-lt p1, v4, :cond_5

    :cond_3
    move-object v4, v5

    :goto_1
    return-object v4

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    if-nez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;->mStartPos:I

    sub-int v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v4, v5

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v4, v5

    goto :goto_1
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    return-void
.end method
