.class Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;
.super Ljava/lang/Object;
.source "ClusterTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final animatedTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final previousClusterPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final stationaryTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->animatedTransitions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->stationaryTransitions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->previousClusterPoints:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->animatedTransitions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->stationaryTransitions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getTransition(Lcom/sec/samsung/gallery/mapfragment/MapItem;)Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->animatedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->destinationContains(Lcom/sec/samsung/gallery/mapfragment/MapItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->originContains(Lcom/sec/samsung/gallery/mapfragment/MapItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method add(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)V
    .locals 7

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->previousClusterPoints:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->previousClusterPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getPointsInCluster()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {p1, v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->containsInputPoint(Lcom/sec/samsung/gallery/mapfragment/MapItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->getTransition(Lcom/sec/samsung/gallery/mapfragment/MapItem;)Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->addOriginClusterRelevantInputPoint(Lcom/sec/samsung/gallery/mapfragment/MapItem;)V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;

    invoke-direct {v3, v1, v2, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;Lcom/sec/samsung/gallery/mapfragment/MapItem;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->animatedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->stationaryTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method build()Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$1;)V

    return-object v0
.end method
