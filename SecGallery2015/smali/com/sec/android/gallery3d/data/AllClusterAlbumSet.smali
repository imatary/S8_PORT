.class public Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;
.super Lcom/sec/android/gallery3d/data/ClusterAlbumSet;
.source "AllClusterAlbumSet.java"


# static fields
.field private static final FEATURE_USE_MORE_ALBUM:Z

.field private static final TAG:Ljava/lang/String; = "AllClusterAlbumSet"


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreAlbums:Ljava/util/ArrayList;
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

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->FEATURE_USE_MORE_ALBUM:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mMoreAlbums:Ljava/util/ArrayList;

    return-void
.end method

.method private clearClusterAlbums()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sget-boolean v0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mMoreAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mMoreAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mMoreAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getDefaultAlbumSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMoreAlbumSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mMoreAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectableSubMediaSetCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSelectableAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mMoreAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mMoreAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSelectableAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    :goto_0
    return-object v1

    :cond_0
    sget-boolean v1, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mMoreAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mMoreAlbums:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AllClusterAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mMoreAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected updateClusters()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->createClustering()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Clustering;->run(Lcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->clearClusterAlbums()V

    sget-boolean v0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->getUpSideClusterAlbums()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->getDownSideClusterAlbums()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mMoreAlbums:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v0, Lcom/sec/android/gallery3d/data/AllAlbumClustering;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/AllAlbumClustering;->getClusterAlbums()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/AllClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    goto :goto_0
.end method
