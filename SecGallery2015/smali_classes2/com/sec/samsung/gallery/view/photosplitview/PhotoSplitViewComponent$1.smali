.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent$1;
.super Ljava/lang/Object;
.source "PhotoSplitViewComponent.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setEnvGLViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragDrop(I)Z
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isConnetedSideSync(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->access$100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->access$100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.sidesync.gallery.fileUri"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "fileUri"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent$1;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;)Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v2

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
