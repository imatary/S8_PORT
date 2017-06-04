.class public Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlAlphaAnimation.java"


# instance fields
.field private mFromA:F

.field private final mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mToA:F


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->mFromA:F

    iput p3, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->mToA:F

    return-void
.end method


# virtual methods
.method protected applyTransform(F)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->mFromA:F

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->mToA:F

    iget v3, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->mFromA:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setParam(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->mFromA:F

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->mToA:F

    return-void
.end method

.method public setParams(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->mFromA:F

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->mToA:F

    return-void
.end method
