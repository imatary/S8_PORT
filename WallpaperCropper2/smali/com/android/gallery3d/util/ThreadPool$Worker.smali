.class Lcom/android/gallery3d/util/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/gallery3d/util/Future;
.implements Lcom/android/gallery3d/util/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/util/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/android/gallery3d/util/Future",
        "<TT;>;",
        "Lcom/android/gallery3d/util/ThreadPool$JobContext;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mCancelListener:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcom/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mNetworkPoolThread:Z

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcom/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/util/ThreadPool;Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/util/ThreadPool$Worker;-><init>(Lcom/android/gallery3d/util/ThreadPool;Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/util/ThreadPool;Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/android/gallery3d/util/FutureListener",
            "<TT;>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->this$0:Lcom/android/gallery3d/util/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mJob:Lcom/android/gallery3d/util/ThreadPool$Job;

    iput-object p3, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mListener:Lcom/android/gallery3d/util/FutureListener;

    iput-boolean p4, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mNetworkPoolThread:Z

    return-void
.end method

.method private acquireResource(Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;)Z
    .locals 2

    const/4 v1, 0x0

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    monitor-enter p1

    :try_start_2
    iget v0, p1, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->value:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    invoke-virtual {p1}, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    monitor-exit p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private modeToCounter(I)Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->this$0:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v0, v0, Lcom/android/gallery3d/util/ThreadPool;->mCpuCounter:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->this$0:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v0, v0, Lcom/android/gallery3d/util/ThreadPool;->mNetworkCounter:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private releaseResource(Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;)V
    .locals 1

    monitor-enter p1

    :try_start_0
    iget v0, p1, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->value:I

    invoke-virtual {p1}, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mWaitOnResource:Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/android/gallery3d/util/ThreadPool$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/gallery3d/util/ThreadPool$Worker;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "Worker"

    const-string/jumbo v2, "ingore exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mMode:I

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/util/ThreadPool$Worker;->setMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mJob:Lcom/android/gallery3d/util/ThreadPool$Job;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/util/ThreadPool$Job;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/util/ThreadPool$Worker;->setMode(I)Z

    iput-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsDone:Z

    invoke-virtual {p0}, Lcom/android/gallery3d/util/ThreadPool$Worker;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mListener:Lcom/android/gallery3d/util/FutureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/util/FutureListener;->onFutureDone(Lcom/android/gallery3d/util/Future;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Worker"

    const-string/jumbo v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->dumpHprofData()V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string/jumbo v2, "Worker"

    const-string/jumbo v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public declared-synchronized setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

    iget-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mCancelListener:Lcom/android/gallery3d/util/ThreadPool$CancelListener;

    invoke-interface {v0}, Lcom/android/gallery3d/util/ThreadPool$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/util/ThreadPool$Worker;->modeToCounter(I)Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/util/ThreadPool$Worker;->releaseResource(Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;)V

    :cond_0
    iput v3, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mMode:I

    iget-boolean v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mNetworkPoolThread:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->this$0:Lcom/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mJob:Lcom/android/gallery3d/util/ThreadPool$Job;

    iget-object v2, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mListener:Lcom/android/gallery3d/util/FutureListener;

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->-wrap0(Lcom/android/gallery3d/util/ThreadPool;Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    iput-object v4, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mListener:Lcom/android/gallery3d/util/FutureListener;

    return v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/util/ThreadPool$Worker;->modeToCounter(I)Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/gallery3d/util/ThreadPool$Worker;->acquireResource(Lcom/android/gallery3d/util/ThreadPool$ResourceCounter;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    iput p1, p0, Lcom/android/gallery3d/util/ThreadPool$Worker;->mMode:I

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public waitDone()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/util/ThreadPool$Worker;->get()Ljava/lang/Object;

    return-void
.end method
