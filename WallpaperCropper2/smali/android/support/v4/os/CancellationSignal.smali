.class public final Landroid/support/v4/os/CancellationSignal;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .locals 1

    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    iget-object v1, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-void

    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :cond_2
    :try_start_5
    invoke-static {v1}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    :cond_1
    return-object v2

    :cond_2
    invoke-static {}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnCancelListener(Landroid/support/v4/os/CancellationSignal$OnCancelListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/os/CancellationSignal;->waitForCancelFinishedLocked()V

    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-nez v0, :cond_2

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    if-eqz p1, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public throwIfCanceled()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v0
.end method
