.class public Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animCommonAlphaStart(Landroid/view/View;JJ)V
    .locals 5

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$4;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/samsung/android/app/omcagent/ui/setupwizard/SineInOut90;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/ui/setupwizard/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static animCommonFromBottom(Landroid/view/View;JJ)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v1, v3

    const-string v3, "trans"

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v1, v4, v6

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$7;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$8;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static animCommonToBottom(Landroid/view/View;JJ)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v0, v3

    const-string v3, "trans"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    aput v0, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$5;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$6;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/samsung/android/app/omcagent/ui/setupwizard/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/ui/setupwizard/SineInOut90;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static animTitleFromRight(Landroid/view/View;JJ)V
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/high16 v2, 0x430c0000    # 140.0f

    const-string v4, "trans"

    new-array v5, v7, [F

    aput v2, v5, v8

    const/4 v6, 0x0

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v8

    aput-object v3, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static animTitleToLeft(Landroid/view/View;JJ)V
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v4, "trans"

    new-array v5, v7, [F

    aput v2, v5, v8

    const/high16 v6, -0x3b860000    # -1000.0f

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v8

    aput-object v3, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$9;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$10;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/omcagent/ui/setupwizard/AnimationHelper$10;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/samsung/android/app/omcagent/ui/setupwizard/SineInOut90;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/ui/setupwizard/SineInOut90;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
