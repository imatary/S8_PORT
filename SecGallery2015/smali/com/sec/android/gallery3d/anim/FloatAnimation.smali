.class public Lcom/sec/android/gallery3d/anim/FloatAnimation;
.super Lcom/sec/android/gallery3d/anim/CanvasAnimation;
.source "FloatAnimation.java"


# instance fields
.field private mCurrent:F

.field private final mFrom:F

.field private final mTo:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/anim/CanvasAnimation;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/anim/FloatAnimation;->mFrom:F

    iput p2, p0, Lcom/sec/android/gallery3d/anim/FloatAnimation;->mTo:F

    iput p1, p0, Lcom/sec/android/gallery3d/anim/FloatAnimation;->mCurrent:F

    invoke-virtual {p0, p3}, Lcom/sec/android/gallery3d/anim/FloatAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    return-void
.end method

.method public get()F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/anim/FloatAnimation;->mCurrent:F

    return v0
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCalculate(F)V
    .locals 3

    iget v0, p0, Lcom/sec/android/gallery3d/anim/FloatAnimation;->mFrom:F

    iget v1, p0, Lcom/sec/android/gallery3d/anim/FloatAnimation;->mTo:F

    iget v2, p0, Lcom/sec/android/gallery3d/anim/FloatAnimation;->mFrom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/anim/FloatAnimation;->mCurrent:F

    return-void
.end method
