.class Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$JobThread;
.super Ljava/lang/Object;
.source "HistoryThreadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$JobThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :cond_0
    :goto_0
    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->exit:Z
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->access$100()Z

    move-result v3

    if-nez v3, :cond_4

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sLocked:Z
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->access$200()Z

    move-result v3

    if-nez v3, :cond_2

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->access$300()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJob;

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HistoryThreadManager::Doing Job. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJob;->data:[I

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->write([I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HistoryThreadManager::Job time: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJob;->callback:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJobCallback;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJob;->callback:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJobCallback;

    invoke-interface {v3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJobCallback;->onJobDone(I)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HistoryThreadManager::Job done. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sLocked:Z
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->access$200()Z

    move-result v3

    if-nez v3, :cond_3

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->access$300()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJob;

    if-nez v0, :cond_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HistoryThreadManager:: waiting: Job Count: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->access$300()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->access$400()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->access$400()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    return-void
.end method
