.class public Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;
.super Ljava/lang/Object;
.source "CompressedDataReader.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/psd/datareaders/DataReader;


# instance fields
.field private dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    return-void
.end method


# virtual methods
.method public readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;Lorg/apache/commons/imaging/common/BinaryFileParser;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v12, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    iget v0, v12, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    move/from16 v22, v0

    iget v13, v12, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    iget v0, v12, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->channels:I

    move/from16 v24, v0

    mul-int v20, v13, v24

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v20

    if-ge v14, v0, :cond_0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "scanline_bytecount["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "PSD: bad Image Data"

    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/imaging/common/BinaryFileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v24

    aput v24, v19, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    const/16 v24, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setDebug(Z)V

    iget v11, v12, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->depth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->getBasicChannelsCount()I

    move-result v9

    filled-new-array {v9, v13}, [I

    move-result-object v24

    const-class v25, [I

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[[I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_2

    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    if-ge v0, v13, :cond_1

    mul-int v24, v8, v13

    add-int v15, v24, v23

    const-string v24, "scanline"

    aget v25, v19, v15

    const-string v26, "PSD: Missing Image Data"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v17

    new-instance v24, Lorg/apache/commons/imaging/common/PackBits;

    invoke-direct/range {v24 .. v24}, Lorg/apache/commons/imaging/common/PackBits;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/common/PackBits;->decompress([BI)[B

    move-result-object v21

    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v16, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;

    sget-object v24, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v6, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;

    const/16 v24, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-direct {v6, v0, v1}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;-><init>(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move/from16 v0, v22

    invoke-virtual {v6, v11, v0}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->readBitsArray(II)[I

    move-result-object v18

    aget-object v24, v10, v8

    aput-object v18, v24, v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v6, v24, v25

    move-object/from16 v0, v24

    invoke-static {v7, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    :catchall_0
    move-exception v24

    :goto_3
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v5, v25, v26

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v24

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/psd/datareaders/CompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v10, v1, v2}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;)V

    return-void

    :catchall_1
    move-exception v24

    move-object v5, v6

    goto :goto_3
.end method
