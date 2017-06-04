.class public Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlSwipeAnimation.java"


# instance fields
.field private mHndDispMode:I

.field private mIsSwipeAnimationEnable:Z

.field private final mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private msx:F

.field private mtx:F


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->mHndDispMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->mIsSwipeAnimationEnable:Z

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-void
.end method


# virtual methods
.method public activeSwipeAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->mIsSwipeAnimationEnable:Z

    return-void
.end method

.method public applyTransform(F)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->mHndDispMode:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->msx:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->mtx:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->msx:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(IFFF)V

    return-void
.end method

.method public isSwipeAnimationEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->mIsSwipeAnimationEnable:Z

    return v0
.end method

.method public setPosAnimMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->mHndDispMode:I

    return-void
.end method

.method public setSourceXPos(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->msx:F

    return-void
.end method

.method public setTargetXPos(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->mtx:F

    return-void
.end method

.method public startSwipeAnimation()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->stop()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSwipeAnimation;->mIsSwipeAnimationEnable:Z

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->stop()V

    return-void
.end method
