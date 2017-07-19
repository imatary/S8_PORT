.class Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/glrenderer/GLES11Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigState"
.end annotation


# instance fields
.field mAlpha:F

.field mMatrix:[F

.field mNextFree:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

.field mRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/android/gallery3d/glrenderer/GLES11Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->-get0(Lcom/android/gallery3d/glrenderer/GLES11Canvas;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->-get1(Lcom/android/gallery3d/glrenderer/GLES11Canvas;)Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    aget v0, v0, v5

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    invoke-static {p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->-get2(Lcom/android/gallery3d/glrenderer/GLES11Canvas;)[F

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method
