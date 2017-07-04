.class Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;
.super Ljava/lang/Object;
.source "ClusterkrafChn.java"

# interfaces
.implements Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClusterTransitionsBuildingTaskHost"
.end annotation


# instance fields
.field private task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;

.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Host;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;

    return-void
.end method

.method public executeTask()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1700(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;->currentClusters:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$2000(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;->previousClusters:Ljava/util/ArrayList;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;

    new-array v2, v3, [Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Argument;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onClusterTransitionsBuildingTaskPostExecute(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    iget-object v1, p1, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask$Result;->clusterTransitions:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$2300(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->task:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsBuildingTask;

    return-void
.end method
