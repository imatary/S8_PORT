.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;
.source "GLAdjustmentAnimation.java"


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mScissorValues:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;FFFFFFFFFFLandroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 14

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x4

    new-array v9, v9, [F

    iput-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScissorValues:[F

    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mCenterX:F

    move/from16 v0, p11

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mCenterY:F

    const-string v9, "scale"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput p2, v10, v11

    const/4 v11, 0x1

    aput p3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const-string v9, "transx"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput p4, v10, v11

    const/4 v11, 0x1

    aput p5, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const-string v9, "transy"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput p6, v10, v11

    const/4 v11, 0x1

    aput p7, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    const-string v9, "rotz"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput p8, v10, v11

    const/4 v11, 0x1

    aput p9, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const-string v9, "rectcenterx"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual/range {p13 .. p13}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v9, "rectcentery"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual/range {p13 .. p13}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v9, "rectscale"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual/range {p13 .. p13}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual/range {p12 .. p12}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float/2addr v12, v13

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput p14, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/16 v10, 0x8

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v8, v10, v11

    const/4 v11, 0x3

    aput-object v5, v10, v11

    const/4 v11, 0x4

    aput-object v2, v10, v11

    const/4 v11, 0x5

    aput-object v3, v10, v11

    const/4 v11, 0x6

    aput-object v4, v10, v11

    const/4 v11, 0x7

    aput-object v1, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public getAnimMatrix(Landroid/content/Context;)[F
    .locals 14

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "scale"

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "transx"

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "transy"

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "rotz"

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScissorValues:[F

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v4, "rectcenterx"

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScissorValues:[F

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v4, "rectcentery"

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScissorValues:[F

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v4, "rectscale"

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScissorValues:[F

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v4, "alpha"

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mAnimMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenWidth:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenWidth:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenHeight:F

    div-float v6, v0, v1

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mCenterX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenWidth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    mul-float v10, v6, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mCenterY:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenHeight:F

    div-float/2addr v1, v3

    sub-float v11, v0, v1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v6

    mul-float/2addr v0, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenWidth:F

    div-float v8, v0, v1

    neg-float v0, v13

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenHeight:F

    div-float v9, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mAnimMatrix:[F

    const/4 v1, 0x0

    add-float v3, v8, v10

    add-float v4, v9, v11

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mAnimMatrix:[F

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v7, v7, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mAnimMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mAnimMatrix:[F

    const/4 v1, 0x0

    neg-float v3, v10

    neg-float v4, v11

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mAnimMatrix:[F

    return-object v0

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenHeight:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenWidth:F

    div-float v6, v0, v1

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mCenterX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenWidth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v10, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mCenterY:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenHeight:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    mul-float v11, v6, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v12

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenWidth:F

    div-float v8, v0, v1

    neg-float v0, v6

    mul-float/2addr v0, v13

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScreenHeight:F

    div-float v9, v0, v1

    goto :goto_0
.end method

.method public getScissorValues()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->mScissorValues:[F

    return-object v0
.end method
