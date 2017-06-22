.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;
.source "GLHistogram.java"


# instance fields
.field private b:[I

.field private bMax:I

.field private bMin:I

.field private g:[I

.field private gMax:I

.field private gMin:I

.field private l:[I

.field private lMax:I

.field private lMin:I

.field private mHeight:I

.field private mHistogramBG:I

.field private mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field private mLoaded:Z

.field private mMargin:I

.field private mMatrix:[F

.field private mPositions:[Landroid/graphics/Rect;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mWidth:I

.field private mWindowBG:I

.field private r:[I

.field private rMax:I

.field private rMin:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/16 v1, 0x100

    invoke-direct {p0, p1, p4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMatrix:[F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWindowBG:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mHistogramBG:I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mLoaded:Z

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->r:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->g:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->b:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->l:[I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080436

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private loadTextures()V
    .locals 0

    return-void
.end method


# virtual methods
.method public drawWindowBody()V
    .locals 12

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mLoaded:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->loadTextures()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v8

    iget v1, v8, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "a_Position"

    invoke-virtual {v8, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "a_TextureCoordinate"

    invoke-virtual {v8, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const-string v1, "u_Matrix"

    invoke-virtual {v8, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v9

    const-string v1, "u_Sampler"

    invoke-virtual {v8, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v10

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v1, 0x0

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    move v1, v11

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWindowMatrix:[F

    const/4 v4, 0x0

    invoke-static {v9, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/16 v1, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWindowBG:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v1, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mHistogramBG:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/16 v3, 0x18

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v8

    iget v1, v8, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "a_Position"

    invoke-virtual {v8, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "u_Matrix"

    invoke-virtual {v8, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v9

    const-string v1, "u_Color"

    invoke-virtual {v8, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v7

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWindowMatrix:[F

    const/4 v4, 0x0

    invoke-static {v9, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v7, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v1, 0x4

    const/16 v2, 0x1e

    const/16 v3, 0x600

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v7, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v1, 0x4

    const/16 v2, 0x61e

    const/16 v3, 0x600

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v7, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v1, 0x4

    const/16 v2, 0xc1e

    const/16 v3, 0x600

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v7, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v1, 0x4

    const/16 v2, 0x121e

    const/16 v3, 0x600

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_1
    return-void
.end method

.method public init(IIII)V
    .locals 22

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWidth:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mHeight:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMatrix:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v8

    array-length v3, v8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v10, v8, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->r:[I

    shr-int/lit8 v6, v10, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->g:[I

    shr-int/lit8 v6, v10, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->b:[I

    and-int/lit16 v6, v10, 0xff

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->l:[I

    const-wide v6, 0x3fcb367a0f9096bcL    # 0.2126

    shr-int/lit8 v17, v10, 0x10

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    const-wide v18, 0x3fe6e2eb1c432ca5L    # 0.7152

    shr-int/lit8 v17, v10, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v6, v6, v18

    const-wide v18, 0x3fb27bb2fec56d5dL    # 0.0722

    and-int/lit16 v0, v10, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v6, v6, v18

    double-to-int v6, v6

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMin:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMin:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMin:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMin:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMax:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMax:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMax:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMax:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->r:[I

    array-length v5, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_3

    aget v10, v3, v2

    add-int v16, v16, v10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMax:I

    if-le v10, v6, :cond_2

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMax:I

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMin:I

    if-ge v10, v6, :cond_1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMin:I

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMin:I

    move/from16 v0, v16

    div-int/lit16 v2, v0, 0x100

    mul-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMax:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMin:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMax:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMax:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMax:I

    :cond_4
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->g:[I

    array-length v5, v3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_7

    aget v10, v3, v2

    add-int v16, v16, v10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMax:I

    if-le v10, v6, :cond_6

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMax:I

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMin:I

    if-ge v10, v6, :cond_5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMin:I

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMin:I

    move/from16 v0, v16

    div-int/lit16 v2, v0, 0x100

    mul-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMax:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMin:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMax:I

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMax:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMax:I

    :cond_8
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->b:[I

    array-length v5, v3

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_b

    aget v10, v3, v2

    add-int v16, v16, v10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMax:I

    if-le v10, v6, :cond_a

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMax:I

    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMin:I

    if-ge v10, v6, :cond_9

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMin:I

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMin:I

    move/from16 v0, v16

    div-int/lit16 v2, v0, 0x100

    mul-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMax:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMin:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMax:I

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMax:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMax:I

    :cond_c
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->l:[I

    array-length v5, v3

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v5, :cond_f

    aget v10, v3, v2

    add-int v16, v16, v10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMax:I

    if-le v10, v6, :cond_e

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMax:I

    :cond_d
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMin:I

    if-ge v10, v6, :cond_d

    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMin:I

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMin:I

    move/from16 v0, v16

    div-int/lit16 v2, v0, 0x100

    mul-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMax:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMin:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMax:I

    if-ne v2, v3, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMax:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMax:I

    :cond_10
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mPositions:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mPositions:[Landroid/graphics/Rect;

    const/4 v3, 0x0

    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x4

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x3

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mPositions:[Landroid/graphics/Rect;

    const/4 v3, 0x1

    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWidth:I

    div-int/lit8 v6, v6, 0x3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWidth:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x4

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x3

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mPositions:[Landroid/graphics/Rect;

    const/4 v3, 0x2

    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWidth:I

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWidth:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x2

    div-int/lit8 v17, v17, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x4

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x3

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mPositions:[Landroid/graphics/Rect;

    const/4 v3, 0x3

    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v17, v0

    add-int v7, v7, v17

    div-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mMargin:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v5, v2, v3

    move/from16 v0, p1

    int-to-float v2, v0

    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v13

    array-length v2, v13

    mul-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mPositions:[Landroid/graphics/Rect;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mPositions:[Landroid/graphics/Rect;

    array-length v5, v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v3, v5

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mPositions:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_9
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    aget-object v14, v18, v17

    iget v2, v14, Landroid/graphics/Rect;->left:I

    add-int v2, v2, p1

    int-to-float v2, v2

    iget v3, v14, Landroid/graphics/Rect;->top:I

    add-int v3, v3, p2

    int-to-float v3, v3

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v4, v5

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    :goto_a
    const/16 v2, 0x100

    if-ge v10, v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->r:[I

    aget v2, v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMax:I

    if-le v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->r:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMax:I

    aput v3, v2, v10

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->g:[I

    aget v2, v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMax:I

    if-le v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->g:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMax:I

    aput v3, v2, v10

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->b:[I

    aget v2, v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMax:I

    if-le v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->b:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMax:I

    aput v3, v2, v10

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->l:[I

    aget v2, v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMax:I

    if-le v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->l:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMax:I

    aput v3, v2, v10

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_16
    const/4 v10, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mPositions:[Landroid/graphics/Rect;

    array-length v2, v2

    if-ge v10, v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mPositions:[Landroid/graphics/Rect;

    aget-object v15, v2, v10

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float v4, v2, v3

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v9, v2

    const/4 v12, 0x0

    :goto_c
    const/16 v2, 0x100

    if-ge v12, v2, :cond_1b

    if-nez v10, :cond_18

    iget v2, v15, Landroid/graphics/Rect;->left:I

    add-int v2, v2, p1

    int-to-float v2, v2

    int-to-float v3, v12

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    add-int v3, v3, p2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->r:[I

    aget v5, v5, v12

    int-to-float v5, v5

    mul-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMax:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->r:[I

    aget v5, v5, v12

    int-to-float v5, v5

    mul-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMax:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->rMin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v13

    :cond_17
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_18
    const/4 v2, 0x1

    if-ne v10, v2, :cond_19

    iget v2, v15, Landroid/graphics/Rect;->left:I

    add-int v2, v2, p1

    int-to-float v2, v2

    int-to-float v3, v12

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    add-int v3, v3, p2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->g:[I

    aget v5, v5, v12

    int-to-float v5, v5

    mul-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMax:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->g:[I

    aget v5, v5, v12

    int-to-float v5, v5

    mul-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMax:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->gMin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v13

    goto :goto_d

    :cond_19
    const/4 v2, 0x2

    if-ne v10, v2, :cond_1a

    iget v2, v15, Landroid/graphics/Rect;->left:I

    add-int v2, v2, p1

    int-to-float v2, v2

    int-to-float v3, v12

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    add-int v3, v3, p2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->b:[I

    aget v5, v5, v12

    int-to-float v5, v5

    mul-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMax:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->b:[I

    aget v5, v5, v12

    int-to-float v5, v5

    mul-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMax:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->bMin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v13

    goto/16 :goto_d

    :cond_1a
    const/4 v2, 0x3

    if-ne v10, v2, :cond_17

    iget v2, v15, Landroid/graphics/Rect;->left:I

    add-int v2, v2, p1

    int-to-float v2, v2

    int-to-float v3, v12

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v15, Landroid/graphics/Rect;->bottom:I

    add-int v3, v3, p2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->l:[I

    aget v5, v5, v12

    int-to-float v5, v5

    mul-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMax:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->l:[I

    aget v5, v5, v12

    int-to-float v5, v5

    mul-float/2addr v5, v9

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMax:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->lMin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v13

    goto/16 :goto_d

    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->initWindow(IIII)V

    const v2, 0x7f0703b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->setTitle(I)V

    return-void
.end method

.method protected isMenuBGImage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onExitClick()V
    .locals 0

    return-void
.end method

.method public onOrientation(I)V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLHistogram;->mLoaded:Z

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;->onSurfaceChanged()V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onWindowMoved(IIII)V
    .locals 0

    return-void
.end method
