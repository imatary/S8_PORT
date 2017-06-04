.class Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;
.super Ljava/lang/Object;
.source "ClusteringTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Argument"
.end annotation


# instance fields
.field options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

.field points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
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

.field zoomLevel:Ljava/lang/Float;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
