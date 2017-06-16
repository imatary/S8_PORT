.class public Lorg/apache/commons/imaging/formats/tiff/TiffReader;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "TiffReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/TiffReader$FirstDirectoryCollector;,
        Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;,
        Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;
    }
.end annotation


# instance fields
.field private final strict:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    return-void
.end method

.method private getJpegRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/JpegImageData;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getJpegRawImageDataElement()Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    move-result-object v1

    iget-wide v4, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    iget v2, v1, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    int-to-long v6, v2

    add-long/2addr v6, v4

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-int v2, v6

    :cond_0
    invoke-virtual {p1, v4, v5, v2}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v0

    iget-boolean v3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    const v6, 0xffd9

    if-eq v3, v6, :cond_2

    :cond_1
    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    const-string v6, "JPEG EOI marker could not be found at expected location"

    invoke-direct {v3, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v3, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    invoke-direct {v3, v4, v5, v2, v0}, Lorg/apache/commons/imaging/formats/tiff/JpegImageData;-><init>(JI[B)V

    return-object v3
.end method

.method private getTiffByteOrder(I)Ljava/nio/ByteOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/16 v0, 0x49

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid TIFF byte order "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTiffRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/TiffImageData;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getTiffRawImageDataElements()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v6, v0, [Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v4, p1

    check-cast v4, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    new-instance v17, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;

    iget-wide v0, v7, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    move-wide/from16 v18, v0

    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$ByteSourceData;-><init>(JILorg/apache/commons/imaging/common/bytesource/ByteSourceFile;)V

    aput-object v17, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;

    iget-wide v0, v7, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    move-wide/from16 v18, v0

    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v5

    new-instance v17, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;

    iget-wide v0, v7, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->offset:J

    move-wide/from16 v18, v0

    iget v0, v7, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;->length:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Data;-><init>(JI[B)V

    aput-object v17, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->imageDataInStrips()Z

    move-result v17

    if-eqz v17, :cond_4

    sget-object v17, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_ROWS_PER_STRIP:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v12

    const v11, 0x7fffffff

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v11

    :cond_2
    :goto_2
    new-instance v17, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v11}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Strips;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;I)V

    :goto_3
    return-object v17

    :cond_3
    sget-object v17, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v11

    goto :goto_2

    :cond_4
    sget-object v17, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_WIDTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v16

    if-nez v16, :cond_5

    new-instance v17, Lorg/apache/commons/imaging/ImageReadException;

    const-string v18, "Can\'t find tile width field."

    invoke-direct/range {v17 .. v18}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_5
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v15

    sget-object v17, Lorg/apache/commons/imaging/formats/tiff/constants/TiffTagConstants;->TIFF_TAG_TILE_LENGTH:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoShortOrLong;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;

    move-result-object v14

    if-nez v14, :cond_6

    new-instance v17, Lorg/apache/commons/imaging/ImageReadException;

    const-string v18, "Can\'t find tile length field."

    invoke-direct/range {v17 .. v18}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_6
    invoke-virtual {v14}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getIntValue()I

    move-result v13

    new-instance v17, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v15, v13}, Lorg/apache/commons/imaging/formats/tiff/TiffImageData$Tiles;-><init>([Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;II)V

    goto :goto_3
.end method

.method private readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readTiffHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    move-result-object v9

    invoke-interface {p3, v9}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->setTiffHeader(Lorg/apache/commons/imaging/formats/tiff/TiffHeader;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v2, v9, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;->offsetToFirstIFD:J

    const/4 v8, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z

    goto :goto_0
.end method

.method private readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "JI",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "JI",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v42, 0x0

    const/16 v36, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v18

    cmp-long v6, p2, v18

    if-ltz v6, :cond_1

    const/16 v36, 0x1

    const/4 v6, 0x1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v42, v13, v16

    move/from16 v0, v36

    invoke-static {v0, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v42

    move-object/from16 v0, v42

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v6, "DirectoryEntryCount"

    const-string v13, "Not a Valid TIFF File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-static {v6, v0, v13, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v39

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v39

    if-ge v14, v0, :cond_8

    :try_start_3
    const-string v6, "Tag"

    const-string v13, "Not a Valid TIFF File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-static {v6, v0, v13, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v5

    const-string v6, "Type"

    const-string v13, "Not a Valid TIFF File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-static {v6, v0, v13, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v49

    const-wide v18, 0xffffffffL

    const-string v6, "Count"

    const-string v13, "Not a Valid TIFF File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-static {v6, v0, v13, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v22, v0

    and-long v8, v18, v22

    const-string v6, "Offset"

    const/4 v13, 0x4

    const-string v16, "Not a Valid TIFF File"

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-static {v6, v0, v13, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v43

    const-wide v18, 0xffffffffL

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-static {v0, v6}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BLjava/nio/ByteOrder;)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v22, v0

    and-long v10, v18, v22

    if-nez v5, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :catch_0
    move-exception v38

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-eqz v6, :cond_3

    throw v38
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v6

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v42, v13, v16

    move/from16 v0, v36

    invoke-static {v0, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v6

    :cond_3
    const/16 v36, 0x1

    const/4 v6, 0x1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v42, v13, v16

    move/from16 v0, v36

    invoke-static {v0, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_4
    :try_start_4
    invoke-static/range {v49 .. v49}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getFieldType(I)Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
    :try_end_4
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v7

    :try_start_5
    invoke-virtual {v7}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getSize()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    mul-long v50, v8, v18

    const-wide/16 v18, 0x4

    cmp-long v6, v50, v18

    if-lez v6, :cond_7

    const-wide/16 v18, 0x0

    cmp-long v6, v10, v18

    if-ltz v6, :cond_5

    add-long v18, v10, v50

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v22

    cmp-long v6, v18, v22

    if-lez v6, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Attempt to read byte range starting from "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "of length "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, v50

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "which is outside the file\'s size of "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getLength()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_1
    move-exception v40

    goto/16 :goto_2

    :cond_6
    move-wide/from16 v0, v50

    long-to-int v6, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v6}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(JI)[B

    move-result-object v12

    :goto_3
    new-instance v4, Lorg/apache/commons/imaging/formats/tiff/TiffField;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    move/from16 v6, p4

    invoke-direct/range {v4 .. v14}, Lorg/apache/commons/imaging/formats/tiff/TiffField;-><init>(IILorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;JJ[BLjava/nio/ByteOrder;I)V

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->addField(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    const/16 v36, 0x1

    const/4 v6, 0x1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v42, v13, v16

    move/from16 v0, v36

    invoke-static {v0, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v12, v43

    goto :goto_3

    :cond_8
    const-wide v18, 0xffffffffL

    :try_start_6
    const-string v6, "nextDirectoryOffset"

    const-string v13, "Not a Valid TIFF File"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-static {v6, v0, v13, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v22, v0

    and-long v20, v18, v22

    new-instance v15, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;

    move/from16 v16, p4

    move-wide/from16 v18, p2

    invoke-direct/range {v15 .. v21}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;-><init>(ILjava/util/List;JJ)V

    invoke-interface/range {p6 .. p6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->readImageData()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v15}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->hasTiffImageData()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getTiffRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/TiffImageData;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v15, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->setTiffImageData(Lorg/apache/commons/imaging/formats/tiff/TiffImageData;)V

    :cond_9
    invoke-virtual {v15}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->hasJpegImageData()Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getJpegRawImageData(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Lorg/apache/commons/imaging/formats/tiff/JpegImageData;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v15, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->setJpegImageData(Lorg/apache/commons/imaging/formats/tiff/JpegImageData;)V

    :cond_a
    move-object/from16 v0, p6

    invoke-interface {v0, v15}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v6

    if-nez v6, :cond_b

    const/16 v36, 0x1

    const/4 v6, 0x1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v42, v13, v16

    move/from16 v0, v36

    invoke-static {v0, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_b
    :try_start_7
    invoke-interface/range {p6 .. p6}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;->readOffsetDirectories()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x3

    new-array v0, v6, [Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;

    move-object/from16 v45, v0

    const/4 v6, 0x0

    sget-object v13, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    aput-object v13, v45, v6

    const/4 v6, 0x1

    sget-object v13, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_GPSINFO:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    aput-object v13, v45, v6

    const/4 v6, 0x2

    sget-object v13, Lorg/apache/commons/imaging/formats/tiff/constants/ExifTagConstants;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoDirectory;

    aput-object v13, v45, v6

    const/4 v6, 0x3

    new-array v0, v6, [I

    move-object/from16 v37, v0

    fill-array-data v37, :array_0

    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, v45

    array-length v6, v0

    if-ge v14, v6, :cond_e

    aget-object v44, v45, v14

    move-object/from16 v0, v44

    invoke-virtual {v15, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/TiffField;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_d

    const/16 v48, 0x0

    :try_start_8
    move-object/from16 v0, v44

    invoke-virtual {v15, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->getSingleFieldValue(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoLong;)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v24, v0

    aget v26, v37, v14

    const/16 v29, 0x1

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v27, p5

    move-object/from16 v28, p6

    move-object/from16 v30, p8

    invoke-direct/range {v22 .. v30}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;ZLjava/util/List;)Z
    :try_end_8
    .catch Lorg/apache/commons/imaging/ImageReadException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v48

    :cond_c
    if-nez v48, :cond_d

    :try_start_9
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :catch_2
    move-exception v41

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->strict:Z

    if-eqz v6, :cond_c

    throw v41

    :cond_e
    if-nez p7, :cond_f

    iget-wide v0, v15, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->nextDirectoryOffset:J

    move-wide/from16 v18, v0

    const-wide/16 v22, 0x0

    cmp-long v6, v18, v22

    if-lez v6, :cond_f

    iget-wide v0, v15, Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;->nextDirectoryOffset:J

    move-wide/from16 v30, v0

    add-int/lit8 v32, p4, 0x1

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move-object/from16 v33, p5

    move-object/from16 v34, p6

    move-object/from16 v35, p8

    invoke-direct/range {v28 .. v35}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;JILorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;Ljava/util/List;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_f
    const/16 v36, 0x1

    const/4 v6, 0x1

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v42, v13, v16

    move/from16 v0, v36

    invoke-static {v0, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    goto/16 :goto_0

    :array_0
    .array-data 4
        -0x2
        -0x3
        -0x4
    .end array-data
.end method

.method private readTiffHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v6, "BYTE_ORDER_1"

    const-string v7, "Not a Valid TIFF File"

    invoke-static {v6, p1, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    const-string v6, "BYTE_ORDER_2"

    const-string v7, "Not a Valid TIFF File"

    invoke-static {v6, p1, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v6, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Byte Order bytes don\'t match ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getTiffByteOrder(I)Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-string v6, "tiffVersion"

    const-string v7, "Not a Valid TIFF File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v6, p1, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    const/16 v6, 0x2a

    if-eq v3, v6, :cond_1

    new-instance v6, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown Tiff Version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const-wide v6, 0xffffffffL

    const-string v8, "offsetToFirstIFD"

    const-string v9, "Not a Valid TIFF File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-static {v8, p1, v9, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    int-to-long v8, v8

    and-long v4, v6, v8

    const-wide/16 v6, 0x8

    sub-long v6, v4, v6

    const-string v8, "Not a Valid TIFF File: couldn\'t find IFDs"

    invoke-static {p1, v6, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->getDebug()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;

    invoke-direct {v6, v0, v3, v4, v5}, Lorg/apache/commons/imaging/formats/tiff/TiffHeader;-><init>(Ljava/nio/ByteOrder;IJ)V

    return-object v6
.end method

.method private readTiffHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;
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

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readTiffHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/tiff/TiffHeader;
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


# virtual methods
.method public read(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            "Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    return-void
.end method

.method public readContents(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            ")",
            "Lorg/apache/commons/imaging/formats/tiff/TiffContents;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;

    invoke-direct {v0, p2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->read(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->getContents()Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v1

    return-object v1
.end method

.method public readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p1, p3, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->readDirectories(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->getContents()Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v1

    iget-object v2, v1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Image did not contain any directories."

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public readFirstDirectory(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;ZLorg/apache/commons/imaging/FormatCompliance;)Lorg/apache/commons/imaging/formats/tiff/TiffContents;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lorg/apache/commons/imaging/FormatCompliance;",
            ")",
            "Lorg/apache/commons/imaging/formats/tiff/TiffContents;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffReader$FirstDirectoryCollector;

    invoke-direct {v0, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$FirstDirectoryCollector;-><init>(Z)V

    invoke-virtual {p0, p1, p2, p4, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader;->read(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;Lorg/apache/commons/imaging/FormatCompliance;Lorg/apache/commons/imaging/formats/tiff/TiffReader$Listener;)V

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffReader$Collector;->getContents()Lorg/apache/commons/imaging/formats/tiff/TiffContents;

    move-result-object v1

    iget-object v2, v1, Lorg/apache/commons/imaging/formats/tiff/TiffContents;->directories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Image did not contain any directories."

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method
