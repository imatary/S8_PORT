.class public Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;
.super Landroid/widget/FrameLayout;
.source "Unknown"


# static fields
.field protected static final TAG:Ljava/lang/String; = "WinterEffect"


# instance fields
.field private alpha:Landroid/animation/ValueAnimator;

.field private alphaBack:Landroid/animation/ValueAnimator;

.field private dk:F

.field private dm:F

.field private dx:F

.field private m:I

.field private mContext:Landroid/content/Context;

.field private mHasAddImage:Z

.field private mImageEffect:Landroid/widget/ImageView;

.field private mImageTouch:Landroid/widget/ImageView;

.field private mImageTouch2:Landroid/widget/ImageView;

.field private mScreenAdjust:F

.field private maxRand:F

.field private resId:[I

.field private resIdTouch:[I

.field private rotation:Landroid/animation/ValueAnimator;

.field private scaleX:Landroid/animation/ValueAnimator;

.field private scaleXback:Landroid/animation/ValueAnimator;

.field private scaleXblank:Landroid/animation/ValueAnimator;

.field private scaleY:Landroid/animation/ValueAnimator;

.field private scaleYback:Landroid/animation/ValueAnimator;

.field private scaleYblank:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->maxRand:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/android/keyguard/R$drawable;->festival_unlock_effect_01:I

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->festival_unlock_effect_02:I

    aput v1, v0, v3

    sget v1, Lcom/android/keyguard/R$drawable;->festival_unlock_effect_03:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->resId:[I

    new-array v0, v4, [I

    sget v1, Lcom/android/keyguard/R$drawable;->festival_unlock_touch_01:I

    aput v1, v0, v2

    sget v1, Lcom/android/keyguard/R$drawable;->festival_unlock_touch_02:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->resIdTouch:[I

    iput-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mHasAddImage:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->init()V

    return-void
.end method


# virtual methods
.method public add(FF)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v4, 0x41f00000    # 30.0f

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->resIdTouch:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->resIdTouch:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v1, v4

    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v1, v4

    sub-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    iput-boolean v6, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mHasAddImage:Z

    return-void
.end method

.method public clearEffect()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->removeAllViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mHasAddImage:Z

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public move(FF)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->maxRand:F

    float-to-double v2, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    iget-boolean v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mHasAddImage:Z

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v2, v3

    sub-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v2, v3

    sub-float v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageTouch2:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    const/high16 v3, 0x41100000    # 9.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, p2

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dm:F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mScreenAdjust:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->add(FF)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->resId:[I

    iget v3, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->addView(Landroid/view/View;II)V

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    if-eq v1, v7, :cond_4

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->m:I

    if-eq v1, v8, :cond_5

    :goto_2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    const-wide v4, 0x3fe3333340000000L    # 0.6000000238418579

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    sub-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    add-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleX"

    new-array v3, v8, [F

    aput v9, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleY"

    new-array v3, v8, [F

    aput v9, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleX"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleY"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x46

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x46

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleX"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v6

    aput v9, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleY"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v6

    aput v9, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v9, v3, v6

    aput v10, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v10, v3, v6

    aput v9, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_2

    :cond_4
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    sub-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    add-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleX"

    new-array v3, v8, [F

    aput v9, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleY"

    new-array v3, v8, [F

    aput v9, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x82

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x82

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleX"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleY"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleX"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v6

    aput v9, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleY"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v6

    aput v9, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v9, v3, v6

    aput v10, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v10, v3, v6

    aput v9, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_2

    :cond_5
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    sub-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dx:F

    add-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleX"

    new-array v3, v8, [F

    aput v9, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleY"

    new-array v3, v8, [F

    aput v9, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleX"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleY"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v6

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleX"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v6

    aput v9, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "ScaleY"

    new-array v3, v8, [F

    iget v4, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->dk:F

    aput v4, v3, v6

    aput v9, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v9, v3, v6

    aput v10, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v10, v3, v6

    aput v9, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->mImageEffect:Landroid/widget/ImageView;

    const-string/jumbo v2, "rotation"

    new-array v3, v8, [F

    aput v9, v3, v6

    const/high16 v4, 0x43aa0000    # 340.0f

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->rotation:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->rotation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleY:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleX:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXback:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleYback:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->scaleXblank:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alphaBack:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->alpha:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/unlockeffect/winter/WinterEffect;->rotation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_2
.end method
