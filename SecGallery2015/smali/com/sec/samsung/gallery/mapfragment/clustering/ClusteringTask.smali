.class public Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;
.super Landroid/os/AsyncTask;
.source "ClusteringTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Host;,
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;,
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;",
        "Ljava/lang/Void;",
        "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final host:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Host;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Host;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;->host:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Host;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;
    .locals 6

    const/4 v4, 0x1

    new-instance v2, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;-><init>()V

    if-eqz p1, :cond_0

    array-length v3, p1

    if-ne v3, v4, :cond_0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v3, 0x0

    aget-object v0, p1, v3

    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;

    iget-object v3, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;->previousClusters:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;->zoomLevel:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/util/ArrayList;F)V

    iget-object v3, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;->points:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->addAll(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClustersBuilder;->build()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;->currentClusters:Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;->doInBackground([Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;->host:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Host;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;->host:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Host;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Host;->onClusteringTaskPostExecute(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;->onPostExecute(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;)V

    return-void
.end method
