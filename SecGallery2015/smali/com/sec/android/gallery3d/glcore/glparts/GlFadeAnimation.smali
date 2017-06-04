.class public Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlFadeAnimation.java"


# static fields
.field private static final ANIM_DURATION:I = 0x12c


# instance fields
.field private final mFadeOut:Z

.field private final mTargetAlpha:F


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;->mTargetAlpha:F

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;->mAnimDuration:J

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;->mFadeOut:Z

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;->mFadeOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    sub-float v1, v2, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    sub-float v1, v2, p1

    mul-float/2addr v1, v2

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;->mFadeOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlFadeAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    goto :goto_0
.end method
