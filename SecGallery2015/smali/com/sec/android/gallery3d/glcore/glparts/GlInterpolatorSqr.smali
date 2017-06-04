.class public Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;
.super Lcom/sec/android/gallery3d/glcore/GlInterpolator;
.source "GlInterpolatorSqr.java"


# static fields
.field private static final LEVEL:F = -1.0f


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlInterpolator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;->mType:I

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;->mType:I

    if-nez v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v1, p1

    sub-float v2, p1, v3

    mul-float/2addr v1, v2

    add-float v0, v1, p1

    :goto_0
    return v0

    :cond_0
    sub-float v1, v3, p1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    sub-float v0, v3, v1

    goto :goto_0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;->mType:I

    return-void
.end method
