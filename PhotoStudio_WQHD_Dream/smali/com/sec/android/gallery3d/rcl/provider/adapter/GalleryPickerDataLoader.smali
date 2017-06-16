.class public Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;
.super Ljava/lang/Thread;
.source "GalleryPickerDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$GalleryPickerOnLoadDataListener;
    }
.end annotation


# static fields
.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GalleryPickerDataLoader"


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsLoading:Z

.field private mLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

.field private mOnLoadDataListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$GalleryPickerOnLoadDataListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GalleryPickerDataLoadTask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mActive:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mDirty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mIsLoading:Z

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->initHandler(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;)Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

    return-object v0
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mOnLoadDataListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$GalleryPickerOnLoadDataListener;

    return-void
.end method

.method private initHandler(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$1;-><init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private loadFinished()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->updateLoading(Z)V

    return-void
.end method

.method private loadStarted()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->updateLoading(Z)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mIsLoading:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mActive:Z

    return v0
.end method

.method public declared-synchronized notifyDirty()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mDirty:Z

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
    .locals 5

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mActive:Z

    if-eqz v2, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mActive:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mDirty:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->loadFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "GalleryPickerDataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected interrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mDirty:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->loadStarted()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mOnLoadDataListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$GalleryPickerOnLoadDataListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mOnLoadDataListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$GalleryPickerOnLoadDataListener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$GalleryPickerOnLoadDataListener;->onLoadData()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->loadFinished()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->clear()V

    return-void
.end method

.method public setLoadingListener(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

    return-void
.end method

.method public setOnLoadDataListener(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$GalleryPickerOnLoadDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mOnLoadDataListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$GalleryPickerOnLoadDataListener;

    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mActive:Z

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
