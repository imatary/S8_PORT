.class Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;
.super Ljava/lang/Object;
.source "ClusterTransitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;
    }
.end annotation


# instance fields
.field final animated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;",
            ">;"
        }
    .end annotation
.end field

.field final stationary:Ljava/util/ArrayList;
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
.method private constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->access$000(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;->animated:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->access$100(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;->stationary:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;)V

    return-void
.end method
