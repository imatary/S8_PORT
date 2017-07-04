.class Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;
.super Lcom/sec/android/gallery3d/app/DetailReloadTask;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/AlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {p1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$200(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/AlbumReloader;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/sec/android/gallery3d/app/DetailReloadTask;-><init>(Ljava/lang/String;Lcom/sec/android/gallery3d/app/AlbumReloader;)V

    return-void
.end method


# virtual methods
.method protected onLoadData()Z
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1900(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    move-result-object v2

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v6, v2, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->version:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v5, v4}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$502(Lcom/sec/android/gallery3d/app/AlbumDataLoader;I)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    new-instance v6, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    iget-wide v8, v2, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->version:J

    invoke-direct {v6, v7, v8, v9}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;-><init>(Lcom/sec/android/gallery3d/app/AlbumDataLoader;J)V

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$2000(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;

    if-eqz v1, :cond_0

    iget-wide v6, v1, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    iget-wide v8, v2, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->version:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v3}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$2100(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v6

    cmp-long v3, v6, v10

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$2200(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-static {v3, v5, v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$2300(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;)V

    :goto_1
    iget-wide v6, v2, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->version:J

    iput-wide v6, v1, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->version:J

    :cond_2
    iget v3, v1, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v3}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$2100(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v6

    cmp-long v3, v6, v10

    if-gtz v3, :cond_3

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v3}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$2200(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    iget v5, v1, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadStart:I

    iget v6, v1, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->reloadCount:I

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v1, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    new-instance v5, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {v5, v6, v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;-><init>(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;)V

    invoke-static {v3, v5}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$2000(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move v3, v4

    goto :goto_0

    :cond_4
    iget v3, v2, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;->size:I

    iput v3, v1, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AlbumDataAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto/16 :goto_0
.end method

.method protected updateLoadingStatus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$1800(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Landroid/os/Handler;

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
