.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$1;
.super Ljava/lang/Object;
.source "PhotoSplitViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(II)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inNewAlbumMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->onNewAlbumClick()V

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->onAlbumClick(IZ)V
    invoke-static {v0, p1, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;IZ)V

    goto :goto_0
.end method
