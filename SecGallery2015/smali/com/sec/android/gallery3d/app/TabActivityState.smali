.class public abstract Lcom/sec/android/gallery3d/app/TabActivityState;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "TabActivityState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TabActivityState"


# instance fields
.field protected mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field protected mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/accessibility/GlAccessibilityNodeProvider;->clearAccessibilityFocus()V

    :cond_0
    return-void
.end method

.method public destroyCurrentViewInUIThread(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/android/gallery3d/app/TabActivityState$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/gallery3d/app/TabActivityState$1;-><init>(Lcom/sec/android/gallery3d/app/TabActivityState;II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method public getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method public abstract isTabEnabledActivityState()Z
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearFocus()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->onConfigurationChanged()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isForceResume()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideNoItemVI()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    return-void
.end method

.method public setRootLayer(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mState:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getRootObject()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v1, "TabActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to get rootObject of compose view. tabtag=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getRootObject()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    const/high16 v1, -0x3bb80000    # -800.0f

    invoke-virtual {v0, v2, v2, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setRootLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshNoItemVI()V

    goto :goto_0
.end method

.method public slideToNextViewState(ILcom/sec/samsung/gallery/drawer/StateInfo;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->lockRenderThread()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    iget-object v3, p2, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    iget-object v3, p2, Lcom/sec/samsung/gallery/drawer/StateInfo;->viewByFilterType:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/TabStateManager;

    const/4 v0, 0x0

    iget-object v2, p2, Lcom/sec/samsung/gallery/drawer/StateInfo;->tabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "KEY_MEDIA_SET_PATH"

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "KEY_IS_ENTER_MTP_PHOTO_VIEW"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object v2, p2, Lcom/sec/samsung/gallery/drawer/StateInfo;->klass:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0, p1}, Lcom/sec/android/gallery3d/app/TabStateManager;->engageState(Ljava/lang/Class;Landroid/os/Bundle;I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/TabActivityState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unlockRenderThread()V

    return v6
.end method
