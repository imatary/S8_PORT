.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposeRoundTouchObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlRippleAnimation"
.end annotation


# instance fields
.field private isCanceled:Z

.field private mCurSize:F

.field private mFromAlpha:F

.field private mFromSize:F

.field private mMaxSize:F

.field private mToAlpha:F

.field private mToSize:F

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mCurSize:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->isCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->startPressAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->cancelAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->startFocusAnim()V

    return-void
.end method

.method private cancelAnim()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->stop()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->isCanceled:Z

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mAnimDuration:J

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mCurSize:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mFromSize:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mMaxSize:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mToSize:F

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mFromAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mToAlpha:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->start()V

    return-void
.end method

.method private startFocusAnim()V
    .locals 3

    const v2, 0x3da3d70a    # 0.08f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->isCanceled:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mAnimDuration:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mFromSize:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mMaxSize:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mToSize:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mFromAlpha:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mToAlpha:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->start()V

    return-void
.end method

.method private startPressAnim()V
    .locals 3

    const v2, 0x3da3d70a    # 0.08f

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mWidth:F

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mMaxSize:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->isCanceled:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mAnimDuration:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mFromSize:F

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mMaxSize:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mToSize:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mFromAlpha:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mToAlpha:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->start()V

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 9

    const/4 v8, 0x0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mFromSize:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mToSize:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mFromSize:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float v1, v5, v6

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mCurSize:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v5, v1, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setSize(FF)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mMaxSize:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mCurSize:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v4, v5, Lcom/sec/android/gallery3d/glcore/GlObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v5, v5, Lcom/sec/android/gallery3d/glcore/GlObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCenterX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convX(F)F

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCenterY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convY(F)F

    move-result v3

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    neg-float v6, v3

    invoke-virtual {v5, v2, v6, v8}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    :goto_0
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mFromAlpha:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mToAlpha:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mFromAlpha:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float v0, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v5, v8, v8, v8}, Lcom/sec/android/gallery3d/glcore/GlObject;->setPos(FFF)V

    goto :goto_0
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->isCanceled:Z

    return v0
.end method
