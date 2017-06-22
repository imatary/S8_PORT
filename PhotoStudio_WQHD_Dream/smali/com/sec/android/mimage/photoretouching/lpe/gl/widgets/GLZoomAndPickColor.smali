.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;
.super Ljava/lang/Object;
.source "GLZoomAndPickColor.java"


# instance fields
.field private VIEW_SIZE:I

.field private actualWidth:F

.field private cb_pick:F

.field private cg_pick:F

.field private cr_pick:F

.field public imageData:[I

.field private isDraw:Z

.field private left:F

.field private mAddPointWidth:I

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mLineAlpha:F

.field private mLineColor:[F

.field private mNewFloatBuffer:Ljava/nio/FloatBuffer;

.field private mNewVertexData:[F

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBufferId:I

.field private mVertexBufferLine:Ljava/nio/FloatBuffer;

.field private mVertices:[F

.field private mWidthPick:F

.field private pickSize:I

.field private textureId:I

.field private top:F


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V
    .locals 4

    const/4 v3, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mWidthPick:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->actualWidth:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->isDraw:Z

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->textureId:I

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mLineAlpha:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferId:I

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertices:[F

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->pickSize:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->VIEW_SIZE:I

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewVertexData:[F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cr_pick:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cg_pick:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cb_pick:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mWidthPick:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080511

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mAddPointWidth:I

    return-void
.end method

.method private drawPoint()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v16, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const/4 v2, 0x0

    aget v2, v16, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VBO Created, id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    :cond_0
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->left:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->VIEW_SIZE:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->top:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->VIEW_SIZE:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->VIEW_SIZE:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mAddPointWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->VIEW_SIZE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mAddPointWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertices:[F

    add-int/lit8 v10, v9, 0x1

    const/4 v3, 0x0

    aget v3, v14, v3

    mul-float/2addr v3, v15

    const/4 v4, 0x0

    aget v4, v13, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v15

    div-float/2addr v3, v4

    aput v3, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertices:[F

    add-int/lit8 v9, v10, 0x1

    const/4 v3, 0x1

    aget v3, v14, v3

    const/4 v4, 0x1

    aget v4, v13, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    aput v3, v2, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertices:[F

    add-int/lit8 v10, v9, 0x1

    const/4 v3, 0x0

    aget v3, v14, v3

    const/4 v4, 0x0

    aget v4, v13, v4

    mul-float/2addr v4, v15

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v15

    div-float/2addr v3, v4

    aput v3, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertices:[F

    add-int/lit8 v9, v10, 0x1

    const/4 v3, 0x1

    aget v3, v14, v3

    const/4 v4, 0x1

    aget v4, v13, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    aput v3, v2, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertices:[F

    add-int/lit8 v10, v9, 0x1

    const/4 v3, 0x0

    aget v3, v14, v3

    const/4 v4, 0x0

    aget v4, v13, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    aput v3, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertices:[F

    add-int/lit8 v9, v10, 0x1

    const/4 v3, 0x1

    aget v3, v14, v3

    mul-float/2addr v3, v15

    const/4 v4, 0x1

    aget v4, v13, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v15

    div-float/2addr v3, v4

    aput v3, v2, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertices:[F

    add-int/lit8 v10, v9, 0x1

    const/4 v3, 0x0

    aget v3, v14, v3

    const/4 v4, 0x0

    aget v4, v13, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    aput v3, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertices:[F

    add-int/lit8 v9, v10, 0x1

    const/4 v3, 0x1

    aget v3, v14, v3

    const/4 v4, 0x1

    aget v4, v13, v4

    mul-float/2addr v4, v15

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v15

    div-float/2addr v3, v4

    aput v3, v2, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertices:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferLine:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferLine:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferLine:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertices:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferLine:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    const v2, 0x8892

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferId:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v2, 0x8892

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertices:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferLine:Ljava/nio/FloatBuffer;

    const v5, 0x88e4

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080512

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-static {v11}, Landroid/opengl/GLES20;->glLineWidth(F)V

    iget v2, v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v2, "u_Matrix"

    invoke-virtual {v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v12

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v12, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v2, "a_Position"

    invoke-virtual {v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferLine:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferLine:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v2, 0x8892

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const-string v2, "u_Color"

    invoke-virtual {v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v8

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mLineAlpha:F

    invoke-static {v8, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v11}, Landroid/opengl/GLES20;->glLineWidth(F)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->isDraw:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mLineColor:[F

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mLineColor:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mLineColor:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mLineColor:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mLineAlpha:F

    invoke-static {v8, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_3
    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewVertexData:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->imageData:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBufferLine:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cr_pick:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cg_pick:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cb_pick:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mLineColor:[F

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw()V
    .locals 13

    const/4 v12, 0x5

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->drawZoomImage()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v3

    iget v7, v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v7}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v7, "u_Matrix"

    invoke-virtual {v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    const/4 v7, 0x1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v8

    invoke-static {v1, v7, v11, v8, v11}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v7, "a_Position"

    invoke-virtual {v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v2

    const-string v7, "u_Color"

    invoke-virtual {v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v7, "a_TextureCoordinate"

    invoke-virtual {v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v4

    iget v7, v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v8, "uWidth"

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iget v7, v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v8, "delta"

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cr_pick:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cg_pick:F

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cb_pick:F

    const v10, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v7, v8, v9, v10}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mWidthPick:F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->actualWidth:F

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->isDraw:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    invoke-static {v12, v11, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_0
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->drawPoint()V

    return-void
.end method

.method public drawZoomImage()V
    .locals 14

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->textureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->textureId:I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->imageData:[I

    if-eqz v1, :cond_3

    const/16 v1, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->textureId:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->imageData:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->imageData:[I

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const v3, 0x46180400    # 9729.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->pickSize:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->pickSize:I

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v12

    iget v1, v12, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "a_Position"

    invoke-virtual {v12, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "a_TextureCoordinate"

    invoke-virtual {v12, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v13

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v13}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v1, v13

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v1, "u_Sampler"

    invoke-virtual {v12, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const/4 v1, 0x0

    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v1, "u_Matrix"

    invoke-virtual {v12, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v10, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->isDraw:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_2
    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v13}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :goto_0
    return-void

    :cond_3
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public isDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->isDraw:Z

    return-void
.end method

.method public setBoundry(FFFF)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->left:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->top:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v3

    int-to-float v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v3

    int-to-float v1, v3

    sub-float v3, p3, p1

    add-float/2addr v3, v6

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->actualWidth:F

    const/16 v3, 0x10

    new-array v3, v3, [F

    div-float v4, p1, v2

    mul-float/2addr v4, v7

    sub-float/2addr v4, v6

    aput v4, v3, v9

    const/4 v4, 0x1

    mul-float v5, v7, p2

    div-float/2addr v5, v1

    sub-float v5, v6, v5

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v8, v3, v4

    const/4 v4, 0x3

    aput v8, v3, v4

    const/4 v4, 0x4

    div-float v5, p1, v2

    mul-float/2addr v5, v7

    sub-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x5

    mul-float v5, v7, p4

    div-float/2addr v5, v1

    sub-float v5, v6, v5

    aput v5, v3, v4

    const/4 v4, 0x6

    aput v8, v3, v4

    const/4 v4, 0x7

    aput v6, v3, v4

    mul-float v4, v7, p3

    div-float/2addr v4, v2

    sub-float/2addr v4, v6

    aput v4, v3, v10

    const/16 v4, 0x9

    mul-float v5, v7, p2

    div-float/2addr v5, v1

    sub-float v5, v6, v5

    aput v5, v3, v4

    const/16 v4, 0xa

    aput v6, v3, v4

    const/16 v4, 0xb

    aput v8, v3, v4

    const/16 v4, 0xc

    mul-float v5, v7, p3

    div-float/2addr v5, v2

    sub-float/2addr v5, v6

    aput v5, v3, v4

    const/16 v4, 0xd

    mul-float v5, v7, p4

    div-float/2addr v5, v1

    sub-float v5, v6, v5

    aput v5, v3, v4

    const/16 v4, 0xe

    aput v6, v3, v4

    const/16 v4, 0xf

    aput v6, v3, v4

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewVertexData:[F

    new-array v0, v10, [F

    fill-array-data v0, :array_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewVertexData:[F

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewVertexData:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewVertexData:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setColor(FFFF)V
    .locals 1

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cr_pick:F

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cg_pick:F

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->cb_pick:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->mLineColor:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setPickSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->pickSize:I

    return-void
.end method

.method public setViewSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLZoomAndPickColor;->VIEW_SIZE:I

    return-void
.end method
