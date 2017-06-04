.class public Lcom/sec/android/gallery3d/ui/EdgeView;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "EdgeView.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field private static final BOTTOM_M:I = 0x20

.field public static final INVALID_DIRECTION:I = -0x1

.field public static final LEFT:I = 0x1

.field private static final LEFT_M:I = 0x10

.field public static final RIGHT:I = 0x3

.field private static final RIGHT_M:I = 0x30

.field private static final TAG:Ljava/lang/String; = "EdgeView"

.field public static final TOP:I

.field private static final TOP_M:I


# instance fields
.field private final mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

.field private final mMatrix:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    new-array v1, v3, [Lcom/sec/android/gallery3d/ui/EdgeEffect;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    const/16 v1, 0x40

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mMatrix:[F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    new-instance v2, Lcom/sec/android/gallery3d/ui/EdgeEffect;

    invoke-direct {v2, p1}, Lcom/sec/android/gallery3d/ui/EdgeEffect;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onAbsorb(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->onAbsorb(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/EdgeView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v8, p4, p2

    sub-int v6, p5, p3

    const/4 v7, 0x0

    :goto_1
    const/4 v0, 0x4

    if-ge v7, v0, :cond_2

    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    aget-object v0, v0, v7

    invoke-virtual {v0, v8, v6}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->setSize(II)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    aget-object v0, v0, v7

    invoke-virtual {v0, v6, v8}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->setSize(II)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x30

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x10

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x10

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x20

    const/4 v2, 0x0

    int-to-float v3, v6

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x20

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x30

    int-to-float v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mMatrix:[F

    const/16 v1, 0x30

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/16 :goto_0
.end method

.method public onPull(IIF)V
    .locals 7

    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/EdgeView;->getWidth()I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    aget-object v3, v3, p2

    int-to-float v4, p1

    int-to-float v5, v0

    div-float/2addr v4, v5

    add-int v5, v1, v2

    sub-int v5, v0, v5

    int-to-float v5, v5

    sub-float v5, p3, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->onPull(FF)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/EdgeView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/EdgeView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    aget-object v3, v3, p2

    int-to-float v4, p1

    int-to-float v5, v0

    div-float/2addr v4, v5

    int-to-float v5, v0

    div-float v5, p3, v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->onPull(FF)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    aget-object v3, v3, p2

    int-to-float v4, p1

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->onPull(F)V

    goto :goto_1
.end method

.method public onRelease()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->onRelease()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/EdgeView;->invalidate()V

    :cond_2
    return-void
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/EdgeView;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mMatrix:[F

    mul-int/lit8 v3, v0, 0x10

    invoke-interface {p1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/EdgeView;->mEffect:[Lcom/sec/android/gallery3d/ui/EdgeEffect;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/EdgeView;->invalidate()V

    goto :goto_0
.end method
