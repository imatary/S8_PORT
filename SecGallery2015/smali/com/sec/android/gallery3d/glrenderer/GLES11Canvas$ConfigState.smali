.class Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigState"
.end annotation


# instance fields
.field mAlpha:F

.field final mMatrix:[F

.field mNextFree:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

.field final mRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;)V
    .locals 7

    const/4 v6, 0x0

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setAlpha(F)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->access$100(Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {p1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->access$200(Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;)Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    aget v1, v1, v6

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    invoke-static {p1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->access$300(Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;)[F

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method
