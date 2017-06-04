.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;
.super Ljava/lang/Object;
.source "PhotoSplitViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoViewNormal"
.end annotation


# instance fields
.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    return-void
.end method


# virtual methods
.method public initializeView()V
    .locals 6

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->getShrinkOption()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inNewAlbumMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v3

    new-instance v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {v4, v5, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateCountOnActionBar()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v3

    new-instance v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    if-eqz v0, :cond_4

    :goto_2
    invoke-direct {v4, v5, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateCountOnActionBar()V

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->exitSelectionMode()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->exitSearchMode()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "VIEW_MODE_SWITCH"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onItemClick(I)V
    .locals 3

    const/16 v2, 0x201

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->selectItem(I)I
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;I)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "VIEW_MODE_SWITCH"

    const/16 v2, 0x203

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "VIEW_MODE_SWITCH"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "VIEW_MODE_SWITCH"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onItemClickForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->selectItemForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)I
    invoke-static {v1, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->access$1800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;Lcom/sec/android/gallery3d/data/MediaItem;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
