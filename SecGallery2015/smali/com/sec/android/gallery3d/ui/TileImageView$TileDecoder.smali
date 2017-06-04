.class Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mNotifier:Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/TileImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder$1;-><init>(Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;->mNotifier:Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/ui/TileImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcom/sec/android/gallery3d/ui/TileImageView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;->mNotifier:Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;

    invoke-interface {p1, v1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    # getter for: Lcom/sec/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$2100(Lcom/sec/android/gallery3d/ui/TileImageView;)Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    # invokes: Lcom/sec/android/gallery3d/ui/TileImageView;->decodeTile(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Z
    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$2200(Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    # invokes: Lcom/sec/android/gallery3d/ui/TileImageView;->queueForUpload(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)V
    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$2300(Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method
