.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;
.super Ljava/lang/Object;
.source "GLSmartWidget.java"


# static fields
.field private static final LINE_LENGTH:I = 0x8

.field public static final MASK_ALPHA:F = 1.0f


# instance fields
.field private mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mEngineData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mImageUpdated:Z

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMode:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPinchMatrix:[F

.field private mPrevX:F

.field private mPrevY:F

.field private mPreviewHeight:I

.field private mPreviewLineLength:F

.field public mPreviewScale:F

.field private mPreviewWidth:I

.field private mRect:Landroid/graphics/RectF;

.field private mTextureId:I

.field private mTouchLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBufferEngine:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mVertexBufferTouch:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;[F)V
    .locals 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewScale:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferEngine:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mImageUpdated:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTextureId:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTouchLines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPinchMatrix:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private getPathPoints(Landroid/graphics/Path;)[F
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, p1, v10}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v6, v1

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewLineLength:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    add-int/lit8 v3, v6, 0x1

    mul-int/lit8 v6, v3, 0x2

    new-array v4, v6, [F

    const/4 v6, 0x2

    new-array v5, v6, [F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    int-to-float v6, v0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewLineLength:F

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v5, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    aget v7, v5, v10

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    aget v8, v5, v11

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToOrthoNorm(FFFF)[F

    move-result-object v5

    mul-int/lit8 v6, v0, 0x2

    aget v7, v5, v10

    aput v7, v4, v6

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v7, v5, v11

    aput v7, v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private loadMaskImage()V
    .locals 4

    const/16 v3, 0xde1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTextureId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTextureId:I

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTextureId:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :cond_1
    invoke-static {v3}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mImageUpdated:Z

    return-void
.end method

.method private declared-synchronized updateVertexBuffer()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getOrthoNormalizedCoordinates(FFFFII)[F

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

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearEngineLines()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferEngine:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mImageUpdated:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearTouchLines()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public drawLines()V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferEngine:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    :cond_0
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMode:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

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

    const-string v1, "u_Color"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v6

    const-string v1, "u_Matrix"

    invoke-virtual {v7, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPinchMatrix:[F

    const/4 v4, 0x0

    invoke-static {v9, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    div-int/lit8 v10, v1, 0x2

    if-lez v10, :cond_1

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v8, 0x0

    move v11, v10

    :goto_0
    add-int/lit8 v1, v11, -0x2

    if-ge v8, v1, :cond_1

    const v1, 0x3f7afafb

    const v2, 0x3f7afafb

    const v3, 0x3f7afafb

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v1, v8, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const v1, 0x3e149495

    const v2, 0x3e149495

    const v3, 0x3e149495

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v1, 0x1

    add-int/lit8 v2, v8, 0x1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferEngine:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferEngine:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v1

    div-int/lit8 v10, v1, 0x2

    if-lez v10, :cond_2

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v8, 0x0

    move v11, v10

    :goto_1
    add-int/lit8 v1, v11, -0x2

    if-ge v8, v1, :cond_2

    const v1, 0x3f7afafb

    const v2, 0x3f7afafb

    const v3, 0x3f7afafb

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v1, v8, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const v1, 0x3e149495

    const v2, 0x3e149495

    const v3, 0x3e149495

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v6, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v1, 0x1

    add-int/lit8 v2, v8, 0x1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawMask()V
    .locals 13

    const/high16 v12, 0x3f800000    # 1.0f

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTextureId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mImageUpdated:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->loadMaskImage()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v10

    iget v1, v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "a_Position"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "u_Matrix"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v8

    const-string v1, "a_TextureCoordinate"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPinchMatrix:[F

    const/4 v4, 0x0

    invoke-static {v8, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    move v1, v11

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v1, "u_Sampler"

    invoke-virtual {v10, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v9

    const/4 v1, 0x0

    invoke-static {v9, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v1, v10, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v2, "alpha"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v7

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMode:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->getScissorValues()[F

    move-result-object v1

    const/4 v2, 0x3

    aget v1, v1, v2

    sub-float v1, v12, v1

    div-float/2addr v1, v12

    const/4 v2, 0x0

    mul-float/2addr v1, v2

    add-float/2addr v1, v12

    invoke-static {v7, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_0
    const/16 v1, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTextureId:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v7, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public freeMask()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public onOrientationChange()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferEngine:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferEngine:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mEngineData:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mEngineData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mEngineData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->getPathPoints(Landroid/graphics/Path;)[F

    move-result-object v2

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferEngine:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mImageUpdated:Z

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onSurfaceChanged()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTextureId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mImageUpdated:Z

    return-void
.end method

.method public setAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;

    return-void
.end method

.method public setEngineData(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mEngineData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferEngine:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->getPathPoints(Landroid/graphics/Path;)[F

    move-result-object v3

    array-length v5, v3

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferEngine:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mImageUpdated:Z

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setMode(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMode:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreviewInfo(II)V
    .locals 2

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewWidth:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewHeight:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0
.end method

.method public setPreviewScale(F)V
    .locals 3

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewScale:F

    monitor-enter p0

    const/high16 v0, 0x41000000    # 8.0f

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPinchMatrix:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewScale:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewLineLength:F

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->updateVertexBuffer()V

    return-void
.end method

.method public touchDown(FF)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevX:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevY:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTouchLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTouchLines:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTouchLines:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTouchLines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v3, v2, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTouchLines:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v3, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewWidth:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    add-float/2addr v5, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTouchLines:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v3, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewHeight:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    add-float/2addr v3, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5, v3, v6, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToOrthoNorm(FFFF)[F

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public touchMove(FF)V
    .locals 13

    monitor-enter p0

    const/high16 v8, 0x41000000    # 8.0f

    :try_start_0
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPinchMatrix:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewScale:F

    mul-float/2addr v9, v10

    div-float v4, v8, v9

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevY:F

    sub-float/2addr v8, p2

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevY:F

    sub-float/2addr v9, p2

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevX:F

    sub-float/2addr v9, p1

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevX:F

    sub-float/2addr v10, p1

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float v9, v4, v4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    const/4 v3, 0x1

    move v6, p1

    move v7, p2

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevY:F

    sub-float/2addr v8, p2

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevY:F

    sub-float/2addr v9, p2

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevX:F

    sub-float/2addr v9, p1

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevX:F

    sub-float/2addr v10, p1

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v0, v8

    :goto_0
    int-to-float v8, v3

    mul-float/2addr v8, v4

    cmpg-float v8, v8, v0

    if-gez v8, :cond_0

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevX:F

    int-to-float v9, v3

    mul-float/2addr v9, v4

    div-float/2addr v9, v0

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevX:F

    sub-float v10, p1, v10

    mul-float/2addr v9, v10

    add-float v6, v8, v9

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevY:F

    int-to-float v9, v3

    mul-float/2addr v9, v4

    div-float/2addr v9, v0

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevY:F

    sub-float v10, p2, v10

    mul-float/2addr v9, v10

    add-float v7, v8, v9

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTouchLines:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTouchLines:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevX:F

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPrevY:F

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTouchLines:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v8, v5, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_1

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mVertexBufferTouch:Ljava/nio/FloatBuffer;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    iget v10, v8, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTouchLines:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    mul-float/2addr v8, v11

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewWidth:I

    int-to-float v11, v11

    div-float/2addr v8, v11

    add-float/2addr v10, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mTouchLines:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float/2addr v8, v12

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mPreviewHeight:I

    int-to-float v12, v12

    div-float/2addr v8, v12

    add-float/2addr v8, v11

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-static {v10, v8, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToOrthoNorm(FFFF)[F

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public touchUp(FF)V
    .locals 0

    return-void
.end method
