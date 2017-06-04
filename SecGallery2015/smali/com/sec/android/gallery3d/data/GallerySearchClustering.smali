.class public Lcom/sec/android/gallery3d/data/GallerySearchClustering;
.super Lcom/sec/android/gallery3d/data/Clustering;
.source "GallerySearchClustering.java"


# instance fields
.field private final mItemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/Clustering;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchClustering;->mNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchClustering;->mItemsList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchClustering;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchClustering;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchClustering;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/GallerySearchClustering;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/SmallItem;

    iget-object v3, v3, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
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
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchClustering;->mNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchClustering;->mNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchClustering;->mItemsList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/GallerySearchClustering;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchClustering;->mNames:Ljava/util/List;

    const-string/jumbo v1, "Photos"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
