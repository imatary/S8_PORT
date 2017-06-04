.class public Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;
.super Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;
.source "EndArcAnimView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private isAnimating:Z

.field private mDelay:J

.field private mDuration:J

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method private constructor <init>(Landroid/content/Context;FFIII)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;-><init>(Landroid/content/Context;FFIII)V

    iput-wide v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mDuration:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->isAnimating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mListener:Landroid/animation/Animator$AnimatorListener;

    iput-wide v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mDelay:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/16 v0, 0xff

    const/16 v1, 0x4e

    invoke-static {v0, v1, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;-><init>(Landroid/content/Context;FFIII)V

    iput-wide v8, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mDuration:J

    iput-boolean v7, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->isAnimating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mListener:Landroid/animation/Animator$AnimatorListener;

    iput-wide v8, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mDelay:J

    iput-wide p2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mDuration:J

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/16 v0, 0xff

    const/16 v1, 0x4e

    invoke-static {v0, v1, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/ArcView;-><init>(Landroid/content/Context;FFIII)V

    iput-wide v8, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mDuration:J

    iput-boolean v7, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->isAnimating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mListener:Landroid/animation/Animator$AnimatorListener;

    iput-wide v8, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mDelay:J

    iput-wide p2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mDuration:J

    iput-wide p4, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mDelay:J

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->isAnimating:Z

    return v0
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->isAnimating:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->isAnimating:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->isAnimating:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public startAnim()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    const-string/jumbo v3, "degree"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x168
    .end array-data
.end method
