.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$4;
.super Ljava/lang/Object;
.source "PhotoSplitViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$4;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    const-string/jumbo v0, "PhotoSplitViewState"

    const-string/jumbo v1, "OnEnlargeAnim end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$4;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$1100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;

    iget-boolean v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotationOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$4;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$1200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->hideSelectionBuffer()V

    :cond_0
    return-void
.end method

.method public onStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    const-string/jumbo v0, "PhotoSplitViewState"

    const-string/jumbo v1, "OnEnlargeAnim start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$4;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->hide()V

    return-void
.end method
