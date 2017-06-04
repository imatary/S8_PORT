.class public Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;
.super Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;
.source "DetailActionBarForCameraQuickViewOnLockscreen.java"


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;->mUseHierarchicalUpButton:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;->setDisplayOptions(ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected initDisplayOptions()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;->setDisplayOptions(ZZ)V

    return-void
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Operation error"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    if-eqz v0, :cond_0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_HOME_ICON:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public showDeleteDialog()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_LOCK_TOUCH:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    return-void
.end method
