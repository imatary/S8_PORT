.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$InitAGIFJob;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitAGIFJob"
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
.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$InitAGIFJob;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$InitAGIFJob;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$InitAGIFJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$InitAGIFJob;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$InitAGIFJob;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$InitAGIFJob;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/Model;->initAgif(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$InitAGIFJob;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$InitAGIFJob;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24402(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;J)J

    const/4 v0, 0x0

    return-object v0
.end method
