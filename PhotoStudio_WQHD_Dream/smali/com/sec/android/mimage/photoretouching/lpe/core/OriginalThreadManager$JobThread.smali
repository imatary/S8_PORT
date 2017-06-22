.class Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobThread;
.super Ljava/lang/Object;
.source "OriginalThreadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;
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

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v4, "PEDIT_OriginalThreadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Original Thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->thread:Ljava/lang/Thread;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->access$102(Ljava/lang/Thread;)Ljava/lang/Thread;

    :cond_0
    :goto_0
    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->exit:Z
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->access$200()Z

    move-result v4

    if-nez v4, :cond_4

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->access$300()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    if-eqz v4, :cond_0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sLocked:Z
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->access$400()Z

    move-result v4

    if-nez v4, :cond_2

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->access$300()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OriginalThreadManager::Doing Job. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;->job:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;->job:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OriginalThreadManager::Job time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;->callback:Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;->callback:Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;->onJobDone()V

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OriginalThreadManager::Job done. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;->job:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sLocked:Z
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->access$400()Z

    move-result v4

    if-nez v4, :cond_3

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->access$300()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;

    if-nez v0, :cond_0

    :cond_3
    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->access$300()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OriginalThreadManager:: waiting: Job Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->access$300()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->obj:Ljava/lang/Object;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->access$500()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->obj:Ljava/lang/Object;
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->access$500()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    const-string v4, "PEDIT_OriginalThreadManager"

    const-string v5, "end of original thread.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
