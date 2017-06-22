.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterYCbCr.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method

.method public static convertYCbCrtoRGB(III)I
    .locals 22

    const-wide v14, 0x3ff29fbe76c8b439L    # 1.164

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4030000000000000L    # 16.0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    const-wide v16, 0x3ff989374bc6a7f0L    # 1.596

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4060000000000000L    # 128.0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    add-double v10, v14, v16

    const-wide v14, 0x3ff29fbe76c8b439L    # 1.164

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4030000000000000L    # 16.0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    const-wide v16, 0x3fea04189374bc6aL    # 0.813

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4060000000000000L    # 128.0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    const-wide v16, 0x3fd916872b020c4aL    # 0.392

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4060000000000000L    # 128.0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    sub-double v8, v14, v16

    const-wide v14, 0x3ff29fbe76c8b439L    # 1.164

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4030000000000000L    # 16.0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    const-wide v16, 0x400022d0e5604189L    # 2.017

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4060000000000000L    # 128.0

    sub-double v18, v18, v20

    mul-double v16, v16, v18

    add-double v4, v14, v16

    double-to-int v13, v10

    const/4 v14, 0x0

    const/16 v15, 0xff

    invoke-static {v13, v14, v15}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v7

    double-to-int v13, v8

    const/4 v14, 0x0

    const/16 v15, 0xff

    invoke-static {v13, v14, v15}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v6

    double-to-int v13, v4

    const/4 v14, 0x0

    const/16 v15, 0xff

    invoke-static {v13, v14, v15}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v3

    const/16 v2, 0xff

    const/high16 v13, -0x1000000

    shl-int/lit8 v14, v7, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v6, 0x8

    or-int/2addr v13, v14

    shl-int/lit8 v14, v3, 0x0

    or-int v12, v13, v14

    return v12
.end method

.method public static limit(III)I
    .locals 1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v18, 0x0

    aget v12, p2, v18

    const/16 v18, 0x1

    aget v6, p2, v18

    const/16 v18, 0x2

    aget v7, p2, v18

    int-to-double v0, v12

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff66e978d4fdf3bL    # 1.402

    int-to-double v0, v7

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4060000000000000L    # 128.0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v10, v18, v20

    int-to-double v0, v12

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd60663c74fb54aL    # 0.34414

    int-to-double v0, v6

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4060000000000000L    # 128.0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    const-wide v20, 0x3fe6da3c21187e7cL    # 0.71414

    int-to-double v0, v7

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4060000000000000L    # 128.0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    sub-double v8, v18, v20

    int-to-double v0, v12

    move-wide/from16 v18, v0

    const-wide v20, 0x3ffc5a1cac083127L    # 1.772

    int-to-double v0, v6

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4060000000000000L    # 128.0

    sub-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v4, v18, v20

    double-to-int v0, v10

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0xff

    invoke-static/range {v18 .. v20}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v16

    double-to-int v0, v8

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0xff

    invoke-static/range {v18 .. v20}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v15

    double-to-int v0, v4

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0xff

    invoke-static/range {v18 .. v20}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterYCbCr;->limit(III)I

    move-result v14

    const/16 v13, 0xff

    const/high16 v18, -0x1000000

    shl-int/lit8 v19, v16, 0x10

    or-int v18, v18, v19

    shl-int/lit8 v19, v15, 0x8

    or-int v18, v18, v19

    shl-int/lit8 v19, v14, 0x0

    or-int v17, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
