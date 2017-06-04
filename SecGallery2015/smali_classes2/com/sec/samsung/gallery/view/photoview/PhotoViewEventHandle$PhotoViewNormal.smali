.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;
.super Ljava/lang/Object;
.source "PhotoViewEventHandle.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoViewNormal"
.end annotation


# instance fields
.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V

    return-void
.end method


# virtual methods
.method public initializeView()V
    .locals 9

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/ActivityState;->getShrinkOption()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUsePhotoCover:Z

    if-eqz v4, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v4, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {v4, v5, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateCountOnActionBar()V

    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v5, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_4

    :goto_2
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v7

    sget-object v8, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v7, v8, :cond_5

    :goto_3
    invoke-direct {v5, v6, v3, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->exitSelectionMode()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->exitSearchMode()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$700(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "VIEW_MODE_SWITCH"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onItemClick(I)V
    .locals 3

    const/16 v2, 0x201

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->selectItem(I)I
    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->refreshActionBarTheme(I)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "VIEW_MODE_SWITCH"

    const/16 v2, 0x206

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "VIEW_MODE_SWITCH"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "VIEW_MODE_SWITCH"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onItemSelectForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    const/4 v1, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->selectItem(Lcom/sec/android/gallery3d/data/MediaItem;IZ)I
    invoke-static {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->access$600(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;Lcom/sec/android/gallery3d/data/MediaItem;IZ)I

    return-void
.end method
