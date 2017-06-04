.class Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;
.super Ljava/lang/Object;
.source "AnimatedTransition.java"


# instance fields
.field private final destinationClusterPoint:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

.field private final originClusterPoint:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

.field private final originClusterRelevantInputPoints:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

.field private final spans180Meridian:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;Lcom/sec/samsung/gallery/mapfragment/MapItem;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->originClusterPoint:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLongitude()D

    move-result-wide v4

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapItem;DD)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->originClusterRelevantInputPoints:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    iput-object p3, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->destinationClusterPoint:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->spans180Meridian:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addOriginClusterRelevantInputPoint(Lcom/sec/samsung/gallery/mapfragment/MapItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->originClusterRelevantInputPoints:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->add(Lcom/sec/samsung/gallery/mapfragment/MapItem;)V

    return-void
.end method

.method destinationContains(Lcom/sec/samsung/gallery/mapfragment/MapItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->destinationClusterPoint:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->destinationClusterPoint:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->containsInputPoint(Lcom/sec/samsung/gallery/mapfragment/MapItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDestinationClusterPoint()Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->destinationClusterPoint:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    return-object v0
.end method

.method getOriginClusterRelevantInputPoints()Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->originClusterRelevantInputPoints:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    return-object v0
.end method

.method originContains(Lcom/sec/samsung/gallery/mapfragment/MapItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->originClusterPoint:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->originClusterPoint:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->containsInputPoint(Lcom/sec/samsung/gallery/mapfragment/MapItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method spans180Meridian()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->spans180Meridian:Z

    return v0
.end method
