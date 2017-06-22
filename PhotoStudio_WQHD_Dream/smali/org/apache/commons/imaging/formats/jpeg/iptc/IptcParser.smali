.class public Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "IptcParser.java"


# static fields
.field private static final APP13_BYTE_ORDER:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->APP13_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method


# virtual methods
.method public isPhotoshopJpegSegment([B)Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-static {p1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->startsWith([BLorg/apache/commons/imaging/common/BinaryConstant;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result v0

    add-int/lit8 v2, v0, 0x4

    array-length v3, p1

    if-gt v2, v3, :cond_0

    sget-object v2, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->APP13_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-static {p1, v0, v2}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BILjava/nio/ByteOrder;)I

    move-result v2

    sget v3, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->CONST_8BIM:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected parseAllBlocks([BZZ)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZZ)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v13, ""

    sget-object v14, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v14}, Lorg/apache/commons/imaging/common/BinaryConstant;->size()I

    move-result v14

    const-string v15, "App13 Segment missing identification string"

    invoke-static {v13, v2, v14, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v10

    sget-object v13, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v13, v10}, Lorg/apache/commons/imaging/common/BinaryConstant;->equals([B)Z

    move-result v13

    if-nez v13, :cond_1

    new-instance v13, Lorg/apache/commons/imaging/ImageReadException;

    const-string v14, "Not a Photoshop App13 Segment"

    invoke-direct {v13, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v13

    move-object v1, v2

    :goto_0
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/io/Closeable;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    invoke-static {v9, v14}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v13

    :cond_0
    :try_start_2
    const-string v13, ""

    const-string v14, "Invalid Image Resource Block data"

    invoke-static {v13, v2, v6, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    :try_start_3
    new-instance v13, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;

    invoke-direct {v13, v7, v4, v3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;-><init>(I[B[B)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    rem-int/lit8 v13, v6, 0x2

    if-eqz v13, :cond_1

    const-string v13, "Padding byte"

    const-string v14, "Image Resource Block missing padding byte"

    invoke-static {v13, v2, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    const-string v13, ""

    const-string v14, "Image Resource Block missing identification string"

    sget-object v15, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->APP13_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-static {v13, v2, v14, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v11

    :try_start_5
    sget v13, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->CONST_8BIM:I

    if-eq v11, v13, :cond_3

    new-instance v13, Lorg/apache/commons/imaging/ImageReadException;

    const-string v14, "Invalid Image Resource Block Signature"

    invoke-direct {v13, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    move-exception v12

    :cond_2
    const/4 v9, 0x1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-static {v9, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v8

    :cond_3
    :try_start_6
    const-string v13, ""

    const-string v14, "Image Resource Block missing type"

    sget-object v15, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->APP13_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-static {v13, v2, v14, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    if-eqz p2, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "blockType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_4
    const-string v13, "Name length"

    const-string v14, "Image Resource Block missing name length"

    invoke-static {v13, v2, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    if-eqz p2, :cond_5

    if-lez v5, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "blockNameLength: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_5
    if-nez v5, :cond_8

    const-string v13, "Block name bytes"

    const-string v14, "Image Resource Block has invalid name"

    invoke-static {v13, v2, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    const/4 v13, 0x0

    new-array v4, v13, [B

    :cond_6
    :goto_1
    const-string v13, ""

    const-string v14, "Image Resource Block missing size"

    sget-object v15, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->APP13_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-static {v13, v2, v14, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    if-eqz p2, :cond_7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "blockSize: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p1

    array-length v13, v0

    if-le v6, v13, :cond_0

    new-instance v13, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid Block Size : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " > "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    :try_start_7
    const-string v13, ""

    const-string v14, "Invalid Image Resource Block name"

    invoke-static {v13, v2, v5, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    :try_start_8
    rem-int/lit8 v13, v5, 0x2

    if-nez v13, :cond_6

    const-string v13, "Padding byte"

    const-string v14, "Image Resource Block missing padding byte"

    invoke-static {v13, v2, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    goto :goto_1

    :catch_1
    move-exception v12

    if-eqz p3, :cond_2

    throw v12

    :catch_2
    move-exception v12

    if-eqz p3, :cond_2

    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_1
    move-exception v13

    goto/16 :goto_0
.end method

.method protected parseIPTCBlock([BZ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BZ)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :cond_0
    :goto_0
    add-int/lit8 v14, v5, 0x1

    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v14, v15, :cond_3

    add-int/lit8 v6, v5, 0x1

    aget-byte v14, p1, v5

    and-int/lit16 v12, v14, 0xff

    if-eqz p2, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tagMarker: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_1
    const/16 v14, 0x1c

    if-eq v12, v14, :cond_4

    if-eqz p2, :cond_2

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "Unexpected record tag marker in IPTC data."

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    move v5, v6

    :cond_3
    return-object v3

    :cond_4
    add-int/lit8 v5, v6, 0x1

    aget-byte v14, p1, v6

    and-int/lit16 v9, v14, 0xff

    if-eqz p2, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "recordNumber: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_5
    aget-byte v14, p1, v5

    and-int/lit16 v11, v14, 0xff

    if-eqz p2, :cond_6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "recordType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v5, v14}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v10

    add-int/lit8 v5, v5, 0x2

    const/16 v14, 0x7fff

    if-le v10, v14, :cond_8

    const/4 v4, 0x1

    :goto_1
    and-int/lit16 v1, v10, 0x7fff

    if-eqz v4, :cond_7

    if-eqz p2, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "extendedDataset. dataFieldCountLength: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_7
    if-nez v4, :cond_3

    move-object/from16 v0, p1

    invoke-static {v0, v5, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->slice([BII)[B

    move-result-object v8

    add-int/2addr v5, v10

    const/4 v14, 0x2

    if-ne v9, v14, :cond_0

    if-nez v11, :cond_9

    if-eqz p2, :cond_0

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ignore record version record! "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    :cond_9
    new-instance v13, Ljava/lang/String;

    const-string v14, "ISO-8859-1"

    invoke-direct {v13, v8, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v11}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypeLookup;->getIptcType(I)Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    move-result-object v7

    new-instance v2, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;

    invoke-direct {v2, v7, v8, v13}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;-><init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;[BLjava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public parsePhotoshopSegment([BLjava/util/Map;)Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "STRICT"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    if-eqz p2, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "VERBOSE"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->parsePhotoshopSegment([BZZ)Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object v2

    return-object v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public parsePhotoshopSegment([BZZ)Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->parseAllBlocks([BZZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->isIPTCBlock()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    invoke-virtual {p0, v4, p2}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->parseIPTCBlock([BZ)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-direct {v4, v3, v1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v4
.end method

.method public writeIPTCBlock(Ljava/util/List;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-direct {v3, v0, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v10, 0x1c

    :try_start_1
    invoke-virtual {v3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    sget-object v10, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;->RECORD_VERSION:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;

    iget v10, v10, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;->type:I

    invoke-virtual {v3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v5, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser$1;

    invoke-direct {v5, p0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser$1;-><init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcParser;)V

    invoke-static {v7, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;

    iget-object v10, v6, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    sget-object v11, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;->RECORD_VERSION:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;

    if-eq v10, v11, :cond_0

    const/16 v10, 0x1c

    invoke-virtual {v3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    iget-object v10, v6, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v10}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result v10

    if-ltz v10, :cond_1

    iget-object v10, v6, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v10}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result v10

    const/16 v11, 0xff

    if-le v10, v11, :cond_2

    :cond_1
    new-instance v10, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid record type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v12}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v10

    move-object v2, v3

    move-object p1, v7

    :goto_1
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/io/Closeable;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-static {v4, v11}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v10

    :cond_2
    :try_start_3
    iget-object v10, v6, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {v10}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getType()I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    iget-object v10, v6, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->value:Ljava/lang/String;

    const-string v11, "ISO-8859-1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    const-string v11, "ISO-8859-1"

    invoke-direct {v10, v9, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v11, v6, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->value:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v10, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v11, "Invalid record value, not ISO-8859-1"

    invoke-direct {v10, v11}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    array-length v10, v9

    invoke-virtual {v3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {v3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/io/Closeable;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v4, v10}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    :catchall_1
    move-exception v10

    goto :goto_1

    :catchall_2
    move-exception v10

    move-object v2, v3

    goto :goto_1
.end method

.method public writePhotoshopApp13Segment(Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    invoke-direct {v2, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v5, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->PHOTOSHOP_IDENTIFICATION_STRING:Lorg/apache/commons/imaging/common/BinaryConstant;

    invoke-virtual {v5, v2}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->getRawBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;

    sget v5, Lorg/apache/commons/imaging/formats/jpeg/JpegConstants;->CONST_8BIM:I

    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    iget v5, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    if-ltz v5, :cond_1

    iget v5, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    const v6, 0xffff

    if-le v5, v6, :cond_2

    :cond_1
    new-instance v5, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v6, "Invalid IPTC block type."

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget v5, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v5, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    array-length v5, v5

    const/16 v6, 0xff

    if-le v5, v6, :cond_3

    new-instance v5, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IPTC block name is too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    iget-object v5, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    iget-object v5, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    iget-object v5, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    array-length v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    invoke-virtual {v2, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :cond_4
    iget-object v5, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    array-length v5, v5

    const/16 v6, 0x7fff

    if-le v5, v6, :cond_5

    new-instance v5, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IPTC block data is too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    iget-object v5, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    iget-object v5, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    iget-object v5, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    array-length v5, v5

    rem-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v2, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method
