.class public Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;
.super Ljava/lang/Object;
.source "Viewer360.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field public static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nvoid main() { \n\n gl_FragColor = texture2D(u_Sampler, vec2(v_TextureCoordinate.x, v_TextureCoordinate.y)).bgra;\n}"

.field public static MAX_VIEW_ANGLE:F = 0.0f

.field private static MAX_X:F = 0.0f

.field public static final MAX_Z:F = 2.0f

.field public static MIN_VIEW_ANGLE:F = 0.0f

.field private static MIN_X:F = 0.0f

.field public static final MIN_Z:F = 0.0f

.field public static final NUM_EDGES_PER_CIRCLE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Viewer360"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec3 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\n gl_Position = u_Matrix*vec4(a_Position,1);\n v_TextureCoordinate = a_TextureCoordinate;\n}"

.field public static final VIEW_ANGLE_Y:F = 100.0f


# instance fields
.field private final DECCELERATION:F

.field private VIEW_ANGLE_RATIO:F

.field private argbData:[I

.field private argbHeight:I

.field private argbWidth:I

.field private final f:F

.field private height:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mElementBuffer:Ljava/nio/ShortBuffer;

.field private mElementBufferId:I

.field private mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageLoaded:Z

.field private mIsBottomScrolling:Z

.field private mIsLeftScrolling:Z

.field private mIsRightScrolling:Z

.field private mIsTopScrolling:Z

.field private mMatrix:[F

.field private mModelMatrix:[F

.field private mMoved:Z

.field private mNumIndices:I

.field private mProgramId:I

.field private mProjectionMatrix:[F

.field private mReadBuffer:Z

.field private mRotationX:F

.field private mRotationY:F

.field private mRotationZ:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

.field private mTextureId:I

.field private mTouchDown:Z

.field private mVelocityX:F

.field private mVelocityY:F

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBufferId:I

.field private mViewAngle:F

.field private final n:F

.field private prevX:F

.field private prevY:F

.field private scaling:Z

.field sphere_geometry:[F

.field private width:I

.field private z:F

.field private zFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    const/high16 v0, 0x42a00000    # 80.0f

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    const/high16 v0, 0x42b40000    # 90.0f

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_X:F

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_X:F

    neg-float v0, v0

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_X:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Landroid/util/AttributeSet;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v2, 0x10

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mImageLoaded:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProjectionMatrix:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMatrix:[F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTextureId:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mElementBufferId:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVertexBufferId:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    sub-float/2addr v1, v4

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->zFactor:F

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationZ:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mViewAngle:F

    const v0, 0x3f7ae148    # 0.98f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->DECCELERATION:F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mReadBuffer:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMoved:Z

    const/high16 v0, -0x3db80000    # -50.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->f:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->n:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->VIEW_ANGLE_RATIO:F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->scaling:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTouchDown:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsLeftScrolling:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsRightScrolling:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsTopScrolling:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsBottomScrolling:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v2, 0x10

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mImageLoaded:Z

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProjectionMatrix:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMatrix:[F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTextureId:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mElementBufferId:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVertexBufferId:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    sub-float/2addr v1, v4

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->zFactor:F

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationZ:F

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mViewAngle:F

    const v0, 0x3f7ae148    # 0.98f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->DECCELERATION:F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mReadBuffer:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMoved:Z

    const/high16 v0, -0x3db80000    # -50.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->f:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->n:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->VIEW_ANGLE_RATIO:F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->scaling:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTouchDown:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsLeftScrolling:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsRightScrolling:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsTopScrolling:Z

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsBottomScrolling:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->init()V

    return-void
.end method

.method private calcViewAngle()V
    .locals 19

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v6, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v5, v13

    move v3, v5

    move v2, v6

    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v10, v14

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v11, 0x3fc00000    # 1.5f

    sub-float v13, v11, v12

    sub-float v14, v9, v12

    div-float v8, v13, v14

    sub-float v13, v5, v6

    const/high16 v14, 0x40000000    # 2.0f

    div-float v7, v13, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v16, v8, v10

    sub-float v16, v10, v16

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v7

    div-float v18, v18, v5

    sub-float v17, v17, v18

    div-float v16, v16, v17

    mul-float v13, v13, v16

    float-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->atan(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide v16, 0x4066800000000000L    # 180.0

    mul-double v14, v14, v16

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    div-double v14, v14, v16

    double-to-float v13, v14

    sput v13, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    const/4 v7, 0x0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v16, v8, v10

    sub-float v16, v10, v16

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v7

    div-float v18, v18, v2

    sub-float v17, v17, v18

    div-float v16, v16, v17

    mul-float v13, v13, v16

    float-to-double v0, v13

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->atan(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide v16, 0x4066800000000000L    # 180.0

    mul-double v14, v14, v16

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    div-double v14, v14, v16

    double-to-float v4, v14

    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    div-float v13, v4, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->VIEW_ANGLE_RATIO:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    :goto_0
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mViewAngle:F

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_1

    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    sget v14, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    sget v15, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    const/16 v16, 0x0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f800000    # 1.0f

    div-float/2addr v14, v15

    add-float/2addr v13, v14

    goto :goto_0

    :cond_1
    sget v13, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    sub-float/2addr v14, v15

    sget v15, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    mul-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    goto :goto_0
.end method

.method private createBuffers()V
    .locals 14

    const v10, 0xc350

    new-array v5, v10, [F

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v10, 0x64

    if-ge v0, v10, :cond_1

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    int-to-double v12, v0

    mul-double/2addr v10, v12

    const-wide v12, 0x4058c00000000000L    # 99.0

    div-double v6, v10, v12

    const/4 v2, 0x0

    move v4, v3

    :goto_1
    const/16 v10, 0x64

    if-ge v2, v10, :cond_0

    mul-int/lit8 v10, v2, 0x2

    int-to-double v10, v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4058c00000000000L    # 99.0

    div-double v8, v10, v12

    add-int/lit8 v3, v4, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v5, v4

    add-int/lit8 v4, v3, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v5, v3

    add-int/lit8 v3, v4, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    neg-double v10, v10

    double-to-float v10, v10

    aput v10, v5, v4

    add-int/lit8 v4, v3, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    int-to-float v11, v2

    const/high16 v12, 0x42c60000    # 99.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    aput v10, v5, v3

    add-int/lit8 v3, v4, 0x1

    int-to-float v10, v0

    const/high16 v11, 0x42c60000    # 99.0f

    div-float/2addr v10, v11

    aput v10, v5, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    array-length v10, v5

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v10, 0x4d58

    iput v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mNumIndices:I

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mNumIndices:I

    new-array v1, v10, [S

    const/4 v3, 0x0

    const/4 v0, 0x1

    :goto_2
    const/16 v10, 0x64

    if-ge v0, v10, :cond_3

    const/4 v2, 0x0

    move v4, v3

    :goto_3
    const/16 v10, 0x63

    if-gt v2, v10, :cond_2

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v10, v0, -0x1

    mul-int/lit8 v10, v10, 0x64

    add-int/2addr v10, v2

    int-to-short v10, v10

    aput-short v10, v1, v4

    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v10, v0, 0x64

    add-int/2addr v10, v2

    int-to-short v10, v10

    aput-short v10, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_2

    :cond_3
    array-length v10, v1

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mElementBuffer:Ljava/nio/ShortBuffer;

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mElementBuffer:Ljava/nio/ShortBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const v7, 0x8b81

    const/4 v4, 0x0

    const v5, 0x8b31

    invoke-static {v5}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3

    const v5, 0x8b30

    invoke-static {v5}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v5, 0x1

    new-array v2, v5, [I

    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {v3, v7, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v5, v2, v4

    if-nez v5, :cond_0

    const-string v5, "Viewer360"

    const-string v6, "vertex shader compilation failed...."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Viewer360"

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    :goto_0
    return v1

    :cond_0
    const-string v5, "Viewer360"

    const-string v6, "vertex shader compilation successful"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {v0, v7, v2, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v5, v2, v4

    if-nez v5, :cond_1

    const-string v5, "Viewer360"

    const-string v6, "fragment shader compilation failed...."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Viewer360"

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v5, "Viewer360"

    const-string v6, "fragment shader compilation successful"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v5, 0x8b82

    invoke-static {v1, v5, v2, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v5, v2, v4

    if-nez v5, :cond_2

    const-string v5, "Viewer360"

    const-string v6, "program link error..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Viewer360"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v4, "Viewer360"

    const-string v5, "program link successful"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->createBuffers()V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private loadBuffers()V
    .locals 7

    const v6, 0x88e4

    const/4 v1, 0x2

    const v5, 0x8893

    const v4, 0x8892

    const/4 v3, 0x0

    new-array v0, v1, [I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v1, v0, v3

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mElementBufferId:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mElementBufferId:I

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mElementBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mElementBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v5, v1, v2, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVertexBufferId:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVertexBufferId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v4, v1, v2, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method private loadImage()V
    .locals 12

    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTextureId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-array v10, v11, [I

    invoke-static {v11, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v10, v1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTextureId:I

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->argbData:[I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTextureId:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->argbData:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->argbData:[I

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v2, 0x2801

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const-string v2, "nayab"

    const-string v3, "Loading the image.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1908

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->argbWidth:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->argbHeight:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_1
    iput-boolean v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mImageLoaded:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method private updateMatrix()V
    .locals 11

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    neg-float v2, v2

    invoke-static {v0, v1, v4, v4, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    move v6, v1

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationZ:F

    move v6, v1

    move v8, v4

    move v9, v4

    move v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProjectionMatrix:[F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->getViewAngleY()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, -0x3db80000    # -50.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMatrix:[F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method


# virtual methods
.method public bottomScroll()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsBottomScrolling:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMoved:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    return-void
.end method

.method public draw(IFFFFFFFLcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$BitmapReader;)V
    .locals 34

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v9}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_1
    const/16 v5, 0xb44

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v5, 0x404

    invoke-static {v5}, Landroid/opengl/GLES20;->glCullFace(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p4

    neg-float v14, v0

    invoke-static {v5, v6, v9, v10, v14}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v5, p2

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move/from16 v5, p3

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProjectionMatrix:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    if-le v5, v6, :cond_2

    move/from16 v5, p5

    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    int-to-float v9, v9

    div-float/2addr v6, v9

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, -0x3db80000    # -50.0f

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    const/16 v5, 0x10

    new-array v0, v5, [F

    move-object/from16 v26, v0

    const/16 v5, 0x10

    new-array v3, v5, [F

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    move/from16 v1, p6

    move/from16 v2, p6

    invoke-static {v0, v5, v1, v2, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, p7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    int-to-float v9, v9

    div-float/2addr v6, v9

    div-float v6, v6, p6

    move/from16 v0, p8

    neg-float v9, v0

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    div-float v9, v9, p6

    const/4 v10, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v5, v6, v9, v10}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProjectionMatrix:[F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mModelMatrix:[F

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMatrix:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, v26

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    const-string v6, "a_Position"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    const-string v6, "u_Matrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    const-string v6, "a_TextureCoordinate"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v31

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    const-string v6, "u_Sampler"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v29

    const v5, 0x8892

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVertexBufferId:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v5, 0x8893

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mElementBufferId:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x1

    const/16 v8, 0x14

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x1

    const/16 v9, 0x14

    const/16 v10, 0xc

    move/from16 v5, v31

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMatrix:[F

    const/4 v10, 0x0

    move/from16 v0, v27

    invoke-static {v0, v5, v6, v9, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static/range {v31 .. v31}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v5, 0x0

    move/from16 v0, v29

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 v5, 0xde1

    move/from16 v0, p1

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mNumIndices:I

    const/16 v9, 0x1403

    const/4 v10, 0x0

    invoke-static {v5, v6, v9, v10}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    const v5, 0x8893

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v5, 0x8892

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v5, 0xb44

    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    if-eqz p9, :cond_4

    invoke-interface/range {p9 .. p9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$BitmapReader;->getDimensions()[F

    move-result-object v33

    const/4 v5, 0x2

    aget v5, v33, v5

    float-to-int v7, v5

    const/4 v5, 0x3

    aget v5, v33, v5

    float-to-int v8, v5

    mul-int v5, v7, v8

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    aget v5, v33, v5

    const/4 v6, 0x2

    aget v6, v33, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    sub-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    int-to-float v6, v6

    const/4 v9, 0x1

    aget v9, v33, v9

    const/4 v10, 0x3

    aget v10, v33, v10

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v10, v14

    add-float/2addr v9, v10

    sub-float/2addr v6, v9

    float-to-int v6, v6

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    invoke-static/range {v5 .. v11}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    mul-int v5, v7, v8

    new-array v13, v5, [I

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    const/4 v11, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v15, v7

    move/from16 v18, v7

    move/from16 v19, v8

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v13, 0x0

    mul-int v5, v7, v8

    new-array v0, v5, [S

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    const/16 v22, 0x0

    :goto_1
    mul-int v5, v7, v8

    move/from16 v0, v22

    if-ge v0, v5, :cond_3

    aget-short v32, v28, v22

    and-int/lit8 v5, v32, 0x1f

    shl-int/lit8 v5, v5, 0xb

    move/from16 v0, v32

    and-int/lit16 v6, v0, 0x7e0

    or-int/2addr v5, v6

    const v6, 0xf800

    and-int v6, v6, v32

    shr-int/lit8 v6, v6, 0xb

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v28, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->VIEW_ANGLE_RATIO:F

    mul-float v5, v5, p5

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {v30 .. v30}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    new-instance v24, Landroid/graphics/Matrix;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Matrix;-><init>()V

    new-instance v20, Landroid/graphics/Camera;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Camera;-><init>()V

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6, v9}, Landroid/graphics/Camera;->rotate(FFF)V

    new-instance v25, Landroid/graphics/Matrix;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    const/4 v5, 0x0

    int-to-float v6, v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v21, Landroid/graphics/Canvas;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p9

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$BitmapReader;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    return-void
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    int-to-float v0, v0

    return v0
.end method

.method public getViewAngleY()F
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mViewAngle:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mViewAngle:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->VIEW_ANGLE_RATIO:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    int-to-float v0, v0

    return v0
.end method

.method public isBitmapRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mReadBuffer:Z

    return v0
.end method

.method public isMoving()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTouchDown:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leftScroll()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsLeftScrolling:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMoved:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 29

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mGLContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTouchDown:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMoved:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsLeftScrolling:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsRightScrolling:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsTopScrolling:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsBottomScrolling:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Stop()V

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMoved:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->sphere_geometry:[F

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->sphere_geometry:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->sphere_geometry:[F

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->sphere_geometry:[F

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    aput v5, v3, v4

    :cond_4
    const/16 v3, 0xb44

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v3, 0x404

    invoke-static {v3}, Landroid/opengl/GLES20;->glCullFace(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->argbData:[I

    if-eqz v3, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->updateMatrix()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTextureId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mImageLoaded:Z

    if-nez v3, :cond_6

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->loadImage()V

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    const-string v4, "a_Position"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    const-string v4, "u_Matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    const-string v4, "a_TextureCoordinate"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    const-string v4, "u_Sampler"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v25

    const v3, 0x8892

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVertexBufferId:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v3, 0x8893

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mElementBufferId:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x1

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x1

    const/16 v7, 0x14

    const/16 v8, 0xc

    move/from16 v3, v27

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMatrix:[F

    const/4 v6, 0x0

    move/from16 v0, v23

    invoke-static {v0, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static/range {v27 .. v27}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x0

    move/from16 v0, v25

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 v3, 0xde1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTextureId:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mNumIndices:I

    const/16 v5, 0x1403

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    const v3, 0x8893

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v3, 0x8892

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->update()V

    :cond_7
    const/16 v3, 0xb44

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mReadBuffer:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    mul-int/2addr v3, v4

    new-array v11, v3, [I

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    move/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    mul-int/2addr v3, v4

    new-array v0, v3, [S

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    const/16 v20, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    mul-int/2addr v3, v4

    move/from16 v0, v20

    if-ge v0, v3, :cond_8

    aget-short v28, v24, v20

    and-int/lit8 v3, v28, 0x1f

    shl-int/lit8 v3, v3, 0xb

    move/from16 v0, v28

    and-int/lit16 v4, v0, 0x7e0

    or-int/2addr v3, v4

    const v4, 0xf800

    and-int v4, v4, v28

    shr-int/lit8 v4, v4, 0xb

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v24, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    new-instance v18, Landroid/graphics/Camera;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Camera;-><init>()V

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Camera;->rotate(FFF)V

    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    int-to-float v4, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mReadBuffer:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :cond_9
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    sub-float/2addr v1, v3

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->zFactor:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    :goto_0
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mViewAngle:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    const/4 v0, 0x1

    return v0

    :cond_0
    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->scaling:Z

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->scaling:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->width:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->height:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->calcViewAngle()V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-static {v1, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const-string v0, "attribute vec3 a_Position;\nattribute vec2 a_TextureCoordinate;\nuniform mat4 u_Matrix;\nvarying vec2 v_TextureCoordinate;\nvoid main() {\n gl_Position = u_Matrix*vec4(a_Position,1);\n v_TextureCoordinate = a_TextureCoordinate;\n}"

    const-string v1, "precision highp float;\nvarying vec2 v_TextureCoordinate;\nuniform sampler2D u_Sampler;\nvoid main() { \n\n gl_FragColor = texture2D(u_Sampler, vec2(v_TextureCoordinate.x, v_TextureCoordinate.y)).bgra;\n}"

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->getProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mProgramId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTextureId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mImageLoaded:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->loadBuffers()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x437a0000    # 250.0f

    const v7, 0x3d23d70a    # 0.04f

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMoved:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->prevX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->prevY:F

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTouchDown:Z

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->prevX:F

    sub-float v1, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->prevY:F

    sub-float v0, v2, v3

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->scaling:Z

    if-nez v2, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    mul-float v3, v0, v7

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_X:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_X:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    :cond_2
    :goto_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    mul-float v3, v1, v7

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    add-float/2addr v2, v6

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->prevX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->prevY:F

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_X:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_X:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    sub-float/2addr v2, v6

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mTouchDown:Z

    goto/16 :goto_0
.end method

.method public requestBitmap()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mReadBuffer:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mBitmap:Landroid/graphics/Bitmap;

    return-object v1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public resetBottomScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsBottomScrolling:Z

    return-void
.end method

.method public resetLeftScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsLeftScrolling:Z

    return-void
.end method

.method public resetRightScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsRightScrolling:Z

    return-void
.end method

.method public resetScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsLeftScrolling:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsRightScrolling:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsTopScrolling:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsBottomScrolling:Z

    return-void
.end method

.method public resetTopScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsTopScrolling:Z

    return-void
.end method

.method public resetVelocities()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    return-void
.end method

.method public rightScroll()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsRightScrolling:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMoved:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    :cond_0
    return-void
.end method

.method public setARGB([III)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->argbData:[I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->argbWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->argbHeight:I

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    sub-float/2addr v1, v3

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->zFactor:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    :goto_0
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mViewAngle:F

    const-string v0, "nayab"

    const-string v1, "mImageLoaded made false 000 "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mImageLoaded:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    return-void

    :cond_0
    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public setRotation([F)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->sphere_geometry:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    sub-float/2addr v1, v3

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->zFactor:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    :goto_0
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mViewAngle:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    return-void

    :cond_0
    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_VIEW_ANGLE:F

    sget v2, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_VIEW_ANGLE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->z:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public topScroll()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsTopScrolling:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mMoved:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mSuperImpose:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->onView360Moving()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    return-void
.end method

.method public update()V
    .locals 10

    const/high16 v9, 0x43fa0000    # 500.0f

    const v8, 0x3f7ae148    # 0.98f

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_8

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    float-to-double v0, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    float-to-double v2, v2

    const-wide v4, 0x3f3a36e2eb1c432dL    # 4.0E-4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    mul-float/2addr v0, v8

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_1

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityY:F

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    float-to-double v0, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    float-to-double v2, v2

    const-wide v4, 0x3f40624dd2f1a9fcL    # 5.0E-4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    mul-float/2addr v0, v8

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_2

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mVelocityX:F

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_X:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_X:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    :cond_3
    :goto_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_7

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_X:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_X:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_4

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    goto :goto_1

    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsLeftScrolling:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_a

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_9

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    goto :goto_3

    :cond_b
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsRightScrolling:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_d

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    :cond_c
    :goto_4
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    goto :goto_2

    :cond_d
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_c

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationY:F

    goto :goto_4

    :cond_e
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsTopScrolling:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_X:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_X:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    :cond_f
    :goto_5
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    goto :goto_2

    :cond_10
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_X:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_X:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    goto :goto_5

    :cond_11
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mIsBottomScrolling:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_X:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MAX_X:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    :cond_12
    :goto_6
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->requestRender()V

    goto/16 :goto_2

    :cond_13
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_X:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->MIN_X:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/Viewer360;->mRotationX:F

    goto :goto_6
.end method
