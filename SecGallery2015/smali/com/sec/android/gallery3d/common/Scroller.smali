.class public Lcom/sec/android/gallery3d/common/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static final END_TENSION:F = 0.6f

.field private static final FLING_MODE:I = 0x1

.field private static final NB_SAMPLES:I = 0x64

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE:[F

.field private static final START_TENSION:F = 0.4f

.field private static sViscousFluidNormalize:F

.field private static final sViscousFluidScale:F


# instance fields
.field private mCurrX:I

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v13, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v8, 0x65

    new-array v8, v8, [F

    sput-object v8, Lcom/sec/android/gallery3d/common/Scroller;->SPLINE:[F

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v13, :cond_2

    int-to-float v8, v2

    const/high16 v9, 0x42c80000    # 100.0f

    div-float v3, v8, v9

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    sub-float v8, v6, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v5, v7, v8

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v8, v5

    sub-float v9, v12, v5

    mul-float v0, v8, v9

    sub-float v8, v12, v5

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    mul-float v9, v5, v5

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    sub-float v8, v4, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float v1, v0, v8

    sget-object v8, Lcom/sec/android/gallery3d/common/Scroller;->SPLINE:[F

    aput v1, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v8, v4, v3

    if-lez v8, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v7, v5

    goto :goto_1

    :cond_2
    sget-object v8, Lcom/sec/android/gallery3d/common/Scroller;->SPLINE:[F

    aput v12, v8, v13

    const/high16 v8, 0x41000000    # 8.0f

    sput v8, Lcom/sec/android/gallery3d/common/Scroller;->sViscousFluidScale:F

    sput v12, Lcom/sec/android/gallery3d/common/Scroller;->sViscousFluidNormalize:F

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Scroller;->viscousFluid(F)F

    move-result v8

    div-float v8, v12, v8

    sput v8, Lcom/sec/android/gallery3d/common/Scroller;->sViscousFluidNormalize:F

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/common/Scroller;->mFinished:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/common/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static viscousFluid(F)F
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    sget v1, Lcom/sec/android/gallery3d/common/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    cmpg-float v1, p0, v4

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr p0, v1

    :goto_0
    sget v1, Lcom/sec/android/gallery3d/common/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    return p0

    :cond_0
    const v0, 0x3ebc5ab2

    sub-float v1, v4, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p0, v4, v1

    sub-float v1, v4, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 14

    iget-boolean v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mFinished:Z

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sec/android/gallery3d/common/Scroller;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v8, v10

    iget v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mDuration:I

    if-ge v8, v10, :cond_3

    iget v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mMode:I

    packed-switch v10, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    :pswitch_0
    int-to-float v10, v8

    iget v11, p0, Lcom/sec/android/gallery3d/common/Scroller;->mDurationReciprocal:F

    mul-float v9, v10, v11

    iget-object v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v10, :cond_2

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Scroller;->viscousFluid(F)F

    move-result v9

    :goto_2
    iget v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mStartX:I

    iget v11, p0, Lcom/sec/android/gallery3d/common/Scroller;->mDeltaX:F

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mCurrX:I

    goto :goto_1

    :cond_2
    iget-object v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    goto :goto_2

    :pswitch_1
    int-to-float v10, v8

    iget v11, p0, Lcom/sec/android/gallery3d/common/Scroller;->mDuration:I

    int-to-float v11, v11

    div-float v5, v10, v11

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v10, v5

    float-to-int v4, v10

    int-to-float v10, v4

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v6, v10, v11

    add-int/lit8 v10, v4, 0x1

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v7, v10, v11

    sget-object v10, Lcom/sec/android/gallery3d/common/Scroller;->SPLINE:[F

    aget v1, v10, v4

    sget-object v10, Lcom/sec/android/gallery3d/common/Scroller;->SPLINE:[F

    add-int/lit8 v11, v4, 0x1

    aget v2, v10, v11

    sub-float v10, v5, v6

    sub-float v11, v7, v6

    div-float/2addr v10, v11

    sub-float v11, v2, v1

    mul-float/2addr v10, v11

    add-float v3, v1, v10

    iget v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mStartX:I

    iget v11, p0, Lcom/sec/android/gallery3d/common/Scroller;->mFinalX:I

    iget v12, p0, Lcom/sec/android/gallery3d/common/Scroller;->mStartX:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mCurrX:I

    iget v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mCurrX:I

    iget v11, p0, Lcom/sec/android/gallery3d/common/Scroller;->mMaxX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mCurrX:I

    iget v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mCurrX:I

    iget v11, p0, Lcom/sec/android/gallery3d/common/Scroller;->mMinX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mCurrX:I

    iget v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mStartY:I

    iget v11, p0, Lcom/sec/android/gallery3d/common/Scroller;->mFinalY:I

    iget v12, p0, Lcom/sec/android/gallery3d/common/Scroller;->mStartY:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int v0, v10, v11

    iget v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mMaxY:I

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mMinY:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mCurrX:I

    iget v11, p0, Lcom/sec/android/gallery3d/common/Scroller;->mFinalX:I

    if-ne v10, v11, :cond_1

    iget v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mFinalY:I

    if-ne v0, v10, :cond_1

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mFinished:Z

    goto/16 :goto_1

    :cond_3
    iget v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mFinalX:I

    iput v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mCurrX:I

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/gallery3d/common/Scroller;->mFinished:Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final forceFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/common/Scroller;->mFinished:Z

    return-void
.end method

.method public final getCurrX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/common/Scroller;->mCurrX:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/common/Scroller;->mFinished:Z

    return v0
.end method
