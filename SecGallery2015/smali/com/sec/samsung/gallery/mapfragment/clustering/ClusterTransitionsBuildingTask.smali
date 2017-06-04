.class public Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;
.super Landroid/os/AsyncTask;
.source "ClusterTransitionsBuildingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Host;,
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;,
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;",
        "Ljava/lang/Void;",
        "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final host:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Host;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Host;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;->host:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Host;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;
    .locals 6

    const/4 v5, 0x1

    new-instance v3, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;-><init>()V

    if-eqz p1, :cond_1

    array-length v4, p1

    if-ne v4, v5, :cond_1

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v4, 0x0

    aget-object v0, p1, v4

    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;->previousClusters:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;-><init>(Ljava/util/ArrayList;)V

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;->currentClusters:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;->currentClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->add(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions$Builder;->build()Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;->clusterTransitions:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_1
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;->doInBackground([Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;->host:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Host;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;->host:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Host;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Host;->onClusterTransitionsBuildingTaskPostExecute(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;->onPostExecute(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;)V

    return-void
.end method
