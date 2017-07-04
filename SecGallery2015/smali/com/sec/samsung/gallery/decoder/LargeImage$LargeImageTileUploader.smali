.class Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;
.super Ljava/lang/Object;
.source "LargeImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/decoder/LargeImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LargeImageTileUploader"
.end annotation


# instance fields
.field final mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/decoder/LargeImage;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/decoder/LargeImage;Lcom/sec/samsung/gallery/decoder/LargeImage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;-><init>(Lcom/sec/samsung/gallery/decoder/LargeImage;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v4

    :cond_0
    const/16 v1, 0x32

    const/4 v2, 0x0

    :goto_1
    if-lez v1, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-static {v5}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$1400(Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-static {v6}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$1400(Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;->pop()Lcom/sec/samsung/gallery/decoder/LargeImageTile;

    move-result-object v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    :cond_1
    :goto_2
    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-static {v5}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$600(Lcom/sec/samsung/gallery/decoder/LargeImage;)I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-static {v5}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$1400(Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    iput-boolean v3, v5, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadingComplete:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-static {v5}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$1500(Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-static {v5}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$1500(Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    :cond_3
    if-eqz v2, :cond_8

    :goto_3
    move v4, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->isContentValid()Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    iget-object v6, v5, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodeLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget v5, v2, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_7

    iget v5, v2, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    const/16 v7, 0x8

    if-ne v5, v7, :cond_6

    move v5, v3

    :goto_4
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->updateContent(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    add-int/lit8 v1, v1, -0x1

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-static {v5}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$610(Lcom/sec/samsung/gallery/decoder/LargeImage;)I

    goto :goto_1

    :cond_6
    move v5, v4

    goto :goto_4

    :cond_7
    :try_start_4
    const-string/jumbo v5, "TEST"

    const-string/jumbo v7, "Tile is already recycled"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit v6

    goto :goto_2

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "LargeImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " UploadContent Err "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_8
    move v3, v4

    goto :goto_3
.end method
