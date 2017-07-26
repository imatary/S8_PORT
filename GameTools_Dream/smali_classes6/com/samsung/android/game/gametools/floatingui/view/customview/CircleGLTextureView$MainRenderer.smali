.class Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;
.super Ljava/lang/Object;
.source "CircleGLTextureView.java"

# interfaces
.implements Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainRenderer"
.end annotation


# static fields
.field private static final MaxVertexs:I = 0xb4


# instance fields
.field private final fss:Ljava/lang/String;

.field private hProgram:I

.field private hTex:[I

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraOrientation:I

.field private final mCameraSyncObject:Ljava/lang/Object;

.field private mIsRearCamera:Z

.field private final mLock:Ljava/lang/Object;

.field private mSTexture:Landroid/graphics/SurfaceTexture;

.field private mTexCoordsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateST:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private pVertex:Ljava/nio/FloatBuffer;

.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;

.field private final vss:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;Z)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "attribute vec2 vPosition;\nattribute vec2 vTexCoord;\nvarying vec2 texCoord;\nvoid main() {\n  texCoord = vTexCoord;\n  gl_Position = vec4 ( vPosition.x, vPosition.y, 0.0, 1.0 );\n}"

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->vss:Ljava/lang/String;

    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->fss:Ljava/lang/String;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mUpdateST:Z

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mIsRearCamera:Z

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCameraOrientation:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCameraSyncObject:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mIsRearCamera:Z

    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mWindowManager:Landroid/view/WindowManager;

    const v0, 0x3f51745d

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->createTexCoords(F)V

    return-void
.end method

