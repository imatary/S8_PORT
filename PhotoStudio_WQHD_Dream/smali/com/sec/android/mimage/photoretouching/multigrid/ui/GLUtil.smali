.class public Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;
.super Ljava/lang/Object;
.source "GLUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_GLUtil"

.field private static final sIdentityMatrix:[F

.field public static sTextureBuffer:Ljava/nio/FloatBuffer;

.field public static sTextureCoordinates:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->sIdentityMatrix:[F

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->sTextureCoordinates:[F

    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->sTextureCoordinates:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sget-object v1, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->sTextureCoordinates:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->sTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->sTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTexture()I
    .locals 6

    const/4 v2, 0x1

    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/4 v1, 0x0

    const/16 v3, 0xde1

    new-array v0, v2, [I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v0, v1

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    aget v2, v0, v1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget v1, v0, v1

    goto :goto_0
.end method

.method public static getIdentityMatrix()[F
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->sIdentityMatrix:[F

    return-object v0
.end method

.method public static final getMaxTextureSize()I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [I

    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v1, v0, v2

    return v1
.end method

.method public static getNormalizedCoordinates([FIFFFFII)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    add-int/lit8 v0, p1, 0x1

    int-to-float v1, p6

    div-float v1, p2, v1

    mul-float/2addr v1, v4

    sub-float/2addr v1, v3

    aput v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    add-float v1, p3, p5

    mul-float/2addr v1, v4

    int-to-float v2, p7

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    add-float v1, p2, p4

    mul-float/2addr v1, v4

    int-to-float v2, p6

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    aput v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    mul-float v1, v4, p3

    int-to-float v2, p7

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    int-to-float v1, p6

    div-float v1, p2, v1

    mul-float/2addr v1, v4

    sub-float/2addr v1, v3

    aput v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    mul-float v1, v4, p3

    int-to-float v2, p7

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    int-to-float v1, p6

    div-float v1, p2, v1

    mul-float/2addr v1, v4

    sub-float/2addr v1, v3

    aput v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    add-float v1, p3, p5

    mul-float/2addr v1, v4

    int-to-float v2, p7

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    add-float v1, p2, p4

    mul-float/2addr v1, v4

    int-to-float v2, p6

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    aput v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    add-float v1, p3, p5

    mul-float/2addr v1, v4

    int-to-float v2, p7

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    add-float v1, p2, p4

    mul-float/2addr v1, v4

    int-to-float v2, p6

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    aput v1, p0, p1

    mul-float v1, v4, p3

    int-to-float v2, p7

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    aput v1, p0, v0

    return-void
.end method

.method private static getNormalizedCoordinates(FFFFFFFFFF)[F
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v0, 0xc

    new-array v0, v0, [F

    const/4 v1, 0x0

    mul-float v2, v4, p4

    div-float/2addr v2, p8

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    mul-float v2, v4, p5

    div-float/2addr v2, p9

    sub-float v2, v3, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    mul-float v2, v4, p2

    div-float/2addr v2, p8

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    mul-float v2, v4, p3

    div-float/2addr v2, p9

    sub-float v2, v3, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    mul-float v2, v4, p0

    div-float/2addr v2, p8

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    mul-float v2, v4, p1

    div-float/2addr v2, p9

    sub-float v2, v3, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    mul-float v2, v4, p4

    div-float/2addr v2, p8

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    mul-float v2, v4, p5

    div-float/2addr v2, p9

    sub-float v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0x8

    mul-float v2, v4, p6

    div-float/2addr v2, p8

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x9

    mul-float v2, v4, p7

    div-float/2addr v2, p9

    sub-float v2, v3, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    mul-float v2, v4, p2

    div-float/2addr v2, p8

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xb

    mul-float v2, v4, p3

    div-float/2addr v2, p9

    sub-float v2, v3, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public static getNormalizedCoordinates(FFFFFFFZ)[F
    .locals 16

    if-eqz p7, :cond_0

    move/from16 v0, p4

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    move/from16 v0, p2

    neg-float v4, v0

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    move/from16 v0, p4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    move/from16 v0, p3

    neg-float v6, v0

    float-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    sub-double/2addr v2, v4

    move/from16 v0, p0

    float-to-double v4, v0

    add-double/2addr v2, v4

    double-to-float v2, v2

    move/from16 v0, p4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    move/from16 v0, p2

    neg-float v3, v0

    float-to-double v6, v3

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move/from16 v0, p3

    neg-float v3, v0

    float-to-double v8, v3

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    move/from16 v0, p1

    float-to-double v6, v0

    add-double/2addr v4, v6

    double-to-float v3, v4

    move/from16 v0, p4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    move/from16 v0, p2

    float-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    move/from16 v0, p3

    neg-float v8, v0

    float-to-double v8, v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    move/from16 v0, p0

    float-to-double v6, v0

    add-double/2addr v4, v6

    double-to-float v4, v4

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move/from16 v0, p3

    neg-float v5, v0

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    move/from16 v0, p1

    float-to-double v8, v0

    add-double/2addr v6, v8

    double-to-float v5, v6

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move/from16 v0, p2

    neg-float v8, v0

    float-to-double v8, v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move/from16 v0, p3

    float-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    move/from16 v0, p0

    float-to-double v8, v0

    add-double/2addr v6, v8

    double-to-float v6, v6

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move/from16 v0, p2

    neg-float v7, v0

    float-to-double v10, v7

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    move/from16 v0, p4

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    move/from16 v0, p3

    float-to-double v12, v0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    move/from16 v0, p1

    float-to-double v10, v0

    add-double/2addr v8, v10

    double-to-float v7, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move/from16 v0, p2

    float-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    move/from16 v0, p4

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    move/from16 v0, p3

    float-to-double v12, v0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v8, v10

    move/from16 v0, p0

    float-to-double v10, v0

    add-double/2addr v8, v10

    double-to-float v8, v8

    move/from16 v0, p4

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    move/from16 v0, p2

    float-to-double v12, v0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    move/from16 v0, p4

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    move/from16 v0, p3

    float-to-double v14, v0

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    add-double/2addr v10, v12

    move/from16 v0, p1

    float-to-double v12, v0

    add-double/2addr v10, v12

    double-to-float v9, v10

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v2 .. v11}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->getNormalizedCoordinates(FFFFFFFFFF)[F

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/16 v2, 0xa

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move/from16 v0, p2

    neg-float v5, v0

    float-to-double v8, v5

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move/from16 v0, p3

    neg-float v5, v0

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    move/from16 v0, p0

    float-to-double v8, v0

    add-double/2addr v6, v8

    double-to-float v5, v6

    mul-float/2addr v4, v5

    div-float v4, v4, p5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    move/from16 v0, p2

    neg-float v8, v0

    float-to-double v8, v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move/from16 v0, p3

    neg-float v10, v0

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    move/from16 v0, p1

    float-to-double v8, v0

    add-double/2addr v6, v8

    double-to-float v6, v6

    mul-float/2addr v5, v6

    div-float v5, v5, p6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move/from16 v0, p3

    neg-float v5, v0

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    move/from16 v0, p0

    float-to-double v8, v0

    add-double/2addr v6, v8

    double-to-float v5, v6

    mul-float/2addr v4, v5

    div-float v4, v4, p5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move/from16 v0, p3

    neg-float v10, v0

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    move/from16 v0, p1

    float-to-double v8, v0

    add-double/2addr v6, v8

    double-to-float v6, v6

    mul-float/2addr v5, v6

    div-float v5, v5, p6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x4

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move/from16 v0, p3

    float-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    move/from16 v0, p0

    float-to-double v8, v0

    add-double/2addr v6, v8

    double-to-float v5, v6

    mul-float/2addr v4, v5

    div-float v4, v4, p5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x5

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    move/from16 v0, p2

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move/from16 v0, p3

    float-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    move/from16 v0, p1

    float-to-double v8, v0

    add-double/2addr v6, v8

    double-to-float v6, v6

    mul-float/2addr v5, v6

    div-float v5, v5, p6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x6

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move/from16 v0, p2

    neg-float v5, v0

    float-to-double v8, v5

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move/from16 v0, p3

    float-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    move/from16 v0, p0

    float-to-double v8, v0

    add-double/2addr v6, v8

    double-to-float v5, v6

    mul-float/2addr v4, v5

    div-float v4, v4, p5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/4 v3, 0x7

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    move/from16 v0, p2

    neg-float v8, v0

    float-to-double v8, v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move/from16 v0, p3

    float-to-double v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    move/from16 v0, p1

    float-to-double v8, v0

    add-double/2addr v6, v8

    double-to-float v6, v6

    mul-float/2addr v5, v6

    div-float v5, v5, p6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0x8

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move/from16 v0, p2

    neg-float v5, v0

    float-to-double v8, v5

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move/from16 v0, p3

    neg-float v5, v0

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    move/from16 v0, p0

    float-to-double v8, v0

    add-double/2addr v6, v8

    double-to-float v5, v6

    mul-float/2addr v4, v5

    div-float v4, v4, p5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    aput v4, v2, v3

    const/16 v3, 0x9

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, p4

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    move/from16 v0, p2

    neg-float v8, v0

    float-to-double v8, v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move/from16 v0, p4

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move/from16 v0, p3

    neg-float v10, v0

    float-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    move/from16 v0, p1

    float-to-double v8, v0

    add-double/2addr v6, v8

    double-to-float v6, v6

    mul-float/2addr v5, v6

    div-float v5, v5, p6

    sub-float/2addr v4, v5

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public static getNormalizedCoordinates(FFFFII)[F
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v0, 0xc

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x1

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x3

    mul-float v2, v5, p1

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x5

    mul-float v2, v5, p1

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x7

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/16 v1, 0x8

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/16 v1, 0x9

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/16 v1, 0xb

    mul-float v2, v5, p1

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public static getNormalizedCoordinatesForStrip([FIFFFFII)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    add-int/lit8 v0, p1, 0x1

    int-to-float v1, p6

    div-float v1, p2, v1

    mul-float/2addr v1, v4

    sub-float/2addr v1, v3

    aput v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    mul-float v1, v4, p3

    int-to-float v2, p7

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    aput v5, p0, p1

    add-int/lit8 p1, v0, 0x1

    aput v5, p0, v0

    add-int/lit8 v0, p1, 0x1

    int-to-float v1, p6

    div-float v1, p2, v1

    mul-float/2addr v1, v4

    sub-float/2addr v1, v3

    aput v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    add-float v1, p3, p5

    mul-float/2addr v1, v4

    int-to-float v2, p7

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    aput v5, p0, p1

    add-int/lit8 p1, v0, 0x1

    aput v3, p0, v0

    add-int/lit8 v0, p1, 0x1

    add-float v1, p2, p4

    mul-float/2addr v1, v4

    int-to-float v2, p6

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    aput v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    mul-float v1, v4, p3

    int-to-float v2, p7

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    aput v3, p0, p1

    add-int/lit8 p1, v0, 0x1

    aput v5, p0, v0

    add-int/lit8 v0, p1, 0x1

    add-float v1, p2, p4

    mul-float/2addr v1, v4

    int-to-float v2, p6

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    aput v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    add-float v1, p3, p5

    mul-float/2addr v1, v4

    int-to-float v2, p7

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    aput v3, p0, p1

    add-int/lit8 p1, v0, 0x1

    aput v3, p0, v0

    return-void
.end method

.method public static getNormalizedCoordinatesForStrip(FFFFII)[F
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x1

    mul-float v2, v5, p1

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x3

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x5

    mul-float v2, v5, p1

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x7

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public static getNormalizedCoordinatesForStripWithReferences(FFFFII)[F
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p3

    if-lez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    int-to-float v1, p4

    div-float v1, p0, v1

    mul-float/2addr v1, v5

    sub-float/2addr v1, v4

    aput v1, v0, v2

    mul-float v1, v5, p1

    int-to-float v2, p5

    div-float/2addr v1, v2

    sub-float v1, v4, v1

    aput v1, v0, v3

    const/4 v1, 0x2

    neg-float v2, p2

    div-float/2addr v2, p3

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x5

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    neg-float v2, p2

    div-float/2addr v2, p3

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v6, v0, v1

    const/16 v1, 0x8

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/16 v1, 0x9

    mul-float v2, v5, p1

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    div-float v2, p2, p3

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    const/16 v1, 0xc

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/16 v1, 0xd

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/16 v1, 0xe

    div-float v2, p2, p3

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v6, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    int-to-float v1, p4

    div-float v1, p0, v1

    mul-float/2addr v1, v5

    sub-float/2addr v1, v4

    aput v1, v0, v2

    mul-float v1, v5, p1

    int-to-float v2, p5

    div-float/2addr v1, v2

    sub-float v1, v4, v1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v6, v0, v1

    const/4 v1, 0x3

    div-float v2, p3, p2

    aput v2, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x5

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v6, v0, v1

    const/4 v1, 0x7

    neg-float v2, p3

    div-float/2addr v2, p2

    aput v2, v0, v1

    const/16 v1, 0x8

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/16 v1, 0x9

    mul-float v2, v5, p1

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    div-float v2, p3, p2

    aput v2, v0, v1

    const/16 v1, 0xc

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/16 v1, 0xd

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    neg-float v2, p3

    div-float/2addr v2, p2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public static getNormalizedCoordinatesForStripWithTextures(FFFFII)[F
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x1

    mul-float v2, v5, p1

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v6, v0, v1

    const/4 v1, 0x3

    aput v6, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x5

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v6, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/16 v1, 0x9

    mul-float v2, v5, p1

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v6, v0, v1

    const/16 v1, 0xc

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/16 v1, 0xd

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    return-object v0
.end method

.method public static getNormalizedCoordinatesForTiles(FFFFII[I)[F
    .locals 15

    const/4 v12, 0x0

    aget v5, p6, v12

    const/4 v12, 0x1

    aget v11, p6, v12

    mul-int/lit8 v12, v5, 0x10

    mul-int/2addr v12, v11

    new-array v10, v12, [F

    const/4 v8, 0x0

    int-to-float v12, v5

    div-float v4, p2, v12

    int-to-float v12, v11

    div-float v1, p3, v12

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    const/4 v7, 0x0

    move v9, v8

    :goto_1
    if-ge v7, v11, :cond_0

    int-to-float v12, v6

    mul-float/2addr v12, v4

    add-float v2, p0, v12

    int-to-float v12, v7

    mul-float/2addr v12, v1

    add-float v3, p1, v12

    add-int/lit8 v8, v9, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    move/from16 v0, p4

    int-to-float v13, v0

    div-float v13, v2, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    aput v12, v10, v9

    add-int/lit8 v9, v8, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v3

    move/from16 v0, p5

    int-to-float v14, v0

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v8

    add-int/lit8 v8, v9, 0x1

    const/4 v12, 0x0

    aput v12, v10, v9

    add-int/lit8 v9, v8, 0x1

    const/4 v12, 0x0

    aput v12, v10, v8

    add-int/lit8 v8, v9, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    move/from16 v0, p4

    int-to-float v13, v0

    div-float v13, v2, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    aput v12, v10, v9

    add-int/lit8 v9, v8, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    add-float v14, v3, v1

    mul-float/2addr v13, v14

    move/from16 v0, p5

    int-to-float v14, v0

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v8

    add-int/lit8 v8, v9, 0x1

    const/4 v12, 0x0

    aput v12, v10, v9

    add-int/lit8 v9, v8, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v8

    add-int/lit8 v8, v9, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    add-float v13, v2, v4

    mul-float/2addr v12, v13

    move/from16 v0, p4

    int-to-float v13, v0

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    aput v12, v10, v9

    add-int/lit8 v9, v8, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v3

    move/from16 v0, p5

    int-to-float v14, v0

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v8

    add-int/lit8 v8, v9, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v9

    add-int/lit8 v9, v8, 0x1

    const/4 v12, 0x0

    aput v12, v10, v8

    add-int/lit8 v8, v9, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    add-float v13, v2, v4

    mul-float/2addr v12, v13

    move/from16 v0, p4

    int-to-float v13, v0

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    aput v12, v10, v9

    add-int/lit8 v9, v8, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    add-float v14, v3, v1

    mul-float/2addr v13, v14

    move/from16 v0, p5

    int-to-float v14, v0

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v8

    add-int/lit8 v8, v9, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v9

    add-int/lit8 v9, v8, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move v8, v9

    goto/16 :goto_0

    :cond_1
    return-object v10
.end method

.method public static getNormalizedCoordinatesWithTextureBuff(FFFFII)[F
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x1

    mul-float v2, v5, p1

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v6, v0, v1

    const/4 v1, 0x3

    aput v6, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v5

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x5

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v6, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/16 v1, 0x9

    mul-float v2, v5, p1

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v6, v0, v1

    const/16 v1, 0xc

    add-float v2, p0, p2

    mul-float/2addr v2, v5

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    const/16 v1, 0xd

    add-float v2, p1, p3

    mul-float/2addr v2, v5

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    return-object v0
.end method

.method public static getOrthoNormalizedCoordinates(FFFFII)[F
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-le p4, p5, :cond_0

    int-to-float v1, p4

    int-to-float v2, p5

    div-float v0, v1, v2

    const/16 v1, 0xc

    new-array v1, v1, [F

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    mul-float/2addr v2, v0

    aput v2, v1, v3

    add-float v2, p1, p3

    mul-float/2addr v2, v6

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v5, v2

    aput v2, v1, v4

    add-float v2, p0, p2

    mul-float/2addr v2, v6

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v5

    mul-float/2addr v2, v0

    aput v2, v1, v7

    const/4 v2, 0x3

    mul-float v3, v6, p1

    int-to-float v4, p5

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    int-to-float v3, p4

    div-float v3, p0, v3

    mul-float/2addr v3, v6

    sub-float/2addr v3, v5

    mul-float/2addr v3, v0

    aput v3, v1, v2

    const/4 v2, 0x5

    mul-float v3, v6, p1

    int-to-float v4, p5

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    aput v3, v1, v2

    const/4 v2, 0x6

    int-to-float v3, p4

    div-float v3, p0, v3

    mul-float/2addr v3, v6

    sub-float/2addr v3, v5

    mul-float/2addr v3, v0

    aput v3, v1, v2

    const/4 v2, 0x7

    add-float v3, p1, p3

    mul-float/2addr v3, v6

    int-to-float v4, p5

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    aput v3, v1, v2

    const/16 v2, 0x8

    add-float v3, p0, p2

    mul-float/2addr v3, v6

    int-to-float v4, p4

    div-float/2addr v3, v4

    sub-float/2addr v3, v5

    mul-float/2addr v3, v0

    aput v3, v1, v2

    const/16 v2, 0x9

    add-float v3, p1, p3

    mul-float/2addr v3, v6

    int-to-float v4, p5

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    aput v3, v1, v2

    const/16 v2, 0xa

    add-float v3, p0, p2

    mul-float/2addr v3, v6

    int-to-float v4, p4

    div-float/2addr v3, v4

    sub-float/2addr v3, v5

    mul-float/2addr v3, v0

    aput v3, v1, v2

    const/16 v2, 0xb

    mul-float v3, v6, p1

    int-to-float v4, p5

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    aput v3, v1, v2

    :goto_0
    return-object v1

    :cond_0
    int-to-float v1, p5

    int-to-float v2, p4

    div-float v0, v1, v2

    const/16 v1, 0xc

    new-array v1, v1, [F

    int-to-float v2, p4

    div-float v2, p0, v2

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    aput v2, v1, v3

    add-float v2, p1, p3

    mul-float/2addr v2, v6

    int-to-float v3, p5

    div-float/2addr v2, v3

    sub-float v2, v5, v2

    mul-float/2addr v2, v0

    aput v2, v1, v4

    add-float v2, p0, p2

    mul-float/2addr v2, v6

    int-to-float v3, p4

    div-float/2addr v2, v3

    sub-float/2addr v2, v5

    aput v2, v1, v7

    const/4 v2, 0x3

    mul-float v3, v6, p1

    int-to-float v4, p5

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    mul-float/2addr v3, v0

    aput v3, v1, v2

    const/4 v2, 0x4

    int-to-float v3, p4

    div-float v3, p0, v3

    mul-float/2addr v3, v6

    sub-float/2addr v3, v5

    aput v3, v1, v2

    const/4 v2, 0x5

    mul-float v3, v6, p1

    int-to-float v4, p5

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    mul-float/2addr v3, v0

    aput v3, v1, v2

    const/4 v2, 0x6

    int-to-float v3, p4

    div-float v3, p0, v3

    mul-float/2addr v3, v6

    sub-float/2addr v3, v5

    aput v3, v1, v2

    const/4 v2, 0x7

    add-float v3, p1, p3

    mul-float/2addr v3, v6

    int-to-float v4, p5

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    mul-float/2addr v3, v0

    aput v3, v1, v2

    const/16 v2, 0x8

    add-float v3, p0, p2

    mul-float/2addr v3, v6

    int-to-float v4, p4

    div-float/2addr v3, v4

    sub-float/2addr v3, v5

    aput v3, v1, v2

    const/16 v2, 0x9

    add-float v3, p1, p3

    mul-float/2addr v3, v6

    int-to-float v4, p5

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    mul-float/2addr v3, v0

    aput v3, v1, v2

    const/16 v2, 0xa

    add-float v3, p0, p2

    mul-float/2addr v3, v6

    int-to-float v4, p4

    div-float/2addr v3, v4

    sub-float/2addr v3, v5

    aput v3, v1, v2

    const/16 v2, 0xb

    mul-float v3, v6, p1

    int-to-float v4, p5

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    mul-float/2addr v3, v0

    aput v3, v1, v2

    goto :goto_0
.end method

.method public static getTextureBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLUtil;->sTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public static screenToNorm(FFFF)[F
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    mul-float v2, v4, p0

    div-float/2addr v2, p2

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    mul-float v2, v4, p1

    div-float/2addr v2, p3

    sub-float v2, v3, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public static screenToOrthoNorm(FFFF)[F
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p3

    if-lez v0, :cond_0

    new-array v0, v1, [F

    mul-float v1, v3, p0

    div-float/2addr v1, p2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    div-float/2addr v1, p3

    aput v1, v0, v4

    mul-float v1, v3, p1

    div-float/2addr v1, p3

    sub-float v1, v2, v1

    aput v1, v0, v5

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [F

    mul-float v1, v3, p0

    div-float/2addr v1, p2

    sub-float/2addr v1, v2

    aput v1, v0, v4

    mul-float v1, v3, p1

    div-float/2addr v1, p3

    sub-float v1, v2, v1

    mul-float/2addr v1, p3

    div-float/2addr v1, p2

    aput v1, v0, v5

    goto :goto_0
.end method
