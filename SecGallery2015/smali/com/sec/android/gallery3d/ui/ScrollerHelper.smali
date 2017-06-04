.class Lcom/sec/android/gallery3d/ui/ScrollerHelper;
.super Ljava/lang/Object;
.source "ScrollerHelper.java"


# instance fields
.field private final mOverflingDistance:I

.field private mOverflingEnabled:Z

.field private final mScroller:Lcom/sec/android/gallery3d/common/OverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/sec/android/gallery3d/common/OverScroller;

    invoke-direct {v1, p1}, Lcom/sec/android/gallery3d/common/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mOverflingDistance:I

    return-void
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/common/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(III)V
    .locals 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mOverflingEnabled:Z

    if-eqz v3, :cond_0

    iget v9, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mOverflingDistance:I

    :goto_0
    move v3, p1

    move v4, v2

    move v5, p2

    move v6, p3

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/gallery3d/common/OverScroller;->fling(IIIIIIIIII)V

    return-void

    :cond_0
    move v9, v2

    goto :goto_0
.end method

.method public forceFinished()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/common/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method public getCurrVelocity()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/common/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/common/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/common/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setOverfling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mOverflingEnabled:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/common/OverScroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/common/OverScroller;->abortAnimation()V

    return-void
.end method

.method public startScroll(III)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->startScroll(IIII)I

    move-result v0

    return v0
.end method

.method public startScroll(IIII)I
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/common/OverScroller;->getCurrX()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/common/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v1

    :goto_0
    add-int v0, v6, p1

    invoke-static {v0, p2, p3}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v7

    if-eq v7, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    sub-int v3, v7, v1

    move v4, v2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/common/OverScroller;->startScroll(IIIII)V

    :cond_0
    add-int v0, v6, p1

    sub-int/2addr v0, v7

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->mScroller:Lcom/sec/android/gallery3d/common/OverScroller;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/common/OverScroller;->getFinalX()I

    move-result v6

    goto :goto_0
.end method
