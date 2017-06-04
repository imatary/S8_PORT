.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;
.super Ljava/lang/Object;
.source "PhotoSplitViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterSelectionModeFromPenSelect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inNewAlbumMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setPenSelectionMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->enterSelectionMode()V

    goto :goto_0
.end method

.method public isCheckAvailable()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setPenSelectionMode(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->isAvailableCount(IZZ)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0
.end method

.method public onPenSelection(IIZ)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v4, v5, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mCancelOperation:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # setter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mCancelOperation:Z
    invoke-static {v3, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1602(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;Z)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setPenSelectionMode(Z)V

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v4

    iput-boolean v3, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPenSelect:Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-result-object v4

    iget v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mRemovedCntInNewAlbumHeader:I

    sub-int/2addr p2, v4

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->onPhotoItemClick(I)V
    invoke-static {v4, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;I)V

    if-eqz p3, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v4

    iput-boolean v2, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPenSelect:Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-result-object v4

    iput v2, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mRemovedCntInNewAlbumHeader:I

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGroupIDList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v2

    iget-object v4, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGroupIDList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getBurstShotItems(J)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, v4, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGroupIDList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->forceReload()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v2, v3

    goto/16 :goto_0
.end method

.method public prePenSelectionCheck(II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setPenSelectionMode(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->prePenSelectionRemoveItem(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method
