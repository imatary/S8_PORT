.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;
.super Ljava/lang/Object;
.source "PhotoViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(II)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v3, 0x70

    if-ne p1, v3, :cond_1

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->showDeleteDialog(Z)V

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->showDeleteDialog()V

    goto :goto_0

    :cond_1
    const/16 v3, 0x42

    if-eq p1, v3, :cond_2

    const/16 v3, 0x17

    if-ne p1, v3, :cond_4

    :cond_2
    const/16 v3, 0x80

    if-ne p2, v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v3, v4, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->enterSelectionMode()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method
