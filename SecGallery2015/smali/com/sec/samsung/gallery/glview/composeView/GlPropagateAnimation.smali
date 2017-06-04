.class public Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlPropagateAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;
    }
.end annotation


# static fields
.field private static final DURATION_DISSOLVE:I = 0xc8

.field private static final DURATION_MAX:I = 0x320

.field private static final DURATION_MIN:I = 0x258


# instance fields
.field private final mActiveObjs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;",
            ">;"
        }
    .end annotation
.end field

.field private final mDissolveAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private final mMaxRadius:F

.field private mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mTgtRadius:F


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mActiveObjs:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mDissolveAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidW:F

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mValidH:F

    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mMaxRadius:F

    new-instance v2, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    new-instance v3, Lcom/sec/samsung/gallery/view/utils/QuintOut80;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/view/utils/QuintOut80;-><init>()V

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->clear()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)F
    .locals 1

    invoke-static {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->getObjRadius(Lcom/sec/android/gallery3d/glcore/GlObject;)F

    move-result v0

    return v0
.end method

.method private clear()V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;

    iget-object v2, v3, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->resetTransformAnimation()V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private getDist(Lcom/sec/android/gallery3d/glcore/GlObject;Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;)F
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsX()F

    move-result v3

    iget-object v4, p2, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getAbsY()F

    move-result v3

    iget-object v4, p2, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    return v0
.end method

.method private static getObjRadius(Lcom/sec/android/gallery3d/glcore/GlObject;)F
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getWidth(Z)F

    move-result v0

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getWidth(Z)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v1

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 12

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mTgtRadius:F

    mul-float v8, v0, p1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;

    iget v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mDistFrom0:F

    iget v1, v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mRadius:F

    sub-float/2addr v0, v1

    sub-float v0, v8, v0

    iget v1, v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float v11, v0, v1

    const/4 v0, 0x0

    cmpg-float v0, v11, v0

    if-gez v0, :cond_3

    const/4 v11, 0x0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_1

    iget-boolean v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mStartedAnim:Z

    if-nez v0, :cond_1

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mStartedAnim:Z

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->resetTransformAnimation()V

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceAlpha(F)V

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetAlpha(F)V

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    add-int/lit8 v0, v7, -0x1

    if-ne v9, v0, :cond_4

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mDissolveAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v7, -0x1

    if-ne v9, v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v11, v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->stop()V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v11, v0

    if-lez v0, :cond_0

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected onCancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->onStop()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->clear()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->applyTransform(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    return-void
.end method

.method public startAnimation(Landroid/util/SparseArray;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<+",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;",
            ">;",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz p2, :cond_0

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->stop()V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v6, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mActiveObjs:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;

    invoke-virtual {p1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {v3, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v1, :cond_0

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v6, :cond_4

    invoke-virtual {p1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceAlpha(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetAlpha(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAnim(ZZZZZ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mTgtRadius:F

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mActiveObjs:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;

    invoke-direct {p0, p2, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->getDist(Lcom/sec/android/gallery3d/glcore/GlObject;Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;)F

    move-result v1

    iput v1, v7, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mDistFrom0:F

    iget v1, v7, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->mDistFrom0:F

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation$GlComposeAnimObj;->getRadius()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {p2}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->getObjRadius(Lcom/sec/android/gallery3d/glcore/GlObject;)F

    move-result v2

    add-float v11, v1, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mTgtRadius:F

    cmpl-float v1, v11, v1

    if-lez v1, :cond_5

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mTgtRadius:F

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    const/high16 v1, 0x44160000    # 600.0f

    const/high16 v2, 0x43480000    # 200.0f

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mTgtRadius:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mMaxRadius:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-long v8, v1

    const-wide/16 v2, 0x320

    cmp-long v1, v8, v2

    if-lez v1, :cond_7

    const-wide/16 v8, 0x320

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    invoke-virtual {p0, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->setDuration(J)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPropagateAnimation;->start()V

    goto/16 :goto_0
.end method
