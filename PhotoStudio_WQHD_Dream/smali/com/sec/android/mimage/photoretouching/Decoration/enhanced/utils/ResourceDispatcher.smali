.class public final Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;
.super Ljava/lang/Object;
.source "ResourceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;,
        Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final SHUTDOWN_TIMEOUT_SECONDS:I

.field private final mCacheLoader:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDispatcherMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field protected final mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

.field private final mLocker:Ljava/lang/Object;

.field private mResourceDispatchStateChanged:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/SoftCacheLoader;

    invoke-direct {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/SoftCacheLoader;-><init>()V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$1;

    invoke-direct {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$1;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$2;

    invoke-direct {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$2;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->SHUTDOWN_TIMEOUT_SECONDS:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mLocker:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mCacheLoader:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/SoftCacheLoader;

    invoke-direct {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/SoftCacheLoader;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->recycleIfNeeds(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mCacheLoader:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mResourceDispatchStateChanged:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;

    return-object v0
.end method

.method private findValueFromCache(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mCacheLoader:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isFutureRunning(Ljava/util/concurrent/Future;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleIfNeeds(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask",
            "<*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->findValueFromCache(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->onDestroy()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch(Landroid/view/View;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask",
            "<*>;)",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask",
            "<*>;"
        }
    .end annotation

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mLocker:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p2, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->setResourceDispatcher(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)V

    invoke-virtual {p2, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->setView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p2, v2

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->findValueFromCache(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->setValue(Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->setSuccess(Z)V

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->onPostDispatch(Ljava/lang/Object;Z)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mResourceDispatchStateChanged:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mResourceDispatchStateChanged:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;

    invoke-interface {v3, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;->onCompleted(Landroid/view/View;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    return-object p2

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->isFutureRunning(Ljava/util/concurrent/Future;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->recycleIfNeeds(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->onPreDispatch()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method notifyDispatcherTaskFinished(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->isSuccess()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    # invokes: Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->requestRedraw(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;Z)V
    invoke-static {v1, p1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->access$100(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;Z)V

    return-void
.end method

.method runOnUiThread(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask",
            "<*>;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->runOnUiThread(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public setOnImageDispatchStateChanged(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mResourceDispatchStateChanged:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mLocker:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v6, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v6, v7, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->onDestroy()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mCacheLoader:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;->clear()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->removeMessages(I)V

    :goto_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->onDestroy()V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mCacheLoader:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;

    invoke-interface {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;->clear()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->removeMessages(I)V

    goto :goto_1

    :catchall_1
    move-exception v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->onDestroy()V

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mCacheLoader:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;

    invoke-interface {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;->clear()V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mInternalHandler:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->removeMessages(I)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public tryDispatch(Landroid/view/View;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask",
            "<*>;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mLocker:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->findValueFromCache(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v4

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->isFutureRunning(Ljava/util/concurrent/Future;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_1
    invoke-virtual {p2, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->setResourceDispatcher(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)V

    invoke-virtual {p2, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->setView(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->setValue(Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->setSuccess(Z)V

    const/4 v5, 0x1

    invoke-virtual {p2, v0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->onPostDispatch(Ljava/lang/Object;Z)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mResourceDispatchStateChanged:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mResourceDispatchStateChanged:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;

    invoke-interface {v5, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;->onCompleted(Landroid/view/View;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V

    :cond_3
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->recycleIfNeeds(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public undispatch(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->undispatch(Landroid/view/View;Z)V

    return-void
.end method

.method public undispatch(Landroid/view/View;Z)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;

    if-nez v1, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->isFutureRunning(Ljava/util/concurrent/Future;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_1
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mCacheLoader:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;

    iget-object v4, v1, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->mKey:Ljava/lang/Object;

    invoke-interface {v2, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->recycleIfNeeds(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public undispatch(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->undispatch(Ljava/lang/Object;Z)V

    return-void
.end method

.method public undispatch(Ljava/lang/Object;Z)V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mLocker:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->undispatch(Landroid/view/View;Z)V

    goto :goto_1

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
