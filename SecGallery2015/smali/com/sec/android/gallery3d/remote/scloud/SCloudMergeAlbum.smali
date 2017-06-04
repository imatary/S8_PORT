.class public Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaSet;
.source "SCloudMergeAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "SCloudMergeAlbum"


# instance fields
.field private final mBucketId:I

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFetcher:[Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;

.field private final mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private final mSources:[Lcom/sec/android/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;[",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mIndex:Ljava/util/TreeMap;

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mComparator:Ljava/util/Comparator;

    iput-object p3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v1, p3

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mName:Ljava/lang/String;

    array-length v1, p3

    if-nez v1, :cond_1

    const/4 v1, -0x1

    :goto_1
    iput v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mBucketId:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    aget-object v1, p3, v2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    aget-object v1, p3, v2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private invalidateCache()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v2, v3

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mFetcher:[Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mIndex:Ljava/util/TreeMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v5, v5

    new-array v5, v5, [I

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SCloudMergeAlbum"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateData()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v2, v2

    new-array v2, v2, [Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;

    iput-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mFetcher:[Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v1, v2

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mFetcher:[Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;

    new-instance v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [I

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v2, v2

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    :goto_1
    iput-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mName:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mBucketId:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mIndex:Ljava/util/TreeMap;

    if-nez v11, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v12, p1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v11, "SCloudMergeAlbum"

    const-string/jumbo v12, "Gallery: The head(SortedMap) is empty!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    invoke-virtual {v11}, [I->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v11, v11

    new-array v9, v11, [Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v10, :cond_0

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v8, v11

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_4

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mFetcher:[Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;

    aget-object v1, v11, v3

    if-eqz v1, :cond_3

    aget v11, v10, v3

    invoke-virtual {v1, v11}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v11

    aput-object v11, v9, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    move v3, v6

    :goto_2
    add-int v11, p1, p2

    if-ge v3, v11, :cond_0

    const/4 v5, -0x1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v8, :cond_7

    aget-object v11, v9, v4

    if-eqz v11, :cond_6

    const/4 v11, -0x1

    if-eq v5, v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mComparator:Ljava/util/Comparator;

    aget-object v12, v9, v4

    aget-object v13, v9, v5

    invoke-interface {v11, v12, v13}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    if-gez v11, :cond_6

    :cond_5
    move v5, v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    aget v11, v10, v5

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v5

    if-lt v3, p1, :cond_8

    aget-object v11, v9, v5

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mFetcher:[Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;

    aget-object v11, v11, v5

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mFetcher:[Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;

    aget-object v11, v11, v5

    aget v12, v10, v5

    invoke-virtual {v11, v12}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum$FetchCache;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v11

    aput-object v11, v9, v5

    :cond_9
    add-int/lit8 v11, v3, 0x1

    rem-int/lit8 v11, v11, 0x40

    if-nez v11, :cond_a

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v12, v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10}, [I->clone()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public getMediaItemCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 8

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v1, v1

    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v0, v4, v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSupportedOperations()J

    move-result-wide v6

    and-long/2addr v2, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public getTotalMediaItemCount()I
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 10

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mDataVersion:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mDataVersion:J

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->updateData()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->invalidateCache()V

    :cond_2
    iget-wide v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mDataVersion:J

    return-wide v2
.end method

.method public rotate(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMergeAlbum;->mSources:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->rotate(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
