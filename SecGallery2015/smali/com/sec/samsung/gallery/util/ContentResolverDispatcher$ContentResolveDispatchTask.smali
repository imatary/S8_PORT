.class Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;
.super Ljava/lang/Object;
.source "ContentResolverDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentResolveDispatchTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;-><init>(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)V

    return-void
.end method

.method private executeDelete()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$700(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$600(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$700(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/dboperation/DeleteAggregateDbOperation;->execute()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$700(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private executeInsertOrUpdate(Landroid/content/ContentResolver;Ljava/util/concurrent/BlockingDeque;Landroid/net/Uri;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    const/16 v9, 0xc

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v6, 0x32

    :goto_0
    :try_start_0
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v6, v7, v9}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;

    if-eqz v5, :cond_0

    const-wide/16 v6, 0x0

    invoke-direct {p0, p3, v5}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->getOperation(Landroid/net/Uri;Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;)Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v9, "ContentResolverDispatcher"

    const-string/jumbo v10, "Pooling updates interrupted"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    array-length v9, v1

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_2
    array-length v9, v1

    if-ge v3, v9, :cond_2

    aget-object v9, v1, v3

    iget-object v9, v9, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gtz v9, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;

    invoke-static {v9}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;->access$800(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v2

    :goto_3
    const-string/jumbo v9, "ContentResolverDispatcher"

    const-string/jumbo v10, "Content update failed"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Landroid/content/ContentValues;

    invoke-interface {v0, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/ContentValues;

    invoke-virtual {p1, p3, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_3
    return-void

    :catch_2
    move-exception v2

    goto :goto_3
.end method

.method private getOperation(Landroid/net/Uri;Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;)Landroid/content/ContentProviderOperation;
    .locals 3

    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-static {p2}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;->access$1000(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;->access$1100(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-static {p2}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;->access$900(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private hasMoreWork()Z
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$400(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$600(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$100(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$100(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$200(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$300(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->hasMoreWork()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$400(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/BlockingDeque;

    invoke-direct {p0, v0, v1, v4}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->executeInsertOrUpdate(Landroid/content/ContentResolver;Ljava/util/concurrent/BlockingDeque;Landroid/net/Uri;)V

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v5, "ContentResolverDispatcher"

    const-string/jumbo v6, "Wait for start interrupted"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->executeDelete()V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$500(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$ContentResolveDispatchTask;->this$0:Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->access$102(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    return-void
.end method
