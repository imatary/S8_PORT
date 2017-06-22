.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterLogLuv.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method

.method private cube(F)F
    .locals 1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v30, 0x0

    aget v14, p2, v30

    const/16 v30, 0x1

    aget v30, p2, v30

    move/from16 v0, v30

    int-to-byte v12, v0

    const/16 v30, 0x2

    aget v30, p2, v30

    move/from16 v0, v30

    int-to-byte v13, v0

    int-to-float v0, v14

    move/from16 v30, v0

    const/high16 v31, 0x42c80000    # 100.0f

    mul-float v30, v30, v31

    const/high16 v31, 0x437f0000    # 255.0f

    div-float v30, v30, v31

    const/high16 v31, 0x41800000    # 16.0f

    add-float v30, v30, v31

    const/high16 v31, 0x42e80000    # 116.0f

    div-float v25, v30, v31

    int-to-float v0, v12

    move/from16 v30, v0

    const/high16 v31, 0x43fa0000    # 500.0f

    div-float v30, v30, v31

    add-float v24, v30, v25

    int-to-float v0, v13

    move/from16 v30, v0

    const/high16 v31, 0x43480000    # 200.0f

    div-float v30, v30, v31

    sub-float v26, v25, v30

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;->cube(F)F

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;->cube(F)F

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterLogLuv;->cube(F)F

    move-result v29

    const v30, 0x3c1118c2    # 0.008856f

    cmpl-float v30, v28, v30

    if-lez v30, :cond_0

    move/from16 v25, v28

    :goto_0
    const v30, 0x3c1118c2    # 0.008856f

    cmpl-float v30, v27, v30

    if-lez v30, :cond_1

    move/from16 v24, v27

    :goto_1
    const v30, 0x3c1118c2    # 0.008856f

    cmpl-float v30, v29, v30

    if-lez v30, :cond_2

    move/from16 v26, v29

    :goto_2
    const v17, 0x42be1810

    const/high16 v18, 0x42c80000    # 100.0f

    const v19, 0x42d9c419

    const v30, 0x42be1810

    mul-float v7, v30, v24

    const/high16 v30, 0x42c80000    # 100.0f

    mul-float v8, v30, v25

    const v30, 0x42d9c419

    mul-float v9, v30, v26

    const/high16 v30, 0x42c80000    # 100.0f

    div-float v24, v7, v30

    const/high16 v30, 0x42c80000    # 100.0f

    div-float v25, v8, v30

    const/high16 v30, 0x42c80000    # 100.0f

    div-float v26, v9, v30

    const v30, 0x404f65fe

    mul-float v30, v30, v24

    const v31, -0x403b3d08    # -1.5372f

    mul-float v31, v31, v25

    add-float v30, v30, v31

    const v31, -0x4100b780    # -0.4986f

    mul-float v31, v31, v26

    add-float v23, v30, v31

    const v30, -0x4087f62b    # -0.9689f

    mul-float v30, v30, v24

    const v31, 0x3ff01a37    # 1.8758f

    mul-float v31, v31, v25

    add-float v30, v30, v31

    const v31, 0x3d29fbe7    # 0.0415f

    mul-float v31, v31, v26

    add-float v22, v30, v31

    const v30, 0x3d6425af    # 0.0557f

    mul-float v30, v30, v24

    const v31, -0x41af1aa0    # -0.204f

    mul-float v31, v31, v25

    add-float v30, v30, v31

    const v31, 0x3f874bc7    # 1.057f

    mul-float v31, v31, v26

    add-float v21, v30, v31

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v30, v30, v32

    if-lez v30, :cond_3

    const v30, 0x3f870a3d    # 1.055f

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    const v31, 0x3d6147ae    # 0.055f

    sub-float v23, v30, v31

    :goto_3
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v30, v30, v32

    if-lez v30, :cond_4

    const v30, 0x3f870a3d    # 1.055f

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    const v31, 0x3d6147ae    # 0.055f

    sub-float v22, v30, v31

    :goto_4
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v30, v30, v32

    if-lez v30, :cond_5

    const v30, 0x3f870a3d    # 1.055f

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    const v31, 0x3d6147ae    # 0.055f

    sub-float v21, v30, v31

    :goto_5
    const/high16 v30, 0x437f0000    # 255.0f

    mul-float v30, v30, v23

    move/from16 v0, v30

    float-to-int v6, v0

    const/high16 v30, 0x437f0000    # 255.0f

    mul-float v30, v30, v22

    move/from16 v0, v30

    float-to-int v5, v0

    const/high16 v30, 0x437f0000    # 255.0f

    mul-float v30, v30, v21

    move/from16 v0, v30

    float-to-int v4, v0

    move/from16 v16, v6

    move v15, v5

    move v11, v4

    const/16 v30, 0xff

    const/16 v31, 0x0

    move/from16 v0, v31

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v31

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/16 v30, 0xff

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v31

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/16 v30, 0xff

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v31

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/16 v10, 0xff

    const/high16 v30, -0x1000000

    shl-int/lit8 v31, v16, 0x10

    or-int v30, v30, v31

    shl-int/lit8 v31, v15, 0x8

    or-int v30, v30, v31

    shl-int/lit8 v31, v11, 0x0

    or-int v20, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void

    :cond_0
    const v30, 0x3e0d3dcb

    sub-float v30, v25, v30

    const v31, 0x40f92f1b    # 7.787f

    div-float v25, v30, v31

    goto/16 :goto_0

    :cond_1
    const v30, 0x3e0d3dcb

    sub-float v30, v24, v30

    const v31, 0x40f92f1b    # 7.787f

    div-float v24, v30, v31

    goto/16 :goto_1

    :cond_2
    const v30, 0x3e0d3dcb

    sub-float v30, v26, v30

    const v31, 0x40f92f1b    # 7.787f

    div-float v26, v30, v31

    goto/16 :goto_2

    :cond_3
    const v30, 0x414eb852    # 12.92f

    mul-float v23, v23, v30

    goto/16 :goto_3

    :cond_4
    const v30, 0x414eb852    # 12.92f

    mul-float v22, v22, v30

    goto/16 :goto_4

    :cond_5
    const v30, 0x414eb852    # 12.92f

    mul-float v21, v21, v30

    goto/16 :goto_5
.end method
