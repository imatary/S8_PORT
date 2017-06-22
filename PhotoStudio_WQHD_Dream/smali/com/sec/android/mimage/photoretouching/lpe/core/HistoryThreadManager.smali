.class public Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;
.super Ljava/lang/Object;
.source "HistoryThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJob;,
        Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$JobThread;,
        Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJobCallback;
    }
.end annotation


# static fields
.field private static exit:Z

.field private static obj:Ljava/lang/Object;

.field private static sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJob;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->exit:Z

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sLocked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->exit:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sLocked:Z

    return v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static addPreview([ILcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJobCallback;)V
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJob;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJob;-><init>([ILcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$HistoryJobCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;

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

.method public static close()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->exit:Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    :cond_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;

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

.method public static init()V
    .locals 3

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->exit:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sJobQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$JobThread;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$JobThread;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public static lock()V
    .locals 1

    const-string v0, "HistoryThreadMananger::locked"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sLocked:Z

    return-void
.end method

.method public static release()V
    .locals 2

    const-string v0, "HistoryThreadMananger::released"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->sLocked:Z

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->obj:Ljava/lang/Object;

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
