.class public Lcom/sec/android/gallery3d/anim/ScaleAnimation;
.super Lcom/sec/android/gallery3d/anim/CanvasAnimation;
.source "ScaleAnimation.java"


# instance fields
.field private mCurrentScale:F

.field private final mEndScale:F

.field private final mStartScale:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/anim/CanvasAnimation;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/anim/ScaleAnimation;->mStartScale:F

    iput p2, p0, Lcom/sec/android/gallery3d/anim/ScaleAnimation;->mEndScale:F

    iput p1, p0, Lcom/sec/android/gallery3d/anim/ScaleAnimation;->mCurrentScale:F

    return-void
.end method


# virtual methods
.method public apply(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/anim/ScaleAnimation;->mCurrentScale:F

    iget v1, p0, Lcom/sec/android/gallery3d/anim/ScaleAnimation;->mCurrentScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    return-void
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/anim/ScaleAnimation;->mStartScale:F

    iget v1, p0, Lcom/sec/android/gallery3d/anim/ScaleAnimation;->mEndScale:F

    iget v2, p0, Lcom/sec/android/gallery3d/anim/ScaleAnimation;->mStartScale:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/anim/ScaleAnimation;->mCurrentScale:F

    return-void
.end method
