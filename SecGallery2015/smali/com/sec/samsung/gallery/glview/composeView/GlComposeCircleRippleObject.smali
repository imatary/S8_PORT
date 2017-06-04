.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeCircleRippleObject.java"


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->setCircleOption()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->setEmptyFill(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBlackColorForTFT:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xdadadb

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->setEmptyFillColor(I)V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->setEmptyFillColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL11;ZZ)V
    .locals 0

    return-void
.end method

.method inBoundDraw(Ljavax/microedition/khronos/opengles/GL11;ZZ)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mExtChanged:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mExtChanged:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mMatrixVal:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mMatrixVal:[F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mx:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->my:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mz:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mScaleX:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mScaleY:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mMatrixVal:[F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mScaleX:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mScaleY:F

    invoke-static {v0, v1, v2, v3, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mMatrixVal:[F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mWidth:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mHeight:F

    invoke-static {v0, v1, v2, v3, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_2
    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mMatrixDisp:[F

    iget-object v2, v8, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mMatrixVal:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mMatrixValEx:[F

    iget-object v2, v8, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mMatrixValInh:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mAlpha:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mAlphaInh:F

    :cond_3
    if-eqz p3, :cond_7

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mWidth:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_7

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mHeight:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mMatrixDisp:[F

    array-length v0, v0

    if-ge v7, v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mMatrixDisp:[F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mMatrixDisp:[F

    aget v2, v2, v7

    sget v3, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_INT:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_FLOAT:F

    div-float/2addr v2, v3

    aput v2, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mMatrixDisp:[F

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    if-eqz v6, :cond_5

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mEmptyFill:Z

    if-eqz v0, :cond_7

    :cond_5
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mEmptyFillRed:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mEmptyFillGreen:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mEmptyFillBlue:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mAlphaInh:F

    invoke-interface {p1, v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mRoundedVertices:[F

    if-nez v0, :cond_6

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mRoundVertexCnt:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mRoundedVertices:[F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mRoundedVertices:[F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mRoundVertexCnt:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mRoundMode:I

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v0, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedVertex([FIIF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mRoundedVertices:[F

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    :cond_6
    const/4 v0, 0x3

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    const/4 v0, 0x6

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->mRoundVertexCnt:I

    div-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    :cond_7
    return-void
.end method
