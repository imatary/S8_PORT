.class public final Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;
.super Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;
.source "DataReaderStrips.java"


# instance fields
.field private final bitsPerPixel:I

.field private final byteOrder:Ljava/nio/ByteOrder;

.field private final compression:I

.field private final imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

.field private final rowsPerStrip:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIILjava/nio/ByteOrder;ILorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;)V
    .locals 9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;-><init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;[IIIII)V

    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    move/from16 v0, p9

    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->compression:I

    move/from16 v0, p11

    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private interpretStrip(Lorg/apache/commons/imaging/common/ImageBuilder;[BII)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    move/from16 v0, p4

    if-lt v13, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->isHomogenous(I)Z

    move-result v1

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->predictor:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    const/16 v14, 0x8

    if-ne v13, v14, :cond_4

    if-eqz v1, :cond_4

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    div-int v10, p3, v13

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/2addr v13, v10

    move/from16 v0, p4

    if-le v13, v0, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    sub-int v10, p4, v13

    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int v6, v13, v10

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/2addr v13, v10

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    const/4 v13, 0x1

    new-array v12, v13, [I

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-ge v7, v13, :cond_3

    const/4 v13, 0x0

    add-int/lit8 v9, v8, 0x1

    aget-byte v14, p2, v8

    and-int/lit16 v14, v14, 0xff

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v12, v7, v4}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    add-int/lit8 v7, v7, 0x1

    move v8, v9

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->predictor:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    const/16 v14, 0x18

    if-ne v13, v14, :cond_9

    if-eqz v1, :cond_9

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    div-int v10, p3, v13

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/2addr v13, v10

    move/from16 v0, p4

    if-le v13, v0, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    sub-int v10, p4, v13

    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int v6, v13, v10

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/2addr v13, v10

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    instance-of v13, v13, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;

    if-eqz v13, :cond_7

    move v4, v5

    :goto_2
    if-ge v4, v6, :cond_0

    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-ge v7, v13, :cond_6

    const/high16 v13, -0x1000000

    aget-byte v14, p2, v8

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v15, v8, 0x1

    aget-byte v15, p2, v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    add-int/lit8 v14, v8, 0x2

    aget-byte v14, p2, v14

    and-int/lit16 v14, v14, 0xff

    or-int v11, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4, v11}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v13, 0x3

    new-array v12, v13, [I

    move v4, v5

    :goto_4
    if-ge v4, v6, :cond_0

    const/4 v7, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-ge v7, v13, :cond_8

    const/4 v13, 0x0

    add-int/lit8 v9, v8, 0x1

    aget-byte v14, p2, v8

    and-int/lit16 v14, v14, 0xff

    aput v14, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v8, v9, 0x1

    aget-byte v14, p2, v9

    and-int/lit16 v14, v14, 0xff

    aput v14, v12, v13

    const/4 v13, 0x2

    add-int/lit8 v9, v8, 0x1

    aget-byte v14, p2, v8

    and-int/lit16 v14, v14, 0xff

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v12, v7, v4}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    add-int/lit8 v7, v7, 0x1

    move v8, v9

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->byteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v3, v2, v13}, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->bitsPerSampleLength:I

    new-array v12, v13, [I

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->resetPredictor()V

    const/4 v4, 0x0

    :goto_6
    move/from16 v0, p3

    if-ge v4, v0, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->getSamplesAsBytes(Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;[I)V

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-ge v13, v14, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->applyPredictor([I)[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v12, v14, v15}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V

    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-lt v13, v14, :cond_b

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->x:I

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->resetPredictor()V

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->flushCache()V

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->y:I

    move/from16 v0, p4

    if-ge v13, v0, :cond_0

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method


# virtual methods
.method public readImageData(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget v4, v0, Ljava/awt/Rectangle;->y:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    div-int v24, v4, v6

    move-object/from16 v0, p1

    iget v4, v0, Ljava/awt/Rectangle;->y:I

    move-object/from16 v0, p1

    iget v6, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    div-int v25, v4, v6

    sub-int v4, v25, v24

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    mul-int v27, v4, v6

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    mul-int v28, v24, v4

    move-object/from16 v0, p1

    iget v4, v0, Ljava/awt/Rectangle;->y:I

    sub-int v4, v4, v28

    move-object/from16 v0, p1

    iget v6, v0, Ljava/awt/Rectangle;->height:I

    add-int v29, v4, v6

    new-instance v26, Lorg/apache/commons/imaging/common/ImageBuilder;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    const/4 v6, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v0, v4, v1, v6}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    move/from16 v15, v24

    :goto_0
    move/from16 v0, v25

    if-gt v15, v0, :cond_0

    const-wide v6, 0xffffffffL

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    int-to-long v8, v4

    and-long v20, v6, v8

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->height:I

    int-to-long v6, v4

    int-to-long v8, v15

    mul-long v8, v8, v20

    sub-long v22, v6, v8

    move-wide/from16 v0, v22

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    mul-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    int-to-long v10, v4

    mul-long v12, v18, v10

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    int-to-long v6, v4

    mul-long v16, v18, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-virtual {v4, v15}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->getImageData(I)Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->compression:I

    long-to-int v7, v12

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    move-wide/from16 v0, v18

    long-to-int v9, v0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->decompress([BIIII)[B

    move-result-object v14

    move-wide/from16 v0, v16

    long-to-int v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    invoke-direct {v0, v1, v14, v4, v2}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->interpretStrip(Lorg/apache/commons/imaging/common/ImageBuilder;[BII)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Ljava/awt/Rectangle;->x:I

    if-nez v4, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Ljava/awt/Rectangle;->y:I

    move/from16 v0, v28

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    if-ne v4, v6, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Ljava/awt/Rectangle;->height:I

    move/from16 v0, v27

    if-ne v4, v0, :cond_1

    invoke-virtual/range {v26 .. v26}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Ljava/awt/Rectangle;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Ljava/awt/Rectangle;->y:I

    sub-int v6, v6, v28

    move-object/from16 v0, p1

    iget v7, v0, Ljava/awt/Rectangle;->width:I

    move-object/from16 v0, p1

    iget v8, v0, Ljava/awt/Rectangle;->height:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6, v7, v8}, Lorg/apache/commons/imaging/common/ImageBuilder;->getSubimage(IIII)Ljava/awt/image/BufferedImage;

    move-result-object v4

    goto :goto_1
.end method

.method public readImageData(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->getImageDataLength()I

    move-result v4

    if-ge v15, v4, :cond_0

    const-wide v6, 0xffffffffL

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->rowsPerStrip:I

    int-to-long v8, v4

    and-long v20, v6, v8

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->height:I

    int-to-long v6, v4

    int-to-long v8, v15

    mul-long v8, v8, v20

    sub-long v22, v6, v8

    move-wide/from16 v0, v22

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->bitsPerPixel:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    mul-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    int-to-long v10, v4

    mul-long v12, v18, v10

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    int-to-long v6, v4

    mul-long v16, v18, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->imageData:Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    invoke-virtual {v4, v15}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;->getImageData(I)Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;->getData()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->compression:I

    long-to-int v7, v12

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->width:I

    move-wide/from16 v0, v18

    long-to-int v9, v0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->decompress([BIIII)[B

    move-result-object v14

    move-wide/from16 v0, v16

    long-to-int v4, v0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->height:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v4, v6}, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReaderStrips;->interpretStrip(Lorg/apache/commons/imaging/common/ImageBuilder;[BII)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
