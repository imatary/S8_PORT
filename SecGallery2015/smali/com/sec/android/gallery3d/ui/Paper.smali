.class Lcom/sec/android/gallery3d/ui/Paper;
.super Ljava/lang/Object;
.source "Paper.java"


# static fields
.field private static final ROTATE_FACTOR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Paper"


# instance fields
.field private final mAnimationLeft:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

.field private final mAnimationRight:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

.field private final mMatrix:[F

.field private mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    new-instance v0, Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mMatrix:[F

    return-void
.end method


# virtual methods
.method public advanceAnimation()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->update()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->update()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public edgeReached(F)V
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->onAbsorb(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->onAbsorb(F)V

    goto :goto_0
.end method

.method public getTransform(Landroid/graphics/Rect;F)[F
    .locals 14

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->getValue()F

    move-result v8

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->getValue()F

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float v11, v0, p2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    add-float v13, v11, v0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v9, v0, 0x2

    int-to-float v0, v9

    sub-float/2addr v0, v13

    mul-float/2addr v0, v8

    mul-float v1, v13, v10

    sub-float/2addr v0, v1

    int-to-float v1, v9

    div-float v12, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    neg-float v2, v12

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, -0x3dcc0000    # -45.0f

    mul-float v7, v0, v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move v2, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/Paper;->mMatrix:[F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mMatrix:[F

    return-object v0
.end method

.method public onRelease()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->onRelease()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->onRelease()V

    return-void
.end method

.method public overScroll(F)V
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mAnimationLeft:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->onPull(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/Paper;->mAnimationRight:Lcom/sec/android/gallery3d/ui/EdgeAnimation;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/EdgeAnimation;->onPull(F)V

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/Paper;->mWidth:I

    return-void
.end method
