.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;
.super Ljava/lang/Object;
.source "PhotoSplitViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotionCancel()V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getGenericMotionFocus()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateBorder(II)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setGenericMotionFocus(I)V

    goto :goto_0
.end method

.method public onGenericMotionEnter(I)V
    .locals 6

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getGenericMotionFocus()I

    move-result v2

    if-eq v2, p1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateBorder(II)V

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getGenericMotionFocus()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->updateBorder(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setGenericMotionFocus(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setGenericMotionFocus(I)V

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_0
.end method
