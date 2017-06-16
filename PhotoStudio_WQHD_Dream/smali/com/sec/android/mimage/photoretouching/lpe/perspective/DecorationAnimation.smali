.class public Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;
.super Ljava/lang/Object;
.source "DecorationAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public isAnimating:Z

.field private mAnimId:I

.field private mAnimValues:[F

.field public mContext:Landroid/content/Context;

.field private mNumAnimValues:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;II[[F)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->isAnimating:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mAnimId:I

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mNumAnimValues:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mNumAnimValues:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mAnimValues:[F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mNumAnimValues:I

    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mNumAnimValues:I

    if-ge v0, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    aget-object v4, p4, v0

    aget v4, v4, v5

    aput v4, v3, v5

    aget-object v4, p4, v0

    aget v4, v4, v6

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mAnimValues:[F

    aget-object v3, p4, v0

    aget v3, v3, v5

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public getAnimId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mAnimId:I

    return v0
.end method

.method public getAnimValues()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mAnimValues:[F

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->isAnimating:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->isAnimating:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->isAnimating:Z

    return-void
.end method

.method public setAnimListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public setDuration(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    return-void
.end method

.method public setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const-string v0, "Anantha"

    const-string v1, "Calling Animation Start >>>>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->isAnimating:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public updateValues()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mNumAnimValues:I

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mAnimValues:[F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/DecorationAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
