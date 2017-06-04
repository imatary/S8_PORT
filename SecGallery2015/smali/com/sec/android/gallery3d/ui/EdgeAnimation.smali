.class Lcom/sec/android/gallery3d/ui/EdgeAnimation;
.super Ljava/lang/Object;
.source "Paper.java"


# static fields
.field private static final ABSORB_TIME:I = 0xc8

.field private static final RELEASE_TIME:I = 0x1f4

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_RELEASE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeAnimation"

.field private static final VELOCITY_FACTOR:F = 0.1f


# instance fields
.field private mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartTime:J

.field private mState:I

.field private mValue:F

.field private mValueFinish:F

.field private mValueStart:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mState:I

    return-void
.end method

.method private now()J
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private startAnimation(FFJI)V
    .locals 3

    iput p1, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValueStart:F

    iput p2, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValueFinish:F

    iput-wide p3, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mDuration:J

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mStartTime:J

    iput p5, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mState:I

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValue:F

    return v0
.end method

.method public onAbsorb(F)V
    .locals 7

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v3

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const-wide/16 v4, 0xc8

    const/4 v6, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->startAnimation(FFJI)V

    return-void
.end method

.method public onPull(F)V
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValue:F

    add-float/2addr v0, p1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mState:I

    goto :goto_0
.end method

.method public onRelease()V
    .locals 7

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const/4 v3, 0x0

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->startAnimation(FFJI)V

    goto :goto_0
.end method

.method public update()Z
    .locals 12

    const/4 v1, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v8, 0x1

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mState:I

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mState:I

    if-ne v2, v8, :cond_1

    move v1, v8

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->now()J

    move-result-wide v4

    iget-wide v10, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mStartTime:J

    sub-long/2addr v4, v10

    long-to-float v2, v4

    iget-wide v4, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mDuration:J

    long-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v2, v3, v6}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v7

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mState:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    move v0, v7

    :goto_1
    iget v2, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValueStart:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValueFinish:F

    iget v5, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValueStart:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    iput v2, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValue:F

    cmpl-float v2, v7, v6

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mState:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_2
    move v1, v8

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_1

    :pswitch_0
    iget v2, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mValue:F

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->startAnimation(FFJI)V

    goto :goto_2

    :pswitch_1
    iput v1, p0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->mState:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
