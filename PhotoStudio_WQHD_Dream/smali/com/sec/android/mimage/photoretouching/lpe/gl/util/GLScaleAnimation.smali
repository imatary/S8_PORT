.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;
.source "GLScaleAnimation.java"


# instance fields
.field private mOrtho:Z

.field private pivotX:F

.field private pivotY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FFFFFF)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;-><init>(Landroid/content/Context;FFFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mOrtho:Z

    iput p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->pivotX:F

    iput p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->pivotY:F

    return-void
.end method


# virtual methods
.method public getAnimMatrix(Landroid/content/Context;)[F
    .locals 10

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mAnimMatrix:[F

    invoke-static {v4, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->pivotX:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mScreenWidth:F

    div-float/2addr v4, v5

    sub-float v0, v4, v8

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->pivotY:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mScreenHeight:F

    div-float/2addr v4, v5

    sub-float v1, v8, v4

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mOrtho:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mScreenWidth:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mScreenHeight:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mScreenWidth:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mScreenHeight:F

    div-float v0, v4, v5

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mAnimMatrix:[F

    sub-float v5, v8, v2

    mul-float/2addr v5, v0

    sub-float v6, v8, v3

    mul-float/2addr v6, v1

    const/4 v7, 0x0

    invoke-static {v4, v9, v5, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mAnimMatrix:[F

    invoke-static {v4, v9, v2, v3, v8}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mAnimMatrix:[F

    return-object v4

    :cond_1
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mScreenHeight:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mScreenWidth:F

    div-float v1, v4, v5

    goto :goto_0
.end method

.method public setOrtho(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLScaleAnimation;->mOrtho:Z

    return-void
.end method
