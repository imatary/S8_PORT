.class Lcom/sec/android/gallery3d/ui/PositionController$Platform;
.super Lcom/sec/android/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Platform"
.end annotation


# instance fields
.field public mCurrentX:I

.field public mCurrentY:I

.field public mDefaultX:I

.field public mDefaultY:I

.field public mFlingOffset:I

.field public mFromX:I

.field public mFromY:I

.field public mToX:I

.field public mToY:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/PositionController;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;-><init>(Lcom/sec/android/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/PositionController;Lcom/sec/android/gallery3d/ui/PositionController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;-><init>(Lcom/sec/android/gallery3d/ui/PositionController;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/PositionController$Platform;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z

    move-result v0

    return v0
.end method

.method private doAnimation(III)Z
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    if-ne v0, p2, :cond_0

    :goto_0
    return v1

    :cond_0
    iput p3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFromY:I

    iput p1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToY:I

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationDuration:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->advanceAnimation()Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->ANIM_TIME:[I
    invoke-static {}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2100()[I

    move-result-object v0

    aget v0, v0, p3

    goto :goto_1
.end method

.method private interpolateFlingFilm()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mFilmScroller:Lcom/sec/android/gallery3d/common/Scroller;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2200(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/common/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/common/Scroller;->computeScrollOffset()Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mFilmScroller:Lcom/sec/android/gallery3d/common/Scroller;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2200(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/common/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/common/Scroller;->getCurrX()I

    move-result v1

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFlingOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    const/4 v0, -0x1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mHasNext:Z
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2300(Lcom/sec/android/gallery3d/ui/PositionController;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mFilmScroller:Lcom/sec/android/gallery3d/common/Scroller;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2200(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/common/Scroller;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/common/Scroller;->forceFinished(Z)V

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mFilmScroller:Lcom/sec/android/gallery3d/common/Scroller;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2200(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/common/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/common/Scroller;->isFinished()Z

    move-result v1

    return v1

    :cond_2
    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mHasPrev:Z
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2400(Lcom/sec/android/gallery3d/ui/PositionController;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interpolateFlingPage(F)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/sec/android/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2500(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sec/android/gallery3d/ui/FlingScroller;->computeScrollOffset(F)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;
    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1000(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    iget v6, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    # invokes: Lcom/sec/android/gallery3d/ui/PositionController;->calculateStableBound(F)V
    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2600(Lcom/sec/android/gallery3d/ui/PositionController;F)V

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/sec/android/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2500(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/FlingScroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I
    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1500(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v5

    if-le v1, v5, :cond_1

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I
    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1500(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v6

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/sec/android/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2500(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/FlingScroller;->getCurrVelocityX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$800(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    :cond_0
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2

    :goto_1
    return v3

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I
    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1600(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v5

    if-ge v1, v5, :cond_0

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I
    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1600(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v6

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mPageScroller:Lcom/sec/android/gallery3d/ui/FlingScroller;
    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2500(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/FlingScroller;->getCurrVelocityX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$800(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private interpolateLinear(F)Z
    .locals 6

    const/16 v5, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToY:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    if-ne v2, v5, :cond_2

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CaptureAnimation;->calculateSlide(F)F

    move-result p1

    :cond_2
    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToX:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFromX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFromY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToY:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mFromY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    if-ne v2, v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToX:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mToY:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected interpolate(F)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->interpolateFlingPage(F)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->interpolateFlingFilm()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->interpolateLinear(F)Z

    move-result v0

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->startSnapback(I)Z

    move-result v0

    return v0
.end method

.method public startSnapback(I)Z
    .locals 12

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mAnimationKind:I

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mListener:Lcom/sec/android/gallery3d/ui/PositionController$Listener;
    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/PositionController;->access$800(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->isHoldingDown()Z

    move-result v8

    if-nez v8, :cond_0

    :cond_2
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mInScale:Z
    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/PositionController;->access$900(Lcom/sec/android/gallery3d/ui/PositionController;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mBoxes:Lcom/sec/android/gallery3d/util/RangeArray;
    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1000(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1100(Lcom/sec/android/gallery3d/ui/PositionController;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const v9, 0x3f7fbe77    # 0.999f

    mul-float v4, v8, v9

    :goto_1
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1100(Lcom/sec/android/gallery3d/ui/PositionController;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v3, v8, v9

    :goto_2
    iget v8, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v8, v4, v3}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # invokes: Lcom/sec/android/gallery3d/ui/PositionController;->calculateStableBound(FI)V
    invoke-static {v8, v1, v7}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1200(Lcom/sec/android/gallery3d/ui/PositionController;FI)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # invokes: Lcom/sec/android/gallery3d/ui/PositionController;->viewWiderThanScaledImage(F)Z
    invoke-static {v8, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1300(Lcom/sec/android/gallery3d/ui/PositionController;F)Z

    move-result v8

    if-nez v8, :cond_3

    iget v8, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    sub-float v2, v8, v1

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mFocusX:F
    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1400(Lcom/sec/android/gallery3d/ui/PositionController;)F

    move-result v8

    mul-float/2addr v8, v2

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v5, v8

    :cond_3
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mBoundLeft:I
    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1500(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mBoundRight:I
    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1600(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v9

    invoke-static {v5, v8, v9}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v5

    iget v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentX:I

    if-ne v8, v5, :cond_4

    iget v8, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mCurrentY:I

    if-eq v8, v6, :cond_0

    :cond_4
    invoke-direct {p0, v5, v6, p1}, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->doAnimation(III)Z

    move-result v7

    goto/16 :goto_0

    :cond_5
    iget v4, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    goto :goto_1

    :cond_6
    iget v3, v0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    goto :goto_2
.end method

.method public updateDefaultXY()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mConstrained:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1700(Lcom/sec/android/gallery3d/ui/PositionController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1800(Lcom/sec/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1800(Lcom/sec/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mViewW:I
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1900(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1800(Lcom/sec/android/gallery3d/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->mViewH:I
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2000(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultX:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Platform;->mDefaultY:I

    goto :goto_0
.end method
