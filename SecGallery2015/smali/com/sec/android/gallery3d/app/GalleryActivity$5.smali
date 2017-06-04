.class Lcom/sec/android/gallery3d/app/GalleryActivity$5;
.super Landroid/os/Handler;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/GalleryActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsActive:Z
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$400(Lcom/sec/android/gallery3d/app/GalleryActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->USE_MULTIWINDOW:Z
    invoke-static {}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMinimized()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "GalleryActivity"

    const-string/jumbo v3, "MSG_RESUME_PENDING : Gallery activity isDestroyed. DO NOT call forceResume()!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # invokes: Lcom/sec/android/gallery3d/app/GalleryActivity;->forceResume()V
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$600(Lcom/sec/android/gallery3d/app/GalleryActivity;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # setter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z
    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$702(Lcom/sec/android/gallery3d/app/GalleryActivity;Z)Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    iget-object v2, v2, Lcom/sec/android/gallery3d/app/GalleryActivity;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowViewState;

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x12c

    :goto_2
    invoke-virtual {p0, v4, v2, v3}, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x3e8

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$700(Lcom/sec/android/gallery3d/app/GalleryActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # invokes: Lcom/sec/android/gallery3d/app/GalleryActivity;->forcePause()V
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$800(Lcom/sec/android/gallery3d/app/GalleryActivity;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->mUpdateBackscreenInPauseState:Z
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$700(Lcom/sec/android/gallery3d/app/GalleryActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$900(Lcom/sec/android/gallery3d/app/GalleryActivity;)Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$900(Lcom/sec/android/gallery3d/app/GalleryActivity;)Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->isCoverMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$900(Lcom/sec/android/gallery3d/app/GalleryActivity;)Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->pause()V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->mFinishAtSecrureLock:Z
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$1000(Lcom/sec/android/gallery3d/app/GalleryActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GalleryActivity"

    const-string/jumbo v3, "Gallery is finished because GalleryUtils.isCameraQuickViewOnLockscreen() returns true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->finish()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # setter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->mNeedUpdateBackscreenInPauseState:Z
    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$1102(Lcom/sec/android/gallery3d/app/GalleryActivity;Z)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->mIsStartViewSkip:Z
    invoke-static {v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$1200(Lcom/sec/android/gallery3d/app/GalleryActivity;)Z

    move-result v3

    # invokes: Lcom/sec/android/gallery3d/app/GalleryActivity;->checkRequiredPermissions(ZZ)Z
    invoke-static {v2, v4, v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$1300(Lcom/sec/android/gallery3d/app/GalleryActivity;ZZ)Z

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "tab_move_ratio"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->updateBottomIndicator(F)V

    goto/16 :goto_0

    :pswitch_7
    # getter for: Lcom/sec/android/gallery3d/app/GalleryActivity;->IS_TABLET:Z
    invoke-static {}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    iget-object v2, v2, Lcom/sec/android/gallery3d/app/GalleryActivity;->mGLRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # invokes: Lcom/sec/android/gallery3d/app/GalleryActivity;->updateInPauseStateForTabletMWSwitch()V
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$1500(Lcom/sec/android/gallery3d/app/GalleryActivity;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$5;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    # invokes: Lcom/sec/android/gallery3d/app/GalleryActivity;->updateInPauseStateDelayed()V
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->access$1600(Lcom/sec/android/gallery3d/app/GalleryActivity;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
