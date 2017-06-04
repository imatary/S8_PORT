.class abstract Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;
.super Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;
.source "AbstractSphereTexture.java"


# static fields
.field private static final mTexture:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field

.field private static final mTextureBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVertexBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVerticesOrig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field


# instance fields
.field INITIAL_GL_DEPTH:F

.field MAX_FOV:F

.field MIN_FOV:F

.field mCurrentFov:F

.field mFrustumBottom:F

.field mFrustumLeft:F

.field mFrustumRight:F

.field mFrustumTop:F

.field private mThetaX:F

.field private mThetaY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mVertexBuffer:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mVerticesOrig:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mTexture:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mTextureBuffer:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->createStrips()V

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    const v1, -0x39e3c000    # -10000.0f

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;-><init>()V

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mFrustumLeft:F

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mFrustumRight:F

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mFrustumBottom:F

    iput v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mFrustumTop:F

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->MIN_FOV:F

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->MAX_FOV:F

    const v0, -0x3f3ccccd    # -6.1f

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->INITIAL_GL_DEPTH:F

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mCurrentFov:F

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    return-void
.end method

.method private static calculatePoint([F[FIDD)V
    .locals 17

    mul-int/lit8 v3, p2, 0x3

    mul-int/lit8 v2, p2, 0x2

    const-wide v10, 0x3ffe666660000000L    # 1.899999976158142

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v6, v10, v12

    const-wide v10, 0x3ffe666660000000L    # 1.899999976158142

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v0, v10, v12

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v8, v0, v10

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v4, v0, v10

    double-to-float v10, v4

    aput v10, p0, v3

    add-int/lit8 v10, v3, 0x1

    double-to-float v11, v6

    aput v11, p0, v10

    add-int/lit8 v10, v3, 0x2

    double-to-float v11, v8

    aput v11, p0, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double v12, p5, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v10, v10

    const/high16 v11, 0x40800000    # 4.0f

    div-float/2addr v10, v11

    aput v10, p1, v2

    add-int/lit8 v10, v2, 0x1

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v12, v12, p3

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, p1, v10

    return-void
.end method

.method private static createStrips()V
    .locals 20

    const/4 v0, 0x0

    :goto_0
    const/16 v8, 0xa0

    if-ge v0, v8, :cond_1

    const-wide v16, 0x3fa0c152382d7365L    # 0.032724923474893676

    const-wide v18, 0x3fa41b2f769cf0e0L    # 0.039269908169872414

    const/16 v8, 0x240

    new-array v1, v8, [F

    const/16 v8, 0x180

    new-array v2, v8, [F

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    int-to-double v8, v0

    const-wide v10, 0x3fa41b2f769cf0e0L    # 0.039269908169872414

    mul-double v6, v8, v10

    const/4 v3, 0x0

    :goto_1
    const/16 v8, 0xc0

    if-ge v3, v8, :cond_0

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->calculatePoint([F[FIDD)V

    const-wide v8, 0x3fa0c152382d7365L    # 0.032724923474893676

    sub-double/2addr v4, v8

    const-wide v8, 0x3f941b2f769cf0e0L    # 0.019634954084936207

    sub-double/2addr v6, v8

    add-int/lit8 v11, v3, 0x1

    move-object v9, v1

    move-object v10, v2

    move-wide v12, v4

    move-wide v14, v6

    invoke-static/range {v9 .. v15}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->calculatePoint([F[FIDD)V

    const-wide v8, 0x3fa41b2f769cf0e0L    # 0.039269908169872414

    add-double/2addr v6, v8

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_0
    invoke-static {v1, v2, v0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->updatePosBuffers([F[FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private doScroll(FF)V
    .locals 4

    const v3, -0x3f69341c

    const v1, -0x4036f025

    const v2, 0x40c90fdb

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iput v3, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    goto :goto_1
.end method

.method private drawSphereStrip(I)V
    .locals 9

    const/16 v2, 0x1406

    const/4 v8, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mVertexBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mPositionHandle:I

    const/4 v1, 0x3

    sget-object v4, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mVertexBuffer:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/Buffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    sget-object v0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mTextureBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mTextureCoordinateHandle:I

    const/4 v1, 0x2

    sget-object v4, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mTextureBuffer:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/Buffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mViewMatrix:[F

    iget-object v6, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mModelMatrix:[F

    move v5, v3

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mMVMatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mProjectionMatrix:[F

    iget-object v6, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mMVPMatrix:[F

    move v5, v3

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mMVPMatrixHandle:I

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mMVPMatrix:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v1, 0x5

    sget-object v0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mVerticesOrig:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    invoke-static {v1, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method private updateAnimValues()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mRepeatCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mAnimationXDir:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mAnimationYDir:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mCurrentFov:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mAnimationZDir:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mCurrentFov:F

    :cond_0
    return-void
.end method

.method private static updatePosBuffers([F[FI)V
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mVerticesOrig:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mTexture:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x4800

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mVerticesOrig:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v2, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mVertexBuffer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mTexture:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    sget-object v2, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mTextureBuffer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->getCommonDrawHandles()V

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mProgramHandle:I

    const-string/jumbo v4, "u_ThetaX"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mProgramHandle:I

    const-string/jumbo v4, "u_ThetaY"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->setCommonDrawAttributes()V

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mModelMatrix:[F

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->INITIAL_GL_DEPTH:F

    invoke-static {v3, v4, v6, v6, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xa0

    if-ge v0, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->drawSphereStrip(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mAnimate:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->updateAnimValues()V

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->doAnimation()V

    :cond_1
    return-void
.end method

.method reset(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;F)V
    .locals 7

    const/high16 v6, 0x41000000    # 8.0f

    const v2, -0x39e3c000    # -10000.0f

    sget-object v1, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;->REAR:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mCurrentFov:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->MIN_FOV:F

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mCurrentFov:F

    iput p2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    :goto_1
    return-void

    :cond_1
    const v0, 0x40490fdb    # (float)Math.PI

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    sub-float/2addr v1, v0

    float-to-double v2, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    const v2, 0x40c90fdb

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    :cond_3
    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaX:F

    sub-float v1, p2, v1

    div-float/2addr v1, v6

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mAnimationXDir:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mThetaY:F

    sub-float v1, v0, v1

    div-float/2addr v1, v6

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mAnimationYDir:F

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->MIN_FOV:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mCurrentFov:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mAnimationZDir:F

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->setAnimValues()V

    goto :goto_1
.end method

.method public setScreenSize(II)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-super {p0, p1, p2}, Lcom/samsung/android/gallery360viewer/texture/AbstractTexture;->setScreenSize(II)V

    if-ge p1, p2, :cond_0

    int-to-float v1, p1

    int-to-float v2, p2

    div-float v0, v1, v2

    neg-float v1, v0

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mFrustumLeft:F

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mFrustumRight:F

    iput v4, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mFrustumTop:F

    iput v3, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mFrustumBottom:F

    :goto_0
    return-void

    :cond_0
    int-to-float v1, p2

    int-to-float v2, p1

    div-float v0, v1, v2

    iput v3, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mFrustumLeft:F

    iput v4, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mFrustumRight:F

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mFrustumTop:F

    neg-float v1, v0

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mFrustumBottom:F

    goto :goto_0
.end method

.method public setScroll(FF)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mHeight:I

    int-to-float v0, v0

    div-float v0, p2, v0

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mWidth:I

    int-to-float v1, v1

    div-float v1, p1, v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->doScroll(FF)V

    return-void
.end method

.method public setSensorScroll(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->doScroll(FF)V

    return-void
.end method

.method public setZoom(F)V
    .locals 4

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mCurrentFov:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->MAX_FOV:F

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->MIN_FOV:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mMaxDisplacement:F

    div-float/2addr v2, v3

    add-float v0, v1, v2

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->MAX_FOV:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->MAX_FOV:F

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mCurrentFov:F

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->MIN_FOV:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->MIN_FOV:F

    iput v1, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mCurrentFov:F

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/AbstractSphereTexture;->mCurrentFov:F

    goto :goto_0
.end method
