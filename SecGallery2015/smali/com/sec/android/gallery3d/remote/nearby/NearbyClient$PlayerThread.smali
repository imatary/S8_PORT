.class Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;
.super Ljava/lang/Thread;
.source "NearbyClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerThread"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "PlayerThread"


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v4, "PlayerThread"

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->setName(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayInfoQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1600(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayInfoQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1600(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;

    goto :goto_0

    :cond_1
    if-nez v3, :cond_3

    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "play info is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    iget-object v5, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    # invokes: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->prepareItem(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/samsung/android/allshare/Item;
    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1900(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/samsung/android/allshare/Item;

    move-result-object v2

    if-nez v2, :cond_4

    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "playing image to player has been cancelled, item to show is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScreenSharing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    const/4 v5, 0x0

    iget-object v6, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;->viewer:Lcom/samsung/android/allshare/media/ImageViewer;

    # invokes: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->handleScreenSharingNotify(ILcom/samsung/android/allshare/Device;)V
    invoke-static {v4, v5, v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1300(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;ILcom/samsung/android/allshare/Device;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayInfoQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1600(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "NearbyClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayInfoQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1600(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " item inserted while preparing item"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayInfoQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1600(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$2000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/ImageViewer;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$2000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/ImageViewer;

    move-result-object v4

    iget-object v5, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;->viewer:Lcom/samsung/android/allshare/media/ImageViewer;

    if-eq v4, v5, :cond_7

    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "stop previous viewer. is changed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$2000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/ImageViewer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/ImageViewer;->stop()V

    :cond_7
    const-string/jumbo v4, "NearbyClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "show item to player : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;->viewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    iget-object v5, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayInfo;->viewer:Lcom/samsung/android/allshare/media/ImageViewer;

    # setter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;
    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$2002(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Lcom/samsung/android/allshare/media/ImageViewer;)Lcom/samsung/android/allshare/media/ImageViewer;

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # setter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewerOnPlaying:Z
    invoke-static {v4, v7}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1202(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Z)Z

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # setter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mIsViewerShowRequested:Z
    invoke-static {v4, v7}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1402(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Z)Z

    new-instance v0, Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    invoke-direct {v0}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mDirection:I
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$2200(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$2000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/ImageViewer;

    move-result-object v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "show : mViewer is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScreenSharing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_8
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "wait next item"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v4, 0xea60

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mPlayInfoQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$1600(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "kill thread queue is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v4, "NearbyClient"

    const-string/jumbo v5, "interrupted"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_9
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient$PlayerThread;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->access$2000(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/ImageViewer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->build()Lcom/samsung/android/allshare/media/ContentInfo;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/allshare/media/ImageViewer;->show(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    goto :goto_3

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
.end method
