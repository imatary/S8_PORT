.class public Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlMovetoAnimation.java"


# instance fields
.field private mDstIndex:I

.field private final mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

.field private mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlPos;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlPos;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->msx:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mtx:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->msx:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->msy:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mty:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->msy:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v2, v3, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->msz:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v3, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setPos(FFF)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mDstIndex:I

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mIndex:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    return-void
.end method

.method public startAnimation(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;II)V
    .locals 5

    const/4 v3, 0x0

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mDstIndex:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setPosIndex()I

    move-result v2

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v1, v3, v3, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setSourcePos(FFF)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    invoke-virtual {p1, p3, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getGroupPosition(ILcom/sec/android/gallery3d/glcore/GlPos;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlPos;->mX:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlPos;->mY:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mDstPos:Lcom/sec/android/gallery3d/glcore/GlPos;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlPos;->mZ:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setTargetPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    int-to-long v2, p4

    invoke-virtual {p0, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->setDuration(J)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->start()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mHndDispmnt:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->addPos(II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->releasePosIndex(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getAbsX()F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getAbsY()F

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlMovetoAnimation;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->getAbsZ()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->setSourcePos(FFF)V

    goto :goto_0
.end method
