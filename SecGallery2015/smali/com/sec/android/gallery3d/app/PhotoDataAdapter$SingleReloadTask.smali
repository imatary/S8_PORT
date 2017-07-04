.class Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;
.super Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleReloadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->mActive:Z

    if-eqz v5, :cond_d

    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->mActive:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->mDirty:Z

    if-nez v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->updateLoading(Z)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v6

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$2700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v4, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    invoke-direct {v4, v6, v7, v5}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;-><init>(JI)V

    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->mDirty:Z

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    new-instance v8, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {v8, v9, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;)V

    invoke-static {v5, v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->updateLoading(Z)V

    iget-wide v8, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    iput-wide v6, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    iput v5, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    :cond_3
    iget-boolean v5, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    if-eqz v5, :cond_0

    iget v5, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    iget v8, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v0, v5, v8

    if-gez v0, :cond_4

    const/4 v0, 0x0

    :cond_4
    monitor-enter p0

    :try_start_2
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    iget v8, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemEx(II)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, -0x1

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->findIndexOfPathInCache(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/sec/android/gallery3d/data/Path;)I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4202(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    :cond_5
    const/4 v5, -0x1

    if-ne v1, v5, :cond_8

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->findCurrentMediaItem(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v5, v5, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v10

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)D

    move-result-wide v12

    cmpl-double v5, v10, v12

    if-nez v5, :cond_6

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v10

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)D

    move-result-wide v12

    cmpl-double v5, v10, v12

    if-eqz v5, :cond_b

    :cond_6
    const/4 v5, 0x1

    :goto_2
    invoke-static {v8, v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Z)Z

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;D)D

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;D)D

    :cond_7
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    iget-object v8, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget v1, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    :cond_8
    :goto_3
    const/4 v5, -0x1

    if-ne v1, v5, :cond_9

    iget v1, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    :cond_9
    iput v1, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    new-instance v8, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {v8, v9, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V

    invoke-static {v5, v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    :try_start_3
    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    iget v8, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    :cond_b
    const/4 v5, 0x0

    goto :goto_2

    :cond_c
    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->findIndexOfTarget(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I

    move-result v1

    goto :goto_3

    :cond_d
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;->updateLoading(Z)V

    return-void
.end method
