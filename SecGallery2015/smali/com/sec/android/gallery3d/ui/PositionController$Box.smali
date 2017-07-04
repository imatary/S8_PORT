.class Lcom/sec/android/gallery3d/ui/PositionController$Box;
.super Lcom/sec/android/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Box"
.end annotation


# instance fields
.field public mAbsoluteX:I

.field public mCurrentScale:F

.field public mCurrentY:I

.field public mDxPre:I

.field public mDyPre:I

.field public mFromScale:F

.field public mFromY:I

.field public mImageH:I

.field public mImageW:I

.field public mScaleMax:F

.field public mScaleMin:F

.field mScalePre:F

.field public mToScale:F

.field public mToY:I

.field public mUseViewSize:Z

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/PositionController;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;-><init>(Lcom/sec/android/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/PositionController;Lcom/sec/android/gallery3d/ui/PositionController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController$Box;-><init>(Lcom/sec/android/gallery3d/ui/PositionController;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/ui/PositionController$Box;IFI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z

    move-result v0

    return v0
.end method

.method private doAnimation(IFI)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->clampScale(F)F

    move-result p2

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    const/16 v1, 0x9

    if-eq p3, v1, :cond_0

    iput p3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    :goto_0
    return v0

    :cond_0
    iput p3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mFromY:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    iput p1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToY:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToScale:F

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    :goto_1
    iput v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationDuration:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->advanceAnimation()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2100()[I

    move-result-object v0

    aget v0, v0, p3

    goto :goto_1
.end method

.method private interpolateFlingPage(F)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2500(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/FlingScroller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/android/gallery3d/ui/FlingScroller;->computeScrollOffset(F)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2600(Lcom/sec/android/gallery3d/ui/PositionController;F)V

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2500(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/FlingScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/FlingScroller;->getCurrY()I

    move-result v4

    iput v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2900(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v4

    if-le v0, v4, :cond_3

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2900(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2500(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/FlingScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/FlingScroller;->getCurrVelocityY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    add-float/2addr v4, v6

    float-to-int v1, v4

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PositionController;->access$800(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v1, v5}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2900(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v4

    if-ne v0, v4, :cond_1

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2900(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v5

    if-eq v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PositionController;->access$3000(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v4

    if-ne v0, v4, :cond_4

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$3000(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v5

    if-ne v4, v5, :cond_4

    :cond_2
    :goto_1
    return v2

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PositionController;->access$3000(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v4

    if-ge v0, v4, :cond_0

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$3000(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2500(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/FlingScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/FlingScroller;->getCurrVelocityY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v6

    float-to-int v1, v4

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PositionController;->access$800(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_0

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-gez v4, :cond_2

    move v2, v3

    goto :goto_1
.end method

.method private interpolateLinear(F)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToY:I

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToScale:F

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->setCurrentScaleWithScaleChanged(F)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mFromY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToY:I

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mFromY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToScale:F

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mFromScale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CaptureAnimation;->calculateScale(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    move v1, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToY:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mToScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public clampScale(F)F
    .locals 3

    const v0, 0x3f7fbe77    # 0.999f

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    mul-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method protected interpolate(F)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->interpolateFlingPage(F)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->interpolateLinear(F)Z

    move-result v0

    goto :goto_0
.end method

.method public setCurrentScaleWithScaleChanged(F)V
    .locals 2

    iput p1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->access$800(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->onScaleChanged(F)V

    return-void
.end method

.method public startSnapback()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->startSnapback(I)Z

    move-result v0

    return v0
.end method

.method public startSnapback(I)Z
    .locals 10

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/PositionController;->access$800(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->isHoldingDown()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mAnimationKind:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/PositionController;->access$800(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/ui/PositionController$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/ui/PositionController$Listener;->isHoldingDelete()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/PositionController;->access$900(Lcom/sec/android/gallery3d/ui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1000(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq p0, v6, :cond_0

    :cond_4
    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1000(Lcom/sec/android/gallery3d/ui/PositionController;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne p0, v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1100(Lcom/sec/android/gallery3d/ui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    const v7, 0x3f7fbe77    # 0.999f

    mul-float v3, v6, v7

    :goto_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1100(Lcom/sec/android/gallery3d/ui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v2, v6, v7

    :goto_2
    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v6, v3, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v6, v0, v5}, Lcom/sec/android/gallery3d/ui/PositionController;->access$1200(Lcom/sec/android/gallery3d/ui/PositionController;FI)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2700(Lcom/sec/android/gallery3d/ui/PositionController;F)Z

    move-result v6

    if-nez v6, :cond_5

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    sub-float v1, v6, v0

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2800(Lcom/sec/android/gallery3d/ui/PositionController;)F

    move-result v6

    mul-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v4, v6

    :cond_5
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2900(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->this$0:Lcom/sec/android/gallery3d/ui/PositionController;

    invoke-static {v7}, Lcom/sec/android/gallery3d/ui/PositionController;->access$3000(Lcom/sec/android/gallery3d/ui/PositionController;)I

    move-result v7

    invoke-static {v4, v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v4

    :goto_3
    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentY:I

    if-ne v6, v4, :cond_6

    iget v6, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mCurrentScale:F

    cmpl-float v6, v6, v0

    if-eqz v6, :cond_0

    :cond_6
    invoke-direct {p0, v4, v0, p1}, Lcom/sec/android/gallery3d/ui/PositionController$Box;->doAnimation(IFI)Z

    move-result v5

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMax:F

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Box;->mScaleMin:F

    goto :goto_3
.end method
