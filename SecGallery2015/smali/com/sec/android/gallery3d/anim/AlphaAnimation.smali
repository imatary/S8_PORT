.class public Lcom/sec/android/gallery3d/anim/AlphaAnimation;
.super Lcom/sec/android/gallery3d/anim/CanvasAnimation;
.source "AlphaAnimation.java"


# instance fields
.field private mCurrentAlpha:F

.field private final mEndAlpha:F

.field private final mStartAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/anim/CanvasAnimation;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->mStartAlpha:F

    iput p2, p0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->mEndAlpha:F

    iput p1, p0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->mCurrentAlpha:F

    return-void
.end method


# virtual methods
.method public apply(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->mCurrentAlpha:F

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    return-void
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->mStartAlpha:F

    iget v1, p0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->mEndAlpha:F

    iget v2, p0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->mStartAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/anim/AlphaAnimation;->mCurrentAlpha:F

    return-void
.end method
