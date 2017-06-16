.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;
.super Ljava/lang/Object;
.source "GLOval.java"


# instance fields
.field private actualWidth:F

.field private ca:F

.field private cb:F

.field private cg:F

.field private cr:F

.field private forceColorChange:Z

.field private isSelected:Z

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mNewFloatBuffer:Ljava/nio/FloatBuffer;

.field private mNewVertexData:[F

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->isSelected:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewVertexData:[F

    const/high16 v0, 0x40e00000    # 7.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mWidth:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->actualWidth:F

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->forceColorChange:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->ca:F

    const v0, 0x3f5eb852    # 0.87f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->cr:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->cg:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->cb:F

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->forceColorChange:Z

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

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
    .locals 15

    const/4 v14, 0x5

    const/4 v13, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1, v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v9

    iget v1, v9, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "u_Matrix"

    invoke-virtual {v9, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v8

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v2

    invoke-static {v8, v1, v13, v2, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v1, "a_Position"

    invoke-virtual {v9, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "u_Color"

    invoke-virtual {v9, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v7

    const-string v1, "a_TextureCoordinate"

    invoke-virtual {v9, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v10

    iget v1, v9, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v2, "uWidth"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v12

    iget v1, v9, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v2, "delta"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v11

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x10

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    move v1, v10

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->isSelected:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->forceColorChange:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const v2, 0x3f2e147b    # 0.68f

    const v3, 0x3f6e147b    # 0.93f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v7, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    :goto_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mWidth:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->actualWidth:F

    div-float/2addr v1, v2

    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const v1, 0x3c1374bc    # 0.009f

    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v1, 0x4

    invoke-static {v14, v13, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->cr:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->cg:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->cb:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->ca:F

    invoke-static {v7, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto :goto_0
.end method

.method public setBoundry(FFFF)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v2

    int-to-float v0, v2

    sub-float v2, p3, p1

    add-float/2addr v2, v5

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->actualWidth:F

    const/16 v2, 0x10

    new-array v2, v2, [F

    div-float v3, p1, v1

    mul-float/2addr v3, v6

    sub-float/2addr v3, v5

    aput v3, v2, v8

    const/4 v3, 0x1

    mul-float v4, v6, p2

    div-float/2addr v4, v0

    sub-float v4, v5, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v7, v2, v3

    const/4 v3, 0x3

    aput v7, v2, v3

    const/4 v3, 0x4

    div-float v4, p1, v1

    mul-float/2addr v4, v6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x5

    mul-float v4, v6, p4

    div-float/2addr v4, v0

    sub-float v4, v5, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v7, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    mul-float v4, v6, p3

    div-float/2addr v4, v1

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0x9

    mul-float v4, v6, p2

    div-float/2addr v4, v0

    sub-float v4, v5, v4

    aput v4, v2, v3

    const/16 v3, 0xa

    aput v5, v2, v3

    const/16 v3, 0xb

    aput v7, v2, v3

    const/16 v3, 0xc

    mul-float v4, v6, p3

    div-float/2addr v4, v1

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0xd

    mul-float v4, v6, p4

    div-float/2addr v4, v0

    sub-float v4, v5, v4

    aput v4, v2, v3

    const/16 v3, 0xe

    aput v5, v2, v3

    const/16 v3, 0xf

    aput v5, v2, v3

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewVertexData:[F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewVertexData:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewVertexData:[F

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

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewVertexData:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->mNewFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->ca:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->cr:F

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->cg:F

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->cb:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->forceColorChange:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLOval;->isSelected:Z

    return-void
.end method
