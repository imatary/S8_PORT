.class public abstract Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;
.super Ljava/lang/Object;
.source "GLAnimation.java"


# instance fields
.field protected mAnimListener:Landroid/animation/Animator$AnimatorListener;

.field protected mAnimMatrix:[F

.field protected mAnimStarted:Z

.field private mHolderX:Landroid/animation/PropertyValuesHolder;

.field private mHolderY:Landroid/animation/PropertyValuesHolder;

.field protected mIsAnimating:Z

.field protected mScreenHeight:F

.field protected mScreenWidth:F

.field protected mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mAnimMatrix:[F

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mIsAnimating:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mAnimStarted:Z

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mAnimListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFFF)V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mAnimMatrix:[F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mIsAnimating:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mAnimStarted:Z

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mAnimListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-string v0, "x"

    new-array v1, v2, [F

    aput p2, v1, v3

    aput p3, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mHolderX:Landroid/animation/PropertyValuesHolder;

    const-string v0, "y"

    new-array v1, v2, [F

    aput p4, v1, v3

    aput p5, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mHolderY:Landroid/animation/PropertyValuesHolder;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mHolderX:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mHolderY:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public abstract getAnimMatrix(Landroid/content/Context;)[F
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mIsAnimating:Z

    return v0
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setDuration(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public startAnimation(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mIsAnimating:Z

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mScreenWidth:F

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->mScreenHeight:F

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
