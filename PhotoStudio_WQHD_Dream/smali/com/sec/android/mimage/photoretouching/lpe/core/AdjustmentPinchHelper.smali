.class public Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "AdjustmentPinchHelper.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper$OnScaleListener;
    }
.end annotation


# static fields
.field public static final MAX_SCALE:F = 10.0f

.field private static final SCALE_SCROLL_DELAY:I = 0x64

.field private static final mDTAnimDuration:J = 0x96L

.field private static final mDec:F = 0.00125f


# instance fields
.field private SCALE_FLING_DELAY:J

.field private VELOCITY_PRODUCT:F

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mCropRect:Landroid/graphics/RectF;

.field private mDTAnimStartTime:J

.field private mDTEndScale:F

.field private mDTEndTransX:F

.field private mDTEndTransY:F

.field private mDTStartScale:F

.field private mDTStartTransX:F

.field private mDTStartTransY:F

.field private mFreeScrollScale:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageRect:Landroid/graphics/RectF;

.field private mImageVertices:[F

.field private mIsDTAnimating:Z

.field private mMinScale:F

.field private mPinchMatrix:[F

.field private mPrevX:F

.field private mPrevY:F

.field private mPreviousUpdate:J

.field private mRotatedHeight:F

.field private mRotatedWidth:F

.field private mRotation:F

.field private mRotationScale:F

.field private mScale:F

.field private mScaleEndTime:J

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleListener:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper$OnScaleListener;

.field private mScaleTime:J

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTapTime:J

.field private mTransX:F

.field private mTransY:F

.field private mVelocityFactor:F

.field private mVelocityX:F

.field private mVelocityY:F

.field private mViewRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;[FLcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper$OnScaleListener;[F)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    const v0, 0x3c75c290    # 0.015000001f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityFactor:F

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->SCALE_FLING_DELAY:J

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mMinScale:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mFreeScrollScale:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPrevX:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPrevY:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->VELOCITY_PRODUCT:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mIsDTAnimating:Z

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPinchMatrix:[F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScaleListener:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper$OnScaleListener;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageVertices:[F

    return-void
.end method

.method public static isInside(FFFFFFFF)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static/range {p0 .. p7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v0

    aget v3, v0, v2

    sub-float/2addr v3, p0

    aget v4, v0, v2

    sub-float/2addr v4, p0

    mul-float/2addr v3, v4

    aget v4, v0, v1

    sub-float/2addr v4, p1

    aget v5, v0, v1

    sub-float/2addr v5, p1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    sub-float v3, p2, p0

    sub-float v6, p2, p0

    mul-float/2addr v3, v6

    sub-float v6, p3, p1

    sub-float v7, p3, p1

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    aget v3, v0, v2

    sub-float/2addr v3, p0

    aget v4, v0, v2

    sub-float/2addr v4, p0

    mul-float/2addr v3, v4

    aget v4, v0, v1

    sub-float/2addr v4, p1

    aget v5, v0, v1

    sub-float/2addr v5, p1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    aget v3, v0, v2

    sub-float/2addr v3, p2

    aget v6, v0, v2

    sub-float/2addr v6, p2

    mul-float/2addr v3, v6

    aget v6, v0, v1

    sub-float/2addr v6, p3

    aget v7, v0, v1

    sub-float/2addr v7, p3

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static preCorrectTrans([FLandroid/graphics/RectF;FFFFFF)V
    .locals 38

    move/from16 v34, p2

    move/from16 v35, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move/from16 v0, p5

    float-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v24, v4, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-double v4, v4

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-double v6, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v33, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-double v4, v4

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-double v6, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v17, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v4, p4, v29

    cmpg-float v4, v4, p6

    if-gez v4, :cond_a

    const/16 p2, 0x0

    :cond_1
    :goto_1
    mul-float v4, p4, v28

    cmpg-float v4, v4, p7

    if-gez v4, :cond_c

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p7, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    div-float v5, p7, v28

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    div-float p3, v4, v5

    :cond_2
    :goto_2
    const/4 v4, 0x0

    cmpl-float v4, v11, v4

    if-eqz v4, :cond_3

    move/from16 p2, v11

    :cond_3
    const/4 v4, 0x0

    cmpl-float v4, v12, v4

    if-eqz v4, :cond_4

    move/from16 p3, v12

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v4, v4, p4

    float-to-double v4, v4

    move/from16 v0, p5

    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, p7, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float v6, v6, p7

    float-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v4, v4, p4

    float-to-double v4, v4

    move/from16 v0, p5

    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, p6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float v6, v6, p6

    float-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_e

    const/16 v16, 0x1

    :goto_3
    if-eqz v16, :cond_f

    const/4 v4, 0x0

    cmpl-float v4, p5, v4

    if-eqz v4, :cond_f

    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v0, p6

    neg-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move/from16 v0, p7

    neg-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move/from16 v0, p5

    neg-float v4, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p6, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p7, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v22, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v27

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v26

    const/16 v19, 0x0

    :cond_5
    :goto_4
    add-int/lit8 v19, v19, 0x1

    const/16 v4, 0xa

    move/from16 v0, v19

    if-ge v0, v4, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    neg-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    neg-float v5, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move/from16 v0, p5

    neg-float v4, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v0, v21

    move/from16 v1, p4

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v18, v0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->left:F

    aput v5, v18, v4

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->top:F

    aput v5, v18, v4

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    aput v5, v18, v4

    const/4 v4, 0x3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->top:F

    aput v5, v18, v4

    const/4 v4, 0x4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    aput v5, v18, v4

    const/4 v4, 0x5

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    aput v5, v18, v4

    const/4 v4, 0x6

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->left:F

    aput v5, v18, v4

    const/4 v4, 0x7

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    aput v5, v18, v4

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v4, 0x0

    aget v4, v18, v4

    const/4 v5, 0x1

    aget v5, v18, v5

    const/4 v6, 0x6

    aget v6, v18, v6

    const/4 v7, 0x7

    aget v7, v18, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, p6, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, p7, v9

    invoke-static/range {v4 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPerpendicularFromLine(FFFFFF)F

    move-result v20

    const/4 v4, 0x0

    aget v4, v18, v4

    const/4 v5, 0x1

    aget v5, v18, v5

    const/4 v6, 0x2

    aget v6, v18, v6

    const/4 v7, 0x3

    aget v7, v18, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, p6, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, p7, v9

    invoke-static/range {v4 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPerpendicularFromLine(FFFFFF)F

    move-result v30

    const/4 v4, 0x2

    aget v4, v18, v4

    const/4 v5, 0x3

    aget v5, v18, v5

    const/4 v6, 0x4

    aget v6, v18, v6

    const/4 v7, 0x5

    aget v7, v18, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, p6, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, p7, v9

    invoke-static/range {v4 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPerpendicularFromLine(FFFFFF)F

    move-result v23

    const/4 v4, 0x4

    aget v4, v18, v4

    const/4 v5, 0x5

    aget v5, v18, v5

    const/4 v6, 0x6

    aget v6, v18, v6

    const/4 v7, 0x7

    aget v7, v18, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, p6, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, p7, v9

    invoke-static/range {v4 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPerpendicularFromLine(FFFFFF)F

    move-result v10

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v27, v4

    cmpg-float v4, v20, v4

    if-ltz v4, :cond_6

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v27, v4

    cmpg-float v4, v23, v4

    if-ltz v4, :cond_6

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v26, v4

    cmpg-float v4, v30, v4

    if-ltz v4, :cond_6

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v26, v4

    cmpg-float v4, v10, v4

    if-gez v4, :cond_f

    :cond_6
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v27, v4

    cmpg-float v4, v20, v4

    if-gez v4, :cond_7

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v27, v4

    sub-float v14, v4, v20

    move/from16 v0, p2

    float-to-double v4, v0

    float-to-double v6, v14

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v36

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v8, v8, v36

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 p2, v0

    move/from16 v0, p3

    float-to-double v4, v0

    float-to-double v6, v14

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v36

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v8, v8, v36

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 p3, v0

    :cond_7
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v27, v4

    cmpg-float v4, v23, v4

    if-gez v4, :cond_8

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v27, v4

    sub-float v14, v23, v4

    move/from16 v0, p2

    float-to-double v4, v0

    float-to-double v6, v14

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v36

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v8, v8, v36

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 p2, v0

    move/from16 v0, p3

    float-to-double v4, v0

    float-to-double v6, v14

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v36

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v8, v8, v36

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 p3, v0

    :cond_8
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v26, v4

    cmpg-float v4, v30, v4

    if-gez v4, :cond_9

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v26, v4

    sub-float v15, v4, v30

    move/from16 v0, p2

    float-to-double v4, v0

    float-to-double v6, v15

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v36

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v8, v8, v36

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 p2, v0

    move/from16 v0, p3

    float-to-double v4, v0

    float-to-double v6, v15

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v36

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v8, v8, v36

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 p3, v0

    :cond_9
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v26, v4

    cmpg-float v4, v10, v4

    if-gez v4, :cond_5

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v26, v4

    sub-float v15, v10, v4

    move/from16 v0, p2

    float-to-double v4, v0

    float-to-double v6, v15

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v36

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v8, v8, v36

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 p2, v0

    move/from16 v0, p3

    float-to-double v4, v0

    float-to-double v6, v15

    move/from16 v0, p5

    float-to-double v8, v0

    const-wide v36, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v36

    const-wide v36, 0x4066800000000000L    # 180.0

    div-double v8, v8, v36

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 p3, v0

    goto/16 :goto_4

    :cond_a
    mul-float v4, p4, v29

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float v31, v4, v5

    mul-float v4, p4, v29

    sub-float v4, p6, v4

    add-float v32, v4, v31

    cmpg-float v4, v34, v32

    if-gez v4, :cond_b

    move/from16 v11, v32

    goto/16 :goto_1

    :cond_b
    cmpl-float v4, v34, v31

    if-lez v4, :cond_1

    move/from16 v11, v31

    goto/16 :goto_1

    :cond_c
    mul-float v4, p4, v28

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/RectF;->top:F

    sub-float v31, v4, v5

    mul-float v4, p4, v28

    sub-float v4, p7, v4

    add-float v32, v4, v31

    cmpg-float v4, v35, v32

    if-gez v4, :cond_d

    move/from16 v12, v32

    goto/16 :goto_2

    :cond_d
    cmpl-float v4, v35, v31

    if-lez v4, :cond_2

    move/from16 v12, v31

    goto/16 :goto_2

    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v4, 0x0

    aput p2, p0, v4

    const/4 v4, 0x1

    aput p3, p0, v4

    goto/16 :goto_0
.end method

.method private declared-synchronized updateMatrix()V
    .locals 15

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPinchMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v13, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    iget v14, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenWidth:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenHeight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenHeight:I

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float/2addr v0, v3

    mul-float v11, v6, v0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v12, v3, v0

    mul-float v0, v6, v2

    mul-float/2addr v0, v13

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenWidth:I

    int-to-float v1, v1

    div-float v7, v0, v1

    neg-float v0, v14

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenHeight:I

    int-to-float v1, v1

    div-float v10, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPinchMatrix:[F

    const/4 v1, 0x0

    add-float v2, v7, v11

    add-float v3, v10, v12

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPinchMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPinchMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPinchMatrix:[F

    const/4 v1, 0x0

    neg-float v2, v11

    neg-float v3, v12

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMatrix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " micros"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScaleListener:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper$OnScaleListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScaleListener:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper$OnScaleListener;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    invoke-interface {v0, v1, v2, v13, v14}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper$OnScaleListener;->onUpdate(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenWidth:I

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v11, v0, v3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    mul-float v12, v6, v0

    mul-float v0, v13, v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenWidth:I

    int-to-float v1, v1

    div-float v7, v0, v1

    neg-float v0, v6

    mul-float/2addr v0, v14

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v1, v1

    div-float v10, v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public correctTranslate(Z)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageVertices:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageVertices:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenWidth:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageVertices:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenHeight:I

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageVertices:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenWidth:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenHeight:I

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mFreeScrollScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    if-eqz v15, :cond_6

    if-eqz v20, :cond_6

    if-eqz v14, :cond_6

    if-eqz v19, :cond_6

    const/4 v11, 0x1

    :goto_0
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_5

    if-nez v11, :cond_5

    const/4 v13, 0x0

    :cond_0
    add-int/lit8 v13, v13, 0x1

    const/16 v2, 0xa

    if-ge v13, v2, :cond_5

    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    neg-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    neg-float v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    neg-float v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/16 v2, 0x8

    new-array v12, v2, [F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v12, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v12, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    aput v3, v12, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v12, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    aput v3, v12, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    aput v3, v12, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v12, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    aput v3, v12, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_b

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x2

    aget v8, v12, v8

    const/4 v9, 0x3

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    const/4 v3, 0x1

    aget v3, v12, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x2

    aget v6, v12, v6

    const/4 v7, 0x3

    aget v7, v12, v7

    const/4 v8, 0x4

    aget v8, v12, v8

    const/4 v9, 0x5

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x2

    aget v4, v12, v4

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x4

    aget v6, v12, v6

    const/4 v7, 0x5

    aget v7, v12, v7

    const/4 v8, 0x6

    aget v8, v12, v8

    const/4 v9, 0x7

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x5

    aget v4, v12, v4

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x6

    aget v8, v12, v8

    const/4 v9, 0x7

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    const/4 v3, 0x0

    aget v3, v12, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_4
    if-nez v10, :cond_0

    :cond_5
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->updateMatrix()V

    return-void

    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x2

    aget v8, v12, v8

    const/4 v9, 0x3

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x2

    aget v8, v12, v8

    const/4 v9, 0x3

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x0

    aget v5, v18, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v17, v5

    const/4 v6, 0x0

    aget v6, v18, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v17, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v18, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x2

    aget v6, v12, v6

    const/4 v7, 0x3

    aget v7, v12, v7

    const/4 v8, 0x4

    aget v8, v12, v8

    const/4 v9, 0x5

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x2

    aget v6, v12, v6

    const/4 v7, 0x3

    aget v7, v12, v7

    const/4 v8, 0x4

    aget v8, v12, v8

    const/4 v9, 0x5

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x0

    aget v5, v18, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v17, v5

    const/4 v6, 0x0

    aget v6, v18, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v17, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v18, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x4

    aget v6, v12, v6

    const/4 v7, 0x5

    aget v7, v12, v7

    const/4 v8, 0x6

    aget v8, v12, v8

    const/4 v9, 0x7

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x4

    aget v6, v12, v6

    const/4 v7, 0x5

    aget v7, v12, v7

    const/4 v8, 0x6

    aget v8, v12, v8

    const/4 v9, 0x7

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x0

    aget v5, v18, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v17, v5

    const/4 v6, 0x0

    aget v6, v18, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v17, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v18, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x6

    aget v8, v12, v8

    const/4 v9, 0x7

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x6

    aget v8, v12, v8

    const/4 v9, 0x7

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x0

    aget v5, v18, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v17, v5

    const/4 v6, 0x0

    aget v6, v18, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v17, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v18, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    goto/16 :goto_4

    :cond_b
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x6

    aget v8, v12, v8

    const/4 v9, 0x7

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x6

    aget v8, v12, v8

    const/4 v9, 0x7

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x6

    aget v8, v12, v8

    const/4 v9, 0x7

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x0

    aget v5, v18, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v17, v5

    const/4 v6, 0x0

    aget v6, v18, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v17, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v18, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x2

    aget v8, v12, v8

    const/4 v9, 0x3

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x2

    aget v8, v12, v8

    const/4 v9, 0x3

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x2

    aget v8, v12, v8

    const/4 v9, 0x3

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x0

    aget v5, v18, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v17, v5

    const/4 v6, 0x0

    aget v6, v18, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v17, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v18, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    neg-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x2

    aget v6, v12, v6

    const/4 v7, 0x3

    aget v7, v12, v7

    const/4 v8, 0x4

    aget v8, v12, v8

    const/4 v9, 0x5

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x2

    aget v6, v12, v6

    const/4 v7, 0x3

    aget v7, v12, v7

    const/4 v8, 0x4

    aget v8, v12, v8

    const/4 v9, 0x5

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x2

    aget v6, v12, v6

    const/4 v7, 0x3

    aget v7, v12, v7

    const/4 v8, 0x4

    aget v8, v12, v8

    const/4 v9, 0x5

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x0

    aget v5, v18, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v17, v5

    const/4 v6, 0x0

    aget v6, v18, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v17, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v18, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x4

    aget v6, v12, v6

    const/4 v7, 0x5

    aget v7, v12, v7

    const/4 v8, 0x6

    aget v8, v12, v8

    const/4 v9, 0x7

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x4

    aget v6, v12, v6

    const/4 v7, 0x5

    aget v7, v12, v7

    const/4 v8, 0x6

    aget v8, v12, v8

    const/4 v9, 0x7

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x4

    aget v6, v12, v6

    const/4 v7, 0x5

    aget v7, v12, v7

    const/4 v8, 0x6

    aget v8, v12, v8

    const/4 v9, 0x7

    aget v9, v12, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v5, 0x0

    aget v5, v18, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v17, v5

    const/4 v6, 0x0

    aget v6, v18, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v17, v5

    const/4 v6, 0x1

    aget v6, v18, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v18, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    neg-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_f
    if-nez v10, :cond_0

    goto/16 :goto_5
.end method

.method public correctTranslateForAnimation()V
    .locals 18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    if-eqz v2, :cond_5

    const/4 v12, 0x0

    :cond_0
    add-int/lit8 v12, v12, 0x1

    const/16 v2, 0xa

    if-ge v12, v2, :cond_5

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    neg-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    neg-float v2, v2

    invoke-virtual {v13, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/16 v2, 0x8

    new-array v11, v2, [F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v11, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v11, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    aput v3, v11, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    aput v3, v11, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    aput v3, v11, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    aput v3, v11, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    aput v3, v11, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    aput v3, v11, v2

    invoke-virtual {v13, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_a

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x2

    aget v8, v11, v8

    const/4 v9, 0x3

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    const/4 v3, 0x1

    aget v3, v11, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x2

    aget v6, v11, v6

    const/4 v7, 0x3

    aget v7, v11, v7

    const/4 v8, 0x4

    aget v8, v11, v8

    const/4 v9, 0x5

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x2

    aget v4, v11, v4

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x4

    aget v6, v11, v6

    const/4 v7, 0x5

    aget v7, v11, v7

    const/4 v8, 0x6

    aget v8, v11, v8

    const/4 v9, 0x7

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x5

    aget v4, v11, v4

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x6

    aget v8, v11, v8

    const/4 v9, 0x7

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    const/4 v3, 0x0

    aget v3, v11, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_4
    if-nez v10, :cond_0

    :cond_5
    :goto_4
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x2

    aget v8, v11, v8

    const/4 v9, 0x3

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x2

    aget v8, v11, v8

    const/4 v9, 0x3

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x0

    aget v5, v15, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, 0x0

    aget v6, v15, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x1

    aget v6, v15, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v14, v6

    const/4 v7, 0x1

    aget v7, v15, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x2

    aget v6, v11, v6

    const/4 v7, 0x3

    aget v7, v11, v7

    const/4 v8, 0x4

    aget v8, v11, v8

    const/4 v9, 0x5

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x2

    aget v6, v11, v6

    const/4 v7, 0x3

    aget v7, v11, v7

    const/4 v8, 0x4

    aget v8, v11, v8

    const/4 v9, 0x5

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x0

    aget v5, v15, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, 0x0

    aget v6, v15, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x1

    aget v6, v15, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v14, v6

    const/4 v7, 0x1

    aget v7, v15, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x4

    aget v6, v11, v6

    const/4 v7, 0x5

    aget v7, v11, v7

    const/4 v8, 0x6

    aget v8, v11, v8

    const/4 v9, 0x7

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x4

    aget v6, v11, v6

    const/4 v7, 0x5

    aget v7, v11, v7

    const/4 v8, 0x6

    aget v8, v11, v8

    const/4 v9, 0x7

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x0

    aget v5, v15, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, 0x0

    aget v6, v15, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x1

    aget v6, v15, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v14, v6

    const/4 v7, 0x1

    aget v7, v15, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x6

    aget v8, v11, v8

    const/4 v9, 0x7

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x6

    aget v8, v11, v8

    const/4 v9, 0x7

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x0

    aget v5, v15, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, 0x0

    aget v6, v15, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x1

    aget v6, v15, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v14, v6

    const/4 v7, 0x1

    aget v7, v15, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    goto/16 :goto_3

    :cond_a
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x6

    aget v8, v11, v8

    const/4 v9, 0x7

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x6

    aget v8, v11, v8

    const/4 v9, 0x7

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x6

    aget v8, v11, v8

    const/4 v9, 0x7

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x0

    aget v5, v15, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, 0x0

    aget v6, v15, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x1

    aget v6, v15, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v14, v6

    const/4 v7, 0x1

    aget v7, v15, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x2

    aget v8, v11, v8

    const/4 v9, 0x3

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x2

    aget v8, v11, v8

    const/4 v9, 0x3

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    const/4 v8, 0x2

    aget v8, v11, v8

    const/4 v9, 0x3

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x0

    aget v5, v15, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, 0x0

    aget v6, v15, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x1

    aget v6, v15, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v14, v6

    const/4 v7, 0x1

    aget v7, v15, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    neg-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x2

    aget v6, v11, v6

    const/4 v7, 0x3

    aget v7, v11, v7

    const/4 v8, 0x4

    aget v8, v11, v8

    const/4 v9, 0x5

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x2

    aget v6, v11, v6

    const/4 v7, 0x3

    aget v7, v11, v7

    const/4 v8, 0x4

    aget v8, v11, v8

    const/4 v9, 0x5

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x2

    aget v6, v11, v6

    const/4 v7, 0x3

    aget v7, v11, v7

    const/4 v8, 0x4

    aget v8, v11, v8

    const/4 v9, 0x5

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x0

    aget v5, v15, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, 0x0

    aget v6, v15, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x1

    aget v6, v15, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v14, v6

    const/4 v7, 0x1

    aget v7, v15, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x4

    aget v6, v11, v6

    const/4 v7, 0x5

    aget v7, v11, v7

    const/4 v8, 0x6

    aget v8, v11, v8

    const/4 v9, 0x7

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->isInside(FFFFFFFF)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x4

    aget v6, v11, v6

    const/4 v7, 0x5

    aget v7, v11, v7

    const/4 v8, 0x6

    aget v8, v11, v8

    const/4 v9, 0x7

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x4

    aget v6, v11, v6

    const/4 v7, 0x5

    aget v7, v11, v7

    const/4 v8, 0x6

    aget v8, v11, v8

    const/4 v9, 0x7

    aget v9, v11, v9

    invoke-static/range {v2 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    float-to-double v2, v2

    const/4 v4, 0x0

    aget v4, v14, v4

    const/4 v5, 0x0

    aget v5, v15, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v14, v5

    const/4 v6, 0x0

    aget v6, v15, v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v5, v14, v5

    const/4 v6, 0x1

    aget v6, v15, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v14, v6

    const/4 v7, 0x1

    aget v7, v15, v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    neg-float v6, v6

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_e
    if-nez v10, :cond_0

    goto/16 :goto_4
.end method

.method public getCorrectedTranslate(FFFFFF)[F
    .locals 9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getPointOfIntersection(FFFFFFFF)[F

    move-result-object v8

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v8, v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v2, v8, v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getCurrentRotate()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    return v0
.end method

.method public getCurrentScale()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    return v0
.end method

.method public getCurrentTranslateX()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    return v0
.end method

.method public getCurrentTranslateY()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    return v0
.end method

.method public getPointerIconType()I
    .locals 4

    const/16 v1, 0x3fc

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v0, 0x3e8

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mIsDTAnimating:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onDoubleTap(FF)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageVertices:[F

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v12, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    sub-float p1, p1, v12

    sub-float p2, p2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartScale:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransY:F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTAnimStartTime:J

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mIsDTAnimating:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartScale:F

    const/high16 v3, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p1, v3

    neg-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartScale:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p2, v3

    neg-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartScale:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    move/from16 v22, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedWidth:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedHeight:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    :cond_3
    :goto_2
    const/4 v3, 0x0

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    :cond_4
    const/4 v3, 0x0

    cmpl-float v3, v11, v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_5
    const/16 v3, 0x8

    new-array v2, v3, [F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateVertices([FLandroid/graphics/RectF;FFFF)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v13

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v15

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v14

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v16

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    const/4 v3, 0x0

    aget v6, v2, v3

    const/4 v3, 0x1

    aget v7, v2, v3

    const/4 v3, 0x4

    aget v8, v2, v3

    const/4 v3, 0x5

    aget v9, v2, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->getCorrectedTranslate(FFFFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    const/4 v4, 0x0

    aget v4, v17, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    const/4 v4, 0x1

    aget v4, v17, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_6
    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    aget v6, v2, v3

    const/4 v3, 0x1

    aget v7, v2, v3

    const/4 v3, 0x2

    aget v8, v2, v3

    const/4 v3, 0x3

    aget v9, v2, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->getCorrectedTranslate(FFFFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    const/4 v4, 0x0

    aget v4, v17, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    const/4 v4, 0x1

    aget v4, v17, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_7
    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x2

    aget v6, v2, v3

    const/4 v3, 0x3

    aget v7, v2, v3

    const/4 v3, 0x6

    aget v8, v2, v3

    const/4 v3, 0x7

    aget v9, v2, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->getCorrectedTranslate(FFFFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    const/4 v4, 0x0

    aget v4, v17, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    const/4 v4, 0x1

    aget v4, v17, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_8
    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    const/4 v3, 0x4

    aget v6, v2, v3

    const/4 v3, 0x5

    aget v7, v2, v3

    const/4 v3, 0x6

    aget v8, v2, v3

    const/4 v3, 0x7

    aget v9, v2, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->getCorrectedTranslate(FFFFFF)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    const/4 v4, 0x0

    aget v4, v17, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    const/4 v4, 0x1

    aget v4, v17, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTAnimStartTime:J

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mIsDTAnimating:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedWidth:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float v19, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedWidth:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-float v20, v3, v19

    cmpg-float v3, v21, v20

    if-gez v3, :cond_b

    move/from16 v10, v20

    goto/16 :goto_1

    :cond_b
    cmpl-float v3, v21, v19

    if-lez v3, :cond_2

    move/from16 v10, v19

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedHeight:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float v19, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedHeight:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-float v20, v3, v19

    cmpg-float v3, v22, v20

    if-gez v3, :cond_d

    move/from16 v11, v20

    goto/16 :goto_2

    :cond_d
    cmpl-float v3, v22, v19

    if-lez v3, :cond_3

    move/from16 v11, v19

    goto/16 :goto_2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/high16 v6, 0x43fa0000    # 500.0f

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScaleEndTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->SCALE_FLING_DELAY:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->VELOCITY_PRODUCT:F

    mul-float/2addr v0, p3

    :goto_0
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->VELOCITY_PRODUCT:F

    mul-float v1, p4, v0

    :cond_0
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPreviousUpdate:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->correctTranslate(Z)V

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->correctTranslate(Z)V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 14

    const/high16 v13, 0x41200000    # 10.0f

    const/4 v12, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mMinCropWidth:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mMinCropHeight:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    :cond_0
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v4, v6, v8

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v3, v6, 0x5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v1, v6, 0x5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v7

    mul-float/2addr v6, v7

    int-to-float v7, v3

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v7

    mul-float/2addr v6, v7

    int-to-float v7, v1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v7

    mul-float/2addr v6, v7

    int-to-float v7, v3

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    int-to-float v6, v3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v7, v8

    div-float v0, v6, v7

    :cond_2
    :goto_0
    iput v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    iput v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v0, v6

    if-nez v6, :cond_5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScaleTime:J

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v6, v2

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    cmpl-float v6, v6, v13

    if-lez v6, :cond_6

    iput v13, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    :cond_3
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->correctTranslate(Z)V

    const/4 v6, 0x1

    return v6

    :cond_4
    int-to-float v6, v1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v7, v8

    div-float v0, v6, v7

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    goto :goto_2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScaleEndTime:J

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    neg-float v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    neg-float v1, p4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->correctTranslate(Z)V

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/16 v0, 0x3fd

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setMouseIcon(I)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll2(FF)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScaleTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->correctTranslate(Z)V

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/16 v0, 0x3fd

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setMouseIcon(I)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTapTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->onDoubleTap(FF)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTapTime:J

    :goto_0
    const/4 v2, 0x0

    return v2

    :cond_0
    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTapTime:J

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPrevX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPrevY:F

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPrevX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPrevY:F

    sub-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->onScroll2(FF)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPrevX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPrevY:F

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mIsDTAnimating:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setRotate(F)V

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->correctTranslate(Z)V

    goto :goto_0
.end method

.method public setCropScreenRect(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setImageDimensions(Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v0, v2

    int-to-float v2, v1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedWidth:F

    int-to-float v2, v0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedHeight:F

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->reset()V

    return-void
.end method

.method public setMouseIcon(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0e0111

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public setRotate(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->updateRotate(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->correctTranslate(Z)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->updateScale(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->correctTranslate(Z)V

    return-void
.end method

.method public setTranslation(FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->updateTranslation(FF)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->updateMatrix()V

    return-void
.end method

.method public setViewDimensions(IILandroid/graphics/Rect;)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenWidth:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenHeight:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setZoom(F)V
    .locals 14

    const/high16 v13, 0x41200000    # 10.0f

    const/4 v12, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mMinCropWidth:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mMinCropHeight:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    :cond_0
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v4, v6, v8

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v3, v6, 0x5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v1, v6, 0x5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, p1

    int-to-float v7, v3

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, p1

    int-to-float v7, v1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, p1

    int-to-float v7, v3

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    int-to-float v6, v3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v7, v8

    div-float v0, v6, v7

    :cond_2
    :goto_0
    iput v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    iput v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v0, v6

    if-nez v6, :cond_5

    move v2, p1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScaleTime:J

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v6, v2

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    cmpl-float v6, v6, v13

    if-lez v6, :cond_6

    iput v13, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    :cond_3
    :goto_2
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->correctTranslate(Z)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    :cond_4
    int-to-float v6, v1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v7, v8

    div-float v0, v6, v7

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    goto :goto_2
.end method

.method public setZoomWithAnimation(F)V
    .locals 21

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartScale:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    mul-float v3, v3, p1

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b

    const/high16 v3, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    div-float p1, v3, v4

    const/high16 v3, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransY:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransX:F

    mul-float v3, v3, p1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransY:F

    mul-float v3, v3, p1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    move/from16 v20, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedWidth:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedHeight:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    :cond_4
    :goto_3
    const/4 v3, 0x0

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    :cond_5
    const/4 v3, 0x0

    cmpl-float v3, v11, v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_6
    const/16 v3, 0x8

    new-array v2, v3, [F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->updateVertices([FLandroid/graphics/RectF;FFFF)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v12

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v14

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v13

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isInside([FLandroid/graphics/Rect;FF)Z

    move-result v15

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    const/4 v3, 0x0

    aget v6, v2, v3

    const/4 v3, 0x1

    aget v7, v2, v3

    const/4 v3, 0x4

    aget v8, v2, v3

    const/4 v3, 0x5

    aget v9, v2, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->getCorrectedTranslate(FFFFFF)[F

    move-result-object v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    const/4 v4, 0x0

    aget v4, v16, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    const/4 v4, 0x1

    aget v4, v16, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_7
    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    aget v6, v2, v3

    const/4 v3, 0x1

    aget v7, v2, v3

    const/4 v3, 0x2

    aget v8, v2, v3

    const/4 v3, 0x3

    aget v9, v2, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->getCorrectedTranslate(FFFFFF)[F

    move-result-object v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    const/4 v4, 0x0

    aget v4, v16, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    const/4 v4, 0x1

    aget v4, v16, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_8
    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x2

    aget v6, v2, v3

    const/4 v3, 0x3

    aget v7, v2, v3

    const/4 v3, 0x6

    aget v8, v2, v3

    const/4 v3, 0x7

    aget v9, v2, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->getCorrectedTranslate(FFFFFF)[F

    move-result-object v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    const/4 v4, 0x0

    aget v4, v16, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    const/4 v4, 0x1

    aget v4, v16, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_9
    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    const/4 v3, 0x4

    aget v6, v2, v3

    const/4 v3, 0x5

    aget v7, v2, v3

    const/4 v3, 0x6

    aget v8, v2, v3

    const/4 v3, 0x7

    aget v9, v2, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->getCorrectedTranslate(FFFFFF)[F

    move-result-object v16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    const/4 v4, 0x0

    aget v4, v16, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    const/4 v4, 0x1

    aget v4, v16, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_a
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTAnimStartTime:J

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mIsDTAnimating:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    mul-float v3, v3, p1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    div-float p1, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    mul-float v3, v3, p1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedWidth:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float v17, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedWidth:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-float v18, v3, v17

    cmpg-float v3, v19, v18

    if-gez v3, :cond_e

    move/from16 v10, v18

    goto/16 :goto_2

    :cond_e
    cmpl-float v3, v19, v17

    if-lez v3, :cond_3

    move/from16 v10, v17

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedHeight:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float v17, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedHeight:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    add-float v18, v3, v17

    cmpg-float v3, v20, v18

    if-gez v3, :cond_10

    move/from16 v11, v18

    goto/16 :goto_3

    :cond_10
    cmpl-float v3, v20, v17

    if-lez v3, :cond_4

    move/from16 v11, v17

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransY:F

    mul-float v3, v3, p1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransX:F

    mul-float v3, v3, p1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    move/from16 v20, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_16

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_18

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_13
    :goto_6
    const/4 v3, 0x0

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    :cond_14
    const/4 v3, 0x0

    cmpl-float v3, v11, v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->correctTranslateForAnimation()V

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedWidth:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v17, v3, v4

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v18, v0

    cmpg-float v3, v19, v18

    if-gez v3, :cond_17

    move/from16 v10, v18

    goto :goto_5

    :cond_17
    cmpl-float v3, v19, v17

    if-lez v3, :cond_12

    move/from16 v10, v17

    goto :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedHeight:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v17, v3, v4

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v18, v0

    cmpg-float v3, v20, v18

    if-gez v3, :cond_19

    move/from16 v11, v18

    goto :goto_6

    :cond_19
    cmpl-float v3, v20, v17

    if-lez v3, :cond_13

    move/from16 v11, v17

    goto :goto_6
.end method

.method public stopMoving()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    return-void
.end method

.method public update()V
    .locals 14

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_6

    :cond_0
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPreviousUpdate:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const v9, 0x3aa3d70a    # 0.00125f

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPreviousUpdate:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const v9, 0x3aa3d70a    # 0.00125f

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5

    :cond_1
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityFactor:F

    mul-float v3, v7, v8

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityFactor:F

    mul-float v5, v7, v8

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    add-float/2addr v7, v3

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    add-float/2addr v7, v5

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->correctTranslate(Z)V

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    cmpl-float v7, v7, v4

    if-nez v7, :cond_2

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    cmpl-float v7, v7, v6

    if-nez v7, :cond_2

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    :cond_2
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpg-double v7, v8, v10

    if-gez v7, :cond_3

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    :cond_3
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpg-double v7, v8, v10

    if-gez v7, :cond_4

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mPreviousUpdate:J

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mIsDTAnimating:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartScale:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartScale:F

    sub-float/2addr v8, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTAnimStartTime:J

    sub-long/2addr v10, v12

    long-to-float v9, v10

    mul-float/2addr v8, v9

    const/high16 v9, 0x43160000    # 150.0f

    div-float/2addr v8, v9

    add-float v2, v7, v8

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransX:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransX:F

    sub-float/2addr v8, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTAnimStartTime:J

    sub-long/2addr v10, v12

    long-to-float v9, v10

    mul-float/2addr v8, v9

    const/high16 v9, 0x43160000    # 150.0f

    div-float/2addr v8, v9

    add-float v3, v7, v8

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransY:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTStartTransY:F

    sub-float/2addr v8, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTAnimStartTime:J

    sub-long/2addr v10, v12

    long-to-float v9, v10

    mul-float/2addr v8, v9

    const/high16 v9, 0x43160000    # 150.0f

    div-float/2addr v8, v9

    add-float v5, v7, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTAnimStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x96

    cmp-long v7, v8, v10

    if-ltz v7, :cond_7

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mIsDTAnimating:Z

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransX:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mDTEndTransY:F

    :cond_7
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    div-float v0, v2, v7

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v7, v0

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    const/high16 v7, 0x41200000    # 10.0f

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    const/high16 v7, 0x41200000    # 10.0f

    div-float v0, v7, v1

    :cond_8
    :goto_1
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->updateMatrix()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_0

    :cond_9
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mMinScale:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mMinScale:F

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mMinScale:F

    div-float v0, v7, v1

    goto :goto_1
.end method

.method public updatePinchMatrix(FFFF)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->updateRotate(F)V

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->updateScale(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->correctTranslate(Z)V

    invoke-virtual {p0, p3, p4}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setTranslation(FF)V

    return-void
.end method

.method public updateRotate(F)V
    .locals 13

    const/4 v12, 0x0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotation:F

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double v2, v6, v8

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v5, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v0, v6

    int-to-float v6, v5

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedWidth:F

    int-to-float v6, v0

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotatedHeight:F

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    int-to-float v6, v5

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v1, v6, v7

    :goto_0
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mRotationScale:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mMinCropWidth:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mMinCropWidth:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gez v6, :cond_0

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    cmpl-float v6, v6, v1

    if-lez v6, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mMinCropHeight:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sget v7, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mMinCropHeight:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gez v6, :cond_1

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    cmpl-float v6, v6, v1

    if-lez v6, :cond_2

    :cond_1
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    :cond_2
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iput v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityX:F

    iput v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mVelocityY:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenWidth:I

    int-to-double v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenHeight:I

    int-to-double v8, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenWidth:I

    int-to-double v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScreenHeight:I

    int-to-double v8, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v0, v6

    int-to-float v6, v5

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    int-to-float v7, v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mFreeScrollScale:F

    return-void

    :cond_3
    int-to-float v6, v0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v1, v6, v7

    goto/16 :goto_0
.end method

.method public updateScale(F)V
    .locals 4

    const/high16 v3, 0x41200000    # 10.0f

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    div-float v0, p1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mMinScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mMinScale:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mScale:F

    goto :goto_0
.end method

.method public updateTranslation(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransX:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->mTransY:F

    return-void
.end method
