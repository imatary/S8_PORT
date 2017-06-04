.class public Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;
.super Lcom/sec/android/gallery3d/glcore/GlInterpolator;
.source "GlInterpolatorPreset.java"


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlInterpolator;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
