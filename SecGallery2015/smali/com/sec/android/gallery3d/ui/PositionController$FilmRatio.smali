.class Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;
.super Lcom/sec/android/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilmRatio"
.end annotation


# instance fields
.field public mCurrentRatio:F

.field public mFromRatio:F

.field public mToRatio:F


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;-><init>(Lcom/sec/android/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/PositionController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;-><init>()V

    return-void
.end method

.method private doAnimation(FI)Z
    .locals 2

    iput p2, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mAnimationKind:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mFromRatio:F

    iput p1, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mAnimationStartTime:J

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mAnimationDuration:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->advanceAnimation()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2100()[I

    move-result-object v0

    aget v0, v0, p2

    goto :goto_0
.end method


# virtual methods
.method protected interpolate(F)Z
    .locals 4

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mFromRatio:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mFromRatio:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mCurrentRatio:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->startSnapback(I)Z

    move-result v0

    return v0
.end method

.method public startSnapback(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->mToRatio:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/ui/PositionController$FilmRatio;->doAnimation(FI)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
