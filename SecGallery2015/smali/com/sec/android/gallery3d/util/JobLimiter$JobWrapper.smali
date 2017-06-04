.class Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;
.super Ljava/lang/Object;
.source "JobLimiter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/Future;
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/util/JobLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JobWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/Future",
        "<TT;>;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mJob:Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<TT;>;",
            "Lcom/sec/android/gallery3d/util/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    iput-object p2, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/sec/android/gallery3d/util/FutureListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/sec/android/gallery3d/util/FutureListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/sec/android/gallery3d/util/FutureListener;

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcom/sec/android/gallery3d/util/Future;

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/sec/android/gallery3d/util/FutureListener;->onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;",
            ")TT;"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget v5, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-ne v5, v8, :cond_1

    monitor-exit p0

    move-object v2, v4

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :goto_1
    monitor-enter p0

    :try_start_2
    iget v5, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    if-ne v5, v8, :cond_2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catch_0
    move-exception v3

    const-string/jumbo v5, "JobLimiter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error executing job: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :try_start_4
    iput v4, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/sec/android/gallery3d/util/FutureListener;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->getMode()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mListener:Lcom/sec/android/gallery3d/util/FutureListener;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mJob:Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    :goto_2
    iput-object v2, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mResult:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/sec/android/gallery3d/util/FutureListener;->onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method

.method public declared-synchronized setFuture(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->mDelegate:Lcom/sec/android/gallery3d/util/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitDone()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/util/JobLimiter$JobWrapper;->get()Ljava/lang/Object;

    return-void
.end method
