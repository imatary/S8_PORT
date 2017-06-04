.class public Lcom/samsung/android/gallery360viewer/texture/DualTexture;
.super Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;
.source "DualTexture.java"


# instance fields
.field private mAnimationBottom:F

.field private mAnimationLeft:F

.field private mAnimationRight:F

.field private mAnimationTop:F

.field private mPlaybackDir:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

.field private final mPositionsBuffer:Ljava/nio/FloatBuffer;

.field private mScrollFactor:F

.field private mScrollX:F

.field private mScrollY:F

.field private mTextureBottomCoordinate:F

.field private final mTextureCoordinatesBottom:[F

.field private final mTextureCoordinatesBufferBottom:Ljava/nio/FloatBuffer;

.field private final mTextureCoordinatesBufferTop:Ljava/nio/FloatBuffer;

.field private final mTextureCoordinatesTop:[F

.field private mTextureLeftCoordinate:F

.field private mTextureRightCoordinate:F

.field private mTextureTopCoordinate:F

.field private mTranslateLandscape:F

.field private mTranslatePortrait:F

.field private volatile mZoomPending:Z

.field private mZoomRatio:F


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;-><init>()V

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTranslatePortrait:F

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTranslateLandscape:F

    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    iput v6, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    const/high16 v1, 0x3f400000    # 0.75f

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    const/16 v1, 0x8

    new-array v1, v1, [F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    aput v2, v1, v4

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    aput v2, v1, v7

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    aput v3, v1, v2

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/16 v1, 0x8

    new-array v1, v1, [F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    add-float/2addr v2, v5

    aput v2, v1, v4

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    aput v2, v1, v7

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    add-float/2addr v3, v5

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    add-float/2addr v3, v5

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    add-float/2addr v3, v5

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    aput v3, v1, v2

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBottom:[F

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->FRONT:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mPlaybackDir:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    iput v5, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomRatio:F

    iput v6, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollFactor:F

    iput-boolean v4, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomPending:Z

    const/16 v1, 0xc

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mPositionsBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mPositionsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBufferTop:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBufferTop:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBottom:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBufferBottom:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBufferBottom:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBottom:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

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
.end method

.method private drawDualFace(FFLjava/nio/FloatBuffer;)V
    .locals 9

    const/16 v2, 0x1406

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->setCommonDrawAttributes()V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mHeight:I

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mWidth:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mModelMatrix:[F

    const v1, -0x3f633333    # -4.9f

    invoke-static {v0, v3, v4, v4, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mModelMatrix:[F

    invoke-static {v0, v3, v4, p1, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mPositionsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mPositionHandle:I

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mPositionsBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinateHandle:I

    const/4 v1, 0x2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mViewMatrix:[F

    iget-object v6, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mModelMatrix:[F

    move v5, v3

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mMVMatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mProjectionMatrix:[F

    iget-object v6, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mMVPMatrix:[F

    move v5, v3

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mMVPMatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mModelMatrix:[F

    const v1, -0x3f7e147b    # -4.06f

    invoke-static {v0, v3, v4, v4, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mModelMatrix:[F

    invoke-static {v0, v3, p2, v4, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    goto :goto_0
.end method

.method private isZoomNeeded(F)F
    .locals 4

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomPending:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mMaxDisplacement:F

    div-float v0, p1, v2

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomRatio:F

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    :cond_3
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomRatio:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private scroll(FF)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->scrollX(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollX:F

    invoke-direct {p0, p2}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->scrollY(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollY:F

    return-void
.end method

.method private scrollX(F)F
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    move v1, p1

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float v0, v3, p1

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-float v2, v3, p1

    const/high16 v3, -0x40c00000    # -0.75f

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    sub-float/2addr v1, v5

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/high16 v3, 0x3fe00000    # 1.75f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    add-float/2addr v1, v5

    goto :goto_0
.end method

.method private scrollY(F)F
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move v1, p1

    cmpl-float v2, p1, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    sub-float/2addr v2, p1

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    sub-float/2addr v2, p1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    :cond_0
    const/4 v0, 0x5

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    aget v2, v2, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    aget v1, v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    cmpg-float v2, p1, v4

    if-gez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-float/2addr v2, p1

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    sub-float/2addr v2, p1

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    aget v2, v2, v0

    sub-float/2addr v2, v5

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    aget v2, v2, v0

    sub-float v1, v2, v5

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_5
    return v1
.end method

.method private updateAnimValues()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mRepeatCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mAnimationLeft:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mAnimationRight:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mAnimationTop:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mAnimationBottom:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomRatio:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mAnimationZDir:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomRatio:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomPending:Z

    :cond_0
    return-void
.end method

.method private updateScroll([FFF)V
    .locals 2

    const/4 v0, 0x0

    aget v1, p1, v0

    sub-float/2addr v1, p2

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p1, v0

    sub-float/2addr v1, p2

    aput v1, p1, v0

    const/4 v0, 0x4

    aget v1, p1, v0

    sub-float/2addr v1, p2

    aput v1, p1, v0

    const/4 v0, 0x6

    aget v1, p1, v0

    sub-float/2addr v1, p2

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    sub-float/2addr v1, p3

    aput v1, p1, v0

    const/4 v0, 0x3

    aget v1, p1, v0

    sub-float/2addr v1, p3

    aput v1, p1, v0

    const/4 v0, 0x5

    aget v1, p1, v0

    sub-float/2addr v1, p3

    aput v1, p1, v0

    const/4 v0, 0x7

    aget v1, p1, v0

    sub-float/2addr v1, p3

    aput v1, p1, v0

    return-void
.end method

.method private updateTextureCoordinates()V
    .locals 9

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomPending:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    iget v4, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    iget v5, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->updateZoom([FFFFF)V

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBottom:[F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    add-float v2, v0, v8

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    add-float v4, v0, v8

    iget v5, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->updateZoom([FFFFF)V

    iput-boolean v6, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomPending:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollX:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->updateScroll([FFF)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBufferTop:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBufferTop:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBottom:[F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollX:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->updateScroll([FFF)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBufferBottom:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBufferBottom:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBottom:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput v7, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollX:F

    iput v7, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollY:F

    return-void
.end method

.method private updateZoom([FFFFF)V
    .locals 1

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 v0, 0x2

    aput p4, p1, v0

    const/4 v0, 0x3

    aput p3, p1, v0

    const/4 v0, 0x4

    aput p2, p1, v0

    const/4 v0, 0x5

    aput p5, p1, v0

    const/4 v0, 0x6

    aput p4, p1, v0

    const/4 v0, 0x7

    aput p5, p1, v0

    return-void
.end method

.method private zoomHorizontally(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    return-void
.end method

.method private zoomVertically(F)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    sub-float v0, v2, v0

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    sub-float v0, v2, v0

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    sub-float v1, v2, v1

    sub-float v1, p1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    goto :goto_0
.end method


# virtual methods
.method public draw()V
    .locals 8

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureDataHandle:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureDataHandle:[I

    aget v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mProjectionMatrix:[F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScreenSizeRatio:F

    neg-float v2, v2

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScreenSizeRatio:F

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v7, 0x41200000    # 10.0f

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->getCommonDrawHandles()V

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->updateTextureCoordinates()V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTranslatePortrait:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTranslateLandscape:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBufferTop:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->drawDualFace(FFLjava/nio/FloatBuffer;)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTranslatePortrait:F

    neg-float v0, v0

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTranslateLandscape:F

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesBufferBottom:Ljava/nio/FloatBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->drawDualFace(FFLjava/nio/FloatBuffer;)V

    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mAnimate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->updateAnimValues()V

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->doAnimation()V

    goto :goto_0
.end method

.method public varargs reset([Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    aget-object v1, p1, v7

    instance-of v1, v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    if-eqz v1, :cond_2

    aget-object v0, p1, v7

    check-cast v0, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mPlaybackDir:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    if-eq v1, v0, :cond_3

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mPlaybackDir:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mPlaybackDir:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->REAR:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    if-ne v1, v2, :cond_6

    iput v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTranslatePortrait:F

    iput v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTranslateLandscape:F

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    aget v1, v1, v7

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomRatio:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_0

    :cond_4
    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    sub-float v1, v6, v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_7

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    :cond_5
    :goto_2
    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    sub-float v1, v6, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mAnimationLeft:F

    const/high16 v1, 0x3f400000    # 0.75f

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mAnimationRight:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    sub-float v1, v3, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mAnimationTop:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mAnimationBottom:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomRatio:F

    sub-float v1, v5, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mAnimationZDir:F

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->setAnimValues()V

    goto :goto_0

    :cond_6
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTranslatePortrait:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTranslateLandscape:F

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    const/high16 v2, 0x3f400000    # 0.75f

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v5

    if-lez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    goto :goto_2
.end method

.method public bridge synthetic setRendererRequester(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->setRendererRequester(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;)V

    return-void
.end method

.method public setScreenSize(II)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->setScreenSize(II)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mHeight:I

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mWidth:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollFactor:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollFactor:F

    goto :goto_0
.end method

.method public setScroll(FF)V
    .locals 4

    const/4 v3, 0x0

    cmpl-float v2, p1, v3

    if-nez v2, :cond_0

    cmpl-float v2, p2, v3

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomRatio:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollFactor:F

    div-float v0, v2, v3

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomRatio:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mScrollFactor:F

    div-float v1, v2, v3

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->scroll(FF)V

    goto :goto_0
.end method

.method public setSensorScroll(FF)V
    .locals 6

    const/4 v3, 0x0

    cmpl-float v2, p1, v3

    if-nez v2, :cond_0

    cmpl-float v2, p2, v3

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    float-to-double v2, p2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v4

    double-to-float v0, v2

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-float v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->scroll(FF)V

    goto :goto_0
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
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {p0, p1}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->isZoomNeeded(F)F

    move-result v0

    cmpl-float v2, v0, v5

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    aget v2, v2, v6

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureCoordinatesTop:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomRatio:F

    sub-float v1, v2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    const/high16 v1, 0x3f000000    # 0.5f

    :cond_1
    :goto_1
    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomRatio:F

    sub-float/2addr v2, v1

    div-float v0, v2, v4

    cmpl-float v2, v0, v5

    if-lez v2, :cond_3

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureRightCoordinate:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureLeftCoordinate:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    mul-float v3, v0, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureTopCoordinate:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    mul-float v3, v0, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mTextureBottomCoordinate:F

    :goto_2
    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomRatio:F

    iput-boolean v6, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mZoomPending:Z

    goto :goto_0

    :cond_2
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    const v1, 0x3dcccccd    # 0.1f

    goto :goto_1

    :cond_3
    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->zoomHorizontally(F)V

    mul-float v2, v0, v4

    invoke-direct {p0, v2}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->zoomVertically(F)V

    goto :goto_2
.end method

.method public updateGlAttributes()V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->mViewMatrix:[F

    const/4 v1, 0x0

    const/high16 v4, -0x3fc00000    # -3.0f

    const/high16 v7, -0x3d380000    # -100.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v10, v2

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const-string/jumbo v0, "uniform mat4 u_MVPMatrix; \nattribute vec4 a_Position;     \nattribute vec2 a_TexCoordinate;\nvarying vec2 v_TexCoordinate;  \nvoid main()                    \n{                              \nv_TexCoordinate = a_TexCoordinate;\n   gl_Position = u_MVPMatrix   \n               * a_Position;   \n}                              \n"

    invoke-virtual {p0, v0}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;->updateGlAttributes(Ljava/lang/String;)V

    return-void
.end method
