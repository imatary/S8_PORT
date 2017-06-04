.class public Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;
.super Ljava/lang/Object;
.source "ContentResolverDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;,
        Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentResolverDispatcher"

.field private static mContentResolverDispatcher:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;


# instance fields
.field private final MAX_QUEUE_LENGTH:I

.field private final TIME_OUT_VALUE:J

.field private volatile mAsync:Z

.field private final mContext:Landroid/content/Context;

.field private final mDelayedOperationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDeleteOperationState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mStartingLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mUpdatingDeleteLock:Ljava/util/concurrent/locks/Lock;

.field private final mWorkerThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mWorkerThread:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mDeleteOperationState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mUpdatingDeleteLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mDelayedOperationsMap:Ljava/util/Map;

    const/16 v0, 0xc

    iput v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->MAX_QUEUE_LENGTH:I

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->TIME_OUT_VALUE:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mStartingLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mStartingLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mAsync:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mDelayedOperationsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mDeleteOperationState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mUpdatingDeleteLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private allowWorkerToRunIfWaiting()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mStartingLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mStartingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mContentResolverDispatcher:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    if-nez v0, :cond_1

    const-class v1, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mContentResolverDispatcher:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mContentResolverDispatcher:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mContentResolverDispatcher:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private provideQueue(Landroid/net/Uri;)Ljava/util/concurrent/BlockingDeque;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mDelayedOperationsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/BlockingDeque;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mDelayedOperationsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mDelayedOperationsMap:Ljava/util/Map;

    new-instance v2, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mDelayedOperationsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/BlockingDeque;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public beginAsync()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "ContentResolverDispatcher"

    const-string/jumbo v1, "beginAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mAsync:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mStartingLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mWorkerThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;-><init>(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public delete(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mAsync:Z

    if-nez v2, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;->execute()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mUpdatingDeleteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mDeleteOperationState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mDeleteOperationState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mUpdatingDeleteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->allowWorkerToRunIfWaiting()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mUpdatingDeleteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public finishAsync()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mAsync:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->allowWorkerToRunIfWaiting()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    or-int/2addr v1, v3

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method

.method public updateOrInsert(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mAsync:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {v0, p1, p5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->provideQueue(Landroid/net/Uri;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;

    invoke-direct {v2, p2, p3, p4, p5}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;-><init>(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->allowWorkerToRunIfWaiting()V

    goto :goto_0
.end method
