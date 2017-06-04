.class public Lcom/sec/android/gallery3d/data/AllAlbumClustering;
.super Lcom/sec/android/gallery3d/data/Clustering;
.source "AllAlbumClustering.java"


# static fields
.field private static final FEATURE_IS_RETAIL_MODEL:Z

.field private static final FEATURE_USE_MORE_ALBUM:Z

.field private static final TAG:Ljava/lang/String; = "AllAlbumClustering"


# instance fields
.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDownSideClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreAlbumMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpSideClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsRetailModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->FEATURE_IS_RETAIL_MODEL:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->FEATURE_USE_MORE_ALBUM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Clustering;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mClusters:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mMoreAlbumMap:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static circularShiftRight([Ljava/lang/Object;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    sub-int v1, p2, p1

    if-lez v1, :cond_0

    aget-object v0, p0, p2

    add-int/lit8 v1, p1, 0x1

    sub-int v2, p2, p1

    invoke-static {p0, p1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, p0, p1

    :cond_0
    return-void
.end method

.method private static findBucket([Lcom/sec/android/gallery3d/data/MediaSet;I)I
    .locals 3

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getDisplayAlbumIds()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "album_display_info_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "bucketid_order"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, ";"

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    :goto_0
    array-length v1, v11

    if-ge v8, v1, :cond_0

    aget-object v1, v11, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v9

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v1, "AllAlbumClustering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private getMediaSetList()[Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 4

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private isMoreAlbum(I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mMoreAlbumMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mMoreAlbumMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private loadMoreAlbumMap()V
    .locals 10

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mMoreAlbumMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v1, "album_new_display_table"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "bucket_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "album_more"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mMoreAlbumMap:Landroid/util/SparseArray;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v1, "AllAlbumClustering"

    const-string/jumbo v2, "loadMoreAlbumMap: cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v1, "AllAlbumClustering"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private static moveToLast([Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)V"
        }
    .end annotation

    aget-object v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aput-object v0, p0, v1

    return-void
.end method

.method private sortClusterAlbums()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->getDisplayAlbumIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->getMediaSetList()[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v3, 0x0

    move v9, v8

    :goto_0
    if-ge v3, v10, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v7, v12}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->findBucket([Lcom/sec/android/gallery3d/data/MediaSet;I)I

    move-result v5

    const/4 v12, -0x1

    if-eq v5, v12, :cond_10

    add-int/lit8 v8, v9, 0x1

    invoke-static {v7, v9, v5}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->circularShiftRight([Ljava/lang/Object;II)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v9, v8

    goto :goto_0

    :cond_0
    array-length v2, v7

    move v3, v9

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v12, v7, v3

    instance-of v12, v12, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v12, :cond_1

    aget-object v12, v7, v3

    instance-of v12, v12, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v12, :cond_2

    :cond_1
    aget-object v12, v7, v3

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v12

    sget v13, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-eq v12, v13, :cond_2

    aget-object v12, v7, v3

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v12

    sget v13, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_CAMERA_BUCKET_ID:I

    if-eq v12, v13, :cond_2

    sget-boolean v12, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->FEATURE_IS_RETAIL_MODEL:Z

    if-nez v12, :cond_2

    invoke-static {v7, v3}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->moveToLast([Ljava/lang/Object;I)V

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    sget-boolean v12, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v12, :cond_8

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->loadMoreAlbumMap()V

    const/4 v3, 0x0

    :goto_3
    array-length v12, v7

    if-ge v3, v12, :cond_5

    aget-object v6, v7, v3

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->isMoreAlbum(I)Z

    move-result v12

    if-nez v12, :cond_4

    aget-object v12, v7, v3

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/sec/android/gallery3d/data/MediaSet;->setMoreAlbum(Z)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    aget-object v12, v7, v3

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/sec/android/gallery3d/data/MediaSet;->setMoreAlbum(Z)V

    goto :goto_4

    :cond_5
    iput-object v11, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mUpSideClusters:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mUpSideClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mDownSideClusters:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mDownSideClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    move v8, v9

    :cond_7
    :goto_5
    return-object v0

    :cond_8
    const/4 v3, 0x0

    :goto_6
    array-length v12, v7

    if-ge v3, v12, :cond_6

    aget-object v12, v7, v3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    array-length v2, v7

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_c

    aget-object v12, v7, v3

    instance-of v12, v12, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v12, :cond_a

    aget-object v12, v7, v3

    instance-of v12, v12, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v12, :cond_b

    :cond_a
    aget-object v12, v7, v3

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v12

    sget v13, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-eq v12, v13, :cond_b

    aget-object v12, v7, v3

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v12

    sget v13, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_CAMERA_BUCKET_ID:I

    if-eq v12, v13, :cond_b

    aget-object v12, v7, v3

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v12

    sget v13, Lcom/sec/android/gallery3d/data/LogicalBucketList;->FAVORITE_BUCKET_ID:I

    if-eq v12, v13, :cond_b

    sget-boolean v12, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->FEATURE_IS_RETAIL_MODEL:Z

    if-nez v12, :cond_b

    invoke-static {v7, v3}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->moveToLast([Ljava/lang/Object;I)V

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    sget-boolean v12, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v12, :cond_f

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->loadMoreAlbumMap()V

    const/4 v3, 0x0

    :goto_8
    array-length v12, v7

    if-ge v3, v12, :cond_e

    aget-object v12, v7, v3

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->isMoreAlbum(I)Z

    move-result v12

    if-nez v12, :cond_d

    aget-object v12, v7, v3

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v12, v7, v3

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/gallery3d/data/MediaSet;->setMoreAlbum(Z)V

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    aget-object v12, v7, v3

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v12, v7, v3

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/gallery3d/data/MediaSet;->setMoreAlbum(Z)V

    goto :goto_9

    :cond_e
    iput-object v11, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mUpSideClusters:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mUpSideClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mDownSideClusters:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mDownSideClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_f
    const/4 v3, 0x0

    :goto_a
    array-length v12, v7

    if-ge v3, v12, :cond_7

    aget-object v12, v7, v3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_10
    move v8, v9

    goto/16 :goto_1
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    :goto_0
    if-ge v0, v4, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v3, v0, v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method public bridge synthetic getClusterAddrValues(I)[[D
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/Clustering;->getClusterAddrValues(I)[[D

    move-result-object v0

    return-object v0
.end method

.method public getClusterAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClusterKey(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getClusterLocation(I)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/Clustering;->getClusterLocation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownSideClusterAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mDownSideClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getUpSideClusterAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mUpSideClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->sortClusterAlbums()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->mClusters:Ljava/util/ArrayList;

    return-void
.end method
