.class public Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "PcxImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".pcx"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".pcx"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".pcc"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private read256ColorPalette(Ljava/io/InputStream;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, "Palette"

    const/16 v4, 0x301

    const-string v5, "Error reading palette"

    invoke-static {v3, p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    const/16 v3, 0x100

    new-array v1, v3, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private read256ColorPaletteFromEndOfFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v6

    const-wide/16 v8, 0x301

    sub-long v4, v6, v8

    long-to-int v3, v4

    int-to-long v6, v3

    invoke-static {v2, v6, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->read256ColorPalette(Ljava/io/InputStream;)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v11, [Ljava/io/Closeable;

    aput-object v2, v3, v10

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v3

    new-array v6, v11, [Ljava/io/Closeable;

    aput-object v2, v6, v10

    invoke-static {v0, v6}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v3
.end method

.method private readImage(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/awt/image/BufferedImage;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->xMax:I

    move-object/from16 v0, p1

    iget v10, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->xMin:I

    sub-int/2addr v9, v10

    add-int/lit8 v5, v9, 0x1

    if-gez v5, :cond_0

    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "Image width is negative"

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->yMax:I

    move-object/from16 v0, p1

    iget v10, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->yMin:I

    sub-int/2addr v9, v10

    add-int/lit8 v6, v9, 0x1

    if-gez v6, :cond_1

    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "Image height is negative"

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bytesPerLine:I

    move-object/from16 v0, p1

    iget v10, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    mul-int v37, v9, v10

    move/from16 v0, v37

    new-array v0, v0, [B

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_a

    :cond_2
    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    mul-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x7

    div-int/lit8 v7, v9, 0x8

    mul-int v9, v6, v7

    new-array v0, v9, [B

    move-object/from16 v30, v0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v6, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readScanLine(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;[B)V

    const/4 v9, 0x0

    mul-int v10, v14, v7

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-static {v0, v9, v1, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/awt/image/DataBufferByte;

    move-object/from16 v0, v30

    array-length v9, v0

    move-object/from16 v0, v30

    invoke-direct {v4, v0, v9}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const/4 v9, 0x2

    new-array v11, v9, [I

    fill-array-data v11, :array_0

    :cond_4
    :goto_1
    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_9

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v12, 0x0

    aput v12, v9, v10

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v35

    :goto_2
    new-instance v8, Ljava/awt/image/IndexColorModel;

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget v12, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    shl-int/2addr v10, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    new-instance v30, Ljava/awt/image/BufferedImage;

    invoke-virtual {v8}, Ljava/awt/image/IndexColorModel;->isAlphaPremultiplied()Z

    move-result v9

    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-direct {v0, v8, v1, v9, v10}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    :cond_5
    :goto_3
    return-object v30

    :cond_6
    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->read256ColorPalette(Ljava/io/InputStream;)[I

    move-result-object v11

    if-nez v11, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->read256ColorPaletteFromEndOfFile(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)[I

    move-result-object v11

    :cond_7
    if-nez v11, :cond_4

    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "No 256 color palette found in image that needs it"

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8
    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->colormap:[I

    goto :goto_1

    :cond_9
    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/4 v10, 0x0

    invoke-static {v4, v5, v6, v9, v10}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v35

    goto :goto_2

    :cond_a
    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    const/4 v9, 0x2

    move-object/from16 v0, p1

    iget v10, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    if-gt v9, v10, :cond_e

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    const/4 v10, 0x4

    if-gt v9, v10, :cond_e

    new-instance v8, Ljava/awt/image/IndexColorModel;

    move-object/from16 v0, p1

    iget v13, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    const/4 v9, 0x1

    move-object/from16 v0, p1

    iget v10, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    shl-int v14, v9, v10

    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->colormap:[I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v19}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    new-instance v30, Ljava/awt/image/BufferedImage;

    const/16 v9, 0xc

    move-object/from16 v0, v30

    invoke-direct {v0, v5, v6, v9, v8}, Ljava/awt/image/BufferedImage;-><init>(IIILjava/awt/image/IndexColorModel;)V

    new-array v0, v5, [B

    move-object/from16 v17, v0

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v6, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readScanLine(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;[B)V

    const/16 v32, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    const/16 v34, 0x0

    :goto_5
    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    move/from16 v0, v34

    if-ge v0, v9, :cond_d

    const/16 v29, 0x0

    :goto_6
    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bytesPerLine:I

    move/from16 v0, v29

    if-ge v0, v9, :cond_c

    add-int/lit8 v33, v32, 0x1

    aget-byte v9, v36, v32

    and-int/lit16 v0, v9, 0xff

    move/from16 v28, v0

    const/16 v31, 0x0

    :goto_7
    const/16 v9, 0x8

    move/from16 v0, v31

    if-ge v0, v9, :cond_b

    mul-int/lit8 v9, v29, 0x8

    add-int v9, v9, v31

    move-object/from16 v0, v17

    array-length v10, v0

    if-ge v9, v10, :cond_b

    mul-int/lit8 v9, v29, 0x8

    add-int v9, v9, v31

    aget-byte v10, v17, v9

    rsub-int/lit8 v12, v31, 0x7

    shr-int v12, v28, v12

    and-int/lit8 v12, v12, 0x1

    shl-int v12, v12, v34

    int-to-byte v12, v12

    or-int/2addr v10, v12

    int-to-byte v10, v10

    aput-byte v10, v17, v9

    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v29, v29, 0x1

    move/from16 v32, v33

    goto :goto_6

    :cond_c
    add-int/lit8 v34, v34, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual/range {v30 .. v30}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v16, 0x1

    move v15, v5

    invoke-virtual/range {v12 .. v17}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_e
    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_10

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_10

    const/4 v9, 0x3

    new-array v0, v9, [[B

    move-object/from16 v30, v0

    const/4 v9, 0x0

    mul-int v10, v5, v6

    new-array v10, v10, [B

    aput-object v10, v30, v9

    const/4 v9, 0x1

    mul-int v10, v5, v6

    new-array v10, v10, [B

    aput-object v10, v30, v9

    const/4 v9, 0x2

    mul-int v10, v5, v6

    new-array v10, v10, [B

    aput-object v10, v30, v9

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v6, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readScanLine(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;[B)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v30, v10

    mul-int v12, v14, v5

    move-object/from16 v0, v36

    invoke-static {v0, v9, v10, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bytesPerLine:I

    const/4 v10, 0x1

    aget-object v10, v30, v10

    mul-int v12, v14, v5

    move-object/from16 v0, v36

    invoke-static {v0, v9, v10, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bytesPerLine:I

    mul-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    aget-object v10, v30, v10

    mul-int v12, v14, v5

    move-object/from16 v0, v36

    invoke-static {v0, v9, v10, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_f
    new-instance v4, Ljava/awt/image/DataBufferByte;

    const/4 v9, 0x0

    aget-object v9, v30, v9

    array-length v9, v9

    move-object/from16 v0, v30

    invoke-direct {v4, v0, v9}, Ljava/awt/image/DataBufferByte;-><init>([[BI)V

    const/4 v9, 0x3

    new-array v0, v9, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_1

    const/4 v9, 0x3

    new-array v0, v9, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_2

    const/16 v24, 0x0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v5

    invoke-static/range {v18 .. v24}, Ljava/awt/image/Raster;->createBandedRaster(Ljava/awt/image/DataBuffer;III[I[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v35

    new-instance v8, Ljava/awt/image/ComponentColorModel;

    const/16 v9, 0x3e8

    invoke-static {v9}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v23}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    new-instance v30, Ljava/awt/image/BufferedImage;

    invoke-virtual {v8}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v9

    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-direct {v0, v8, v1, v9, v10}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/16 v10, 0x18

    if-ne v9, v10, :cond_11

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_12

    :cond_11
    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/16 v10, 0x20

    if-ne v9, v10, :cond_16

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    :cond_12
    mul-int/lit8 v21, v5, 0x3

    mul-int v9, v21, v6

    new-array v0, v9, [B

    move-object/from16 v30, v0

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v6, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readScanLine(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;[B)V

    move-object/from16 v0, p1

    iget v9, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    const/16 v10, 0x18

    if-ne v9, v10, :cond_14

    const/4 v9, 0x0

    mul-int v10, v14, v21

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    move/from16 v2, v21

    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_14
    const/16 v38, 0x0

    :goto_a
    move/from16 v0, v38

    if-ge v0, v5, :cond_13

    mul-int v9, v14, v21

    mul-int/lit8 v10, v38, 0x3

    add-int/2addr v9, v10

    mul-int/lit8 v10, v38, 0x4

    aget-byte v10, v36, v10

    aput-byte v10, v30, v9

    mul-int v9, v14, v21

    mul-int/lit8 v10, v38, 0x3

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v10, v38, 0x4

    add-int/lit8 v10, v10, 0x1

    aget-byte v10, v36, v10

    aput-byte v10, v30, v9

    mul-int v9, v14, v21

    mul-int/lit8 v10, v38, 0x3

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x2

    mul-int/lit8 v10, v38, 0x4

    add-int/lit8 v10, v10, 0x2

    aget-byte v10, v36, v10

    aput-byte v10, v30, v9

    add-int/lit8 v38, v38, 0x1

    goto :goto_a

    :cond_15
    new-instance v4, Ljava/awt/image/DataBufferByte;

    move-object/from16 v0, v30

    array-length v9, v0

    move-object/from16 v0, v30

    invoke-direct {v4, v0, v9}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    const/16 v22, 0x3

    const/4 v9, 0x3

    new-array v0, v9, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_3

    const/16 v24, 0x0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-static/range {v18 .. v24}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v35

    new-instance v8, Ljava/awt/image/ComponentColorModel;

    const/16 v9, 0x3e8

    invoke-static {v9}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v22, v8

    invoke-direct/range {v22 .. v27}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    new-instance v30, Ljava/awt/image/BufferedImage;

    invoke-virtual {v8}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v9

    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-direct {v0, v8, v1, v9, v10}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    goto/16 :goto_3

    :cond_16
    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid/unsupported image with bitsPerPixel "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v12, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " and planes "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v12, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    nop

    :array_0
    .array-data 4
        0x0
        0xffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x0
    .end array-data
.end method

.method private readPcxHeader(Ljava/io/InputStream;Z)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, "PcxHeader"

    const/16 v23, 0x80

    const-string v24, "Not a Valid PCX File"

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v3, v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v22

    const/4 v3, 0x0

    aget-byte v3, v22, v3

    and-int/lit16 v4, v3, 0xff

    const/4 v3, 0x1

    aget-byte v3, v22, v3

    and-int/lit16 v5, v3, 0xff

    const/4 v3, 0x2

    aget-byte v3, v22, v3

    and-int/lit16 v6, v3, 0xff

    const/4 v3, 0x3

    aget-byte v3, v22, v3

    and-int/lit16 v7, v3, 0xff

    const/4 v3, 0x4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v8

    const/4 v3, 0x6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v9

    const/16 v3, 0x8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v10

    const/16 v3, 0xa

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v11

    const/16 v3, 0xc

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v12

    const/16 v3, 0xe

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v13

    const/16 v3, 0x10

    new-array v14, v3, [I

    const/16 v21, 0x0

    :goto_0
    const/16 v3, 0x10

    move/from16 v0, v21

    if-ge v0, v3, :cond_0

    const/high16 v3, -0x1000000

    mul-int/lit8 v23, v21, 0x3

    add-int/lit8 v23, v23, 0x10

    aget-byte v23, v22, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x10

    or-int v3, v3, v23

    mul-int/lit8 v23, v21, 0x3

    add-int/lit8 v23, v23, 0x10

    add-int/lit8 v23, v23, 0x1

    aget-byte v23, v22, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x8

    or-int v3, v3, v23

    mul-int/lit8 v23, v21, 0x3

    add-int/lit8 v23, v23, 0x10

    add-int/lit8 v23, v23, 0x2

    aget-byte v23, v22, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v3, v3, v23

    aput v3, v14, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x40

    aget-byte v3, v22, v3

    and-int/lit16 v15, v3, 0xff

    const/16 v3, 0x41

    aget-byte v3, v22, v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v16, v0

    const/16 v3, 0x42

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v17

    const/16 v3, 0x44

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v18

    const/16 v3, 0x46

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v19

    const/16 v3, 0x48

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v20

    const/16 v3, 0xa

    if-eq v4, v3, :cond_1

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Not a Valid PCX File: manufacturer is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-eqz p2, :cond_2

    rem-int/lit8 v3, v17, 0x2

    if-eqz v3, :cond_2

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    const-string v23, "Not a Valid PCX File: bytesPerLine is odd"

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v3, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;

    invoke-direct/range {v3 .. v20}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;-><init>(IIIIIIIIII[IIIIIII)V

    return-object v3
.end method

.method private readPcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readPcxHeader(Ljava/io/InputStream;Z)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v4, [Ljava/io/Closeable;

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v3

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v3
.end method

.method private readScanLine(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    iget v6, p1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->encoding:I

    if-nez v6, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v6, p3

    if-ge v1, v6, :cond_5

    array-length v6, p3

    sub-int/2addr v6, v1

    invoke-virtual {p2, p3, v1, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_0

    new-instance v6, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "Premature end of file reading image data"

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    add-int/2addr v1, v4

    goto :goto_0

    :cond_1
    iget v6, p1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->encoding:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v1, 0x0

    :goto_1
    array-length v6, p3

    if-ge v1, v6, :cond_5

    const-string v6, "Pixel"

    const-string v7, "Error reading image data"

    invoke-static {v6, p2, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v6, v0, 0xc0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_2

    and-int/lit8 v2, v0, 0x3f

    const-string v6, "Pixel"

    const-string v7, "Error reading image data"

    invoke-static {v6, p2, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    add-int v6, v1, v3

    array-length v7, p3

    if-ge v6, v7, :cond_3

    add-int v6, v1, v3

    aput-byte v5, p3, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    move v5, v0

    goto :goto_2

    :cond_3
    add-int/2addr v1, v2

    goto :goto_1

    :cond_4
    new-instance v6, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid PCX encoding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->encoding:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    return-void
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readPcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->dump(Ljava/io/PrintWriter;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PCX:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const/4 v2, 0x0

    const-string v6, "STRICT"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readPcxHeader(Ljava/io/InputStream;Z)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;

    move-result-object v3

    invoke-direct {p0, v3, v1, p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readImage(Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;Ljava/io/InputStream;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/awt/image/BufferedImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    const/4 v0, 0x1

    new-array v6, v7, [Ljava/io/Closeable;

    aput-object v1, v6, v8

    invoke-static {v0, v6}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v4

    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v6

    goto :goto_0

    :catchall_0
    move-exception v6

    new-array v7, v7, [Ljava/io/Closeable;

    aput-object v1, v7, v8

    invoke-static {v0, v7}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v6
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".pcx"

    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/ImageInfo;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/ImageInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readPcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;

    move-result-object v21

    invoke-virtual/range {p0 .. p2}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v22

    new-instance v2, Lorg/apache/commons/imaging/ImageInfo;

    const-string v3, "PCX"

    move-object/from16 v0, v21

    iget v4, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    move-object/from16 v0, v21

    iget v5, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    mul-int/2addr v4, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lorg/apache/commons/imaging/ImageFormats;->PCX:Lorg/apache/commons/imaging/ImageFormats;

    const-string v7, "ZSoft PCX Image"

    move-object/from16 v0, v22

    iget v8, v0, Ljava/awt/Dimension;->height:I

    const-string v9, "image/x-pcx"

    const/4 v10, 0x1

    move-object/from16 v0, v21

    iget v11, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->vDpi:I

    invoke-virtual/range {v22 .. v22}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v12

    move-object/from16 v0, v21

    iget v14, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->vDpi:I

    int-to-double v14, v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-float v12, v12

    move-object/from16 v0, v21

    iget v13, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->hDpi:I

    invoke-virtual/range {v22 .. v22}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v14

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->hDpi:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-float v14, v14

    move-object/from16 v0, v22

    iget v15, v0, Ljava/awt/Dimension;->width:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->nPlanes:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->bitsPerPixel:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    :cond_0
    const/16 v18, 0x1

    :goto_0
    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->encoding:I

    move/from16 v20, v0

    const/16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    :goto_1
    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v2

    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    goto :goto_1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Dimension;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->readPcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;

    move-result-object v0

    iget v3, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->xMax:I

    iget v4, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->xMin:I

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    if-gez v1, :cond_0

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    const-string v4, "Image width is negative"

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v3, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->yMax:I

    iget v4, v0, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser$PcxHeader;->yMin:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    if-gez v2, :cond_1

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    const-string v4, "Image height is negative"

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    return-object v3
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/common/ImageMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Pcx-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/BufferedImage;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;

    invoke-direct {v0, p3}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;)V

    return-void
.end method
