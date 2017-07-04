.class Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
.super Lcom/sec/android/gallery3d/app/DetailReloadTask;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/app/AlbumReloader;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/sec/android/gallery3d/app/DetailReloadTask;-><init>(Ljava/lang/String;Lcom/sec/android/gallery3d/app/AlbumReloader;)V

    return-void
.end method


# virtual methods
.method findCurrentMediaItem(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    iget v3, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget v4, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v0, v3, v4

    if-nez v1, :cond_1

    const-string/jumbo v3, "PhotoDataAdapter"

    const-string/jumbo v4, "findCurrentMediaItem : items is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method findIndexOfPathInCache(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/sec/android/gallery3d/data/Path;)I
    .locals 6

    const/4 v4, -0x1

    iget-object v2, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    if-ne v5, p2, :cond_2

    iget v4, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findIndexOfTarget(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I
    .locals 9

    const-string/jumbo v6, "Gallery_Performance"

    const-string/jumbo v7, "PhotoDataAdapter::findIndexOfTarget() START"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/sec/android/gallery3d/data/Path;

    if-nez v6, :cond_0

    iget v1, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-ge v0, v5, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    iget-object v7, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/sec/android/gallery3d/data/Path;

    if-ne v6, v7, :cond_1

    iget v6, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    add-int v1, v0, v6

    const-string/jumbo v6, "Gallery_Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PhotoDataAdapter findIndexOfTarget END, (i + info.contentStart) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v6, v6, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v6

    iget-object v7, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v4

    const/4 v3, 0x0

    instance-of v6, v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v6, :cond_3

    move-object v3, v4

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_3
    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v6, v6, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "Gallery_Performance"

    const-string/jumbo v7, "PhotoDataAdapter::findIndexOfTarget() END, return -1 !!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_4
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    iget-object v7, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/sec/android/gallery3d/data/Path;

    iget v8, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getIndexOfItemEx(Lcom/sec/android/gallery3d/data/Path;I)I

    move-result v1

    :goto_2
    const-string/jumbo v6, "Gallery_Performance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PhotoDataAdapter::findIndexOfTarget() END, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    iget-object v7, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/sec/android/gallery3d/data/Path;

    iget v8, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getIndexOfItem(Lcom/sec/android/gallery3d/data/Path;I)I

    move-result v1

    goto :goto_2
.end method

.method protected onLoadData()Z
    .locals 15

    const/4 v6, 0x0

    const/4 v14, -0x1

    const/4 v7, 0x1

    const-string/jumbo v8, "Gallery_Performance"

    const-string/jumbo v9, "PhotoDataAdapter::onLoadData() START"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v8}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    move-result-object v5

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    new-instance v10, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {v10, v11, v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;)V

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;

    if-nez v3, :cond_0

    monitor-exit v8

    :goto_0
    return v6

    :cond_0
    iget-wide v10, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->version:J

    iget-wide v12, v5, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->version:J

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    iget v9, v5, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->size:I

    iput v9, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->size:I

    :cond_1
    iget-boolean v9, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    if-nez v9, :cond_2

    monitor-exit v8

    move v6, v7

    goto :goto_0

    :cond_2
    iget v9, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    iget v10, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    sub-int v0, v9, v10

    if-gez v0, :cond_3

    const/4 v0, 0x0

    :cond_3
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v9

    iget v10, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    invoke-virtual {v9, v10, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemEx(II)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, -0x1

    :try_start_3
    iget-object v9, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {p0, v3, v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfPathInCache(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;Lcom/sec/android/gallery3d/data/Path;)I

    move-result v2

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4202(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    :cond_4
    if-ne v2, v14, :cond_8

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findCurrentMediaItem(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v9, v9, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v10

    iget-object v12, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v12}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-nez v10, :cond_5

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v10

    iget-object v12, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v12}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_6

    :cond_5
    move v6, v7

    :cond_6
    invoke-static {v9, v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Z)Z

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v10

    invoke-static {v6, v10, v11}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;D)D

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v10

    invoke-static {v6, v10, v11}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;D)D

    :cond_7
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    iget-object v9, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget v2, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    :cond_8
    :goto_2
    if-ne v2, v14, :cond_9

    iget v2, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    :cond_9
    iput v2, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    new-instance v9, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;

    iget-object v10, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {v9, v10, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)V

    invoke-static {v6, v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$4100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string/jumbo v6, "Gallery_Performance"

    const-string/jumbo v8, "PhotoDataAdapter::onLoadData() END"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto/16 :goto_0

    :cond_a
    :try_start_4
    iget-object v9, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$3800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v9

    iget v10, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    invoke-virtual {v9, v10, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;->items:Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    :try_start_5
    const-string/jumbo v6, "PhotoDataAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IndexOutOfBoundsException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v6, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v6

    :catchall_1
    move-exception v6

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    :cond_b
    :try_start_9
    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->findIndexOfTarget(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v2

    goto :goto_2
.end method

.method protected updateLoadingStatus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$1700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
