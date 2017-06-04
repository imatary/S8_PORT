.class public Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlSlideShowKenBurn.java"


# static fields
.field private static final KENBURN_DURATION:J = 0xbb8L

.field private static final RATIO_MAKER:F = 20.0f

.field private static final TAG:Ljava/lang/String; = "GlSlideShowKenBurn"


# instance fields
.field private mAnimationStartTime:J

.field private mCurObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

.field private mIsPausedWithoutAnimationEnd:Z

.field private mIsScaleUp:Z

.field private mLastUpdateRatio:F

.field private mNextObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

.field private mRemainingTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mRemainingTime:J

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mIsPausedWithoutAnimationEnd:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mAnimationStartTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mLastUpdateRatio:F

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mIsScaleUp:Z

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 5

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x3f800000    # 1.0f

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mIsScaleUp:Z

    if-eqz v2, :cond_3

    div-float v2, p1, v3

    add-float v0, v4, v2

    const v1, 0x3f866666    # 1.05f

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mCurObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mCurObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v2, v0, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setScale(FF)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mNextObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mNextObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    invoke-virtual {v2, v1, v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setScale(FF)V

    :cond_1
    cmpl-float v2, p1, v4

    if-nez v2, :cond_2

    const/4 p1, 0x0

    :cond_2
    iput p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mLastUpdateRatio:F

    return-void

    :cond_3
    const v2, 0x3f866666    # 1.05f

    div-float v3, p1, v3

    sub-float v0, v2, v3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    const-string/jumbo v0, "GlSlideShowKenBurn"

    const-string/jumbo v1, "onStart, mIsPausedWithoutAnimationEnd = false"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mIsPausedWithoutAnimationEnd:Z

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->onStop()V

    const-string/jumbo v0, "GlSlideShowKenBurn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop, mIsPausedWithoutAnimationEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mIsPausedWithoutAnimationEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetTime(Z)V
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mRemainingTime:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mLastUpdateRatio:F

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mIsScaleUp:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mIsScaleUp:Z

    if-nez v1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mIsScaleUp:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setAnimationPaused()V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mIsPausedWithoutAnimationEnd:Z

    const-string/jumbo v0, "GlSlideShowKenBurn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimationPaused, mIsPausedWithoutAnimationEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mIsPausedWithoutAnimationEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mRemainingTime:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mRemainingTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mRemainingTime:J

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mRemainingTime:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_0

    iput-wide v6, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mRemainingTime:J

    :cond_0
    const-string/jumbo v0, "GlSlideShowKenBurn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnimation mRemainingTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mRemainingTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] mAnimationStartTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mAnimationStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setAnimationStartTime(J)V
    .locals 5

    iput-wide p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mAnimationStartTime:J

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mRemainingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mRemainingTime:J

    :cond_0
    const-string/jumbo v0, "GlSlideShowKenBurn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimationStartTime mRemainingTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mRemainingTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] mAnimationStartTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mAnimationStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDurationObject(Lcom/sec/samsung/gallery/glview/GlBaseObject;Lcom/sec/samsung/gallery/glview/GlBaseObject;)V
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mRemainingTime:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->setDuration(J)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mCurObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mNextObject:Lcom/sec/samsung/gallery/glview/GlBaseObject;

    return-void
.end method

.method public setStartRatio()V
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->mLastUpdateRatio:F

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/slideshoweffect/GlSlideShowKenBurn;->setStartRatio(F)V

    return-void
.end method
