.class public Lcom/sec/samsung/gallery/view/adapter/ReloadTask;
.super Ljava/lang/Thread;
.source "ReloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/adapter/ReloadTask$SimpleOnLoadDataListener;,
        Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;
    }
.end annotation


# static fields
.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1


# instance fields
.field private volatile mActive:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mDirty:Z

.field private mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

.field private volatile mIsLoading:Z

.field private mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

.field private mOnLoadDataListener:Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ReloadTask-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mActive:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mDirty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mIsLoading:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->initHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/adapter/ReloadTask;)Lcom/sec/android/gallery3d/app/LoadingListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method private initHandler()V
    .locals 3

    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/ReloadTask$1;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask$1;-><init>(Lcom/sec/samsung/gallery/view/adapter/ReloadTask;Lcom/sec/android/gallery3d/ui/GLRoot;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-void
.end method

.method private loadFinished()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->updateLoading(Z)V

    return-void
.end method

.method private loadStarted()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->updateLoading(Z)V

    return-void
.end method

.method private performanceLogging(Z)V
    .locals 3

    const-string/jumbo v1, "Gallery_Performance"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ReloadTask "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "finished"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "progress"

    goto :goto_0
.end method

.method private updateLoading(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mIsLoading:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mActive:Z

    return v0
.end method

.method public isDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mDirty:Z

    return v0
.end method

.method public declared-synchronized notifyDirty()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mDirty:Z

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

.method public run()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mOnLoadDataListener:Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mOnLoadDataListener:Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;->onPrepareData()V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mActive:Z

    if-eqz v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mActive:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mDirty:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->loadFinished()V

    invoke-static {p0}, Lcom/sec/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mDirty:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->loadStarted()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mOnLoadDataListener:Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mOnLoadDataListener:Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;->onLoadData()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->loadFinished()V

    return-void
.end method

.method public setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    return-void
.end method

.method public setOnLoadDataListener(Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mOnLoadDataListener:Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;

    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->mActive:Z

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
