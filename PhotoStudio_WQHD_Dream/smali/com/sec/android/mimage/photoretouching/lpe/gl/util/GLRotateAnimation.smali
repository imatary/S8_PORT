.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;
.source "GLRotateAnimation.java"


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mExtraListener:Landroid/animation/Animator$AnimatorListener;

.field private mRotation:F

.field private mScale:F

.field private mTransX:F

.field private mTransY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FFFFFFFFFFFFFFFFFF)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;-><init>(Landroid/content/Context;)V

    move/from16 v0, p14

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mCenterX:F

    move/from16 v0, p15

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mCenterY:F

    move/from16 v0, p16

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScale:F

    move/from16 v0, p17

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mRotation:F

    move/from16 v0, p18

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mTransX:F

    move/from16 v0, p19

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mTransY:F

    const-string v7, "scale"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput p2, v8, v9

    const/4 v9, 0x1

    aput p3, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v7, "transx"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput p4, v8, v9

    const/4 v9, 0x1

    aput p5, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const-string v7, "transy"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput p6, v8, v9

    const/4 v9, 0x1

    aput p7, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const-string v7, "rotx"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput p8, v8, v9

    const/4 v9, 0x1

    aput p9, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v7, "roty"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput p10, v8, v9

    const/4 v9, 0x1

    aput p11, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v7, "rotz"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput p12, v8, v9

    const/4 v9, 0x1

    aput p13, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    aput-object v6, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    aput-object v3, v8, v9

    const/4 v9, 0x5

    aput-object v4, v8, v9

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mExtraListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mExtraListener:Landroid/animation/Animator$AnimatorListener;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public getAnimMatrix(Landroid/content/Context;)[F
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v2, "scale"

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v2, "transx"

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v2, "transy"

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v2, "rotx"

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v2, "roty"

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v2, "rotz"

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mAnimMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenHeight:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenHeight:F

    div-float v10, v1, v2

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenHeight:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenHeight:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenWidth:F

    div-float v11, v1, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mAnimMatrix:[F

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mCenterX:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenWidth:F

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    mul-float/2addr v4, v10

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v10

    mul-float/2addr v5, v15

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenWidth:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mCenterY:F

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenHeight:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v5, v11

    mul-float v6, v11, v16

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenHeight:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v1, v2, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mAnimMatrix:[F

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v14, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mAnimMatrix:[F

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mAnimMatrix:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v6, v12

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mAnimMatrix:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v6, v13

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mAnimMatrix:[F

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mTransX:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenWidth:F

    div-float/2addr v4, v5

    neg-float v5, v11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mTransY:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenHeight:F

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v1, v2, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mAnimMatrix:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScale:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v4, v5, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mAnimMatrix:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mRotation:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mAnimMatrix:[F

    const/4 v2, 0x0

    neg-float v4, v10

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mCenterX:F

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenWidth:F

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    neg-float v5, v11

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mCenterY:F

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mScreenHeight:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v1, v2, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mAnimMatrix:[F

    return-object v1

    :cond_0
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_1
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mExtraListener:Landroid/animation/Animator$AnimatorListener;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLRotateAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
