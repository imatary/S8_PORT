.class public Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "XbmImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$1;,
        Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;,
        Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".xbm"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".xbm"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    return-void
.end method

.method private parseXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x0

    invoke-static {v5, v12, v1}, Lorg/apache/commons/imaging/common/BasicCParser;->preprocess(Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/io/ByteArrayOutputStream;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v3, -0x1

    const/4 v9, -0x1

    const/4 v11, -0x1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v12, "_width"

    invoke-virtual {v6, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_1
    const-string v12, "_height"

    invoke-virtual {v6, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    const-string v12, "_x_hot"

    invoke-virtual {v6, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    :cond_3
    const-string v12, "_y_hot"

    invoke-virtual {v6, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_0

    :cond_4
    const/4 v12, -0x1

    if-ne v8, v12, :cond_5

    new-instance v12, Lorg/apache/commons/imaging/ImageReadException;

    const-string v13, "width not found"

    invoke-direct {v12, v13}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    invoke-static {v0, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v12

    :cond_5
    const/4 v12, -0x1

    if-ne v3, v12, :cond_6

    :try_start_1
    new-instance v12, Lorg/apache/commons/imaging/ImageReadException;

    const-string v13, "height not found"

    invoke-direct {v12, v13}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_6
    new-instance v10, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;-><init>(Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$1;)V

    new-instance v12, Lorg/apache/commons/imaging/common/BasicCParser;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v13}, Lorg/apache/commons/imaging/common/BasicCParser;-><init>(Ljava/io/ByteArrayInputStream;)V

    iput-object v12, v10, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;->cParser:Lorg/apache/commons/imaging/common/BasicCParser;

    new-instance v12, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;

    invoke-direct {v12, v8, v3, v9, v11}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;-><init>(IIII)V

    iput-object v12, v10, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;->xbmHeader:Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/io/Closeable;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v0, v12}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v10
.end method

.method private randomName()Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0xff

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "a"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const/16 v2, 0x38

    :goto_0
    if-ltz v2, :cond_0

    shr-long v6, v0, v2

    and-long/2addr v6, v8

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    const/16 v2, 0x38

    :goto_1
    if-ltz v2, :cond_1

    shr-long v6, v0, v2

    and-long/2addr v6, v8

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x8

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private readXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->parseXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;->xbmHeader:Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;

    return-object v1
.end method

.method private readXbmImage(Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;Lorg/apache/commons/imaging/common/BasicCParser;)Ljava/awt/image/BufferedImage;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v18

    const-string v2, "static"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, no \'static\' token"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_1

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, no \'unsigned\' or \'char\' token"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v2, "unsigned"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v18

    :cond_2
    const-string v2, "char"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, no \'char\' token"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_4

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, no variable name"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, variable name doesn\'t start with letter or underscore"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v12, v2, :cond_7

    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x5f

    if-eq v9, v2, :cond_6

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, variable name contains non-letter non-digit non-underscore"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v18

    const-string v2, "["

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, no \'[\' token"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v18

    const-string v2, "]"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, no \']\' token"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v18

    const-string v2, "="

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, no \'=\' token"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v18

    const-string v2, "{"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, no \'{\' token"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    move-object/from16 v0, p1

    iget v2, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->width:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v17, v2, 0x8

    move-object/from16 v0, p1

    iget v2, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->height:I

    mul-int v2, v2, v17

    new-array v13, v2, [B

    const/4 v12, 0x0

    :goto_1
    array-length v2, v13

    if-ge v12, v2, :cond_14

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_c

    const-string v2, "0x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, hex value missing"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_e

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, hex value too long"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v19

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_2
    const/16 v2, 0x8

    if-ge v14, v2, :cond_10

    const/4 v2, 0x1

    shl-int/2addr v2, v14

    and-int v2, v2, v19

    if-eqz v2, :cond_f

    const/16 v2, 0x80

    ushr-int/2addr v2, v14

    or-int/2addr v11, v2

    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_10
    int-to-byte v2, v11

    aput-byte v2, v13, v12

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/imaging/common/BasicCParser;->nextToken()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_11

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, premature end of file"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    const-string v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    array-length v2, v13

    add-int/lit8 v2, v2, -0x1

    if-lt v12, v2, :cond_12

    const-string v2, "}"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Parsing XBM file failed, punctuation error"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_14
    const/4 v2, 0x2

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    new-instance v1, Ljava/awt/image/IndexColorModel;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    new-instance v10, Ljava/awt/image/DataBufferByte;

    array-length v2, v13

    invoke-direct {v10, v13, v2}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    move-object/from16 v0, p1

    iget v2, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->width:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->height:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v10, v2, v3, v5, v6}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v16

    new-instance v2, Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, v16

    invoke-direct {v2, v1, v0, v3, v5}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v2

    :array_0
    .array-data 4
        0xffffff
        0x0
    .end array-data
.end method

.method private toPrettyHex(I)Ljava/lang/String;
    .locals 3

    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
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

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->readXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->dump(Ljava/io/PrintWriter;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->XBM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 3
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

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->parseXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;->xbmHeader:Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;->cParser:Lorg/apache/commons/imaging/common/BasicCParser;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->readXbmImage(Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;Lorg/apache/commons/imaging/common/BasicCParser;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".xbm"

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
    .locals 21
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

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->readXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;

    move-result-object v20

    new-instance v1, Lorg/apache/commons/imaging/ImageInfo;

    const-string v2, "XBM"

    const/4 v3, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lorg/apache/commons/imaging/ImageFormats;->XBM:Lorg/apache/commons/imaging/ImageFormats;

    const-string v6, "X BitMap"

    move-object/from16 v0, v20

    iget v7, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->height:I

    const-string v8, "image/x-xbitmap"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v20

    iget v14, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->width:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v18, Lorg/apache/commons/imaging/ImageInfo$ColorType;->BW:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    invoke-direct/range {v1 .. v19}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 4
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

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->readXbmHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;

    move-result-object v0

    new-instance v1, Ljava/awt/Dimension;

    iget v2, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->width:I

    iget v3, v0, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;->height:I

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    return-object v1
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

    const-string v0, "X BitMap"

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
    .locals 17
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

    if-nez p3, :cond_1

    new-instance p3, Ljava/util/HashMap;

    invoke-direct/range {p3 .. p3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v14, "FORMAT"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "FORMAT"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    new-instance v14, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown parameter: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 p3, v14

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->randomName()Ljava/lang/String;

    move-result-object v7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#define "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_width "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "US-ASCII"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#define "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_height "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "US-ASCII"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "static unsigned char "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_bits[] = {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "US-ASCII"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v10, "\n  "

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v14

    if-ge v13, v14, :cond_9

    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v14

    if-ge v12, v14, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v1

    shr-int/lit8 v14, v1, 0x10

    and-int/lit16 v8, v14, 0xff

    shr-int/lit8 v14, v1, 0x8

    and-int/lit16 v6, v14, 0xff

    shr-int/lit8 v14, v1, 0x0

    and-int/lit16 v4, v14, 0xff

    add-int v14, v8, v6

    add-int/2addr v14, v4

    div-int/lit8 v9, v14, 0x3

    const/16 v14, 0x7f

    if-le v9, v14, :cond_5

    const/4 v9, 0x0

    :goto_3
    shl-int v14, v9, v3

    or-int/2addr v2, v14

    add-int/lit8 v3, v3, 0x1

    const/16 v14, 0x8

    if-ne v3, v14, :cond_4

    const-string v14, "US-ASCII"

    invoke-virtual {v10, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    const-string v10, ","

    const/16 v14, 0xc

    if-ne v11, v14, :cond_3

    const-string v14, "\n  "

    const-string v15, "US-ASCII"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    const/4 v11, 0x0

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->toPrettyHex(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "US-ASCII"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v11, v11, 0x1

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_8

    const-string v14, "US-ASCII"

    invoke-virtual {v10, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    const-string v10, ","

    const/16 v14, 0xc

    if-ne v11, v14, :cond_7

    const-string v14, "\n  "

    const-string v15, "US-ASCII"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    const/4 v11, 0x0

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;->toPrettyHex(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "US-ASCII"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v11, v11, 0x1

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_9
    const-string v14, "\n};\n"

    const-string v15, "US-ASCII"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
