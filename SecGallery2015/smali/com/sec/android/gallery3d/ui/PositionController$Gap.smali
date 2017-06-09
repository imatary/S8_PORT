.class Lcom/sec/android/gallery3d/ui/PositionController$Gap;
.super Lcom/sec/android/gallery3d/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Gap"
.end annotation


# instance fields
.field public mCurrentGap:I

.field public mDefaultSize:I

.field public mFromGap:I

.field public mToGap:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController$Animatable;-><init>(Lcom/sec/android/gallery3d/ui/PositionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/PositionController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController$Gap;-><init>()V

    return-void
.end method


# virtual methods
.method public doAnimation(II)Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    if-ne v1, p1, :cond_0

    const/16 v1, 0x9

    if-eq p2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput p2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mAnimationKind:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mFromGap:I

    iput p1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    :goto_1
    iput v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mAnimationDuration:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->advanceAnimation()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    # getter for: Lcom/sec/android/gallery3d/ui/PositionController;->ANIM_TIME:[I
    invoke-static {}, Lcom/sec/android/gallery3d/ui/PositionController;->access$2100()[I

    move-result-object v0

    aget v0, v0, p2

    goto :goto_1
.end method

.method protected interpolate(F)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mFromGap:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    iget v5, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mFromGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mAnimationKind:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/CaptureAnimation;->calculateScale(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    move v1, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mCurrentGap:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mToGap:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->startSnapback(I)Z

    move-result v0

    return v0
.end method

.method public startSnapback(I)Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/gallery3d/ui/PositionController$Gap;->doAnimation(II)Z

    move-result v0

    goto :goto_0
.end method