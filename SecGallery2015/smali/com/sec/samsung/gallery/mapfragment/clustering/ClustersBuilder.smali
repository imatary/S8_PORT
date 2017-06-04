.class Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;
.super Ljava/lang/Object;
.source "ClustersBuilder.java"


# instance fields
.field private final mActualDistanceToJoinClusters:D

.field private mZoomLevel:F

.field private final options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

.field private final relevantInputPointsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation
.end field

.field private final releventInputPointsSet:Ljava/util/HashSet;
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
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/util/ArrayList;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;",
            ">;F)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->relevantInputPointsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->releventInputPointsSet:Ljava/util/HashSet;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->mZoomLevel:F

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    iput p3, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->mZoomLevel:F

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->getActualDistanceToJoinCluster()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->mActualDistanceToJoinClusters:D

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->addRelevantInitialInputPoints(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private addIfNecessary(Lcom/sec/samsung/gallery/mapfragment/MapItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->relevantInputPointsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->relevantInputPointsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->releventInputPointsSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addRelevantInitialInputPoints(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getPointsInCluster()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->addAll(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getActualDistanceToJoinCluster()D
    .locals 8

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->getMapDistanceToJoinCluster()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->mZoomLevel:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method addAll(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->addIfNecessary(Lcom/sec/samsung/gallery/mapfragment/MapItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method build()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->relevantInputPointsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x1

    new-array v8, v0, [F

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->relevantInputPointsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    const/4 v9, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->mActualDistanceToJoinClusters:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {v10, v12}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->add(Lcom/sec/samsung/gallery/mapfragment/MapItem;)V

    const/4 v9, 0x1

    :cond_2
    if-nez v9, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-direct {v0, v12}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapItem;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v11
.end method
