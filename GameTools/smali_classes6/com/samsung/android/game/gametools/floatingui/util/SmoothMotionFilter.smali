.class public Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;
.super Ljava/lang/Object;
.source "SmoothMotionFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;
    }
.end annotation


# instance fields
.field mAnimResult:Landroid/graphics/Point;

.field mAnimator:Landroid/animation/ValueAnimator;

.field mListener:Landroid/animation/Animator$AnimatorListener;

.field mPointTracker:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;

.field final mQueueSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mQueueSize:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->instantiateFilters()V

    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimResult:Landroid/graphics/Point;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    goto :goto_0
.end method

.method instantiateFilters()V
    .locals 2

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimResult:Landroid/graphics/Point;

    return-void
.end method

.method instantiateFilters(II)V
    .locals 4

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;->offer(Landroid/graphics/PointF;)Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimResult:Landroid/graphics/Point;

    return-void
.end method

.method public putPoint(II)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;->offer(Landroid/graphics/PointF;)Z

    return-void
.end method

.method public reset(FF)V
    .locals 2

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->instantiateFilters(II)V

    return-void
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public startValueAnimation(Landroid/graphics/PointF;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$PointQueue;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    const/16 v2, 0x12c

    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->startValueAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method startValueAnimation(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v8, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, "x"

    new-array v3, v8, [I

    iget v4, p1, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    aput v4, v3, v6

    iget v4, p2, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    const-string/jumbo v2, "y"

    new-array v3, v8, [I

    iget v4, p1, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    aput v4, v3, v6

    iget v4, p2, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/util/SmoothMotionFilter;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method
