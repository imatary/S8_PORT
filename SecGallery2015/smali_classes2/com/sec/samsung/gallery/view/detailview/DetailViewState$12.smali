.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;
.super Landroid/content/BroadcastReceiver;
.source "DetailViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "DetailViewState"

    const-string/jumbo v2, "EAM Receive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->showDeleteDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->showDeleteDialog()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a02e2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;->showDeleteDialog()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForCameraQuickViewOnLockscreen;->showDeleteDialog()V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "android.intent.action.slideshow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mConnectExtDisplay:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->resetPhotoViewOnPresentation()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mUseFilmStripWithFastOptionView:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->hideFastOptionView(Z)V

    :cond_7
    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_USE_SOCIAL_STORY_VIEW:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6600()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->hideCommentsView()V

    :cond_8
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v2, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsStaredSlideshow:Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6802(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mData:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHasCameraScreennailOrPlaceholder:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentIndex:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startSlideshow(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$12;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentIndex:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v1

    goto :goto_1
.end method
