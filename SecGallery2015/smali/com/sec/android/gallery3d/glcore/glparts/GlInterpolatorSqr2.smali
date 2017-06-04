.class public Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr2;
.super Lcom/sec/android/gallery3d/glcore/GlInterpolator;
.source "GlInterpolatorSqr2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, p1

    mul-float v2, v0, v0

    mul-float/2addr v2, v0

    sub-float v1, v3, v2

    return v1
.end method
