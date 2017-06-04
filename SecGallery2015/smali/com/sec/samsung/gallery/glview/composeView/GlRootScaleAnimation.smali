.class public Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlRootScaleAnimation.java"


# instance fields
.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mEnd:F

.field private mStart:F


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->setDuration(J)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v1, 0x64

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 7

    const/4 v6, 0x1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mStart:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mEnd:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mStart:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getRootObject()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setScale(FF)V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mShouldDisplayHighlightVideo:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mStart:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mEnd:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mStart:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mEnd:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_3

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_0
.end method

.method public startScale(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mStart:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->mEnd:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlRootScaleAnimation;->start()V

    return-void
.end method
