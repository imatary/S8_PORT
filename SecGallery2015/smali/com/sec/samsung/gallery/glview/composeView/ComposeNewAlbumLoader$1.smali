.class Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader$1;
.super Ljava/lang/Object;
.source "ComposeNewAlbumLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllContentReady()V
    .locals 0

    return-void
.end method

.method public onBitmapAvailable(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->access$002(Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->access$000(Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->access$100(Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method
