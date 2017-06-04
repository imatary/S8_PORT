.class public Lcom/sec/android/gallery3d/glcore/TUtils;
.super Ljava/lang/Object;
.source "TUtils.java"


# static fields
.field public static final MAJOR_RADIUS:F = 0.5f

.field private static final MODE_DOWNWARD_ROUNDED:I = 0x3

.field private static final MODE_ROUNDED:I = 0x1

.field private static final MODE_UPPER_ROUNDED:I = 0x2

.field private static final M_PI:F = 3.1415927f

.field public static final PRECISION_FLOAT:F

.field public static final PRECISION_INT:I

.field private static final ROUND_SMOOTHER:F = 10000.0f

.field private static final ROUND_SMOOTHER_INT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "TUtils"

.field private static final USE_LOW_PRECISION:Z

.field public static final mBaseUsed:I = 0x3

.field public static final mMaxTexture:I = 0x400

.field public static final sDefaultTexCoordBuffer:Ljava/nio/FloatBuffer;

.field public static final sDefaultVertexBuffer:Ljava/nio/FloatBuffer;

.field private static final texCoords:[F

.field public static final vertices:[F


# instance fields
.field private mGl:Ljavax/microedition/khronos/opengles/GL11;

.field private mIsTexture:[Z

.field private mTextureIds:[I

.field private mUsedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/gallery3d/glcore/TUtils;->texCoords:[F

    sget-object v0, Lcom/sec/android/gallery3d/glcore/TUtils;->vertices:[F

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/glcore/TUtils;->sDefaultVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/sec/android/gallery3d/glcore/TUtils;->texCoords:[F

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/glcore/TUtils;->sDefaultTexCoordBuffer:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowPrecision:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/glcore/TUtils;->USE_LOW_PRECISION:Z

    sget-boolean v0, Lcom/sec/android/gallery3d/glcore/TUtils;->USE_LOW_PRECISION:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    sput v0, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_INT:I

    sget-boolean v0, Lcom/sec/android/gallery3d/glcore/TUtils;->USE_LOW_PRECISION:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    :goto_1
    sput v0, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_FLOAT:F

    return-void

    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0

    :cond_1
    const/high16 v0, 0x447a0000    # 1000.0f

    goto :goto_1

    nop

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mGl:Ljavax/microedition/khronos/opengles/GL11;

    return-void
.end method

.method public static calcCircleColors([FIIF)V
    .locals 12

    const/high16 v11, 0x437f0000    # 255.0f

    const/4 v5, 0x0

    div-int/lit8 v9, p1, 0x3

    add-int/lit8 v7, v9, -0x1

    shr-int/lit8 v10, p2, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    div-float v8, v10, v11

    shr-int/lit8 v10, p2, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    div-float v3, v10, v11

    and-int/lit16 v10, p2, 0xff

    int-to-float v10, v10

    div-float v2, v10, v11

    const/4 v1, 0x0

    move v0, p3

    const/4 v4, 0x0

    move v6, v5

    :goto_0
    if-ge v4, v7, :cond_0

    add-int/lit8 v5, v6, 0x1

    aput v8, p0, v6

    add-int/lit8 v6, v5, 0x1

    aput v3, p0, v5

    add-int/lit8 v5, v6, 0x1

    aput v2, p0, v6

    add-int/lit8 v6, v5, 0x1

    aput v1, p0, v5

    add-int/lit8 v5, v6, 0x1

    aput v8, p0, v6

    add-int/lit8 v6, v5, 0x1

    aput v3, p0, v5

    add-int/lit8 v5, v6, 0x1

    aput v2, p0, v6

    add-int/lit8 v6, v5, 0x1

    aput v0, p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v6, 0x1

    const/4 v10, 0x0

    aget v10, p0, v10

    aput v10, p0, v6

    add-int/lit8 v6, v5, 0x1

    const/4 v10, 0x1

    aget v10, p0, v10

    aput v10, p0, v5

    add-int/lit8 v5, v6, 0x1

    const/4 v10, 0x2

    aget v10, p0, v10

    aput v10, p0, v6

    add-int/lit8 v6, v5, 0x1

    const/4 v10, 0x3

    aget v10, p0, v10

    aput v10, p0, v5

    add-int/lit8 v5, v6, 0x1

    const/4 v10, 0x4

    aget v10, p0, v10

    aput v10, p0, v6

    add-int/lit8 v6, v5, 0x1

    const/4 v10, 0x5

    aget v10, p0, v10

    aput v10, p0, v5

    add-int/lit8 v5, v6, 0x1

    const/4 v10, 0x6

    aget v10, p0, v10

    aput v10, p0, v6

    const/4 v10, 0x7

    aget v10, p0, v10

    aput v10, p0, v5

    return-void
.end method

.method public static calcRoundVertex([FIFZFF)V
    .locals 10

    const v9, 0x461c4000    # 10000.0f

    const/4 v8, 0x0

    if-eqz p3, :cond_0

    div-float v3, p4, p5

    :goto_0
    const/4 v0, 0x0

    :goto_1
    div-int/lit8 v4, p1, 0x4

    if-ge v0, v4, :cond_2

    div-int/lit8 v4, v0, 0x3

    int-to-float v4, v4

    int-to-float v5, p1

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    div-float v1, v4, v5

    float-to-double v4, v1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-float v2, v4

    if-eqz p3, :cond_1

    float-to-double v4, p2

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, p0, v0

    :goto_2
    add-int/lit8 v4, v0, 0x2

    aput v8, p0, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_0
    div-float v3, p5, p4

    goto :goto_0

    :cond_1
    float-to-double v4, p2

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    mul-float/2addr v4, v3

    aput v4, p0, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    div-int/lit8 v4, p1, 0x4

    if-ge v0, v4, :cond_4

    if-eqz p3, :cond_3

    div-int/lit8 v4, p1, 0x4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x2

    aget v5, p0, v0

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    aput v5, p0, v4

    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto :goto_3

    :cond_3
    div-int/lit8 v4, p1, 0x4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x2

    aget v5, p0, v0

    div-float/2addr v5, v3

    aput v5, p0, v4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_5
    div-int/lit8 v4, p1, 0x4

    if-ge v0, v4, :cond_5

    div-int/lit8 v4, p1, 0x4

    add-int/2addr v4, v0

    aget v5, p0, v0

    neg-float v5, v5

    aput v5, p0, v4

    div-int/lit8 v4, p1, 0x4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v0, 0x1

    aget v5, p0, v5

    aput v5, p0, v4

    div-int/lit8 v4, p1, 0x4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x2

    aput v8, p0, v4

    div-int/lit8 v4, p1, 0x2

    add-int/2addr v4, v0

    aget v5, p0, v0

    neg-float v5, v5

    aput v5, p0, v4

    div-int/lit8 v4, p1, 0x2

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v0, 0x1

    aget v5, p0, v5

    neg-float v5, v5

    aput v5, p0, v4

    div-int/lit8 v4, p1, 0x2

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x2

    aput v8, p0, v4

    div-int/lit8 v4, p1, 0x4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v0

    aget v5, p0, v0

    aput v5, p0, v4

    div-int/lit8 v4, p1, 0x4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v0, 0x1

    aget v5, p0, v5

    neg-float v5, v5

    aput v5, p0, v4

    div-int/lit8 v4, p1, 0x4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x2

    aput v8, p0, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_6
    array-length v4, p0

    if-ge v0, v4, :cond_6

    aget v4, p0, v0

    mul-float/2addr v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    aput v4, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method public static calcRoundedBorderVertex([FIIFF)V
    .locals 10

    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    const/4 v1, 0x3

    const/4 v2, 0x0

    :goto_0
    div-int/lit8 v5, p1, 0x4

    if-ge v1, v5, :cond_0

    div-int/lit8 v5, v1, 0x6

    int-to-float v5, v5

    int-to-float v6, p1

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float v3, v5, v6

    float-to-double v6, v3

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v6, v8

    double-to-float v4, v6

    float-to-double v6, p3

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v1

    float-to-double v6, p4

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v2

    add-int/lit8 v5, v1, 0x1

    float-to-double v6, p3

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p0, v5

    add-int/lit8 v5, v2, 0x1

    float-to-double v6, p4

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p0, v5

    add-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    aput v6, p0, v5

    add-int/lit8 v5, v2, 0x2

    const/4 v6, 0x0

    aput v6, p0, v5

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    :goto_1
    div-int/lit8 v5, p1, 0x4

    if-ge v1, v5, :cond_1

    div-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v1

    const/high16 v6, -0x40800000    # -1.0f

    div-int/lit8 v7, p1, 0x4

    sub-int/2addr v7, v1

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v2

    const/high16 v6, -0x40800000    # -1.0f

    div-int/lit8 v7, p1, 0x4

    add-int/lit8 v8, v2, 0x6

    sub-int/2addr v7, v8

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v6, p1, 0x4

    add-int/lit8 v7, v1, -0x1

    sub-int/2addr v6, v7

    aget v6, p0, v6

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v6, p1, 0x4

    add-int/lit8 v7, v2, 0x5

    sub-int/2addr v6, v7

    aget v6, p0, v6

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v1

    const/high16 v6, -0x40800000    # -1.0f

    aget v7, p0, v1

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v2

    const/high16 v6, -0x40800000    # -1.0f

    aget v7, p0, v2

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    add-int/lit8 v7, v1, 0x1

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    add-int/lit8 v7, v2, 0x1

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x4

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v1

    const/high16 v6, -0x40800000    # -1.0f

    div-int/lit8 v7, p1, 0x4

    add-int/2addr v7, v1

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x4

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v2

    const/high16 v6, -0x40800000    # -1.0f

    div-int/lit8 v7, p1, 0x4

    add-int/2addr v7, v2

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x4

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    div-int/lit8 v7, p1, 0x4

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x1

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x4

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    div-int/lit8 v7, p1, 0x4

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x6

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v5, p0

    if-ge v0, v5, :cond_2

    aget v5, p0, v0

    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    const v6, 0x461c4000    # 10000.0f

    div-float/2addr v5, v6

    aput v5, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static calcRoundedVertex([FIIF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedVertex([FIIFF)V

    return-void
.end method

.method public static calcRoundedVertex([FIIFF)V
    .locals 10

    move v2, p3

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p4, v5

    if-eqz v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, p4

    mul-float/2addr v2, v5

    const/4 v1, 0x1

    :cond_0
    const/4 v5, 0x1

    if-ne p2, v5, :cond_4

    const/4 v0, 0x0

    :goto_0
    div-int/lit8 v5, p1, 0x4

    if-ge v0, v5, :cond_3

    div-int/lit8 v5, v0, 0x3

    int-to-float v5, v5

    int-to-float v6, p1

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float v3, v5, v6

    float-to-double v6, v3

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v6, v8

    double-to-float v4, v6

    float-to-double v6, p3

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v0

    if-eqz v1, :cond_1

    add-int/lit8 v5, v0, 0x1

    float-to-double v6, v2

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p0, v5

    :goto_1
    add-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    aput v6, p0, v5

    aget v5, p0, v0

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v6, p3

    sub-float/2addr v5, v6

    aput v5, p0, v0

    if-eqz v1, :cond_2

    add-int/lit8 v5, v0, 0x1

    aget v6, p0, v5

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v7, v2

    sub-float/2addr v6, v7

    aput v6, p0, v5

    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v0, 0x1

    float-to-double v6, p3

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p0, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v0, 0x1

    aget v6, p0, v5

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v7, p3

    sub-float/2addr v6, v7

    aput v6, p0, v5

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    div-int/lit8 v5, p1, 0x4

    if-ge v0, v5, :cond_d

    div-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v0

    const/high16 v6, -0x40800000    # -1.0f

    div-int/lit8 v7, p1, 0x4

    add-int/lit8 v8, v0, 0x3

    sub-int/2addr v7, v8

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x4

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v6, p1, 0x4

    add-int/lit8 v7, v0, 0x2

    sub-int/2addr v6, v7

    aget v6, p0, v6

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v0

    const/high16 v6, -0x40800000    # -1.0f

    aget v7, p0, v0

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    add-int/lit8 v7, v0, 0x1

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x4

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v0

    const/high16 v6, -0x40800000    # -1.0f

    div-int/lit8 v7, p1, 0x4

    add-int/2addr v7, v0

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    div-int/lit8 v5, p1, 0x4

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    div-int/lit8 v7, p1, 0x4

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x1

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    add-int/lit8 v0, v0, 0x3

    goto :goto_3

    :cond_4
    const/4 v5, 0x2

    if-ne p2, v5, :cond_8

    const/4 v5, 0x0

    const/high16 v6, -0x41000000    # -0.5f

    aput v6, p0, v5

    const/4 v5, 0x1

    const/high16 v6, -0x41000000    # -0.5f

    aput v6, p0, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, p0, v5

    const/4 v5, 0x3

    const/high16 v6, 0x3f000000    # 0.5f

    aput v6, p0, v5

    const/4 v5, 0x4

    const/high16 v6, -0x41000000    # -0.5f

    aput v6, p0, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, p0, v5

    const/4 v0, 0x0

    :goto_4
    add-int/lit8 v5, p1, -0x6

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_7

    div-int/lit8 v5, v0, 0x3

    int-to-float v5, v5

    add-int/lit8 v6, p1, -0x6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float v3, v5, v6

    float-to-double v6, v3

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-float v4, v6

    add-int/lit8 v5, v0, 0x6

    float-to-double v6, p3

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p0, v5

    if-eqz v1, :cond_5

    add-int/lit8 v5, v0, 0x7

    float-to-double v6, v2

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p0, v5

    :goto_5
    add-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    aput v6, p0, v5

    add-int/lit8 v5, v0, 0x6

    aget v6, p0, v5

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v7, p3

    add-float/2addr v6, v7

    aput v6, p0, v5

    if-eqz v1, :cond_6

    add-int/lit8 v5, v0, 0x7

    aget v6, p0, v5

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v7, v2

    add-float/2addr v6, v7

    aput v6, p0, v5

    :goto_6
    add-int/lit8 v0, v0, 0x3

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v0, 0x7

    float-to-double v6, p3

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p0, v5

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x7

    aget v6, p0, v5

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v7, p3

    add-float/2addr v6, v7

    aput v6, p0, v5

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_7
    add-int/lit8 v5, p1, -0x6

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_d

    add-int/lit8 v5, p1, -0x6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x6

    const/high16 v6, -0x40800000    # -1.0f

    add-int/lit8 v7, p1, -0x6

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v0, 0x3

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x6

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    add-int/lit8 v5, p1, -0x6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v6, p1, -0x6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v0, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x6

    aget v6, p0, v6

    aput v6, p0, v5

    add-int/lit8 v0, v0, 0x3

    goto :goto_7

    :cond_8
    const/4 v5, 0x3

    if-ne p2, v5, :cond_d

    const/4 v0, 0x0

    :goto_8
    add-int/lit8 v5, p1, -0x6

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_b

    div-int/lit8 v5, v0, 0x3

    int-to-float v5, v5

    add-int/lit8 v6, p1, -0x6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float v3, v5, v6

    float-to-double v6, v3

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v6, v8

    double-to-float v4, v6

    float-to-double v6, p3

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    aput v5, p0, v0

    if-eqz v1, :cond_9

    add-int/lit8 v5, v0, 0x1

    float-to-double v6, v2

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p0, v5

    :goto_9
    add-int/lit8 v5, v0, 0x2

    const/4 v6, 0x0

    aput v6, p0, v5

    aget v5, p0, v0

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v6, p3

    sub-float/2addr v5, v6

    aput v5, p0, v0

    if-eqz v1, :cond_a

    add-int/lit8 v5, v0, 0x1

    aget v6, p0, v5

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v7, v2

    sub-float/2addr v6, v7

    aput v6, p0, v5

    :goto_a
    add-int/lit8 v0, v0, 0x3

    goto :goto_8

    :cond_9
    add-int/lit8 v5, v0, 0x1

    float-to-double v6, p3

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, p0, v5

    goto :goto_9

    :cond_a
    add-int/lit8 v5, v0, 0x1

    aget v6, p0, v5

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v7, p3

    sub-float/2addr v6, v7

    aput v6, p0, v5

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    :goto_b
    add-int/lit8 v5, p1, -0x6

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_c

    add-int/lit8 v5, p1, -0x6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    const/high16 v6, -0x40800000    # -1.0f

    add-int/lit8 v7, p1, -0x6

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v0, 0x3

    sub-int/2addr v7, v8

    aget v7, p0, v7

    mul-float/2addr v6, v7

    aput v6, p0, v5

    add-int/lit8 v5, p1, -0x6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, p1, -0x6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v0, 0x2

    sub-int/2addr v6, v7

    aget v6, p0, v6

    aput v6, p0, v5

    add-int/lit8 v0, v0, 0x3

    goto :goto_b

    :cond_c
    add-int/lit8 v5, p1, -0x6

    const/high16 v6, 0x3f000000    # 0.5f

    aput v6, p0, v5

    add-int/lit8 v5, p1, -0x5

    const/high16 v6, 0x3f000000    # 0.5f

    aput v6, p0, v5

    add-int/lit8 v5, p1, -0x4

    const/4 v6, 0x0

    aput v6, p0, v5

    add-int/lit8 v5, p1, -0x3

    const/high16 v6, -0x41000000    # -0.5f

    aput v6, p0, v5

    add-int/lit8 v5, p1, -0x2

    const/high16 v6, 0x3f000000    # 0.5f

    aput v6, p0, v5

    add-int/lit8 v5, p1, -0x1

    const/4 v6, 0x0

    aput v6, p0, v5

    :cond_d
    const/4 v0, 0x0

    :goto_c
    array-length v5, p0

    if-ge v0, v5, :cond_e

    aget v5, p0, v0

    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    const v6, 0x461c4000    # 10000.0f

    div-float/2addr v5, v6

    aput v5, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_e
    return-void
.end method

.method public static getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;
    .locals 3

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private static glhFrustumf2([FFFFFFF)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v0, v4, p5

    sub-float v1, p2, p1

    sub-float v2, p4, p3

    sub-float v3, p6, p5

    const/4 v4, 0x0

    div-float v5, v0, v1

    aput v5, p0, v4

    const/4 v4, 0x1

    aput v6, p0, v4

    const/4 v4, 0x2

    aput v6, p0, v4

    const/4 v4, 0x3

    aput v6, p0, v4

    const/4 v4, 0x4

    aput v6, p0, v4

    const/4 v4, 0x5

    div-float v5, v0, v2

    aput v5, p0, v4

    const/4 v4, 0x6

    aput v6, p0, v4

    const/4 v4, 0x7

    aput v6, p0, v4

    const/16 v4, 0x8

    add-float v5, p2, p1

    div-float/2addr v5, v1

    aput v5, p0, v4

    const/16 v4, 0x9

    add-float v5, p4, p3

    div-float/2addr v5, v2

    aput v5, p0, v4

    const/16 v4, 0xa

    neg-float v5, p6

    sub-float/2addr v5, p5

    div-float/2addr v5, v3

    aput v5, p0, v4

    const/16 v4, 0xb

    const/high16 v5, -0x40800000    # -1.0f

    aput v5, p0, v4

    const/16 v4, 0xc

    aput v6, p0, v4

    const/16 v4, 0xd

    aput v6, p0, v4

    const/16 v4, 0xe

    neg-float v5, v0

    mul-float/2addr v5, p6

    div-float/2addr v5, v3

    aput v5, p0, v4

    const/16 v4, 0xf

    aput v6, p0, v4

    return-void
.end method

.method public static glhPerspectivef2([FFFFF)V
    .locals 8

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v4, p3, v0

    mul-float v2, v4, p2

    neg-float v1, v2

    neg-float v3, v4

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/glcore/TUtils;->glhFrustumf2([FFFFFFF)V

    return-void
.end method


# virtual methods
.method public clearTexture()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    const/16 v1, 0x403

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    return-void
.end method

.method public finalizeTexture(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mGl:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    :cond_0
    return-void
.end method

.method public freeId(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x3

    :goto_0
    iget v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    add-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    add-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v1, -0x1

    :goto_1
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAvailable()I
    .locals 5

    :try_start_0
    iget v3, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    array-length v4, v4

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    array-length v2, v3

    :goto_0
    const/4 v1, 0x3

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    aget v3, v3, v1

    :goto_2
    return v3

    :cond_0
    iget v3, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    add-int/lit8 v2, v3, 0x3

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    aget v3, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "TUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_2
.end method

.method public getBase(I)I
    .locals 1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public initTexture(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 6

    const/16 v5, 0x403

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mGl:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mGl:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mGl:Ljavax/microedition/khronos/opengles/GL11;

    new-array v1, v5, [I

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    new-array v1, v5, [Z

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    const/4 v0, 0x3

    :goto_0
    if-ge v0, v5, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mIsTexture:[Z

    aput-boolean v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mTextureIds:[I

    invoke-interface {p1, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    iput v4, p0, Lcom/sec/android/gallery3d/glcore/TUtils;->mUsedIndex:I

    return-void
.end method
