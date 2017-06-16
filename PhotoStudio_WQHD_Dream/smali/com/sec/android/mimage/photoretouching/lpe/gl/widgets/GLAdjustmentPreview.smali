.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
.super Ljava/lang/Object;
.source "GLAdjustmentPreview.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper$OnScaleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview$AdjustmentPreviewListener;
    }
.end annotation


# static fields
.field public static final DIM_ALPHA:F = 0.7f


# instance fields
.field private mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

.field private mCombinedMatrix:[F

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mCropBottom:I

.field private mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;

.field private mCropLeft:I

.field private mCropRight:I

.field private mCropTop:I

.field private mGLCropAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;

.field private mGrayBG:[F

.field private mGrayBuffer:Ljava/nio/FloatBuffer;

.field private mImageRect:Landroid/graphics/RectF;

.field private mImageVertexBound:Landroid/graphics/RectF;

.field private mLinePerspectiveColor:[F

.field private mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview$AdjustmentPreviewListener;

.field private mMode:I

.field private mOriginalPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mPerspective:F

.field private mPerspectiveMatrix:[F

.field private mPerspectiveType:I

.field private mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

.field private mPinchMatrix:[F

.field private mPreviewMoving:Z

.field private mProjectionMatrix:[F

.field private mRotation:F

.field private mScale:F

.field private mState:I

.field private mStrokePerH:F

.field private mStrokePerW:F

.field private mTransX:F

.field private mTransY:F

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBufferId:I

.field private mVertexBufferUpdated:Z

.field private mViewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview$AdjustmentPreviewListener;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;[F)V
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPreviewMoving:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mProjectionMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCombinedMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferUpdated:Z

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGrayBG:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mLinePerspectiveColor:[F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview$AdjustmentPreviewListener;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mOriginalPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchMatrix:[F

    invoke-direct {v0, v1, v2, p0, p5}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;[FLcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper$OnScaleListener;[F)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspective:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->reset()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3ee6e6e7
        0x3ee6e6e7
        0x3ee6e6e7
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getString([F)Ljava/lang/String;
    .locals 4

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public draw()V
    .locals 29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mMode:I

    const/16 v6, 0xc

    if-eq v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGrayBuffer:Ljava/nio/FloatBuffer;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v5, "a_Position"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v2

    const-string v5, "u_Color"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v13

    const-string v5, "u_Matrix"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v18

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGrayBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v7

    const/4 v8, 0x0

    move/from16 v0, v18

    invoke-static {v0, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGrayBG:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGrayBG:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGrayBG:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGrayBG:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-static {v13, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    new-array v0, v5, [I

    move-object/from16 v26, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-static {v5, v0, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const/4 v5, 0x0

    aget v5, v26, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferId:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferUpdated:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VBO Created, id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferUpdated:Z

    if-eqz v5, :cond_2

    const v5, 0x8892

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferId:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v5, 0x8892

    const/16 v6, 0x30

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v8, 0x88e4

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferUpdated:Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v5, "a_Position"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v3

    const v5, 0x8892

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferId:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const v5, 0x8892

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v5, "a_TextureCoordinate"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v5, "u_blending_color"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v11

    const/4 v5, 0x1

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->BACKGROUND_BLACK:[F

    const/4 v7, 0x0

    invoke-static {v11, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const-string v5, "u_Sampler"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v22

    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v5, "u_Matrix"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCombinedMatrix:[F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mProjectionMatrix:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchMatrix:[F

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mMode:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCombinedMatrix:[F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mProjectionMatrix:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->getAnimMatrix(Landroid/content/Context;)[F

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCombinedMatrix:[F

    const/4 v8, 0x0

    move/from16 v0, v18

    invoke-static {v0, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->update()V

    move-object/from16 v0, v19

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v6, "u_isPerspective"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v15

    const/4 v5, 0x1

    invoke-static {v15, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    move-object/from16 v0, v19

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v6, "v_uPerMatrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v20

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/4 v8, 0x0

    move/from16 v0, v20

    invoke-static {v0, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v5, 0xde1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mOriginalPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getCurrentTextureId()I

    move-result v6

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mViewRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glScissor(IIII)V

    move-object/from16 v0, v19

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v6, "light"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mMode:I

    const/16 v6, 0xa

    if-eq v5, v6, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mMode:I

    const/16 v6, 0xb

    if-eq v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->getStraightenState()I

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mState:I

    const v6, 0x2000a

    if-gt v5, v6, :cond_7

    const v5, 0x3f40c49c    # 0.753f

    const v6, 0x3f40c49c    # 0.753f

    const v7, 0x3f40c49c    # 0.753f

    const v8, 0x3f333333    # 0.7f

    move/from16 v0, v17

    invoke-static {v0, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLeft:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropBottom:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropRight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLeft:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropBottom:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropTop:I

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glScissor(IIII)V

    :cond_3
    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-static {v0, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glScissor(IIII)V

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjustment Preview draw: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v24

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGLCropAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCombinedMatrix:[F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mProjectionMatrix:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGLCropAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;->getAnimMatrix(Landroid/content/Context;)[F

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCombinedMatrix:[F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCombinedMatrix:[F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchMatrix:[F

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCombinedMatrix:[F

    const/4 v8, 0x0

    move/from16 v0, v18

    invoke-static {v0, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCombinedMatrix:[F

    const/4 v8, 0x0

    move/from16 v0, v18

    invoke-static {v0, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mState:I

    const v6, 0x20014

    if-lt v5, v6, :cond_8

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGreatUX()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v17

    invoke-static {v0, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLeft:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropBottom:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropRight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLeft:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropBottom:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropTop:I

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glScissor(IIII)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->getStraightenState()I

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mState:I

    const v6, 0x2000a

    if-gt v5, v6, :cond_9

    const v5, 0x3f40c49c    # 0.753f

    const v6, 0x3f40c49c    # 0.753f

    const v7, 0x3f40c49c    # 0.753f

    const v8, 0x3f333333    # 0.7f

    move/from16 v0, v17

    invoke-static {v0, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLeft:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropBottom:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropRight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLeft:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropBottom:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropTop:I

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glScissor(IIII)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mMode:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    instance-of v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mState:I

    const v6, 0x2000e

    if-ge v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    check-cast v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAdjustmentAnimation;->getScissorValues()[F

    move-result-object v23

    const v5, 0x3f40c49c    # 0.753f

    const v6, 0x3f40c49c    # 0.753f

    const v7, 0x3f40c49c    # 0.753f

    const v8, 0x3f333333    # 0.7f

    move/from16 v0, v17

    invoke-static {v0, v5, v6, v7, v8}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropRight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLeft:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x2

    aget v6, v23, v6

    mul-float v28, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x2

    aget v6, v23, v6

    mul-float v14, v5, v6

    const/4 v5, 0x0

    aget v5, v23, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v28, v6

    sub-float v16, v5, v6

    const/4 v5, 0x1

    aget v5, v23, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v14, v6

    sub-float v27, v5, v6

    const/4 v5, 0x0

    aget v5, v23, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v28, v6

    add-float v21, v5, v6

    const/4 v5, 0x1

    aget v5, v23, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v14, v6

    add-float v12, v5, v6

    move/from16 v0, v16

    float-to-int v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v12

    float-to-int v6, v6

    sub-float v7, v21, v16

    float-to-int v7, v7

    sub-float v8, v12, v27

    float-to-int v8, v8

    invoke-static {v5, v6, v7, v8}, Landroid/opengl/GLES20;->glScissor(IIII)V

    goto/16 :goto_1
.end method

.method public getCropLayout()Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;

    return-object v0
.end method

.method public getCurrentPinchZoom()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->getCurrentScale()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getDistanceFromAngle(IFFF)F
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v2, 0x0

    float-to-double v4, p2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v0, v4, v6

    const v3, 0x20016

    if-ne p1, v3, :cond_1

    div-float v3, p4, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v2, v3, v4

    div-float/2addr v2, p3

    :cond_0
    :goto_0
    return v2

    :cond_1
    const v3, 0x20015

    if-ne p1, v3, :cond_0

    div-float v3, p3, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v2, v3, v4

    div-float/2addr v2, p4

    goto :goto_0
.end method

.method public getImageRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPerspective()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspective:F

    return v0
.end method

.method public getPerspectiveType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveType:I

    return v0
.end method

.method public getPinchHelper()Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    return-object v0
.end method

.method public getPinchMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCombinedMatrix:[F

    return-object v0
.end method

.method public getPointerIconType()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->getPointerIconType()I

    move-result v0

    return v0
.end method

.method public initSizes(Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    iget v4, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->setDimensions(FFFFZI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080511

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    if-eqz p1, :cond_0

    int-to-float v1, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mStrokePerW:F

    int-to-float v1, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mStrokePerH:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move v5, v14

    move v6, v13

    invoke-static/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getOrthoNormalizedCoordinates(FFFFII)[F

    move-result-object v16

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v16, v2

    const/4 v3, 0x1

    aget v3, v16, v3

    const/4 v5, 0x2

    aget v5, v16, v5

    const/4 v6, 0x3

    aget v6, v16, v6

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageVertexBound:Landroid/graphics/RectF;

    move-object/from16 v0, v16

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

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferUpdated:Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mProjectionMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCombinedMatrix:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-le v14, v13, :cond_2

    int-to-float v1, v14

    int-to-float v2, v13

    div-float v4, v1, v2

    :goto_0
    if-le v14, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mProjectionMatrix:[F

    const/4 v2, 0x0

    neg-float v3, v4

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    int-to-float v1, v13

    int-to-float v2, v14

    div-float v4, v1, v2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mProjectionMatrix:[F

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    neg-float v9, v4

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move v10, v4

    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_1
.end method

.method public isPreviewMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPreviewMoving:Z

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->onScale(Landroid/view/ScaleGestureDetector;)Z

    return-void
.end method

.method public onSurfaceChanged()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferId:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->onSurfaceChanged()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPreviewMoving:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->onTouch(Landroid/view/MotionEvent;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPreviewMoving:Z

    goto :goto_0
.end method

.method public onTranslationReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview$AdjustmentPreviewListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview$AdjustmentPreviewListener;->onTranslationReset()V

    return-void
.end method

.method public onUpdate(FFFF)V
    .locals 5

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mScale:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mRotation:F

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mTransX:F

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mTransY:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview$AdjustmentPreviewListener;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mRotation:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mTransX:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mTransY:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview$AdjustmentPreviewListener;->onUpdate(FFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mScale:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mTransX:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mTransY:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mRotation:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspective:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->initSizes(Z)V

    return-void
.end method

.method public setAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->cancelAnimation()V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    return-void
.end method

.method public setCropAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGLCropAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;

    return-void
.end method

.method public setCropRect(FFFF)V
    .locals 1

    float-to-int v0, p1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLeft:I

    float-to-int v0, p2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropTop:I

    float-to-int v0, p3

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropRight:I

    float-to-int v0, p4

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropBottom:I

    return-void
.end method

.method public setGrayRect(Landroid/graphics/RectF;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGrayBuffer:Ljava/nio/FloatBuffer;

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

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

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGrayBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mGrayBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public setImageRect(Landroid/graphics/RectF;Z)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->initSizes(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setImageDimensions(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setLinePerspectiveColor(III)V
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mLinePerspectiveColor:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mLinePerspectiveColor:[F

    const/4 v1, 0x1

    int-to-float v2, p2

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mLinePerspectiveColor:[F

    const/4 v1, 0x2

    int-to-float v2, p3

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public setMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mMode:I

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->setMode(I)V

    return-void
.end method

.method public setPerspectiveType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveType:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mState:I

    return-void
.end method

.method public setVertexBuffer(Ljava/nio/FloatBuffer;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBufferUpdated:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public setViewRect(Landroid/graphics/Rect;)V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mViewRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setViewDimensions(IILandroid/graphics/Rect;)V

    return-void
.end method

.method public startAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLAnimation;->startAnimation(Landroid/content/Context;)V

    return-void
.end method

.method public update(FFFF)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mScale:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mTransX:F

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mTransY:F

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mRotation:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public updatePerspective(F)V
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspective:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->updatePerspective(IF)V

    :cond_0
    return-void
.end method

.method public updatePerspective(IF)V
    .locals 10

    const v2, 0x20016

    if-eq p1, v2, :cond_0

    const v2, 0x20015

    if-ne p1, v2, :cond_1

    :cond_0
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspective:F

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveType:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspective:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->getDistanceFromAngle(IFFF)F

    move-result v6

    move v7, v6

    move v8, v6

    const/4 v2, 0x0

    cmpg-float v2, v6, v2

    if-gez v2, :cond_2

    const/4 v7, 0x0

    neg-float v8, v6

    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v2, 0x8

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const v2, 0x20016

    if-ne p1, v2, :cond_3

    const/16 v2, 0x8

    new-array v1, v2, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    sub-float/2addr v4, v7

    aput v4, v1, v2

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    sub-float/2addr v4, v8

    aput v4, v1, v2

    const/4 v2, 0x3

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v8

    aput v4, v1, v2

    const/4 v2, 0x5

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x6

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v7

    aput v4, v1, v2

    const/4 v2, 0x7

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    :goto_1
    const/16 v2, 0x9

    new-array v9, v2, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, v3

    shr-int/lit8 v5, v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v9, v5

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v9, v5

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/4 v4, 0x3

    const/4 v5, 0x2

    aget v5, v9, v5

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/4 v4, 0x4

    const/4 v5, 0x3

    aget v5, v9, v5

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/4 v4, 0x5

    const/4 v5, 0x4

    aget v5, v9, v5

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/4 v4, 0x7

    const/4 v5, 0x5

    aget v5, v9, v5

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/16 v4, 0x8

    const/4 v5, 0x0

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/16 v4, 0x9

    const/4 v5, 0x0

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/16 v4, 0xa

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/16 v4, 0xb

    const/4 v5, 0x0

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/16 v4, 0xc

    const/4 v5, 0x6

    aget v5, v9, v5

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/16 v4, 0xd

    const/4 v5, 0x7

    aget v5, v9, v5

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/16 v4, 0xe

    const/4 v5, 0x0

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPerspectiveMatrix:[F

    const/16 v4, 0xf

    const/16 v5, 0x8

    aget v5, v9, v5

    aput v5, v2, v4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_1
    return-void

    :cond_2
    move v7, v6

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x8

    new-array v1, v2, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v7

    aput v4, v1, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aput v4, v1, v2

    const/4 v2, 0x3

    const/4 v4, 0x0

    sub-float/2addr v4, v7

    aput v4, v1, v2

    const/4 v2, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    const/4 v2, 0x5

    const/4 v4, 0x0

    sub-float/2addr v4, v8

    aput v4, v1, v2

    const/4 v2, 0x6

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v2

    const/4 v2, 0x7

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v8

    aput v4, v1, v2

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateRotation(F)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mRotation:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setRotate(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public updateScale(F)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mScale:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setScale(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public updateTranslation(FF)V
    .locals 1

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mTransX:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mTransY:F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setTranslation(FF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
