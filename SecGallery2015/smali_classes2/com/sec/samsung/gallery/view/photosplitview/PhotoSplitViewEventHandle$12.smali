.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$12;
.super Ljava/lang/Object;
.source "PhotoSplitViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->setEnvGLViewInitialize()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$12;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragDrop(I)Z
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$12;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$12;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$12;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$12;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.sidesync.gallery.fileUri"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "fileUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$12;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
