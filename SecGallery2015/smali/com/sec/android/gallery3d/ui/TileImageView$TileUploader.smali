.class Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileUploader"
.end annotation


# instance fields
.field final mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/TileImageView;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/ui/TileImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;-><init>(Lcom/sec/android/gallery3d/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public onGLIdle(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-lez v1, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;
    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1200(Lcom/sec/android/gallery3d/ui/TileImageView;)Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    :cond_3
    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    if-nez v2, :cond_0

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v5

    if-nez v5, :cond_2

    # getter for: Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileState:I
    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$700(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    move v5, v3

    :goto_2
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->updateContent(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    move v5, v4

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v5, "TileImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGLIdle AssertionError"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
