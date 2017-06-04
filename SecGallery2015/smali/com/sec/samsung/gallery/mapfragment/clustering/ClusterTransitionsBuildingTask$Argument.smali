.class Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;
.super Ljava/lang/Object;
.source "ClusterTransitionsBuildingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Argument"
.end annotation


# instance fields
.field currentClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;",
            ">;"
        }
    .end annotation
.end field

.field previousClusters:Ljava/util/ArrayList;
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
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
