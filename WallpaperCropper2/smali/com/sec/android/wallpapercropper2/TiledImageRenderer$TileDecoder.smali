.class Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;
.super Ljava/lang/Thread;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;


# direct methods
.method private constructor <init>(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;-><init>(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)V

    return-void
.end method

.method private waitForTile()Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get3(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get0(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->pop()Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get3(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public finishAndWait()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;->interrupt()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Cropper2_TileRenderer"

    const-string/jumbo v1, "Interrupted while waiting for TileDecoder thread to finish!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;->waitForTile()Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v1, v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-wrap1(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method
