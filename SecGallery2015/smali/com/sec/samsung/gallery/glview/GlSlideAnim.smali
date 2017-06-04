.class public Lcom/sec/samsung/gallery/glview/GlSlideAnim;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlSlideAnim.java"


# static fields
.field private static final SLIDE_ANIM_DURATION:J = 0x12cL

.field private static final SLIDE_LEFT:I = 0x1

.field private static final SLIDE_RIGHT:I = -0x1

.field private static final SLIDE_THRESHOLD_DISTANCE:F = 0.6f

.field public static final STANDARD_RADIAN:F = 57.29578f

.field private static final TAG:Ljava/lang/String; = "GlSlideAnim"

.field public static final THRESHOLD_DEGREE:I = 0x19


# instance fields
.field private mDirection:F

.field private mSourceDistance:F

.field private mTargetDistance:F

.field private mViewWidth:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mViewWidth:F

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mAnimDuration:J

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSineEaseInOut70;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mSourceDistance:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mTargetDistance:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mSourceDistance:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->getZ()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    return-void
.end method

.method public getTargetDistance()F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mTargetDistance:F

    return v0
.end method

.method public setDirection(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mDirection:F

    return-void
.end method

.method public setSourceDistance(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mSourceDistance:F

    return-void
.end method

.method public setViewWidth(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mViewWidth:F

    return-void
.end method

.method public start(Z)V
    .locals 5

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->start()V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mViewWidth:F

    iput v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mTargetDistance:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mSourceDistance:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mTargetDistance:F

    mul-float/2addr v1, v3

    iput v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mTargetDistance:F

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mDirection:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mSourceDistance:F

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mDirection:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mSourceDistance:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    :cond_2
    iput v4, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mTargetDistance:F

    :cond_3
    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mSourceDistance:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mViewWidth:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    if-eqz p1, :cond_5

    const-wide/16 v2, 0x12c

    :goto_0
    iput-wide v2, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mAnimDuration:J

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_4

    if-nez p1, :cond_4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/GlSlideAnim;->mTargetDistance:F

    :cond_4
    return-void

    :cond_5
    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v1, v0

    float-to-long v2, v1

    goto :goto_0
.end method
