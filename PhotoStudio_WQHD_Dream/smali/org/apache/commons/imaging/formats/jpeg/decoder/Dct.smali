.class final Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;
.super Ljava/lang/Object;
.source "Dct.java"


# static fields
.field private static final A1:F

.field private static final A2:F

.field private static final A3:F

.field private static final A4:F

.field private static final A5:F

.field private static final C2:F

.field private static final C4:F

.field private static final C6:F

.field private static final DCT_SCALING_FACTORS:[F

.field private static final IDCT_SCALING_FACTORS:[F

.field private static final Q:F

.field private static final R:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-wide v14, 0x3fd921fb54442d18L    # 0.39269908169872414

    const-wide v12, 0x3ff2d97c7f3321d2L    # 1.1780972450961724

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v6, 0x3fc0000000000000L    # 0.125

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0x3fc921fb54442d18L    # 0.19634954084936207

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v2, v8, v2

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v2, v8, v2

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-wide v2, 0x3fe2d97c7f3321d2L    # 0.5890486225480862

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v2, v8, v2

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v2, v8, v2

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const-wide v2, 0x3fef6a7a2955385eL    # 0.9817477042468103

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v2, v8, v2

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v2, v8, v2

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, 0x3ff5fdbbe9bba775L    # 1.3744467859455345

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double v2, v8, v2

    double-to-float v2, v2

    aput v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->DCT_SCALING_FACTORS:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fb0000000000000L    # 0.0625

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, 0x3fc921fb54442d18L    # 0.19634954084936207

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    mul-double/2addr v2, v6

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    mul-double/2addr v2, v6

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-wide v2, 0x3fe2d97c7f3321d2L    # 0.5890486225480862

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    mul-double/2addr v2, v6

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    mul-double/2addr v2, v6

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const-wide v2, 0x3fef6a7a2955385eL    # 0.9817477042468103

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    mul-double/2addr v2, v6

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    mul-double/2addr v2, v6

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const-wide v2, 0x3ff5fdbbe9bba775L    # 1.3744467859455345

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    mul-double/2addr v2, v6

    double-to-float v2, v2

    aput v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->IDCT_SCALING_FACTORS:[F

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A2:F

    sget v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A3:F

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A4:F

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A5:F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C2:F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    sget v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C2:F

    sget v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    sub-float/2addr v0, v1

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->Q:F

    sget v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C2:F

    sget v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    add-float/2addr v0, v1

    sput v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->R:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forwardDCT8([F)V
    .locals 25

    const/16 v23, 0x0

    aget v23, p0, v23

    const/16 v24, 0x7

    aget v24, p0, v24

    add-float v0, v23, v24

    const/16 v23, 0x1

    aget v23, p0, v23

    const/16 v24, 0x6

    aget v24, p0, v24

    add-float v2, v23, v24

    const/16 v23, 0x2

    aget v23, p0, v23

    const/16 v24, 0x5

    aget v24, p0, v24

    add-float v4, v23, v24

    const/16 v23, 0x3

    aget v23, p0, v23

    const/16 v24, 0x4

    aget v24, p0, v24

    add-float v8, v23, v24

    const/16 v23, 0x3

    aget v23, p0, v23

    const/16 v24, 0x4

    aget v24, p0, v24

    sub-float v10, v23, v24

    const/16 v23, 0x2

    aget v23, p0, v23

    const/16 v24, 0x5

    aget v24, p0, v24

    sub-float v12, v23, v24

    const/16 v23, 0x1

    aget v23, p0, v23

    const/16 v24, 0x6

    aget v24, p0, v24

    sub-float v16, v23, v24

    const/16 v23, 0x0

    aget v23, p0, v23

    const/16 v24, 0x7

    aget v24, p0, v24

    sub-float v19, v23, v24

    add-float v1, v0, v8

    add-float v3, v2, v4

    sub-float v5, v2, v4

    sub-float v9, v0, v8

    add-float v22, v10, v12

    add-float v13, v12, v16

    add-float v17, v16, v19

    add-float v6, v5, v9

    sget v23, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    mul-float v7, v6, v23

    sub-float v23, v17, v22

    sget v24, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A5:F

    mul-float v21, v23, v24

    sget v23, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A2:F

    mul-float v23, v23, v22

    sub-float v11, v23, v21

    sget v23, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A3:F

    mul-float v14, v13, v23

    sget v23, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A4:F

    mul-float v23, v23, v17

    sub-float v18, v23, v21

    add-float v15, v19, v14

    sub-float v20, v19, v14

    const/16 v23, 0x0

    add-float v24, v1, v3

    aput v24, p0, v23

    const/16 v23, 0x4

    sub-float v24, v1, v3

    aput v24, p0, v23

    const/16 v23, 0x2

    add-float v24, v9, v7

    aput v24, p0, v23

    const/16 v23, 0x6

    sub-float v24, v9, v7

    aput v24, p0, v23

    const/16 v23, 0x5

    add-float v24, v20, v11

    aput v24, p0, v23

    const/16 v23, 0x1

    add-float v24, v15, v18

    aput v24, p0, v23

    const/16 v23, 0x7

    sub-float v24, v15, v18

    aput v24, p0, v23

    const/16 v23, 0x3

    sub-float v24, v20, v11

    aput v24, p0, v23

    return-void
.end method

.method public static forwardDCT8x8([F)V
    .locals 28

    const/16 v23, 0x0

    :goto_0
    const/16 v26, 0x8

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    mul-int/lit8 v26, v23, 0x8

    aget v26, p0, v26

    mul-int/lit8 v27, v23, 0x8

    add-int/lit8 v27, v27, 0x7

    aget v27, p0, v27

    add-float v2, v26, v27

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x1

    aget v26, p0, v26

    mul-int/lit8 v27, v23, 0x8

    add-int/lit8 v27, v27, 0x6

    aget v27, p0, v27

    add-float v4, v26, v27

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x2

    aget v26, p0, v26

    mul-int/lit8 v27, v23, 0x8

    add-int/lit8 v27, v27, 0x5

    aget v27, p0, v27

    add-float v6, v26, v27

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x3

    aget v26, p0, v26

    mul-int/lit8 v27, v23, 0x8

    add-int/lit8 v27, v27, 0x4

    aget v27, p0, v27

    add-float v10, v26, v27

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x3

    aget v26, p0, v26

    mul-int/lit8 v27, v23, 0x8

    add-int/lit8 v27, v27, 0x4

    aget v27, p0, v27

    sub-float v12, v26, v27

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x2

    aget v26, p0, v26

    mul-int/lit8 v27, v23, 0x8

    add-int/lit8 v27, v27, 0x5

    aget v27, p0, v27

    sub-float v14, v26, v27

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x1

    aget v26, p0, v26

    mul-int/lit8 v27, v23, 0x8

    add-int/lit8 v27, v27, 0x6

    aget v27, p0, v27

    sub-float v18, v26, v27

    mul-int/lit8 v26, v23, 0x8

    aget v26, p0, v26

    mul-int/lit8 v27, v23, 0x8

    add-int/lit8 v27, v27, 0x7

    aget v27, p0, v27

    sub-float v21, v26, v27

    add-float v3, v2, v10

    add-float v5, v4, v6

    sub-float v7, v4, v6

    sub-float v11, v2, v10

    add-float v25, v12, v14

    add-float v15, v14, v18

    add-float v19, v18, v21

    add-float v8, v7, v11

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    mul-float v9, v8, v26

    sub-float v26, v19, v25

    sget v27, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A5:F

    mul-float v24, v26, v27

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A2:F

    mul-float v26, v26, v25

    sub-float v13, v26, v24

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A3:F

    mul-float v16, v15, v26

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A4:F

    mul-float v26, v26, v19

    sub-float v20, v26, v24

    add-float v17, v21, v16

    sub-float v22, v21, v16

    mul-int/lit8 v26, v23, 0x8

    add-float v27, v3, v5

    aput v27, p0, v26

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x4

    sub-float v27, v3, v5

    aput v27, p0, v26

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x2

    add-float v27, v11, v9

    aput v27, p0, v26

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x6

    sub-float v27, v11, v9

    aput v27, p0, v26

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x5

    add-float v27, v22, v13

    aput v27, p0, v26

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x1

    add-float v27, v17, v20

    aput v27, p0, v26

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x7

    sub-float v27, v17, v20

    aput v27, p0, v26

    mul-int/lit8 v26, v23, 0x8

    add-int/lit8 v26, v26, 0x3

    sub-float v27, v22, v13

    aput v27, p0, v26

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    :cond_0
    const/16 v23, 0x0

    :goto_1
    const/16 v26, 0x8

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    aget v26, p0, v23

    add-int/lit8 v27, v23, 0x38

    aget v27, p0, v27

    add-float v2, v26, v27

    add-int/lit8 v26, v23, 0x8

    aget v26, p0, v26

    add-int/lit8 v27, v23, 0x30

    aget v27, p0, v27

    add-float v4, v26, v27

    add-int/lit8 v26, v23, 0x10

    aget v26, p0, v26

    add-int/lit8 v27, v23, 0x28

    aget v27, p0, v27

    add-float v6, v26, v27

    add-int/lit8 v26, v23, 0x18

    aget v26, p0, v26

    add-int/lit8 v27, v23, 0x20

    aget v27, p0, v27

    add-float v10, v26, v27

    add-int/lit8 v26, v23, 0x18

    aget v26, p0, v26

    add-int/lit8 v27, v23, 0x20

    aget v27, p0, v27

    sub-float v12, v26, v27

    add-int/lit8 v26, v23, 0x10

    aget v26, p0, v26

    add-int/lit8 v27, v23, 0x28

    aget v27, p0, v27

    sub-float v14, v26, v27

    add-int/lit8 v26, v23, 0x8

    aget v26, p0, v26

    add-int/lit8 v27, v23, 0x30

    aget v27, p0, v27

    sub-float v18, v26, v27

    aget v26, p0, v23

    add-int/lit8 v27, v23, 0x38

    aget v27, p0, v27

    sub-float v21, v26, v27

    add-float v3, v2, v10

    add-float v5, v4, v6

    sub-float v7, v4, v6

    sub-float v11, v2, v10

    add-float v25, v12, v14

    add-float v15, v14, v18

    add-float v19, v18, v21

    add-float v8, v7, v11

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A1:F

    mul-float v9, v8, v26

    sub-float v26, v19, v25

    sget v27, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A5:F

    mul-float v24, v26, v27

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A2:F

    mul-float v26, v26, v25

    sub-float v13, v26, v24

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A3:F

    mul-float v16, v15, v26

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->A4:F

    mul-float v26, v26, v19

    sub-float v20, v26, v24

    add-float v17, v21, v16

    sub-float v22, v21, v16

    add-float v26, v3, v5

    aput v26, p0, v23

    add-int/lit8 v26, v23, 0x20

    sub-float v27, v3, v5

    aput v27, p0, v26

    add-int/lit8 v26, v23, 0x10

    add-float v27, v11, v9

    aput v27, p0, v26

    add-int/lit8 v26, v23, 0x30

    sub-float v27, v11, v9

    aput v27, p0, v26

    add-int/lit8 v26, v23, 0x28

    add-float v27, v22, v13

    aput v27, p0, v26

    add-int/lit8 v26, v23, 0x8

    add-float v27, v17, v20

    aput v27, p0, v26

    add-int/lit8 v26, v23, 0x38

    sub-float v27, v17, v20

    aput v27, p0, v26

    add-int/lit8 v26, v23, 0x18

    sub-float v27, v22, v13

    aput v27, p0, v26

    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method public static inverseDCT8([F)V
    .locals 26

    const/16 v24, 0x2

    aget v24, p0, v24

    const/16 v25, 0x6

    aget v25, p0, v25

    sub-float v0, v24, v25

    const/16 v24, 0x2

    aget v24, p0, v24

    const/16 v25, 0x6

    aget v25, p0, v25

    add-float v1, v24, v25

    const/16 v24, 0x5

    aget v24, p0, v24

    const/16 v25, 0x3

    aget v25, p0, v25

    sub-float v2, v24, v25

    const/16 v24, 0x1

    aget v24, p0, v24

    const/16 v25, 0x7

    aget v25, p0, v25

    add-float v20, v24, v25

    const/16 v24, 0x3

    aget v24, p0, v24

    const/16 v25, 0x5

    aget v25, p0, v25

    add-float v21, v24, v25

    sub-float v3, v20, v21

    const/16 v24, 0x1

    aget v24, p0, v24

    const/16 v25, 0x7

    aget v25, p0, v25

    sub-float v4, v24, v25

    add-float v5, v20, v21

    sget v24, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    add-float v25, v2, v4

    mul-float v23, v24, v25

    sget v24, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->Q:F

    mul-float v24, v24, v2

    add-float v17, v24, v23

    sget v24, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->R:F

    mul-float v24, v24, v4

    sub-float v8, v24, v23

    sget v24, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float v6, v0, v24

    sget v24, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float v7, v3, v24

    sub-float v22, v8, v5

    sub-float v13, v22, v7

    const/16 v24, 0x0

    aget v24, p0, v24

    const/16 v25, 0x4

    aget v25, p0, v25

    sub-float v14, v24, v25

    sub-float v15, v6, v1

    const/16 v24, 0x0

    aget v24, p0, v24

    const/16 v25, 0x4

    aget v25, p0, v25

    add-float v16, v24, v25

    move/from16 v19, v17

    add-float v9, v14, v15

    add-float v10, v16, v1

    sub-float v11, v14, v15

    sub-float v12, v16, v1

    add-float v18, v19, v13

    const/16 v24, 0x0

    add-float v25, v10, v5

    aput v25, p0, v24

    const/16 v24, 0x1

    add-float v25, v9, v22

    aput v25, p0, v24

    const/16 v24, 0x2

    sub-float v25, v11, v13

    aput v25, p0, v24

    const/16 v24, 0x3

    add-float v25, v12, v18

    aput v25, p0, v24

    const/16 v24, 0x4

    sub-float v25, v12, v18

    aput v25, p0, v24

    const/16 v24, 0x5

    add-float v25, v11, v13

    aput v25, p0, v24

    const/16 v24, 0x6

    sub-float v25, v9, v22

    aput v25, p0, v24

    const/16 v24, 0x7

    sub-float v25, v10, v5

    aput v25, p0, v24

    return-void
.end method

.method public static inverseDCT8x8([F)V
    .locals 28

    const/4 v10, 0x0

    :goto_0
    const/16 v26, 0x8

    move/from16 v0, v26

    if-ge v10, v0, :cond_0

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x2

    aget v26, p0, v26

    mul-int/lit8 v27, v10, 0x8

    add-int/lit8 v27, v27, 0x6

    aget v27, p0, v27

    sub-float v1, v26, v27

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x2

    aget v26, p0, v26

    mul-int/lit8 v27, v10, 0x8

    add-int/lit8 v27, v27, 0x6

    aget v27, p0, v27

    add-float v2, v26, v27

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x5

    aget v26, p0, v26

    mul-int/lit8 v27, v10, 0x8

    add-int/lit8 v27, v27, 0x3

    aget v27, p0, v27

    sub-float v3, v26, v27

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x1

    aget v26, p0, v26

    mul-int/lit8 v27, v10, 0x8

    add-int/lit8 v27, v27, 0x7

    aget v27, p0, v27

    add-float v22, v26, v27

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x3

    aget v26, p0, v26

    mul-int/lit8 v27, v10, 0x8

    add-int/lit8 v27, v27, 0x5

    aget v27, p0, v27

    add-float v23, v26, v27

    sub-float v4, v22, v23

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x1

    aget v26, p0, v26

    mul-int/lit8 v27, v10, 0x8

    add-int/lit8 v27, v27, 0x7

    aget v27, p0, v27

    sub-float v5, v26, v27

    add-float v6, v22, v23

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    add-float v27, v3, v5

    mul-float v25, v26, v27

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->Q:F

    mul-float v26, v26, v3

    add-float v19, v26, v25

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->R:F

    mul-float v26, v26, v5

    sub-float v9, v26, v25

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float v7, v1, v26

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float v8, v4, v26

    sub-float v24, v9, v6

    sub-float v15, v24, v8

    mul-int/lit8 v26, v10, 0x8

    aget v26, p0, v26

    mul-int/lit8 v27, v10, 0x8

    add-int/lit8 v27, v27, 0x4

    aget v27, p0, v27

    sub-float v16, v26, v27

    sub-float v17, v7, v2

    mul-int/lit8 v26, v10, 0x8

    aget v26, p0, v26

    mul-int/lit8 v27, v10, 0x8

    add-int/lit8 v27, v27, 0x4

    aget v27, p0, v27

    add-float v18, v26, v27

    move/from16 v21, v19

    add-float v11, v16, v17

    add-float v12, v18, v2

    sub-float v13, v16, v17

    sub-float v14, v18, v2

    add-float v20, v21, v15

    mul-int/lit8 v26, v10, 0x8

    add-float v27, v12, v6

    aput v27, p0, v26

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x1

    add-float v27, v11, v24

    aput v27, p0, v26

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x2

    sub-float v27, v13, v15

    aput v27, p0, v26

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x3

    add-float v27, v14, v20

    aput v27, p0, v26

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x4

    sub-float v27, v14, v20

    aput v27, p0, v26

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x5

    add-float v27, v13, v15

    aput v27, p0, v26

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x6

    sub-float v27, v11, v24

    aput v27, p0, v26

    mul-int/lit8 v26, v10, 0x8

    add-int/lit8 v26, v26, 0x7

    sub-float v27, v12, v6

    aput v27, p0, v26

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_1
    const/16 v26, 0x8

    move/from16 v0, v26

    if-ge v10, v0, :cond_1

    add-int/lit8 v26, v10, 0x10

    aget v26, p0, v26

    add-int/lit8 v27, v10, 0x30

    aget v27, p0, v27

    sub-float v1, v26, v27

    add-int/lit8 v26, v10, 0x10

    aget v26, p0, v26

    add-int/lit8 v27, v10, 0x30

    aget v27, p0, v27

    add-float v2, v26, v27

    add-int/lit8 v26, v10, 0x28

    aget v26, p0, v26

    add-int/lit8 v27, v10, 0x18

    aget v27, p0, v27

    sub-float v3, v26, v27

    add-int/lit8 v26, v10, 0x8

    aget v26, p0, v26

    add-int/lit8 v27, v10, 0x38

    aget v27, p0, v27

    add-float v22, v26, v27

    add-int/lit8 v26, v10, 0x18

    aget v26, p0, v26

    add-int/lit8 v27, v10, 0x28

    aget v27, p0, v27

    add-float v23, v26, v27

    sub-float v4, v22, v23

    add-int/lit8 v26, v10, 0x8

    aget v26, p0, v26

    add-int/lit8 v27, v10, 0x38

    aget v27, p0, v27

    sub-float v5, v26, v27

    add-float v6, v22, v23

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C6:F

    add-float v27, v3, v5

    mul-float v25, v26, v27

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->Q:F

    mul-float v26, v26, v3

    add-float v19, v26, v25

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->R:F

    mul-float v26, v26, v5

    sub-float v9, v26, v25

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float v7, v1, v26

    sget v26, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->C4:F

    mul-float v8, v4, v26

    sub-float v24, v9, v6

    sub-float v15, v24, v8

    aget v26, p0, v10

    add-int/lit8 v27, v10, 0x20

    aget v27, p0, v27

    sub-float v16, v26, v27

    sub-float v17, v7, v2

    aget v26, p0, v10

    add-int/lit8 v27, v10, 0x20

    aget v27, p0, v27

    add-float v18, v26, v27

    move/from16 v21, v19

    add-float v11, v16, v17

    add-float v12, v18, v2

    sub-float v13, v16, v17

    sub-float v14, v18, v2

    add-float v20, v21, v15

    add-float v26, v12, v6

    aput v26, p0, v10

    add-int/lit8 v26, v10, 0x8

    add-float v27, v11, v24

    aput v27, p0, v26

    add-int/lit8 v26, v10, 0x10

    sub-float v27, v13, v15

    aput v27, p0, v26

    add-int/lit8 v26, v10, 0x18

    add-float v27, v14, v20

    aput v27, p0, v26

    add-int/lit8 v26, v10, 0x20

    sub-float v27, v14, v20

    aput v27, p0, v26

    add-int/lit8 v26, v10, 0x28

    add-float v27, v13, v15

    aput v27, p0, v26

    add-int/lit8 v26, v10, 0x30

    sub-float v27, v11, v24

    aput v27, p0, v26

    add-int/lit8 v26, v10, 0x38

    sub-float v27, v12, v6

    aput v27, p0, v26

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method public static scaleDequantizationMatrix([F)V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_0

    mul-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    aget v3, p0, v2

    sget-object v4, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->IDCT_SCALING_FACTORS:[F

    aget v4, v4, v1

    sget-object v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->IDCT_SCALING_FACTORS:[F

    aget v5, v5, v0

    mul-float/2addr v4, v5

    mul-float/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static scaleDequantizationVector([F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    sget-object v2, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->IDCT_SCALING_FACTORS:[F

    aget v2, v2, v0

    mul-float/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scaleQuantizationMatrix([F)V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_0

    mul-int/lit8 v2, v1, 0x8

    add-int/2addr v2, v0

    aget v3, p0, v2

    sget-object v4, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->DCT_SCALING_FACTORS:[F

    aget v4, v4, v1

    sget-object v5, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->DCT_SCALING_FACTORS:[F

    aget v5, v5, v0

    mul-float/2addr v4, v5

    mul-float/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static scaleQuantizationVector([F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    sget-object v2, Lorg/apache/commons/imaging/formats/jpeg/decoder/Dct;->DCT_SCALING_FACTORS:[F

    aget v2, v2, v0

    mul-float/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
