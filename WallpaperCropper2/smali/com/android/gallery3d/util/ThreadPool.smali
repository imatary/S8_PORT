.class public Lcom/android/gallery3d/util/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/ThreadPool$CancelListener;,
        Lcom/android/gallery3d/util/ThreadPool$Job;,
        Lcom/android/gallery3d/util/ThreadPool$JobContext;,
        Lcom/android/gallery3d/util/ThreadPool$JobContextStub;,
        Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;,
        Lcom/android/gallery3d/util/ThreadPool$Worker;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x6

.field public static final JOB_CONTEXT_STUB:Lcom/android/gallery3d/util/ThreadPool$JobContext;

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x6

.field public static final MODE_CPU:I = 0x1

.field public static final MODE_NETWORK:I = 0x2

.field public static final MODE_NONE:I = 0x0

.field private static final NETWORK_POOL_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ThreadPool"


# instance fields
.field mCpuCounter:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mNetworkCounter:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

.field private final mNetworkExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static synthetic -wrap0(Lcom/android/gallery3d/util/ThreadPool;Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/util/ThreadPool;->submitToNetworkPool(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/gallery3d/util/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContextStub;-><init>(Lcom/android/gallery3d/util/ThreadPool$JobContextStub;)V

    sput-object v0, Lcom/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, v0}, Lcom/android/gallery3d/util/ThreadPool;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 11

    const-wide/16 v4, 0xa

    const/16 v10, 0xa

    const/4 v9, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/util/ThreadPool;->mCpuCounter:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    new-instance v0, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    invoke-direct {v0, v9}, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/util/ThreadPool;->mNetworkCounter:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/android/gallery3d/util/PriorityThreadFactory;

    const-string/jumbo v0, "thread-pool"

    invoke-direct {v8, v0, v10}, Lcom/android/gallery3d/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/gallery3d/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/android/gallery3d/util/PriorityThreadFactory;

    const-string/jumbo v0, "network-thread-pool"

    invoke-direct {v8, v0, v10}, Lcom/android/gallery3d/util/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    move v2, v9

    move v3, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/gallery3d/util/ThreadPool;->mNetworkExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private submitToNetworkPool(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;)",
            "Lcom/android/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/gallery3d/util/ThreadPool$Worker;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/gallery3d/util/ThreadPool$Worker;-><init>(Lcom/android/gallery3d/util/ThreadPool;Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;Z)V

    iget-object v1, p0, Lcom/android/gallery3d/util/ThreadPool;->mNetworkExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public getQueuedCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public submit(Lcom/android/gallery3d/util/ThreadPool$Job;)Lcom/android/gallery3d/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;)",
            "Lcom/android/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;)",
            "Lcom/android/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/gallery3d/util/ThreadPool$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery3d/util/ThreadPool$Worker;-><init>(Lcom/android/gallery3d/util/ThreadPool;Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)V

    iget-object v1, p0, Lcom/android/gallery3d/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public submitToLast(Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/gallery3d/util/Future",
            "<TT;>;)",
            "Lcom/android/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    check-cast p1, Lcom/android/gallery3d/util/ThreadPool$Worker;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-object p1
.end method

.method public submitUrgent(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;)",
            "Lcom/android/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/util/ThreadPool$Worker;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return-object v5
.end method
