.class abstract Lcom/sec/android/gallery3d/app/DetailReloadTask;
.super Ljava/lang/Thread;
.source "DetailReloadTask.java"


# instance fields
.field volatile mActive:Z

.field private final mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

.field volatile mDirty:Z

.field private mIsLoading:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sec/android/gallery3d/app/AlbumReloader;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mActive:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mDirty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mIsLoading:Z

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mIsLoading:Z

    return v0
.end method

.method declared-synchronized notifyDirty()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mDirty:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onLoadData()Z
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mActive:Z

    if-eqz v1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mActive:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mDirty:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AlbumReloader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/DetailReloadTask;->updateLoading(Z)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mDirty:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/DetailReloadTask;->updateLoading(Z)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/DetailReloadTask;->onLoadData()Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/app/DetailReloadTask;->updateLoading(Z)V

    return-void
.end method

.method declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mActive:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateLoading(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/DetailReloadTask;->mIsLoading:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/DetailReloadTask;->updateLoadingStatus(Z)V

    goto :goto_0
.end method

.method protected abstract updateLoadingStatus(Z)V
.end method
