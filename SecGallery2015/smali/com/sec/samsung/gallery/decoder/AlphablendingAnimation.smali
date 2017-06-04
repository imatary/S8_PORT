.class public Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;
.super Ljava/lang/Object;
.source "AlphablendingAnimation.java"


# instance fields
.field private final mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

.field private mAnimationStarted:Z

.field private final mDuration:F

.field private final mEndAlpha:F

.field private mNeedToAnimate:Z

.field private final mStartAlpha:F

.field private mStartTime:J


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;FFF)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mStartTime:J

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mNeedToAnimate:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mAnimationStarted:Z

    iput p2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mStartAlpha:F

    iput p3, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mEndAlpha:F

    iput p4, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mDuration:F

    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    return-void
.end method


# virtual methods
.method public drawBlended(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->drawBlended(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    :cond_0
    return-void
.end method

.method public getProgress()F
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mAnimationStarted:Z

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mDuration:F

    div-float v0, v2, v3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mNeedToAnimate:Z

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mStartAlpha:F

    iget v3, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mEndAlpha:F

    iget v4, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mStartAlpha:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mAnimationStarted:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mStartTime:J

    iget v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mStartAlpha:F

    goto :goto_0
.end method

.method public needToAnimate()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mNeedToAnimate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mAlphablendingAnimationInterface:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mNeedToAnimate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->mAnimationStarted:Z

    :cond_0
    return-void
.end method
