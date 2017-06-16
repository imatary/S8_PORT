.class public final Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;
.super Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;
.source "DataReaderTiled.java"


# instance fields
.field private final bitsPerPixel:I

.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final compression:I

.field private final imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

.field private final tileLength:I

.field private final tileWidth:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;III[IIIIIILjava/nio/ByteOrder;Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;)V
    .locals 9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;[IIIII)V

    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    iput p5, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->bitsPerPixel:I

    move/from16 v0, p11

    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->compression:I

    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private interpretTile(Lorg/apache/commons/imaging/common/ImageBuilder;[BIIII)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v23, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->isHomogenous(I)Z

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->predictor:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->bitsPerPixel:I

    move/from16 v23, v0

    const/16 v24, 0x18

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    if-eqz v5, :cond_5

    const/4 v14, 0x0

    move/from16 v9, p4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    move/from16 v23, v0

    add-int v10, p4, v23

    move/from16 v0, p6

    if-le v10, v0, :cond_0

    move/from16 v10, p6

    :cond_0
    move/from16 v12, p3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    move/from16 v23, v0

    add-int v13, p3, v23

    move/from16 v0, p5

    if-le v13, v0, :cond_1

    move/from16 v13, p5

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_7

    sub-int v23, v8, v9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    mul-int/lit8 v14, v23, 0x3

    move v11, v12

    :goto_1
    if-ge v11, v13, :cond_2

    const/high16 v23, -0x1000000

    aget-byte v24, p2, v14

    shl-int/lit8 v24, v24, 0x8

    add-int/lit8 v25, v14, 0x1

    aget-byte v25, p2, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    or-int v24, v24, v25

    shl-int/lit8 v24, v24, 0x8

    or-int v23, v23, v24

    add-int/lit8 v24, v14, 0x2

    aget-byte v24, p2, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    or-int v17, v23, v24

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v11, v8, v1}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v14, v14, 0x3

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move v8, v9

    :goto_2
    if-ge v8, v10, :cond_7

    sub-int v23, v8, v9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    mul-int/lit8 v14, v23, 0x3

    move v11, v12

    move v15, v14

    :goto_3
    if-ge v11, v13, :cond_4

    const/16 v23, 0x0

    add-int/lit8 v14, v15, 0x1

    aget-byte v24, p2, v15

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    aput v24, v18, v23

    const/16 v23, 0x1

    add-int/lit8 v15, v14, 0x1

    aget-byte v24, p2, v14

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    aput v24, v18, v23

    const/16 v23, 0x2

    add-int/lit8 v14, v15, 0x1

    aget-byte v24, p2, v15

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    aput v24, v18, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11, v8}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    add-int/lit8 v11, v11, 0x1

    move v15, v14

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move v14, v15

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->byteOrder:Ljava/nio/ByteOrder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v7, v6, v0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    move/from16 v24, v0

    mul-int v16, v23, v24

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->bitsPerSampleLength:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->resetPredictor()V

    const/4 v8, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v8, v0, :cond_7

    add-int v21, v19, p3

    add-int v22, v20, p4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->getSamplesAsBytes(Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;[I)V

    move/from16 v0, v21

    move/from16 v1, p5

    if-ge v0, v1, :cond_6

    move/from16 v0, v22

    move/from16 v1, p6

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->applyPredictor([I)[I

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    :cond_6
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->resetPredictor()V

    add-int/lit8 v20, v20, 0x1

    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->flushCache()V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    :cond_7
    return-void

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4
.end method


# virtual methods
.method public readImageData(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->bitsPerPixel:I

    mul-int v13, v2, v4

    add-int/lit8 v2, v13, 0x7

    div-int/lit8 v14, v2, 0x8

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v5, v14, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Ljava/awt/Rectangle;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    div-int v15, v2, v4

    move-object/from16 v0, p1

    iget v2, v0, Ljava/awt/Rectangle;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    div-int v16, v2, v4

    move-object/from16 v0, p1

    iget v2, v0, Ljava/awt/Rectangle;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    div-int v22, v2, v4

    move-object/from16 v0, p1

    iget v2, v0, Ljava/awt/Rectangle;->y:I

    move-object/from16 v0, p1

    iget v4, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    div-int v23, v2, v4

    sub-int v2, v16, v15

    add-int/lit8 v19, v2, 0x1

    sub-int v2, v23, v22

    add-int/lit8 v21, v2, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    mul-int v11, v19, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v12, v21, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    div-int v20, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    mul-int v26, v15, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v27, v22, v2

    new-instance v25, Lorg/apache/commons/imaging/common/ImageBuilder;

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v11, v12, v2}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    move/from16 v18, v22

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v23

    if-gt v0, v1, :cond_1

    move/from16 v17, v15

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_0

    mul-int v2, v18, v20

    add-int v24, v2, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    iget-object v2, v2, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    aget-object v2, v2, v24

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->compression:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->decompress([BIIII)[B

    move-result-object v8

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    mul-int v2, v2, v17

    sub-int v9, v2, v26

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v2, v2, v18

    sub-int v10, v2, v27

    move-object/from16 v6, p0

    move-object/from16 v7, v25

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->interpretTile(Lorg/apache/commons/imaging/common/ImageBuilder;[BIIII)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Ljava/awt/Rectangle;->x:I

    move/from16 v0, v26

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Ljava/awt/Rectangle;->y:I

    move/from16 v0, v27

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Ljava/awt/Rectangle;->width:I

    if-ne v2, v11, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Ljava/awt/Rectangle;->height:I

    if-ne v2, v12, :cond_2

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Ljava/awt/Rectangle;->x:I

    sub-int v2, v2, v26

    move-object/from16 v0, p1

    iget v4, v0, Ljava/awt/Rectangle;->y:I

    sub-int v4, v4, v27

    move-object/from16 v0, p1

    iget v6, v0, Ljava/awt/Rectangle;->width:I

    move-object/from16 v0, p1

    iget v7, v0, Ljava/awt/Rectangle;->height:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4, v6, v7}, Lorg/apache/commons/imaging/common/ImageBuilder;->getSubimage(IIII)Ljava/awt/image/BufferedImage;

    move-result-object v2

    goto :goto_2
.end method

.method public readImageData(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->bitsPerPixel:I

    mul-int v13, v1, v3

    add-int/lit8 v1, v13, 0x7

    div-int/lit8 v14, v1, 0x8

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    mul-int v4, v14, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    iget-object v12, v1, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    array-length v0, v12

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v17, v12, v15

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->compression:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->decompress([BIIII)[B

    move-result-object v7

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->width:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->height:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->interpretTile(Lorg/apache/commons/imaging/common/ImageBuilder;[BIIII)V

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileWidth:I

    add-int/2addr v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->width:I

    if-lt v8, v1, :cond_1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->tileLength:I

    add-int/2addr v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderTiled;->height:I

    if-lt v9, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0
.end method
