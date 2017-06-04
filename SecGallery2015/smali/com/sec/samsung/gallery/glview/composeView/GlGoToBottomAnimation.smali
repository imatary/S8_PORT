.class public Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlGoToBottomAnimation.java"


# instance fields
.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mSourceScroll:F

.field private mTargetScroll:F


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->setDuration(J)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v1, 0x69

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mSourceScroll:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mTargetScroll:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mSourceScroll:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setScroll(FZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->update(FFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->flingProcessForEdge(ZF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->start()V

    :cond_0
    return-void
.end method

.method public startGoToBottom(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mSourceScroll:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->mTargetScroll:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGoToBottomAnimation;->start()V

    return-void
.end method
