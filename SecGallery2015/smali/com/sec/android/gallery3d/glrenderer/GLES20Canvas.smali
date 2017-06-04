.class public Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glrenderer/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;,
        Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;,
        Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    }
.end annotation


# static fields
.field private static final ALPHA_UNIFORM:Ljava/lang/String; = "uAlpha"

.field private static final BOUNDS_COORDINATES:[F

.field private static final BOX_COORDINATES:[F

.field private static final COLOR_UNIFORM:Ljava/lang/String; = "uColor"

.field private static final COORDS_PER_VERTEX:I = 0x2

.field private static final COUNT_FILL_VERTEX:I = 0x4

.field private static final COUNT_LINE_VERTEX:I = 0x2

.field private static final COUNT_RECT_VERTEX:I = 0x4

.field private static final DRAW_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

.field private static final DRAW_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

.field private static final FLOAT_SIZE:I = 0x4

.field private static final INDEX_ALPHA:I = 0x4

.field private static final INDEX_COLOR:I = 0x2

.field private static final INDEX_MATRIX:I = 0x1

.field private static final INDEX_POSITION:I = 0x0

.field private static final INDEX_TEXTURE_COORD:I = 0x2

.field private static final INDEX_TEXTURE_MATRIX:I = 0x2

.field private static final INDEX_TEXTURE_SAMPLER:I = 0x3

.field private static final INITIAL_RESTORE_STATE_SIZE:I = 0x8

.field private static final MATRIX_SIZE:I = 0x10

.field private static final MATRIX_UNIFORM:Ljava/lang/String; = "uMatrix"

.field private static final MESH_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

.field private static final OES_TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final POSITION_ATTRIBUTE:Ljava/lang/String; = "aPosition"

.field private static final TAG:Ljava/lang/String; = "GLES20Canvas"

.field private static final TEXTURE_COORD_ATTRIBUTE:Ljava/lang/String; = "aTextureCoordinate"

.field private static final TEXTURE_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

.field private static final TEXTURE_MATRIX_UNIFORM:Ljava/lang/String; = "uTextureMatrix"

.field private static final TEXTURE_SAMPLER_UNIFORM:Ljava/lang/String; = "uTextureSampler"

.field private static final TEXTURE_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

.field private static final VERTEX_STRIDE:I = 0x8

.field private static final mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;


# instance fields
.field private mAlphas:[F

.field private final mBoxCoordinates:I

.field private mCountDrawLine:I

.field private mCountDrawMesh:I

.field private mCountFillRect:I

.field private mCountTextureRect:I

.field private mCurrentAlphaIndex:I

.field private mCurrentMatrixIndex:I

.field private final mDeleteBuffers:Lcom/sec/android/gallery3d/util/IntArray;

.field private final mDrawParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private final mDrawProgram:I

.field private final mFrameBuffer:[I

.field private mHeight:I

.field private mMatrices:[F

.field private final mMeshParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private final mMeshProgram:I

.field private final mOesTextureParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private final mOesTextureProgram:I

.field private final mProjectionMatrix:[F

.field private final mSaveFlags:Lcom/sec/android/gallery3d/util/IntArray;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mTargetTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/glrenderer/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempColor:[F

.field private final mTempIntArray:[I

.field private final mTempMatrix:[F

.field private final mTempSourceRect:Landroid/graphics/RectF;

.field private final mTempTargetRect:Landroid/graphics/RectF;

.field private final mTempTextureMatrix:[F

.field private final mTextureParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

.field private final mTextureProgram:I

.field private final mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

.field private mUploadedCount:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->BOX_COORDINATES:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->BOUNDS_COORDINATES:[F

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/GLES20IdImpl;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20IdImpl;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v7, 0x80

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    const/16 v7, 0x8

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    new-instance v7, Lcom/sec/android/gallery3d/util/IntArray;

    invoke-direct {v7}, Lcom/sec/android/gallery3d/util/IntArray;-><init>()V

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcom/sec/android/gallery3d/util/IntArray;

    iput v10, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    iput v10, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v7, 0x10

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    new-array v7, v13, [Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string/jumbo v9, "aPosition"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uMatrix"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uColor"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v12

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string/jumbo v9, "aPosition"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uMatrix"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uTextureMatrix"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v12

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uTextureSampler"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v13

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uAlpha"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v14

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string/jumbo v9, "aPosition"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uMatrix"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uTextureMatrix"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v12

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uTextureSampler"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v13

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uAlpha"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v14

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string/jumbo v9, "aPosition"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v10

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uMatrix"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v11

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;

    const-string/jumbo v9, "aTextureCoordinate"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$AttributeShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v12

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uTextureSampler"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v13

    new-instance v8, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;

    const-string/jumbo v9, "uAlpha"

    invoke-direct {v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$UniformShaderParameter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v14

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    new-instance v7, Lcom/sec/android/gallery3d/util/IntArray;

    invoke-direct {v7}, Lcom/sec/android/gallery3d/util/IntArray;-><init>()V

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    new-instance v7, Lcom/sec/android/gallery3d/util/IntArray;

    invoke-direct {v7}, Lcom/sec/android/gallery3d/util/IntArray;-><init>()V

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcom/sec/android/gallery3d/util/IntArray;

    iput v10, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    iput v10, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    iput v10, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    iput v10, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    new-array v7, v11, [I

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    const/16 v7, 0x20

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    new-array v7, v14, [F

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    const/16 v7, 0x10

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    new-array v7, v11, [I

    iput-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-static {v7, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v8, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v7, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v8, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->BOX_COORDINATES:[F

    invoke-static {v7}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v7

    iput v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mBoxCoordinates:I

    const v7, 0x8b31

    const-string/jumbo v8, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n}\n"

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v2

    const v7, 0x8b31

    const-string/jumbo v8, "uniform mat4 uMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = (uTextureMatrix * pos).xy;\n}\n"

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v6

    const v7, 0x8b31

    const-string/jumbo v8, "uniform mat4 uMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoordinate;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 pos = vec4(aPosition, 0.0, 1.0);\n  gl_Position = uMatrix * pos;\n  vTextureCoord = aTextureCoordinate;\n}\n"

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v3

    const v7, 0x8b30

    const-string/jumbo v8, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n"

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v1

    const v7, 0x8b30

    const-string/jumbo v8, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v5

    const v7, 0x8b30

    const-string/jumbo v8, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->loadShader(ILjava/lang/String;)I

    move-result v4

    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v2, v1, v7}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mDrawProgram:I

    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v6, v5, v7}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTextureProgram:I

    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v6, v4, v7}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureProgram:I

    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v3, v5, v7}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->assembleProgram(II[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I

    move-result v7

    iput v7, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMeshProgram:I

    const/16 v7, 0x303

    invoke-static {v11, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private assembleProgram(II[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)I
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot create GL program: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v3, v1, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const-string/jumbo v3, "GLES20Canvas"

    const-string/jumbo v4, "Could not link program: "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "GLES20Canvas"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v2, 0x0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_2

    aget-object v3, p3, v0

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->loadHandle(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static checkError()V
    .locals 5

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string/jumbo v2, "GLES20Canvas"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GL error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static checkFramebufferStatus()V
    .locals 5

    const v2, 0x8d40

    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    const-string/jumbo v0, ""

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    const-string/jumbo v0, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 9

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v1

    iget v6, p0, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->left:F

    iget v6, p0, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->right:F

    iget v6, p0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    iget v6, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    iget v6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    iput v4, p0, Landroid/graphics/RectF;->right:F

    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    iput v5, p0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private static copyTextureCoordinates(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->hasBorder()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    int-to-float v4, v1

    int-to-float v5, v3

    int-to-float v6, v2

    int-to-float v7, v0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private static createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 5

    const/4 v4, 0x0

    array-length v2, p0

    mul-int/lit8 v1, v2, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    array-length v2, p0

    invoke-virtual {v0, p0, v4, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private draw(IIIFFFFIF)V
    .locals 10

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, p2, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->prepareDraw(IIF)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    move-object v2, p0

    move v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->draw([Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V

    return-void
.end method

.method private draw(IIIFFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V
    .locals 10

    invoke-virtual/range {p8 .. p8}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFIF)V

    return-void
.end method

.method private draw([Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->setMatrix([Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V

    aget-object v0, p1, v7

    iget v6, v0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-static {p2, v7, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-static {v6}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private drawTextureRect(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->setTextureMatrix(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    invoke-direct {p0, p1, v0, p3}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V

    return-void
.end method

.method private drawTextureRect(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V
    .locals 8

    const/4 v6, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->setPosition([Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V

    aget-object v0, v1, v6

    iget v0, v0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isFlippedVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v5, v0, v5}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->scale(FFF)V

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->translate(FF)V

    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x4

    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->draw([Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;IIFFFF)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isFlippedVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->restore()V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    return-void
.end method

.method private enableBlending(Z)V
    .locals 1

    const/16 v0, 0xbe2

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    goto :goto_0
.end method

.method private getColor(I)[F
    .locals 7

    const/high16 v6, 0x437f0000    # 255.0f

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v5

    mul-float v0, v4, v5

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float v3, v4, v0

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float v2, v4, v0

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    mul-float v1, v4, v0

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x0

    aput v3, v4, v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x1

    aput v2, v4, v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x2

    aput v1, v4, v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    const/4 v5, 0x3

    aput v0, v4, v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempColor:[F

    return-object v4
.end method

.method private getTargetTexture()Lcom/sec/android/gallery3d/glrenderer/RawTexture;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTargetTextures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glrenderer/RawTexture;

    return-object v0
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return v0
.end method

.method private prepareDraw(IIF)V
    .locals 9

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mDrawProgram:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-lez v4, :cond_0

    invoke-static {p3}, Landroid/opengl/GLES20;->glLineWidth(F)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->getColor(I)[F

    move-result-object v1

    aget v4, v1, v7

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->enableBlending(Z)V

    if-eqz v0, :cond_1

    aget v4, v1, v3

    aget v5, v1, v2

    aget v6, v1, v8

    aget v7, v1, v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v4, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mDrawParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->setPosition([Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private prepareTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;I[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    const v2, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->enableBlending(Z)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-virtual {p1, p0}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->onBind(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 v0, 0x3

    aget-object v0, p3, v0

    iget v0, v0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 v0, 0x4

    aget-object v0, p3, v0

    iget v0, v0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private prepareTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v2

    const/16 v3, 0xde1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTextureParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTextureProgram:I

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;I[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mOesTextureProgram:I

    goto :goto_0
.end method

.method private static printMatrix(Ljava/lang/String;[FI)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int v2, p2, v1

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "GLES20Canvas"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setMatrix([Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V
    .locals 10

    const/16 v9, 0x10

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p4, p5, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    iget-object v6, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    move v3, v9

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    aget-object v0, p1, v8

    iget v0, v0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    invoke-static {v0, v8, v1, v2, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private setPosition([Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;I)V
    .locals 7

    const v6, 0x8892

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mBoxCoordinates:I

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    aget-object v0, p1, v3

    iget v0, v0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    mul-int/lit8 v5, p2, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method private setRenderTarget(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Lcom/sec/android/gallery3d/glrenderer/RawTexture;)V
    .locals 5

    const/4 v1, 0x1

    const v4, 0x8d40

    const/4 v3, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    aget v0, v0, v3

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    :cond_0
    :goto_0
    if-nez p2, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mScreenWidth:I

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mScreenHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->setSize(II)V

    :goto_1
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mFrameBuffer:[I

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->setSize(II)V

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2, p0}, Lcom/sec/android/gallery3d/glrenderer/RawTexture;->prepare(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_3
    const v0, 0x8ce0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/RawTexture;->getTarget()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/RawTexture;->getId()I

    move-result v2

    invoke-static {v4, v0, v1, v2, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkFramebufferStatus()V

    goto :goto_1
.end method

.method private setTextureMatrix(Landroid/graphics/RectF;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/16 v1, 0xc

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTextureMatrix:[F

    const/16 v1, 0xd

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    return-void
.end method

.method private uploadBuffer(Ljava/nio/Buffer;I)I
    .locals 6

    const v5, 0x8892

    const/4 v4, 0x0

    sget-object v1, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempIntArray:[I

    aget v0, v1, v4

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    mul-int/2addr v1, p2

    const v2, 0x88e4

    invoke-static {v5, v1, p1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return v0
.end method


# virtual methods
.method public clearBuffer()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method public clearBuffer([F)V
    .locals 4

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    return-void
.end method

.method public deleteBuffer(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcom/sec/android/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/util/IntArray;->add(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteRecycledResources()V
    .locals 7

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/sec/android/gallery3d/glrenderer/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mDeleteBuffers:Lcom/sec/android/gallery3d/util/IntArray;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/sec/android/gallery3d/glrenderer/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->clear()V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public drawCubicBezierCurve(FFFFFFFFFFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V
    .locals 0

    return-void
.end method

.method public drawLine(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V
    .locals 9

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    sub-float v6, p3, p1

    sub-float v7, p4, p2

    move-object v0, p0

    move v4, p1

    move v5, p2

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawMesh(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIIIII)V
    .locals 8

    iget v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMeshProgram:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->prepareTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;I[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;)V

    const v2, 0x8893

    invoke-static {v2, p6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const v2, 0x8892

    invoke-static {v2, p4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v0, v2, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const v2, 0x8892

    invoke-static {v2, p5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget v1, v2, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;->handle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const v2, 0x8892

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMeshParameters:[Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;

    int-to-float v4, p2

    int-to-float v5, p3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->setMatrix([Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas$ShaderParameter;FFFF)V

    const/4 v2, 0x5

    const/16 v3, 0x1401

    const/4 v4, 0x0

    invoke-static {v2, p7, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const v2, 0x8893

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    iget v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    return-void
.end method

.method public drawMixed(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 10

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v8

    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v0, v2, v6

    mul-float v9, v0, v8

    invoke-virtual {p0, v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->setAlpha(F)V

    invoke-virtual {p0, p1, p4, p5}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    mul-float v7, v6, v8

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->setAlpha(F)V

    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->fillRect(FFFFI)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->restore()V

    goto :goto_0
.end method

.method public drawRect(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V
    .locals 9

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 5

    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->copyTextureCoordinates(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float v2, p3

    add-int v3, p2, p4

    int-to-float v3, v3

    add-int v4, p3, p5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;[FIIII)V
    .locals 5

    if-lez p5, :cond_0

    if-gtz p6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p4

    add-int v3, p3, p5

    int-to-float v3, v3

    add-int v4, p4, p6

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempTargetRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->drawTextureRect(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;[FLandroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public dumpStatisticsAndClear()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "MESH:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawMesh:I

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountTextureRect:I

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountDrawLine:I

    const-string/jumbo v1, "GLES20Canvas"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 10

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->draw(IIIFFFFIF)V

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCountFillRect:I

    return-void
.end method

.method public getAllTextures()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/gallery3d/glrenderer/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlpha()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getGLId()Lcom/sec/android/gallery3d/glrenderer/GLId;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    return-object v0
.end method

.method public getUploadedCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mUploadedCount:I

    return v0
.end method

.method public initializeTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-static {v0, v2, p2, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public initializeTextureSize(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;II)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v4

    const/4 v8, 0x0

    move v2, p2

    move v5, v1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public invalidateAllTextures()V
    .locals 0

    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->setAlpha(F)V

    return-void
.end method

.method public multiplyMatrix([FI)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public resetUploadLimit()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mUploadedCount:I

    return-void
.end method

.method public restore()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcom/sec/android/gallery3d/util/IntArray;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/util/IntArray;->removeLast()I

    move-result v1

    and-int/lit8 v4, v1, 0x1

    if-ne v4, v2, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    :cond_0
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    :goto_1
    if-eqz v2, :cond_1

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v3, v3, -0x10

    iput v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    :cond_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public rotate(FFFF)V
    .locals 9

    const/4 v1, 0x0

    const/16 v8, 0x10

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mTempMatrix:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    move-object v2, v0

    move v3, v8

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-static {v0, v8, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->save(I)V

    return-void
.end method

.method public save(I)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    and-int/lit8 v5, p1, 0x1

    if-ne v5, v3, :cond_4

    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->getAlpha()F

    move-result v0

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    array-length v5, v5

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    if-gt v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget-object v6, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    :cond_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aput v0, v5, v6

    :cond_1
    and-int/lit8 v5, p1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    :goto_1
    if-eqz v3, :cond_3

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    add-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    array-length v4, v4

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    if-gt v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    const/16 v7, 0x10

    invoke-static {v4, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mSaveFlags:Lcom/sec/android/gallery3d/util/IntArray;

    invoke-virtual {v4, p1}, Lcom/sec/android/gallery3d/util/IntArray;->add(I)V

    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method public scale(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setAllTextues(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 0

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mAlphas:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentAlphaIndex:I

    aput p1, v0, v1

    return-void
.end method

.method public setSize(II)V
    .locals 8

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iput p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mWidth:I

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mHeight:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mProjectionMatrix:[F

    int-to-float v3, p1

    int-to-float v5, p2

    move v4, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->getTargetTexture()Lcom/sec/android/gallery3d/glrenderer/RawTexture;

    move-result-object v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mScreenWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mScreenHeight:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    int-to-float v3, p2

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, v7, v6, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_0
    return-void
.end method

.method public setTextureParameters(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 4

    const v3, 0x812f

    const v2, 0x46180400    # 9729.0f

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/16 v1, 0x2802

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public setUploadedCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mUploadedCount:I

    return-void
.end method

.method public texSubImage2D(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    .locals 7

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    return-void
.end method

.method public translate(FF)V
    .locals 6

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    add-int/lit8 v2, v0, 0xc

    aget v3, v1, v2

    aget v4, v1, v0

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x4

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xd

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x5

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xe

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x6

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0xf

    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x3

    aget v4, v1, v4

    mul-float/2addr v4, p1

    add-int/lit8 v5, v0, 0x7

    aget v5, v1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    return-void
.end method

.method public translate(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mMatrices:[F

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mCurrentMatrixIndex:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public unloadTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/util/IntArray;->add(I)V

    monitor-exit v2

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uploadBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method

.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method

.method public uploadLimitReached()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES20Canvas;->mUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yieldAllTextures()V
    .locals 0

    return-void
.end method
