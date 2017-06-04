.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 7

    const/4 v2, 0x0

    const-string/jumbo v0, "GlComposeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TABSWIPE_ Slide Animation is ended. : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isRootLayer()Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GlComposeView"

    const-string/jumbo v1, "TABSWIPE_ Slide anim end is ignored because this layer is not root."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSwitchStateListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->getTargetDistance()F

    move-result v1

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isRightDirection(F)Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;F)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnSwitchStateListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mThis:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabPosition()I

    move-result v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabPosition()I

    move-result v3

    add-int v5, v3, v6

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;->onPostSwitchState(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView;IIII)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSlideAnim:Lcom/sec/samsung/gallery/glview/GlSlideAnim;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/GlSlideAnim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->getTargetDistance()F

    move-result v1

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isLeftDirection(F)Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;F)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto :goto_1
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method
