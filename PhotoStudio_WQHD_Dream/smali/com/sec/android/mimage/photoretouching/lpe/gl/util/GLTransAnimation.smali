.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;
.source "GLTransAnimation.java"


# instance fields
.field private mLeft:F

.field private mTop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FFFFFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;-><init>(Landroid/content/Context;FFFF)V

    iput p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->mLeft:F

    iput p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->mTop:F

    return-void
.end method


# virtual methods
.method public getAnimMatrix(Landroid/content/Context;)[F
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->mAnimMatrix:[F

    invoke-static {v4, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->mAnimStarted:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v5, "y"

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->mLeft:F

    sub-float/2addr v4, v0

    neg-float v4, v4

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->mScreenWidth:F

    div-float v2, v4, v5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->mTop:F

    sub-float/2addr v4, v1

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->mScreenHeight:F

    div-float v3, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->mAnimMatrix:[F

    const/4 v5, 0x0

    invoke-static {v4, v7, v2, v3, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLTransAnimation;->mAnimMatrix:[F

    return-object v4
.end method
