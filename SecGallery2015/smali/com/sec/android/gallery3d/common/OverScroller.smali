.class public Lcom/sec/android/gallery3d/common/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

.field private final mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean p3, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mFlywheel:Z

    new-instance v0, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    new-instance v0, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$000(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$1000(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$1000(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/common/OverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    iget v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$500(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v2, v4, v6

    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$600(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    int-to-long v6, v0

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    long-to-float v6, v2

    int-to-float v7, v0

    div-float v1, v6, v7

    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Scroller;->viscousFluid(F)F

    move-result v1

    :goto_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v6, v1}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$700(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;F)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v6, v1}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$700(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;F)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/common/OverScroller;->abortAnimation()V

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$100(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$800(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$900(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$1000(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)V

    :cond_4
    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$100(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$800(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$900(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$1000(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fling(IIIIIIIIII)V
    .locals 8

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/common/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v6

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v7

    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mMode:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$1200(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;IIIII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$1200(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;IIIII)V

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v1, p1}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$102(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$102(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;Z)Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$300(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$200(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$400(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$100(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$100(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startScroll(IIIII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mMode:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerX:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0, p1, p3, p5}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$1100(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;III)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/common/OverScroller;->mScrollerY:Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;

    invoke-static {v0, p2, p4, p5}, Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;->access$1100(Lcom/sec/android/gallery3d/common/OverScroller$SplineOverScroller;III)V

    return-void
.end method
