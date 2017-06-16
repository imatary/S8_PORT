.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;
.source "GLCropAnimation.java"


# instance fields
.field private mInitialRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mInitialRect:Landroid/graphics/RectF;

    const-string v4, "rectcenterx"

    new-array v5, v10, [F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    aput v6, v5, v8

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v4, "rectcentery"

    new-array v5, v10, [F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    aput v6, v5, v8

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v4, "rectscaleheight"

    new-array v5, v10, [F

    aput v11, v5, v8

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v4, "rectscalewidth"

    new-array v5, v10, [F

    aput v11, v5, v8

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    aput-object v2, v5, v10

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mInitialRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getAnimMatrix(Landroid/content/Context;)[F
    .locals 13

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v9, "rectcenterx"

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v9, "rectcentery"

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v9, "rectscalewidth"

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v9, "rectscaleheight"

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mInitialRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mInitialRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mScreenWidth:F

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mScreenHeight:F

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToOrthoNorm(FFFF)[F

    move-result-object v1

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mScreenWidth:F

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mScreenHeight:F

    invoke-static {v2, v3, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToOrthoNorm(FFFF)[F

    move-result-object v0

    const/4 v8, 0x0

    aget v8, v0, v8

    const/4 v9, 0x0

    aget v9, v1, v9

    sub-float v6, v8, v9

    const/4 v8, 0x1

    aget v8, v0, v8

    const/4 v9, 0x1

    aget v9, v1, v9

    sub-float v7, v8, v9

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mAnimMatrix:[F

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mAnimMatrix:[F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v5

    const/4 v11, 0x0

    aget v11, v0, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v4

    const/4 v12, 0x1

    aget v12, v0, v12

    mul-float/2addr v11, v12

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mAnimMatrix:[F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v5, v4, v10}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mAnimMatrix:[F

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v6, v7, v10}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mAnimMatrix:[F

    return-object v8
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 14

    const/high16 v13, 0x40000000    # 2.0f

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v12, "rectcenterx"

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v12, "rectcentery"

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v12, "rectscalewidth"

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v12, "rectscaleheight"

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mInitialRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float v9, v8, v11

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->mInitialRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float v7, v6, v11

    div-float v11, v9, v13

    sub-float v1, v2, v11

    add-float v5, v1, v9

    div-float v11, v7, v13

    sub-float v10, v3, v11

    add-float v0, v10, v7

    invoke-virtual {v4, v1, v10, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-object v4
.end method
