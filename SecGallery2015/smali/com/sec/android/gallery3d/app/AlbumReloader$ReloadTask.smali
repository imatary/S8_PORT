.class Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumReloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/AlbumReloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private mIsLoading:Z

.field private volatile mWait:Z

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AlbumReloader;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mActive:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mDirty:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mIsLoading:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mWait:Z

    return-void
.end method

.method private getReloadInfo(JLcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;)Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;
    .locals 5

    :try_start_0
    new-instance v1, Lcom/sec/android/gallery3d/app/AlbumReloader$GetUpdateInfo;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-direct {v1, v2, p1, p2}, Lcom/sec/android/gallery3d/app/AlbumReloader$GetUpdateInfo;-><init>(Lcom/sec/android/gallery3d/app/AlbumReloader;J)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AlbumReloader$GetUpdateInfo;->call()Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    :goto_0
    return-object p3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AlbumReloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateLoading(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mIsLoading:Z

    if-ne v1, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mIsLoading:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :goto_0
    # setter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadState:I
    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$402(Lcom/sec/android/gallery3d/app/AlbumReloader;I)I

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    # getter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$500(Lcom/sec/android/gallery3d/app/AlbumReloader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;->reload()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private waitLoading()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    # getter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mReloadListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$500(Lcom/sec/android/gallery3d/app/AlbumReloader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized notifyDirty(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mWait:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mDirty:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mWait:Z
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
    .locals 10

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-boolean v7, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mActive:Z

    if-eqz v7, :cond_7

    monitor-enter p0

    :try_start_0
    iget-boolean v7, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mActive:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mDirty:Z

    if-nez v7, :cond_0

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v7, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mWait:Z

    if-eqz v7, :cond_2

    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mDirty:Z

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mWaitWhenResume:Z
    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$602(Lcom/sec/android/gallery3d/app/AlbumReloader;Z)Z

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->updateLoading(Z)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mWaitWhenResume:Z
    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$602(Lcom/sec/android/gallery3d/app/AlbumReloader;Z)Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->waitLoading()Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mWait:Z

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mWait:Z

    if-eqz v7, :cond_3

    monitor-exit p0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mDirty:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->updateLoading(Z)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    # getter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$700(Lcom/sec/android/gallery3d/app/AlbumReloader;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-direct {p0, v4, v5, v1}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->getReloadInfo(JLcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;)Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-wide v8, v1, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->version:J

    cmp-long v7, v8, v4

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    # getter for: Lcom/sec/android/gallery3d/app/AlbumReloader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v7}, Lcom/sec/android/gallery3d/app/AlbumReloader;->access$700(Lcom/sec/android/gallery3d/app/AlbumReloader;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    iput v7, v1, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->size:I

    iput-wide v4, v1, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->version:J

    :cond_4
    :try_start_2
    new-instance v7, Lcom/sec/android/gallery3d/app/AlbumReloader$UpdateContent;

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-direct {v7, v8, v1}, Lcom/sec/android/gallery3d/app/AlbumReloader$UpdateContent;-><init>(Lcom/sec/android/gallery3d/app/AlbumReloader;Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AlbumReloader$UpdateContent;->call()Ljava/lang/Void;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-direct {p0, v4, v5, v1}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->getReloadInfo(JLcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;)Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    move-result-object v7

    if-nez v7, :cond_5

    move v2, v3

    :goto_2
    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v7, "AlbumReloader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->updateLoading(Z)V

    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadTask;->mActive:Z

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
