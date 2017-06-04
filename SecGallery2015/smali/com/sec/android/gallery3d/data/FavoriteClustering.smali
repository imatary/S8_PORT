.class public Lcom/sec/android/gallery3d/data/FavoriteClustering;
.super Lcom/sec/android/gallery3d/data/Clustering;
.source "FavoriteClustering.java"


# static fields
.field private static final CLUSTER_COUNT:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Clustering;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FavoriteClustering;->mPaths:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FavoriteClustering;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enumerateTotalFavoriteMediaItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getTotalFavoriteMediaItems()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/gallery3d/data/FavoriteClustering;->buildCursorToPath(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    instance-of v1, p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->getTotalFavoriteMediaItems()Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FavoriteClustering;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getClusterAddrValues(I)[[D
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/Clustering;->getClusterAddrValues(I)[[D

    move-result-object v0

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
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FavoriteClustering;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0442

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FavoriteClustering;->mPaths:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FavoriteClustering;->mPaths:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/data/FavoriteClustering;->enumerateTotalFavoriteMediaItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;)V

    return-void
.end method
