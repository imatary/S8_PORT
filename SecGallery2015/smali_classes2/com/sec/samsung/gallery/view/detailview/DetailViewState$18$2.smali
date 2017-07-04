.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->onMenuRefresh(Lcom/sec/android/gallery3d/data/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;

.field final synthetic val$item:Lcom/sec/android/gallery3d/data/MediaItem;

.field final synthetic val$mediaMMSAlbumSet:Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->val$mediaMMSAlbumSet:Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$26100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$26200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UriVideo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->val$mediaMMSAlbumSet:Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->val$mediaMMSAlbumSet:Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->isDownloadCompleteNoti()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->val$mediaMMSAlbumSet:Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->initDownloadCompleteNoti()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$26200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->val$item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DetailViewState"

    const-string/jumbo v1, "onMenuRefresh() : handlePlayVideo called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;ZLandroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18$2;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$26202(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/MediaItem;

    const-string/jumbo v0, "DetailViewState"

    const-string/jumbo v1, "onMenuRefresh() : mAutoPlayItem set null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
