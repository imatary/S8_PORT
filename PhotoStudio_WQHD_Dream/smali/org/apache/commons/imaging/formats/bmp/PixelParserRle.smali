.class Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;
.super Lorg/apache/commons/imaging/formats/bmp/PixelParser;
.source "PixelParserRle.java"


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/PixelParser;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    return-void
.end method

.method private convertDataToSamples(I)[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    new-array v0, v6, [I

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->getColorTableRGB(I)I

    move-result v3

    aput v3, v0, v5

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    new-array v0, v3, [I

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->getColorTableRGB(I)I

    move-result v3

    aput v3, v0, v5

    invoke-virtual {p0, v2}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->getColorTableRGB(I)I

    move-result v3

    aput v3, v0, v6

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BMP RLE: bad BitsPerPixel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getSamplesPerByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v0, v0, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BMP RLE: bad BitsPerPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v2, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processByteOfData([IIIIIILorg/apache/commons/imaging/common/ImageBuilder;)I
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    if-ltz p3, :cond_0

    if-ge p3, p5, :cond_0

    if-ltz p4, :cond_0

    if-ge p4, p6, :cond_0

    array-length v3, p1

    rem-int v3, v0, v3

    aget v2, p1, v3

    invoke-virtual {p7, p3, p4, v2}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipping bad pixel ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return v1
.end method


# virtual methods
.method public processImage(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v7, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v8, v2, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    const/4 v5, 0x0

    add-int/lit8 v6, v8, -0x1

    const/16 v21, 0x0

    :cond_0
    :goto_0
    if-nez v21, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RLE ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ") a"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->is:Ljava/io/InputStream;

    const-string v12, "BMP: Bad RLE"

    invoke-static {v2, v9, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v11, v2, 0xff

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RLE ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ") b"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->is:Ljava/io/InputStream;

    const-string v12, "BMP: Bad RLE"

    invoke-static {v2, v9, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v17, v0

    if-nez v11, :cond_3

    packed-switch v17, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->getSamplesPerByte()I

    move-result v24

    div-int v25, v17, v24

    rem-int v2, v17, v24

    if-lez v2, :cond_1

    add-int/lit8 v25, v25, 0x1

    :cond_1
    rem-int/lit8 v2, v25, 0x2

    if-eqz v2, :cond_2

    add-int/lit8 v25, v25, 0x1

    :cond_2
    const-string v2, "bytes"

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->is:Ljava/io/InputStream;

    const-string v12, "RLE: Absolute Mode"

    move/from16 v0, v25

    invoke-static {v2, v9, v0, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v18

    move/from16 v23, v17

    const/16 v22, 0x0

    :goto_1
    if-lez v23, :cond_0

    aget-byte v2, v18, v22

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->convertDataToSamples(I)[I

    move-result-object v3

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->processByteOfData([IIIIIILorg/apache/commons/imaging/common/ImageBuilder;)I

    move-result v26

    add-int v5, v5, v26

    sub-int v23, v23, v26

    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :pswitch_1
    const/16 v21, 0x1

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "RLE deltaX"

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->is:Ljava/io/InputStream;

    const-string v12, "BMP: Bad RLE"

    invoke-static {v2, v9, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v19, v0

    const-string v2, "RLE deltaY"

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->is:Ljava/io/InputStream;

    const-string v12, "BMP: Bad RLE"

    invoke-static {v2, v9, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v20, v0

    add-int v5, v5, v19

    sub-int v6, v6, v20

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->convertDataToSamples(I)[I

    move-result-object v10

    move-object/from16 v9, p0

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    move-object/from16 v16, p1

    invoke-direct/range {v9 .. v16}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRle;->processByteOfData([IIIIIILorg/apache/commons/imaging/common/ImageBuilder;)I

    move-result v2

    add-int/2addr v5, v2

    goto/16 :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