.method private closeCamera()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCameraSyncObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private createTexCoords(F)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    const/high16 v20, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v21, 0x168

    :try_start_0
    move/from16 v0, v21

    new-array v2, v0, [F

    const/16 v21, 0x168

    move/from16 v0, v21

    new-array v5, v0, [F

    const/16 v21, 0x168

    move/from16 v0, v21

    new-array v3, v0, [F

    const/16 v21, 0x168

    move/from16 v0, v21

    new-array v4, v0, [F

    const/16 v21, 0x168

    move/from16 v0, v21

    new-array v6, v0, [F

    const/4 v10, 0x0

    aput v7, v6, v10

    const/16 v21, 0x1

    aput v8, v6, v21

    const/high16 v21, 0x3f000000    # 0.5f

    aput v21, v2, v10

    const/16 v21, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    aput v23, v2, v21

    const/high16 v21, 0x3f000000    # 0.5f

    aput v21, v5, v10

    const/16 v21, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    aput v23, v5, v21

    const/high16 v21, 0x3f000000    # 0.5f

    aput v21, v3, v10

    const/16 v21, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    aput v23, v3, v21

    const/high16 v21, 0x3f000000    # 0.5f

    aput v21, v4, v10

    const/16 v21, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    aput v23, v4, v21

    add-int/lit8 v10, v10, 0x2

    const/16 v11, 0xb3

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_0

    int-to-float v0, v9

    move/from16 v21, v0

    const/16 v23, 0xb2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v15, v21, v23

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v21, v21, v15

    const v23, 0x40490fdb    # (float)Math.PI

    mul-float v16, v21, v23

    const v21, 0x3fc90fdb

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v23, v23, v15

    const v24, 0x40490fdb    # (float)Math.PI

    mul-float v23, v23, v24

    add-float v19, v21, v23

    const v21, 0x40490fdb    # (float)Math.PI

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v23, v23, v15

    const v24, 0x40490fdb    # (float)Math.PI

    mul-float v23, v23, v24

    add-float v17, v21, v23

    const v21, 0x4096cbe4

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v23, v23, v15

    const v24, 0x40490fdb    # (float)Math.PI

    mul-float v23, v23, v24

    add-float v18, v21, v23

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v20

    add-float v12, v7, v21

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v20

    add-float v13, v8, v21

    aput v12, v6, v10

    add-int/lit8 v21, v10, 0x1

    aput v13, v6, v21

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v20

    add-float v12, v7, v21

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v20

    add-float v13, v8, v21

    const/high16 v21, 0x3f000000    # 0.5f

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v12, v23

    mul-float v23, v23, p1

    add-float v21, v21, v23

    aput v21, v2, v10

    add-int/lit8 v21, v10, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v13, v24

    add-float v23, v23, v24

    aput v23, v2, v21

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v20

    add-float v12, v7, v21

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v20

    add-float v13, v8, v21

    const/high16 v21, 0x3f000000    # 0.5f

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v12, v23

    mul-float v23, v23, p1

    add-float v21, v21, v23

    aput v21, v5, v10

    add-int/lit8 v21, v10, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v13, v24

    add-float v23, v23, v24

    aput v23, v5, v21

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v20

    add-float v12, v7, v21

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v20

    add-float v13, v8, v21

    const/high16 v21, 0x3f000000    # 0.5f

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v12, v23

    mul-float v23, v23, p1

    add-float v21, v21, v23

    aput v21, v3, v10

    add-int/lit8 v21, v10, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v13, v24

    add-float v23, v23, v24

    aput v23, v3, v21

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v20

    add-float v12, v7, v21

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v20

    add-float v13, v8, v21

    const/high16 v21, 0x3f000000    # 0.5f

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v12, v23

    mul-float v23, v23, p1

    add-float v21, v21, v23

    aput v21, v4, v10

    add-int/lit8 v21, v10, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v13, v24

    add-float v23, v23, v24

    aput v23, v4, v21

    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_0
    array-length v0, v6

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->pVertex:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->pVertex:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->pVertex:Ljava/nio/FloatBuffer;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    array-length v0, v2

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    array-length v0, v5

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    const/16 v23, 0x5a

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    array-length v0, v3

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    const/16 v23, 0xb4

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    array-length v0, v4

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    const/16 v23, 0x10e

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v22

    return-void

    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21
.end method

.method private deleteTex()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->hTex:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method private getTexCoord()Ljava/nio/FloatBuffer;
    .locals 7

    const/16 v6, 0x5a

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCameraOrientation:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    :goto_0
    return-object v1

    :sswitch_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_2
    if-ne v0, v4, :cond_3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto :goto_0

    :sswitch_1
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_6

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_6
    if-ne v0, v5, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto :goto_0

    :sswitch_2
    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_7
    if-ne v0, v3, :cond_8

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_8
    if-ne v0, v4, :cond_9

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    :cond_9
    if-ne v0, v5, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    :sswitch_3
    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    :cond_a
    if-ne v0, v3, :cond_b

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    :cond_b
    if-ne v0, v4, :cond_c

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    :cond_c
    if-ne v0, v5, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mTexCoordsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private initTex()V
    .locals 6

    const v5, 0x812f

    const/16 v4, 0x2600

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x8d65

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->hTex:[I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->hTex:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->hTex:[I

    aget v0, v0, v2

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    invoke-static {v1, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {v1, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method private loadShader(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const v7, 0x8b81

    const/4 v6, 0x0

    const v4, 0x8b31

    invoke-static {v4}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v4, 0x1

    new-array v0, v4, [I

    invoke-static {v3, v7, v0, v6}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v4, v0, v6

    if-nez v4, :cond_0

    const-string/jumbo v4, "Could not compile vshader"

    invoke-static {v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not compile vshader:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v3, 0x0

    :cond_0
    const v4, 0x8b30

    invoke-static {v4}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {v1, v7, v0, v6}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v4, v0, v6

    if-nez v4, :cond_1

    const-string/jumbo v4, "Could not compile fshader"

    invoke-static {v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not compile fshader:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v1, 0x0

    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    return v2
.end method

.method private openCamera()Z
    .locals 8

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->closeCamera()V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCameraSyncObject:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCameraOrientation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCameraOrientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mSTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    return v4

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_0

    :try_start_4
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget-boolean v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mIsRearCamera:Z

    if-nez v6, :cond_3

    iget v6, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v4, :cond_3

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;

    iget v6, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCameraOrientation:I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FAILED OPENING CAMERA : msg="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    :cond_3
    :try_start_6
    iget-boolean v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mIsRearCamera:Z

    if-ne v6, v4, :cond_4

    iget v6, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v6, :cond_4

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;

    iget v6, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCameraOrientation:I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method private previewCamera(II)V
    .locals 11

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "previewCamera failed: camera was not opened. preview size=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "view ssize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_5

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "support ssize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->width:I

    if-lt v9, p1, :cond_1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    if-ge v9, p2, :cond_6

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "target ssize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lt v3, v9, :cond_3

    add-int/lit8 v3, v3, -0x1

    :cond_3
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v10, v9, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v10, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-float v10, v9

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v9, v9

    div-float v8, v10, v9

    const/16 v0, 0x1b58

    move v4, v0

    :try_start_1
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    const/4 v10, 0x0

    aget v1, v9, v10

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual {v5, v4, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v9, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->createTexCoords(F)V

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "exception occured @camera preview option: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "CircleGLTextureView"

    const-string/jumbo v1, "close"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mUpdateST:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mSTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mSTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->closeCamera()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->deleteTex()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11

    const/4 v10, 0x0

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mSTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->hProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->hProgram:I

    const-string/jumbo v2, "vPosition"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->hProgram:I

    const-string/jumbo v2, "vTexCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v7

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->hProgram:I

    const-string/jumbo v2, "sTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v8

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v1, 0x8d65

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->hTex:[I

    aget v2, v2, v10

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v8, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->pVertex:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->getTexCoord()Ljava/nio/FloatBuffer;

    move-result-object v6

    move v1, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v7}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v1, 0x6

    const/16 v2, 0xb4

    invoke-static {v1, v10, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "width ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "height ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-static {v2, v2, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string/jumbo v0, "onSurfaceChanged called..."

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->openCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->previewCamera(II)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->initTex()V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->hTex:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->mSTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const-string/jumbo v0, "attribute vec2 vPosition;\nattribute vec2 vTexCoord;\nvarying vec2 texCoord;\nvoid main() {\n  texCoord = vTexCoord;\n  gl_Position = vec4 ( vPosition.x, vPosition.y, 0.0, 1.0 );\n}"

    const-string/jumbo v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 texCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture,texCoord);\n}"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->loadShader(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->hProgram:I

    return-void
.end method

.method public onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;->close()V

    return-void
.end method
