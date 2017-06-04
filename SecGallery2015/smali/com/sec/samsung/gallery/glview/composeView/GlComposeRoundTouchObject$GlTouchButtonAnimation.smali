.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlComposeRoundTouchObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlTouchButtonAnimation"
.end annotation


# instance fields
.field private isCanceled:Z

.field private mFromAlpha:F

.field private mLAlpha:F

.field private mToAlpha:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mLAlpha:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->isCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 4

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mFromAlpha:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mToAlpha:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mFromAlpha:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mLAlpha:F

    return-void
.end method

.method cancelAnim()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->stop()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->isCanceled:Z

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mAnimDuration:J

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mLAlpha:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mLAlpha:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mFromAlpha:F

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mToAlpha:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->start()V

    :cond_1
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->isCanceled:Z

    return v0
.end method

.method startFocusAnim()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->isCanceled:Z

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mAnimDuration:J

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mLAlpha:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mFromAlpha:F

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mToAlpha:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->start()V

    return-void
.end method

.method startPressAnim()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->isCanceled:Z

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mAnimDuration:J

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mLAlpha:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mFromAlpha:F

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->mToAlpha:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->start()V

    return-void
.end method
