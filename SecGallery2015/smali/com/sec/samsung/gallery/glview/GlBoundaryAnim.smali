.class public Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlBoundaryAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;
    }
.end annotation


# static fields
.field private static final BOUND_DEC:F = 100.0f

.field private static final DECEL_UNIT:F = 80.0f

.field private static final ELASTIC_RATIO:F = 0.01f

.field private static final REACHED_BOUNDARY_REACHED_MAX:I = 0x1

.field public static final REACHED_BOUNDARY_REACHED_MIN:I = -0x1

.field private static final REACHED_BOUNDARY_WITHIN_RANGE:I = 0x0

.field public static final SCROLL_DURATION_TIME:J = 0x9c4L

.field private static final TAG:Ljava/lang/String; = "GlBoundaryAnim"


# instance fields
.field private mAnimSx:F

.field private mBoundaryAnimListener:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;

.field private final mContext:Landroid/content/Context;

.field private mDec:F

.field private mDecFactor:F

.field private mDispDx:F

.field private mDx:F

.field private mLastDelta:F

.field private mMaxX:F

.field private mMinX:F

.field private mReachedBoundary:I

.field private mSpeed:F

.field private mSpeedMax:F

.field private mSpeedRatio:F

.field private mStartSpeed:F

.field private mSx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDecFactor:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mLastDelta:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedMax:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mBoundaryAnimListener:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0507

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedRatio:F

    const v1, 0x7f0a0506

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDecFactor:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->useFixedTimePassed()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a04f9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const v4, 0x7f0a050d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v4, 0x7f0e0024

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v1, v4

    invoke-virtual {p0, v3, v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setFactors(FF)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setMaxSpeed(F)V

    const-wide/16 v4, 0x9c4

    invoke-virtual {p0, v4, v5}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setDuration(J)V

    return-void
.end method

.method private setMovementInter(FZ)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    cmpl-float v6, p1, v8

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mLastDelta:F

    sub-float v0, p1, v6

    move v1, v0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    add-float/2addr v6, v1

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    add-float v5, v6, v7

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mMinX:F

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_5

    cmpl-float v6, v0, v8

    if-lez v6, :cond_4

    if-eqz p2, :cond_4

    iput v8, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iput v8, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iput v8, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    const/4 v2, 0x0

    iput v9, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    :goto_1
    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mLastDelta:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mBoundaryAnimListener:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;

    if-eqz v6, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_2
    const v6, 0x3c23d70a    # 0.01f

    mul-float v3, v2, v6

    cmpl-float v6, v3, v4

    if-lez v6, :cond_a

    move v3, v4

    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mBoundaryAnimListener:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    add-float/2addr v7, v8

    invoke-interface {v6, v7, v3}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;->onFlingProcess(FF)V

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    neg-float v6, v6

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mMinX:F

    sub-float v2, v5, v6

    iput v10, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    goto :goto_1

    :cond_5
    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mMaxX:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_7

    cmpg-float v6, v0, v8

    if-gez v6, :cond_6

    if-eqz p2, :cond_6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mMaxX:F

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iput v8, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iput v8, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    const/4 v2, 0x0

    iput v9, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mMaxX:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mMaxX:F

    sub-float v2, v5, v6

    iput v11, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    goto :goto_1

    :cond_7
    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    if-ne v6, v10, :cond_8

    iput v8, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iput v8, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iput v8, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    :goto_3
    const/4 v2, 0x0

    iput v9, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    goto :goto_1

    :cond_8
    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    if-ne v6, v11, :cond_9

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mMaxX:F

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iput v8, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iput v8, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    goto :goto_3

    :cond_9
    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    goto :goto_3

    :cond_a
    neg-float v6, v4

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    neg-float v3, v4

    goto :goto_2
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 9

    const/high16 v8, 0x447a0000    # 1000.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v7, -0x3b860000    # -1000.0f

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    if-nez v3, :cond_5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mStartSpeed:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    :goto_0
    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    const/high16 v5, 0x43160000    # 150.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    cmpl-float v3, v1, v6

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    mul-float/2addr v3, v1

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_0

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    const/4 v2, 0x1

    :cond_0
    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setMovementInter(FZ)V

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v3, "GlBoundaryAnim"

    const-string/jumbo v4, "applyTransform stopped by low speed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_2
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    if-eq v3, v0, :cond_3

    const-string/jumbo v3, "GlBoundaryAnim"

    const-string/jumbo v4, "applyTransform stopped by end of boundeffect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_3
    if-nez v0, :cond_4

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_7

    iput v8, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    if-lez v3, :cond_6

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    goto :goto_0

    :cond_7
    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_4

    iput v7, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    goto :goto_1
.end method

.method public getReachedBoundary()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    return v0
.end method

.method public getScroll()F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    return v0
.end method

.method protected onStop()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mLastDelta:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mBoundaryAnimListener:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mBoundaryAnimListener:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;->onFlingEnd(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostRelease(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    return-void
.end method

.method public setBoundaryAnimationListener(Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mBoundaryAnimListener:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;

    return-void
.end method

.method public setFactors(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedRatio:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDecFactor:F

    return-void
.end method

.method public setInitMovement(F)V
    .locals 1

    const/4 v0, 0x0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    return-void
.end method

.method public setMaxSpeed(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedMax:F

    return-void
.end method

.method public setMoveToward(F)V
    .locals 3

    const/4 v2, 0x0

    cmpl-float v0, p1, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimState:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_0
    :goto_0
    const-string/jumbo v0, "GlBoundaryAnim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMoveToward = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mStartSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setDuration(J)V

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mStartSpeed:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDec:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mLastDelta:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->start()V

    goto :goto_0
.end method

.method public setMovement(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setMovementInter(FZ)V

    return-void
.end method

.method public setRange(FF)V
    .locals 1

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mMinX:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mMaxX:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    iput p2, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    :cond_1
    return-void
.end method

.method public setScrollSpeed(F)V
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedRatio:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mStartSpeed:F

    return-void
.end method

.method public startFling(F)V
    .locals 10

    const v9, 0x451c4000    # 2500.0f

    const v4, 0x449c4000    # 1250.0f

    const/high16 v8, 0x42a00000    # 80.0f

    const/high16 v7, -0x3d600000    # -80.0f

    const/4 v6, 0x0

    cmpl-float v3, p1, v6

    if-nez v3, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mLastDelta:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mBoundaryAnimListener:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mBoundaryAnimListener:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;->onFlingEnd(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedMax:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedMax:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3

    iget p1, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedMax:F

    :cond_2
    :goto_1
    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    neg-float v3, v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDecFactor:F

    mul-float/2addr v3, v7

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDec:F

    :goto_2
    const-string/jumbo v3, "GlBoundaryAnim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startFling = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mStartSpeed:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mDec = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDec:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostStart(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mStartSpeed:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedMax:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedRatio:F

    mul-float/2addr v5, v6

    div-float v2, v3, v5

    mul-float v3, v9, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    move v3, v4

    :goto_3
    float-to-long v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setDuration(J)V

    new-instance v3, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3cf5c28f    # 0.03f

    const v6, 0x3f4a3d71    # 0.79f

    const/high16 v7, 0x3e800000    # 0.25f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->start()V

    goto/16 :goto_0

    :cond_3
    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedMax:F

    neg-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedMax:F

    neg-float p1, v3

    goto/16 :goto_1

    :cond_4
    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    neg-float v3, v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeed:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDecFactor:F

    mul-float/2addr v3, v8

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDec:F

    goto/16 :goto_2

    :cond_5
    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    add-float/2addr v3, v5

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSx:F

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDx:F

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDispDx:F

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mLastDelta:F

    iput v6, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedRatio:F

    mul-float/2addr v3, p1

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mStartSpeed:F

    cmpl-float v3, p1, v6

    if-lez v3, :cond_6

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDecFactor:F

    mul-float/2addr v3, v7

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDec:F

    goto/16 :goto_2

    :cond_6
    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDecFactor:F

    mul-float/2addr v3, v8

    iput v3, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mDec:F

    goto/16 :goto_2

    :cond_7
    mul-float v3, v9, v2

    goto :goto_3
.end method

.method public startScroll(F)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mAnimSx:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mSpeedRatio:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mStartSpeed:F

    const-wide/32 v0, 0xf4240

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setDuration(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->mReachedBoundary:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->start()V

    return-void
.end method
