.class Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$ShowAllClustersClusteringTaskHost;
.super Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$BaseClusteringTaskHost;
.source "Clusterkraf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowAllClustersClusteringTaskHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$ShowAllClustersClusteringTaskHost;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$BaseClusteringTaskHost;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$ShowAllClustersClusteringTaskHost;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)V

    return-void
.end method


# virtual methods
.method protected onCurrentClustersSet()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$ShowAllClustersClusteringTaskHost;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->showAllClusters()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$2100(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)V

    return-void
.end method
