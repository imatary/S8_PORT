.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8$1;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;->onStatusChange(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;

.field final synthetic val$parm1:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8$1;->this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;

    iput p2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8$1;->val$parm1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8$1;->this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$8000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8$1;->this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8$1;->val$parm1:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8$1;->val$parm1:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8$1;->this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getUpSideAlbumStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->handleReorderAlbums(IILcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$8100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;IILcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8$1;->this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$8200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8$1;->this$1:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$8200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    throw v0
.end method
