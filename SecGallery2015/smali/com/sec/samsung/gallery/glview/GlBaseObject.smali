.class public Lcom/sec/samsung/gallery/glview/GlBaseObject;
.super Lcom/sec/android/gallery3d/glcore/GlObject;
.source "GlBaseObject.java"


# static fields
.field private static final DEF_DISTANCE:F = 800.0f

.field private static final GL_CANVAS_LARGE:I = -0x5

.field private static final GL_CANVAS_MIDDLE:I = -0x3

.field private static final GL_CANVAS_NORMAL:I = -0x4

.field private static final GL_CANVAS_SMALL:I = -0x2

.field private static final GL_CANVAS_TINY:I = -0x1

.field private static final USE_NEW_SLIDESHOW:Z

.field private static final VERTEX_CNT_DEFAULT_CIRCLE:I = 0x1e0


# instance fields
.field private mCircleRadius:F

.field private mCircleUpAnimation:Z

.field private mFaceX:F

.field private mFaceY:F

.field public mFromObjectStopDrawing:Z

.field private mHndAlpha:I

.field private mHndDim:I

.field private mReqCircleVertices:Z

.field private widthBigger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->USE_NEW_SLIDESHOW:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FFI)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHndAlpha:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHndDim:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->widthBigger:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mCircleRadius:F

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mCircleUpAnimation:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mFromObjectStopDrawing:Z

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-lez p4, :cond_1

    move v0, p4

    :goto_1
    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, v2, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p4}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getSize(I)I

    move-result v0

    goto :goto_1
.end method

