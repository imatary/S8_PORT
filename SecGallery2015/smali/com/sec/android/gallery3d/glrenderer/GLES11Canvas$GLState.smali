.class Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLState"
.end annotation


# instance fields
.field private final mCommonState:Lcom/sec/android/gallery3d/glcore/GlState;

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mLineSmooth:Z

.field private mTexEnvMode:I

.field private mTextureAlpha:F

.field private mTextureTarget:I


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V
    .locals 8

    const/16 v2, 0xde1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x1e01

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTexEnvMode:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureAlpha:F

    iput v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mLineSmooth:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getBgColor()[F

    move-result-object v0

    iget-object v1, p2, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mCommonState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/16 v1, 0xbd0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    const/16 v1, 0xc11

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const v3, 0x45f00800    # 7681.0f

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    aget v1, v0, v5

    aget v2, v0, v6

    aget v3, v0, v7

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL11;->glClearStencil(I)V

    const/16 v1, 0x303

    invoke-interface {p1, v6, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    const/16 v1, 0xcf5

    invoke-interface {p1, v1, v7}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    return-void
.end method


# virtual methods
.method public setBlendEnabled(Z)V
    .locals 2

    const/16 v1, 0xbe2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mCommonState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlState;->isUseBlend()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mCommonState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlState;->setUseBlend(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public setColorMode(IF)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IFZ)V

    return-void
.end method

.method public setColorMode(IFZ)V
    .locals 6

    const/4 v2, 0x0

    const/high16 v5, 0x437f0000    # 255.0f

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureAlpha:F

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureTarget(I)V

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v5

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v5

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-interface {v1, v2, v3, v4, p2}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    ushr-int/lit8 v1, p1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p2

    const v2, 0x477fff00    # 65535.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    div-float v0, v1, v5

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glColor4x(IIII)V

    goto :goto_1
.end method

.method public setLineSmooth(Z)V
    .locals 2

    const/16 v1, 0xb20

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mLineSmooth:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mLineSmooth:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public setLineWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mCommonState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlState;->getBorderWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mCommonState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glcore/GlState;->setBorderWidth(F)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    :cond_0
    return-void
.end method

.method public setTexEnvMode(I)V
    .locals 4

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTexEnvMode:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTexEnvMode:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    int-to-float v3, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    goto :goto_0
.end method

.method public setTextureAlpha(F)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureAlpha:F

    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    const/16 v0, 0x1e01

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    const/16 v0, 0x2100

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    goto :goto_0
.end method

.method public setTextureTarget(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    :cond_2
    iput p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->mTextureTarget:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0
.end method
