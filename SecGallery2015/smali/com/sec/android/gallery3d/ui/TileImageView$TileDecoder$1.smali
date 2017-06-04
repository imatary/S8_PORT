.class Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder$1;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder$1;->this$1:Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder$1;->this$1:Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder$1;->this$1:Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
