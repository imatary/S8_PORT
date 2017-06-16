.class public Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;
.super Ljava/lang/Object;
.source "CollageAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field public static final ANIM_DRAG_DROP:I = 0x1

.field public static final ANIM_SHUFFLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PEDIT_CollageAnimation"


# instance fields
.field private mAnimMode:I

.field private mAnimatedValues:[F

.field private mAnimating:Z

.field private mAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(I[FFFFFFFFFFFFFFFFFFFFF)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimating:Z

    new-instance v10, Landroid/animation/ValueAnimator;

    invoke-direct {v10}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimMode:I

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const-string v10, "cx"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p3, v11, v12

    const/4 v12, 0x1

    aput p13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v10, "cy"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p4, v11, v12

    const/4 v12, 0x1

    aput p14, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const-string v10, "width"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p5, v11, v12

    const/4 v12, 0x1

    aput p15, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    const-string v10, "height"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p6, v11, v12

    const/4 v12, 0x1

    aput p16, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v10, "marginLeft"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p7, v11, v12

    const/4 v12, 0x1

    aput p17, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v10, "marginTop"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p8, v11, v12

    const/4 v12, 0x1

    aput p18, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const-string v10, "marginRight"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p9, v11, v12

    const/4 v12, 0x1

    aput p19, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string v10, "marginBottom"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p10, v11, v12

    const/4 v12, 0x1

    aput p20, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v10, "transX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p11, v11, v12

    const/4 v12, 0x1

    aput p21, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const-string v10, "transY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p12, v11, v12

    const/4 v12, 0x1

    aput p22, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const/16 v11, 0xa

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    const/4 v12, 0x2

    aput-object v9, v11, v12

    const/4 v12, 0x3

    aput-object v0, v11, v12

    const/4 v12, 0x4

    aput-object v3, v11, v12

    const/4 v12, 0x5

    aput-object v5, v11, v12

    const/4 v12, 0x6

    aput-object v4, v11, v12

    const/4 v12, 0x7

    aput-object v2, v11, v12

    const/16 v12, 0x8

    aput-object v7, v11, v12

    const/16 v12, 0x9

    aput-object v8, v11, v12

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v10, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v11, 0x0

    aput p3, v10, v11

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v11, 0x1

    aput p4, v10, v11

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v11, 0x2

    aput p5, v10, v11

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v11, 0x3

    aput p6, v10, v11

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v11, 0x4

    aput p7, v10, v11

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v11, 0x5

    aput p8, v10, v11

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v11, 0x6

    aput p9, v10, v11

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v11, 0x7

    aput p10, v10, v11

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/16 v11, 0x8

    aput p11, v10, v11

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/16 v11, 0x9

    aput p12, v10, v11

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public getAnimMode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimMode:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimating:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimating:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimating:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimating:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimating:Z

    return-void
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setDuration(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimating:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateValues()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v0, "PEDIT_CollageAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating values...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v3, "cx"

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v3, "cy"

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v2, "width"

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v2, "height"

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v3, "marginLeft"

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v3, "marginTop"

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v3, "marginRight"

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v3, "marginBottom"

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v3, "transX"

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimatedValues:[F

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/CollageAnimation;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v3, "transY"

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    goto/16 :goto_0
.end method
