.class public final Lorg/apache/commons/imaging/palette/Dithering;
.super Ljava/lang/Object;
.source "Dithering.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustPixel(IIIIII)I
    .locals 6

    const/16 v5, 0xff

    shr-int/lit8 v4, p0, 0x18

    and-int/lit16 v0, v4, 0xff

    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v3, v4, 0xff

    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v2, v4, 0xff

    and-int/lit16 v1, p0, 0xff

    mul-int v4, p1, p5

    div-int/lit8 v4, v4, 0x10

    add-int/2addr v0, v4

    mul-int v4, p2, p5

    div-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    mul-int v4, p3, p5

    div-int/lit8 v4, v4, 0x10

    add-int/2addr v2, v4

    mul-int v4, p4, p5

    div-int/lit8 v4, v4, 0x10

    add-int/2addr v1, v4

    if-gez v0, :cond_4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-gez v3, :cond_5

    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-gez v2, :cond_6

    const/4 v2, 0x0

    :cond_2
    :goto_2
    if-gez v1, :cond_7

    const/4 v1, 0x0

    :cond_3
    :goto_3
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v3, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v1

    return v4

    :cond_4
    if-le v0, v5, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_5
    if-le v3, v5, :cond_1

    const/16 v3, 0xff

    goto :goto_1

    :cond_6
    if-le v2, v5, :cond_2

    const/16 v2, 0xff

    goto :goto_2

    :cond_7
    if-le v1, v5, :cond_3

    const/16 v1, 0xff

    goto :goto_3
.end method

.method public static applyFloydSteinbergDithering(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/palette/Palette;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/16 v23, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_3

    const/16 v22, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    shr-int/lit8 v4, v11, 0x18

    and-int/lit16 v10, v4, 0xff

    shr-int/lit8 v4, v11, 0x10

    and-int/lit16 v0, v4, 0xff

    move/from16 v20, v0

    shr-int/lit8 v4, v11, 0x8

    and-int/lit16 v13, v4, 0xff

    and-int/lit16 v12, v11, 0xff

    shr-int/lit8 v4, v17, 0x18

    and-int/lit16 v15, v4, 0xff

    shr-int/lit8 v4, v17, 0x10

    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    shr-int/lit8 v4, v17, 0x8

    and-int/lit16 v0, v4, 0xff

    move/from16 v18, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    sub-int v5, v10, v15

    sub-int v6, v20, v19

    sub-int v7, v13, v18

    sub-int v8, v12, v16

    add-int/lit8 v4, v22, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    if-ge v4, v9, :cond_0

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v4

    const/4 v9, 0x7

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/imaging/palette/Dithering;->adjustPixel(IIIIII)I

    move-result v21

    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v0, v4, v1, v2}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v4, v23, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    if-ge v4, v9, :cond_0

    add-int/lit8 v4, v22, 0x1

    add-int/lit8 v9, v23, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v4

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/imaging/palette/Dithering;->adjustPixel(IIIIII)I

    move-result v21

    add-int/lit8 v4, v22, 0x1

    add-int/lit8 v9, v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v9, v1}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    :cond_0
    add-int/lit8 v4, v23, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    if-ge v4, v9, :cond_1

    add-int/lit8 v4, v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v4

    const/4 v9, 0x5

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/imaging/palette/Dithering;->adjustPixel(IIIIII)I

    move-result v21

    add-int/lit8 v4, v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v4, v2}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v4, v22, -0x1

    if-ltz v4, :cond_1

    add-int/lit8 v4, v22, -0x1

    add-int/lit8 v9, v23, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v4

    const/4 v9, 0x3

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/imaging/palette/Dithering;->adjustPixel(IIIIII)I

    move-result v21

    add-int/lit8 v4, v22, -0x1

    add-int/lit8 v9, v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v9, v1}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    :cond_1
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method
