.class Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "ScaleAnimation.java"


# instance fields
.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mEnd:F

.field private mScrollToTop:Z

.field private mStart:F


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->setDuration(J)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v1, 0x68

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 4

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mStart:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mEnd:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mStart:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mScrollToTop:Z

    invoke-virtual {v1, v0, p1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->doScale(FFZ)Z

    :cond_0
    return-void
.end method

.method protected onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->stopScaleAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->getLastRatio()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->applyTransform(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScaleCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$ScaleControl;->stopScaleAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnScaling:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;->checkNotDisplayDecoViewOnScale()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->getLastRatio()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setToCurrentCtrl()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    return-void
.end method

.method startScale(FFZ)V
    .locals 2

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mStart:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mEnd:F

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mScrollToTop:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/ScaleAnimation;->start()V

    return-void
.end method
