.class public Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;
.super Landroid/os/Handler;
.source "ResourceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalHandler"
.end annotation


# static fields
.field private static final WHAT_SAVE_TO_CACHE:I = 0x0

.field private static final WHAT_USER_LOGIC:I = 0x64

.field private static final WHAT_WITHOUT_CACHE:I = 0x1


# instance fields
.field private final mImageDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->mImageDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->requestRedraw(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;Z)V

    return-void
.end method

.method private requestRedraw(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask",
            "<*>;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->removeMessages(I)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/16 v7, 0x64

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->mImageDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mLocker:Ljava/lang/Object;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->access$200(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    const/4 v3, 0x0

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v7, :cond_3

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    move-object v0, v5

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;

    move-object v3, v0

    :goto_0
    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->mImageDispatcher:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mDispatcherMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    # invokes: Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->recycleIfNeeds(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V
    invoke-static {v5, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->access$300(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V

    :cond_2
    :goto_1
    monitor-exit v6

    return-void

    :cond_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;

    move-object v3, v0

    goto :goto_0

    :cond_4
    iget v5, p1, Landroid/os/Message;->what:I

    if-eq v5, v7, :cond_2

    iget v5, p1, Landroid/os/Message;->what:I

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mCacheLoader:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->access$400(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ICacheLoader;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mResourceDispatchStateChanged:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mResourceDispatchStateChanged:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;->onCompleted(Landroid/view/View;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V

    :cond_6
    :goto_2
    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->getValue()Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->onPostDispatch(Ljava/lang/Object;Z)V

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->mResourceDispatchStateChanged:Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;->access$500(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher;)Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$OnResourceDispatchStateChanged;->onFailed(Landroid/view/View;Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method runOnUiThread(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;Ljava/util/concurrent/Callable;)V
    .locals 2
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

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->runOnUiThread(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;Ljava/util/concurrent/Callable;J)V

    return-void
.end method

.method runOnUiThread(Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;Ljava/util/concurrent/Callable;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask",
            "<*>;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;J)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/AbstractResourceDispatcherTask;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->removeMessages(I)V

    const/16 v0, 0x64

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/sec/android/mimage/photoretouching/Decoration/enhanced/utils/ResourceDispatcher$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
