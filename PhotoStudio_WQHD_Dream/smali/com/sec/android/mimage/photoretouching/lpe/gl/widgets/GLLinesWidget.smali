.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;
.super Ljava/lang/Object;
.source "GLLinesWidget.java"


# instance fields
.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexCount:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v7

    iget v1, v7, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const-string v1, "a_Position"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v1, "u_Color"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v6

    const-string v1, "u_Matrix"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v9, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v8, 0x0

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mVertexCount:I

    :goto_0
    add-int/lit8 v1, v10, -0x2

    if-ge v8, v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v1, v8, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v1, 0x1

    add-int/lit8 v2, v8, 0x1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setData(Ljava/util/ArrayList;Landroid/graphics/RectF;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/RectF;",
            "II)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mVertexCount:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mVertexCount:I

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mVertexCount:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, p2, Landroid/graphics/RectF;->left:F

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v2, v5

    int-to-float v5, p3

    div-float/2addr v2, v5

    add-float/2addr v4, v2

    iget v5, p2, Landroid/graphics/RectF;->top:F

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v2, v6

    int-to-float v6, p4

    div-float/2addr v2, v6

    add-float/2addr v2, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v2, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLLinesWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
