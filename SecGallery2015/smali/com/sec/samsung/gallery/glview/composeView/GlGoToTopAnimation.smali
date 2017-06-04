.class public Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlGoToTopAnimation.java"


# instance fields
.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mSourceScroll:F


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    const-wide/16 v0, 0xe9

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->setDuration(J)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v1, 0x69

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mSourceScroll:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mSourceScroll:F

    sub-float v3, v0, v3

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2, v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setScroll(FZ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->update(FFF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getGoToTopButton()Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->moveToLast()V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getGoToTopButton()Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->hide(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->flingProcessForEdge(ZF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/EdgeFadeAnimation;->start()V

    :cond_0
    return-void
.end method

.method public startGoToTop(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->mSourceScroll:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlGoToTopAnimation;->start()V

    return-void
.end method
