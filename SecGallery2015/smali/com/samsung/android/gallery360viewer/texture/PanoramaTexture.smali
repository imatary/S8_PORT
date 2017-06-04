.class public Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;
.super Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;
.source "PanoramaTexture.java"


# instance fields
.field private final mFrustumRect:Landroid/graphics/RectF;

.field private final mPositions:Ljava/nio/FloatBuffer;

.field private volatile mRotateX:F

.field private volatile mRotateY:F

.field private final mTextureCoordinates:Ljava/nio/FloatBuffer;

.field private mZoomLevel:F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;-><init>()V

    const/16 v2, 0xc

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mPositions:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v2, 0x8

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mTextureCoordinates:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mTextureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput v4, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5, v4, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mFrustumRect:Landroid/graphics/RectF;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private adjustRotatePosition(Landroid/graphics/RectF;)V
    .locals 4

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v3, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v3, p1, Landroid/graphics/RectF;->top:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v2, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0
.end method

.method private adjustZoomPosition(Landroid/graphics/RectF;F)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mScreenSizeRatio:F

    cmpg-float v1, v1, p2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mScreenSizeRatio:F

    div-float v0, p2, v1

    neg-float v1, v0

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->right:F

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mScreenSizeRatio:F

    div-float v0, v1, p2

    neg-float v1, v0

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private drawPanorama()V
    .locals 9

    const/16 v2, 0x1406

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mPositionHandle:I

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mPositions:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mTextureCoordinates:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mTextureCoordinateHandle:I

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mTextureCoordinates:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mViewMatrix:[F

    iget-object v6, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mModelMatrix:[F

    move v5, v3

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mMVMatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mProjectionMatrix:[F

    iget-object v6, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mMVPMatrix:[F

    move v5, v3

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mMVPMatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private getFrustumRect()Landroid/graphics/RectF;
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mFrustumRect:Landroid/graphics/RectF;

    iput v4, v3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mFrustumRect:Landroid/graphics/RectF;

    iput v6, v3, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mFrustumRect:Landroid/graphics/RectF;

    iput v6, v3, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mFrustumRect:Landroid/graphics/RectF;

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-virtual {v3}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->getBitmapHeight()I

    move-result v3

    int-to-float v0, v3

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-virtual {v3}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->getBitmapWidth()I

    move-result v3

    int-to-float v2, v3

    cmpl-float v3, v0, v5

    if-lez v3, :cond_0

    cmpl-float v3, v2, v5

    if-lez v3, :cond_0

    div-float v1, v2, v0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mFrustumRect:Landroid/graphics/RectF;

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->adjustZoomPosition(Landroid/graphics/RectF;F)V

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mFrustumRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mFrustumRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    iput v5, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mFrustumRect:Landroid/graphics/RectF;

    invoke-direct {p0, v3}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->adjustRotatePosition(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mFrustumRect:Landroid/graphics/RectF;

    return-object v3
.end method

.method private updateAnimValues()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRepeatCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mAnimationXDir:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mAnimationYDir:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mAnimationZDir:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    :cond_0
    return-void
.end method


# virtual methods
.method public draw()V
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mTextureDataHandle:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mTextureDataHandle:[I

    aget v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->getFrustumRect()Landroid/graphics/RectF;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mProjectionMatrix:[F

    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->right:F

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    iget v5, v8, Landroid/graphics/RectF;->top:F

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->getCommonDrawHandles()V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mProgramHandle:I

    const-string/jumbo v1, "u_ThetaX"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->setCommonDrawAttributes()V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->drawPanorama()V

    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mAnimate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->updateAnimValues()V

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->doAnimation()V

    goto :goto_0
.end method

.method public varargs reset([Ljava/lang/Object;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    sub-float v0, v1, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mAnimationXDir:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    sub-float v0, v1, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mAnimationYDir:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    sub-float v0, v3, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mAnimationZDir:F

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->setAnimValues()V

    :cond_1
    return-void
.end method

.method public bridge synthetic setRendererRequester(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->setRendererRequester(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;)V

    return-void
.end method

.method public bridge synthetic setScreenSize(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->setScreenSize(II)V

    return-void
.end method

.method public setScroll(FF)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    div-float v3, p1, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_3

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    sub-float/2addr v2, v6

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->getFrustumRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mHeight:I

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mWidth:I

    if-le v2, v3, :cond_4

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mHeight:I

    int-to-float v2, v2

    div-float v0, p2, v2

    :goto_1
    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_1

    cmpl-float v2, v0, v8

    if-gtz v2, :cond_2

    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_5

    cmpg-float v2, v0, v8

    if-gez v2, :cond_5

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    add-float/2addr v2, v6

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    goto :goto_0

    :cond_4
    const/high16 v2, 0x40400000    # 3.0f

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mMaxDisplacement:F

    iget v4, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    goto :goto_2
.end method

.method public setSensorScroll(FF)V
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    float-to-double v2, v2

    float-to-double v4, p2

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_3

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    sub-float/2addr v2, v8

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->getFrustumRect()Landroid/graphics/RectF;

    move-result-object v1

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-float v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v8

    if-ltz v2, :cond_1

    cmpl-float v2, v0, v10

    if-gtz v2, :cond_2

    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v9

    if-gtz v2, :cond_4

    cmpg-float v2, v0, v10

    if-gez v2, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    cmpg-float v2, v2, v9

    if-gez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    add-float/2addr v2, v8

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateX:F

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mRotateY:F

    goto :goto_1
.end method

.method public bridge synthetic setStatusHandler(Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->setStatusHandler(Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V

    return-void
.end method

.method public bridge synthetic setTextureManager(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->setTextureManager(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)V

    return-void
.end method

.method public setZoom(F)V
    .locals 3

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mMaxDisplacement:F

    div-float v0, p1, v2

    const v2, 0x3b23d70a    # 0.0025f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const v2, -0x44dc28f6    # -0.0025f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    mul-float v2, v0, v1

    add-float/2addr v1, v2

    const v2, 0x3feccccd    # 1.85f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    const v1, 0x3feccccd    # 1.85f

    :cond_1
    :goto_1
    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mZoomLevel:F

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public updateGlAttributes()V
    .locals 11

    const/4 v2, 0x0

    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->mViewMatrix:[F

    const/4 v1, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v7, -0x3d380000    # -100.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const-string/jumbo v0, "uniform mat4 u_MVPMatrix; \nattribute vec4 a_Position;     \nattribute vec2 a_TexCoordinate;\nvarying vec2 v_TexCoordinate;  \nuniform float u_ThetaX;  \nvoid main()                    \n{                              \nvec2 tempTex = a_TexCoordinate;\ntempTex.x = tempTex.x - u_ThetaX;\nv_TexCoordinate = tempTex;\n   gl_Position = u_MVPMatrix   \n               * a_Position;   \n}                              \n"

    invoke-virtual {p0, v0}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;->updateGlAttributes(Ljava/lang/String;)V

    return-void
.end method
