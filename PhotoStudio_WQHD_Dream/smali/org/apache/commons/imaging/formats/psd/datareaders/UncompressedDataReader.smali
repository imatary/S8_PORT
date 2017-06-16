.class public Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;
.super Ljava/lang/Object;
.source "UncompressedDataReader.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/psd/datareaders/DataReader;


# instance fields
.field private dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    return-void
.end method


# virtual methods
.method public readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;Lorg/apache/commons/imaging/common/BinaryFileParser;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v11, v0, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    iget v14, v11, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    iget v12, v11, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    const/16 v17, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/BinaryFileParser;->setDebug(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->getBasicChannelsCount()I

    move-result v8

    iget v10, v11, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->depth:I

    new-instance v13, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;

    sget-object v17, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v5, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-direct {v5, v13, v0}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;-><init>(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    filled-new-array {v8, v12, v14}, [I

    move-result-object v17

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_2

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v0, v12, :cond_1

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_0

    invoke-virtual {v5, v10}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->readBits(I)I

    move-result v3

    aget-object v17, v9, v7

    aget-object v17, v17, v16

    int-to-byte v0, v3

    move/from16 v18, v0

    aput v18, v17, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/psd/datareaders/UncompressedDataReader;->dataParser:Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v9, v1, v2}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v17

    :goto_3
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v17

    :catchall_1
    move-exception v17

    move-object v4, v5

    goto :goto_3
.end method
