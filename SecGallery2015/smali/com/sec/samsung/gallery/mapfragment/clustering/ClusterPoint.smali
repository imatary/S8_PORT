.class public Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;
.super Ljava/lang/Object;
.source "ClusterPoint.java"


# instance fields
.field private mLatitude:D

.field private mLongitude:D

.field private final mapItemInClusterSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation
.end field

.field private final pointsInClusterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation
.end field

.field private final pointsInClusterSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapItem;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->pointsInClusterList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->pointsInClusterSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->mapItemInClusterSet:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->mLatitude:D

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->mLongitude:D

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->add(Lcom/sec/samsung/gallery/mapfragment/MapItem;)V

    return-void
.end method

.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapItem;DD)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapItem;)V

    iput-wide p2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->mLatitude:D

    iput-wide p4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->mLongitude:D

    return-void
.end method


# virtual methods
.method add(Lcom/sec/samsung/gallery/mapfragment/MapItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->pointsInClusterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->pointsInClusterSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->mapItemInClusterSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsInputPoint(Lcom/sec/samsung/gallery/mapfragment/MapItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->pointsInClusterSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->mLongitude:D

    return-wide v0
.end method

.method public getMapItemsInCluster()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->mapItemInClusterSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPointsInCluster()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->pointsInClusterList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->pointsInClusterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
