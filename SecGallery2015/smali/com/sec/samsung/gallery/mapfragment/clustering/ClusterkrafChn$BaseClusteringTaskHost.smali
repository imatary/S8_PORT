.class abstract Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;
.super Ljava/lang/Object;
.source "ClusterkrafChn.java"

# interfaces
.implements Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseClusteringTaskHost"
.end annotation


# instance fields
.field private task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;

.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Host;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;

    return-void
.end method

.method public executeTask()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1800(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/AMap;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$400(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1900(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;->points:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$2000(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;->previousClusters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/AMap;->getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;->zoomLevel:Ljava/lang/Float;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;

    new-array v3, v4, [Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Argument;

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onClusteringTaskPostExecute(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    iget-object v1, p1, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask$Result;->currentClusters:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1702(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->onCurrentClustersSet()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringTask;

    return-void
.end method

.method protected abstract onCurrentClustersSet()V
.end method
