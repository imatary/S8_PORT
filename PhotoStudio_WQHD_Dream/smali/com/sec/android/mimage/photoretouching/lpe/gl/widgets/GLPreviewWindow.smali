.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;
.source "GLPreviewWindow.java"


# instance fields
.field private imageUpdated:Z

.field private mBodyBuffer:Ljava/nio/FloatBuffer;

.field private mMaxPreviewSize:I

.field private mPreviewData:[I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mTexture:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLWindow;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mTexture:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->imageUpdated:Z

    mul-int v0, p2, p3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mPreviewData:[I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mPreviewWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mPreviewHeight:I

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->setVisible(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mTexture:I

    return v0
.end method

.method private loadTexture()V
    .locals 1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mTexture:I

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mTexture:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized drawWindowBody()V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mTexture:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->loadTexture()V

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->imageUpdated:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mTexture:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mPreviewData:[I

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

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mPreviewData:[I

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v8

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mPreviewWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mPreviewHeight:I

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v1, 0xde1

    invoke-static {v1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->imageUpdated:Z

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v11

    iget v1, v11, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "a_Position"

    invoke-virtual {v11, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "a_TextureCoordinate"

    invoke-virtual {v11, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v13

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mBodyBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mBodyBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    move v1, v13

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v1, "u_Sampler"

    invoke-virtual {v11, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v12

    const/4 v1, 0x0

    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v1, "u_Matrix"

    invoke-virtual {v11, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mWindowMatrix:[F

    const/4 v4, 0x0

    invoke-static {v10, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v13}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v1, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mTexture:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public init(IIII)V
    .locals 15

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->removeAllViews()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080453

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mMaxPreviewSize:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mMaxPreviewSize:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mMaxPreviewSize:I

    :cond_0
    move/from16 v0, p1

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mMaxPreviewSize:I

    int-to-float v2, v2

    div-float v14, v1, v2

    move/from16 v0, p2

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mMaxPreviewSize:I

    int-to-float v2, v2

    div-float v8, v1, v2

    invoke-static {v14, v8}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move/from16 v0, p1

    int-to-float v1, v0

    div-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    move/from16 v0, p2

    int-to-float v1, v0

    div-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    div-int/lit8 v1, v13, 0x2

    sub-int v9, p3, v1

    div-int/lit8 v1, v7, 0x2

    sub-int v11, p4, v1

    invoke-virtual {p0, v9, v11, v13, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->initWindow(IIII)V

    int-to-float v1, v9

    int-to-float v2, v11

    int-to-float v3, v13

    int-to-float v4, v7

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v12

    array-length v1, v12

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mBodyBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mBodyBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public init(IILandroid/graphics/Rect;)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080453

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mMaxPreviewSize:I

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->initWindow(IIII)V

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v6

    array-length v0, v6

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mBodyBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mBodyBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

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
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mTexture:I

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

.method public refresh()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->imageUpdated:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->textUpdated:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public setImageData([I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mPreviewData:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mPreviewData:[I

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->imageUpdated:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewWindow;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
