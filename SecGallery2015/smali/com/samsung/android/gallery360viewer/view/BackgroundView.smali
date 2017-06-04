.class Lcom/samsung/android/gallery360viewer/view/BackgroundView;
.super Ljava/lang/Object;
.source "BackgroundView.java"


# instance fields
.field private final mColor:[F

.field private mColorHandle:I

.field private final mMVPMatrix:[F

.field private mMVPMatrixHandle:I

.field private final mModelMatrix:[F

.field private mPositionHandle:I

.field private final mPositions:Ljava/nio/FloatBuffer;

.field private mProgramHandle:I

.field private final mProjectionMatrix:[F

.field private mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

.field private final mViewMatrix:[F


# direct methods
.method constructor <init>()V
    .locals 3

    const/16 v2, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [F

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mModelMatrix:[F

    new-array v1, v2, [F

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mViewMatrix:[F

    new-array v1, v2, [F

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mProjectionMatrix:[F

    new-array v1, v2, [F

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mMVPMatrix:[F

    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mColor:[F

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

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mPositions:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mPositions:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

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


# virtual methods
.method draw()V
    .locals 11

    const/16 v0, 0x200

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mViewMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x3f600000    # -5.0f

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mProjectionMatrix:[F

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x41300000    # 11.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mModelMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mPositions:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mPositionHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mPositions:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mColorHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mColor:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mMVPMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mViewMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mModelMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mMVPMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mProjectionMatrix:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mMVPMatrix:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mMVPMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mMVPMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setBackgroundColor([I)V
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mColor:[F

    const/4 v1, 0x0

    const/4 v2, 0x1

    aget v2, p1, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mColor:[F

    const/4 v1, 0x1

    const/4 v2, 0x2

    aget v2, p1, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mColor:[F

    const/4 v1, 0x2

    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mColor:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setStatusHandler(Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    return-void
.end method

.method updateGlAttributes()V
    .locals 5

    iget v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mProgramHandle:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x8b31

    const-string/jumbo v3, "uniform mat4 u_MVPMatrix;\nattribute vec4 a_Position;                \nvoid main() {                             \n  gl_Position = u_MVPMatrix * a_Position; \n}                                         \n"

    invoke-static {v2, v3}, Lcom/samsung/android/gallery360viewer/util/ShaderHelper;->loadShader(ILjava/lang/String;)I

    move-result v1

    const v2, 0x8b30

    const-string/jumbo v3, "precision mediump float;\nuniform vec4 v_Color;      \nvoid main() {              \n  gl_FragColor = v_Color;  \n}                          \n"

    invoke-static {v2, v3}, Lcom/samsung/android/gallery360viewer/util/ShaderHelper;->loadShader(ILjava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "a_Position"

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/samsung/android/gallery360viewer/util/ShaderHelper;->createProgram(II[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mProgramHandle:I

    :cond_2
    iget v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mProgramHandle:I

    if-nez v2, :cond_3

    const-string/jumbo v2, "BackgroundView"

    const-string/jumbo v3, "updateGlAttributes: invalid program handle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->onError(I)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mProgramHandle:I

    const-string/jumbo v3, "u_MVPMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mMVPMatrixHandle:I

    iget v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mProgramHandle:I

    const-string/jumbo v3, "v_Color"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mColorHandle:I

    iget v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mProgramHandle:I

    const-string/jumbo v3, "a_Position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->mPositionHandle:I

    goto :goto_0
.end method
