.class public abstract Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;
.super Ljava/lang/Object;
.source "DataReader.java"


# instance fields
.field private final bitsPerSample:[I

.field protected final bitsPerSampleLength:I

.field protected final directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

.field protected final height:I

.field private final last:[I

.field protected final photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

.field protected final predictor:I

.field protected final samplesPerPixel:I

.field protected final width:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;[IIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->photometricInterpreter:Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    array-length v0, p3

    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSampleLength:I

    iput p5, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->samplesPerPixel:I

    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->predictor:I

    iput p6, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->width:I

    iput p7, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->height:I

    new-array v0, p5, [I

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->last:[I

    return-void
.end method


# virtual methods
.method protected applyPredictor([I)[I
    .locals 3

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->predictor:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->last:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v0

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->last:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected decompress([BIIII)[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object v16, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_FILL_ORDER:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShort;

    invoke-virtual/range {v15 .. v16}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v5

    const/4 v4, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v4

    :cond_0
    const/4 v15, 0x1

    if-ne v4, v15, :cond_2

    :cond_1
    sparse-switch p2, :sswitch_data_0

    new-instance v15, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Tiff: unknown/unsupported compression: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_2
    const/4 v15, 0x2

    if-ne v4, v15, :cond_3

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v7, v15, :cond_1

    aget-byte v15, p1, v7

    and-int/lit16 v15, v15, 0xff

    invoke-static {v15}, Ljava/lang/Integer;->reverse(I)I

    move-result v15

    ushr-int/lit8 v15, v15, 0x18

    int-to-byte v15, v15

    aput-byte v15, p1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    new-instance v15, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TIFF FillOrder="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is invalid"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v15

    :sswitch_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressModifiedHuffman([BII)[B

    move-result-object p1

    :goto_1
    :sswitch_1
    return-object p1

    :sswitch_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object v16, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T4_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual/range {v15 .. v16}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v12

    :cond_4
    and-int/lit8 v15, v12, 0x1

    if-eqz v15, :cond_5

    const/4 v9, 0x1

    :goto_2
    and-int/lit8 v15, v12, 0x2

    if-eqz v15, :cond_6

    const/4 v14, 0x1

    :goto_3
    if-eqz v14, :cond_7

    new-instance v15, Lorg/apache/commons/imaging/ImageReadException;

    const-string v16, "T.4 compression with the uncompressed mode extension is not yet supported"

    invoke-direct/range {v15 .. v16}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    :cond_7
    and-int/lit8 v15, v12, 0x4

    if-eqz v15, :cond_8

    const/4 v6, 0x1

    :goto_4
    if-eqz v9, :cond_9

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressT4_2D([BIIZ)[B

    move-result-object p1

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressT4_1D([BIIZ)[B

    move-result-object p1

    goto :goto_1

    :sswitch_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->directory:Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    sget-object v16, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_T6_OPTIONS:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    invoke-virtual/range {v15 .. v16}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v13

    :cond_a
    and-int/lit8 v15, v13, 0x2

    if-eqz v15, :cond_b

    const/4 v14, 0x1

    :goto_5
    if-eqz v14, :cond_c

    new-instance v15, Lorg/apache/commons/imaging/ImageReadException;

    const-string v16, "T.6 compression with the uncompressed mode extension is not yet supported"

    invoke-direct/range {v15 .. v16}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_b
    const/4 v14, 0x0

    goto :goto_5

    :cond_c
    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->decompressT6([BII)[B

    move-result-object p1

    goto :goto_1

    :sswitch_4
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v10, 0x8

    new-instance v11, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;

    const/16 v15, 0x8

    sget-object v16, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;-><init>(ILjava/nio/ByteOrder;)V

    invoke-virtual {v11}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->setTiffLZWMode()V

    move/from16 v0, p3

    invoke-virtual {v11, v8, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object p1

    goto/16 :goto_1

    :sswitch_5
    new-instance v15, Lorg/apache/commons/imaging/common/PackBits;

    invoke-direct {v15}, Lorg/apache/commons/imaging/common/PackBits;-><init>()V

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Lorg/apache/commons/imaging/common/PackBits;->decompress([BI)[B

    move-result-object p1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8005 -> :sswitch_5
    .end sparse-switch
.end method

.method getSamplesAsBytes(Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    aget v0, v4, v1

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->readBits(I)I

    move-result v2

    if-ge v0, v6, :cond_1

    and-int/lit8 v3, v2, 0x1

    rsub-int/lit8 v4, v0, 0x8

    shl-int/2addr v2, v4

    if-lez v3, :cond_0

    const/4 v4, 0x1

    rsub-int/lit8 v5, v0, 0x8

    shl-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    or-int/2addr v2, v4

    :cond_0
    :goto_1
    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v6, :cond_0

    add-int/lit8 v4, v0, -0x8

    shr-int/2addr v2, v4

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected isHomogenous(I)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    if-eq v1, p1, :cond_0

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public abstract readImageData(Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readImageData(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected resetPredictor()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->last:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/DataReader;->last:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
