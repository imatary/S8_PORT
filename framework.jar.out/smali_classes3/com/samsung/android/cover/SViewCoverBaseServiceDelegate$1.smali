.class Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;
.super Ljava/lang/Object;
.source "SViewCoverBaseServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string/jumbo v3, "SViewCoverBaseServiceDelegate"

    const-string/jumbo v4, "*** SViewCoverBase service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-static {v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->-get0(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    new-instance v4, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-static {p2}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ISViewCoverBaseService;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;-><init>(Lcom/samsung/android/cover/ISViewCoverBaseService;)V

    iput-object v4, v3, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-static {v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->-get2(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$SViewCoverBaseState;->systemIsReady:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v3, v3, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->onSystemReady()V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-static {v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->-get1(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-static {v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->-get1(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v4, v3, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-static {v4}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->-get0(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-static {v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->-get1(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-static {v3}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->-get0(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "SViewCoverBaseServiceDelegate"

    const-string/jumbo v1, "*** SViewCoverBase service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-static {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->-get0(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->mSViewCoverBaseService:Lcom/samsung/android/cover/SViewCoverBaseServiceWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-static {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->-get0(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate$1;->this$0:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-static {v1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->-get0(Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
