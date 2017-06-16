.class public Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;
.super Ljava/lang/Object;
.source "OriginalThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;,
        Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobThread;,
        Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_OriginalThreadManager"

.field private static exit:Z

.field private static obj:Ljava/lang/Object;

.field private static sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocked:Z

.field private static thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->exit:Z

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sLocked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    sput-object p0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->thread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->exit:Z

    return v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sLocked:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding Job.. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sJobQueue is null.. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$OriginalJob;-><init>(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->obj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static close()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "PEDIT_OriginalThreadManager"

    const-string v1, "Closing Original Thread Manager..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->exit:Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    sput-object v2, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    :cond_0
    sput-object v2, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->thread:Ljava/lang/Thread;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->obj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getQueuedCount()I
    .locals 1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->isJobsDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static init()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->exit:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->obj:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobThread;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobThread;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static isJobsDone()Z
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOriginalThread()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->thread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lock()V
    .locals 1

    const-string v0, "OriginalThreadMananger::locked"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sLocked:Z

    return-void
.end method

.method public static release()V
    .locals 2

    const-string v0, "OriginalThreadMananger::released"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->sLocked:Z

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->obj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