.method private drawToObjectStencilBuffer(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 8

    const/16 v4, 0x1e00

    const/16 v3, 0xff

    const/16 v1, 0x1e0

    const/4 v7, 0x0

    const/16 v0, 0x207

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    const/16 v0, 0x1e01

    invoke-interface {p1, v4, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilMask(I)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mReqCircleVertices:Z

    if-eqz v0, :cond_1

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mReqCircleVertices:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mRoundedVertices:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mRoundedVertices:[F

    array-length v0, v0

    if-eq v0, v1, :cond_2

    :cond_0
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mRoundedVertices:[F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mRoundedVertices:[F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mCircleRadius:F

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->widthBigger:Z

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mWidth:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mScaleX:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHeight:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mScaleY:F

    mul-float/2addr v5, v6

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundVertex([FIFZFF)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mRoundedVertices:[F

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    :cond_1
    const/4 v0, 0x3

    const/16 v1, 0x1406

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v7, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    const/4 v0, 0x6

    const/16 v1, 0xa0

    invoke-interface {p1, v0, v7, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mRoundedVertices:[F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mCircleRadius:F

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->widthBigger:Z

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mWidth:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHeight:F

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundVertex([FIFZFF)V

    goto :goto_0
.end method

.method private drawToObjectTexture(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 7

    const/16 v6, 0x1406

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL11;->glStencilMask(I)V

    const/16 v2, 0x202

    const/16 v3, 0xff

    invoke-interface {p1, v2, v4, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getRenderState()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->onAsyncRender(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->onRender(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlState;->getBlendType()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlState;->setBlendType(I)V

    const/16 v2, 0x303

    invoke-interface {p1, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlState;->isRectVertex()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->sDefaultVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v6, v5, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    :cond_2
    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mAlphaInh:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mDimFactor:F

    mul-float v0, v2, v3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mCanvasMixSrc:F

    mul-float v1, v0, v2

    sget-object v2, Lcom/sec/android/gallery3d/glcore/TUtils;->sDefaultTexCoordBuffer:Ljava/nio/FloatBuffer;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mColorR:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mColorG:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mColorB:F

    mul-float/2addr v4, v1

    invoke-interface {p1, v2, v3, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    const/16 v2, 0xde1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getTextureId()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v6, v5, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {p1, v2, v5, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    goto :goto_0
.end method

.method private getSize(I)I
    .locals 2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/16 v0, 0x40

    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x2

    if-ne p1, v1, :cond_1

    const/16 v0, 0x80

    goto :goto_0

    :cond_1
    const/4 v1, -0x3

    if-ne p1, v1, :cond_2

    const/16 v0, 0xc4

    goto :goto_0

    :cond_2
    const/4 v1, -0x4

    if-ne p1, v1, :cond_3

    const/16 v0, 0x100

    goto :goto_0

    :cond_3
    const/4 v1, -0x5

    if-ne p1, v1, :cond_4

    const/16 v0, 0x200

    goto :goto_0

    :cond_4
    const/16 v0, 0x100

    goto :goto_0
.end method

.method private loadMatrix(ZZLjavax/microedition/khronos/opengles/GL11;)V
    .locals 12

    const/16 v7, 0x10

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mExtChanged:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mx:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->my:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mz:F

    invoke-static {v0, v1, v2, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mRoll:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mRoll:F

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mScaleX:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mScaleY:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mScaleX:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mScaleY:F

    invoke-static {v0, v1, v2, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixValInh:[F

    invoke-static {v0, v1, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mWidth:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHeight:F

    invoke-static {v0, v1, v2, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    if-eqz v11, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixDisp:[F

    iget-object v6, v11, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    move v5, v1

    move v7, v1

    move v9, v1

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixValEx:[F

    iget-object v6, v11, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixValInh:[F

    move v5, v1

    move v7, v1

    move v9, v1

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, v11, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaInh:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mAlpha:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mAlphaInh:F

    :cond_3
    :goto_0
    if-eqz p2, :cond_6

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mWidth:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHeight:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    if-eqz v0, :cond_6

    const/4 v10, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixDisp:[F

    array-length v0, v0

    if-ge v10, v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixDisp:[F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixDisp:[F

    aget v2, v2, v10

    sget v3, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_INT:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_FLOAT:F

    div-float/2addr v2, v3

    aput v2, v0, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixDisp:[F

    invoke-static {v0, v1, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixValInh:[F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixValEx:[F

    invoke-static {v0, v1, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mAlpha:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mAlphaInh:F

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixDisp:[F

    invoke-interface {p3, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    :cond_6
    return-void
.end method

.method private renderFromObject(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 7

    const/16 v6, 0x1406

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mFromObjectStopDrawing:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mCircleUpAnimation:Z

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getRenderState()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->onAsyncRender(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->onRender(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlState;->getBlendType()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlState;->setBlendType(I)V

    const/16 v2, 0x303

    invoke-interface {p1, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlState;->isRectVertex()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x3

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->sDefaultVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v6, v5, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    :cond_4
    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mAlphaInh:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mDimFactor:F

    mul-float v0, v2, v3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mCanvasMixSrc:F

    mul-float v1, v0, v2

    sget-object v2, Lcom/sec/android/gallery3d/glcore/TUtils;->sDefaultTexCoordBuffer:Ljava/nio/FloatBuffer;

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mColorR:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mColorG:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mColorB:F

    mul-float/2addr v4, v1

    invoke-interface {p1, v2, v3, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    const/16 v2, 0xde1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getTextureId()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v6, v5, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {p1, v2, v5, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    goto :goto_0
.end method

.method private renderToObject(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/GlCanvas;ZZ)V
    .locals 6

    const/16 v5, 0xb90

    const/4 v4, 0x0

    const/high16 v3, -0x3bb80000    # -800.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mCircleUpAnimation:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    invoke-interface {p1, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColorMask(ZZZZ)V

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDepthMask(Z)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mFaceX:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mFaceY:F

    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPositionsInter()V

    invoke-direct {p0, p3, p4, p1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->loadMatrix(ZZLjavax/microedition/khronos/opengles/GL11;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->drawToObjectStencilBuffer(Ljavax/microedition/khronos/opengles/GL11;)V

    invoke-interface {p1, v2, v2, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glColorMask(ZZZZ)V

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDepthMask(Z)V

    invoke-virtual {p0, v4, v4, v3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPos(FFF)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setPositionsInter()V

    invoke-direct {p0, p3, p4, p1}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->loadMatrix(ZZLjavax/microedition/khronos/opengles/GL11;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->drawToObjectTexture(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL11;ZZ)V
    .locals 9

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->USE_NEW_SLIDESHOW:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlObject;->draw(Ljavax/microedition/khronos/opengles/GL11;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mExtChanged:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mExtChanged:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mx:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->my:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mz:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mRoll:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mRoll:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mScaleY:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mScaleX:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mScaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixValInh:[F

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mWidth:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHeight:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_5
    if-eqz v8, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixDisp:[F

    const/4 v1, 0x0

    iget-object v2, v8, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixValEx:[F

    const/4 v1, 0x0

    iget-object v2, v8, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixValInh:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, v8, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaInh:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mAlpha:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mAlphaInh:F

    :cond_6
    :goto_1
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const/4 v7, 0x0

    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixDisp:[F

    array-length v0, v0

    if-ge v7, v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixDisp:[F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixDisp:[F

    aget v1, v1, v7

    sget v2, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_INT:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_FLOAT:F

    div-float/2addr v1, v2

    aput v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixDisp:[F

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixValInh:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixValEx:[F

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mAlpha:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mAlphaInh:F

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mMatrixDisp:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    if-eqz v6, :cond_9

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mEmptyFill:Z

    if-eqz v0, :cond_c

    :cond_9
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlState;->getBlendType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setBlendType(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    :cond_a
    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mEmptyFillRed:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mEmptyFillGreen:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mEmptyFillBlue:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mAlphaInh:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlState;->isRectVertex()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gallery3d/glcore/TUtils;->sDefaultVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    :cond_b
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, p1, v6}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->renderFromObject(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-direct {p0, p1, v6, p2, p3}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->renderToObject(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/GlCanvas;ZZ)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/GlObject;->onDestroy()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    :cond_0
    return-void
.end method

.method public requestNewCircleVertex(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mReqCircleVertices:Z

    return-void
.end method

.method public setAlphaEx(F)V
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHndAlpha:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getAlphaHnd()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHndAlpha:I

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHndAlpha:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setAlpha(FI)V

    return-void
.end method

.method public setCircleRadius(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mCircleRadius:F

    return-void
.end method

.method public setCircleUpAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mCircleUpAnimation:Z

    return-void
.end method

.method public setDimEx(F)V
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHndDim:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->getDimHnd()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHndDim:I

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mHndDim:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/GlBaseObject;->setDim(FI)V

    return-void
.end method

.method public setObjectTodefualt()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mFromObjectStopDrawing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->widthBigger:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mCircleRadius:F

    return-void
.end method

.method public setStopDrawing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mFromObjectStopDrawing:Z

    return-void
.end method

.method public setWidthBigger(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->widthBigger:Z

    return-void
.end method

.method public setXY(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mFaceX:F

    iput p2, p0, Lcom/sec/samsung/gallery/glview/GlBaseObject;->mFaceY:F

    return-void
.end method
