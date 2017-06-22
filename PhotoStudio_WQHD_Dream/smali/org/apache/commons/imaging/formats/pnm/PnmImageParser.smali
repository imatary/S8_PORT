.class public Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "PnmImageParser.java"


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".pnm"

.field public static final PARAM_KEY_PNM_RAWBITS:Ljava/lang/String; = "PNM_RAWBITS"

.field public static final PARAM_VALUE_PNM_RAWBITS_NO:Ljava/lang/String; = "NO"

.field public static final PARAM_VALUE_PNM_RAWBITS_YES:Ljava/lang/String; = "YES"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".pbm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".pgm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".ppm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".pnm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".pam"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "Identifier1"

    const-string v7, "Not a Valid PNM File"

    move-object/from16 v0, p1

    invoke-static {v2, v0, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v9

    const-string v2, "Identifier2"

    const-string v7, "Not a Valid PNM File"

    move-object/from16 v0, p1

    invoke-static {v2, v0, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v10

    const/16 v2, 0x50

    if-eq v9, v2, :cond_0

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "PNM file has invalid prefix byte 1"

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v22, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x31

    if-eq v10, v2, :cond_1

    const/16 v2, 0x34

    if-eq v10, v2, :cond_1

    const/16 v2, 0x32

    if-eq v10, v2, :cond_1

    const/16 v2, 0x35

    if-eq v10, v2, :cond_1

    const/16 v2, 0x33

    if-eq v10, v2, :cond_1

    const/16 v2, 0x36

    if-ne v10, v2, :cond_8

    :cond_1
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :try_start_1
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    const/16 v2, 0x31

    if-ne v10, v2, :cond_2

    new-instance v2, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v7}, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;-><init>(IIZ)V

    :goto_0
    return-object v2

    :catch_0
    move-exception v8

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "Invalid width specified."

    invoke-direct {v2, v7, v8}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v8

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "Invalid height specified."

    invoke-direct {v2, v7, v8}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    const/16 v2, 0x34

    if-ne v10, v2, :cond_3

    new-instance v2, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;

    const/4 v7, 0x1

    invoke-direct {v2, v3, v4, v7}, Lorg/apache/commons/imaging/formats/pnm/PbmFileInfo;-><init>(IIZ)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x32

    if-ne v10, v2, :cond_4

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    new-instance v2, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v7, v13}, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;-><init>(IIZI)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x35

    if-ne v10, v2, :cond_5

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    new-instance v2, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;

    const/4 v7, 0x1

    invoke-direct {v2, v3, v4, v7, v13}, Lorg/apache/commons/imaging/formats/pnm/PgmFileInfo;-><init>(IIZI)V

    goto :goto_0

    :cond_5
    const/16 v2, 0x33

    if-ne v10, v2, :cond_6

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    new-instance v2, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v7, v12}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;-><init>(IIZI)V

    goto :goto_0

    :cond_6
    const/16 v2, 0x36

    if-ne v10, v2, :cond_7

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    new-instance v2, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;

    const/4 v7, 0x1

    invoke-direct {v2, v3, v4, v7, v12}, Lorg/apache/commons/imaging/formats/pnm/PpmFileInfo;-><init>(IIZI)V

    goto :goto_0

    :cond_7
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "PNM file has invalid header."

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    const/16 v2, 0x37

    if-ne v10, v2, :cond_16

    const/4 v3, -0x1

    const/16 v18, 0x0

    const/4 v4, -0x1

    const/4 v15, 0x0

    const/4 v5, -0x1

    const/4 v14, 0x0

    const/4 v6, -0x1

    const/16 v16, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readLine()Ljava/lang/String;

    :cond_9
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/pnm/WhiteSpaceReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x23

    if-eq v2, v7, :cond_9

    new-instance v19, Ljava/util/StringTokenizer;

    const-string v2, " "

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v11, v2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    const-string v2, "WIDTH"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v18, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_a
    const-string v2, "HEIGHT"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v15, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_b
    const-string v2, "DEPTH"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v14, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_c
    const-string v2, "MAXVAL"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v16, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_d
    const-string v2, "TUPLTYPE"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v17, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_e
    const-string v2, "ENDHDR"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    if-nez v18, :cond_11

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "PAM header has no WIDTH"

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid PAM file header type "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    if-nez v15, :cond_12

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "PAM header has no HEIGHT"

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    if-nez v14, :cond_13

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "PAM header has no DEPTH"

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    if-nez v16, :cond_14

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "PAM header has no MAXVAL"

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    if-nez v17, :cond_15

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "PAM header has no TUPLTYPE"

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    new-instance v2, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;-><init>(IIIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v7, "PNM file has invalid prefix byte 2"

    invoke-direct {v2, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;
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

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;
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
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "pnm.dumpImageFile"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->getImageInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/ImageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/imaging/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PNM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 11
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

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;

    move-result-object v4

    iget v7, v4, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    iget v2, v4, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->hasAlpha()Z

    move-result v1

    new-instance v3, Lorg/apache/commons/imaging/common/ImageBuilder;

    invoke-direct {v3, v7, v2, v1}, Lorg/apache/commons/imaging/common/ImageBuilder;-><init>(IIZ)V

    invoke-virtual {v4, v3, v5}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->readImage(Lorg/apache/commons/imaging/common/ImageBuilder;Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->getBufferedImage()Ljava/awt/image/BufferedImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    const/4 v0, 0x1

    new-array v8, v9, [Ljava/io/Closeable;

    aput-object v5, v8, v10

    invoke-static {v0, v8}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v6

    :catchall_0
    move-exception v8

    new-array v9, v9, [Ljava/io/Closeable;

    aput-object v5, v9, v10

    invoke-static {v0, v9}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v8
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".pnm"

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
    .locals 30
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

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->readHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;

    move-result-object v21

    if-nez v21, :cond_0

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v8, "PNM: Couldn\'t read Header"

    invoke-direct {v2, v8}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getBitDepth()I

    move-result v2

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getNumComponents()I

    move-result v8

    mul-int v4, v2, v8

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getImageType()Lorg/apache/commons/imaging/ImageFormat;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getImageTypeDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getMIMEType()Ljava/lang/String;

    move-result-object v9

    const/16 v22, 0x1

    const/16 v25, 0x0

    const/16 v24, 0x48

    move-object/from16 v0, v21

    iget v2, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    int-to-double v10, v2

    const-wide/high16 v28, 0x4052000000000000L    # 72.0

    div-double v10, v10, v28

    double-to-float v14, v10

    const/16 v23, 0x48

    move-object/from16 v0, v21

    iget v2, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    int-to-double v10, v2

    const-wide/high16 v28, 0x4052000000000000L    # 72.0

    div-double v10, v10, v28

    double-to-float v12, v10

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getImageTypeDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->hasAlpha()Z

    move-result v17

    const/16 v26, 0x0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;

    move-result-object v19

    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->NONE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    new-instance v2, Lorg/apache/commons/imaging/ImageInfo;

    move-object/from16 v0, v21

    iget v8, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

    const/4 v10, 0x1

    const/16 v11, 0x48

    const/16 v13, 0x48

    move-object/from16 v0, v21

    iget v15, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v2
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

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PnmImageParser;->readHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/pnm/FileInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "PNM: Couldn\'t read Header"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/awt/Dimension;

    iget v2, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->width:I

    iget v3, v0, Lorg/apache/commons/imaging/formats/pnm/FileInfo;->height:I

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

    const-string v0, "Pbm-Custom"

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
    .locals 10
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

    const/4 v6, 0x0

    const/4 v4, 0x1

    new-instance v7, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v7}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    invoke-virtual {v7, p1}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v1

    if-eqz p3, :cond_1

    const-string v7, "PNM_RAWBITS"

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v7, "NO"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x0

    :cond_0
    const-string v7, "FORMAT"

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v7, Lorg/apache/commons/imaging/ImageFormats;->PBM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v6, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;

    invoke-direct {v6, v4}, Lorg/apache/commons/imaging/formats/pnm/PbmWriter;-><init>(Z)V

    :cond_1
    :goto_0
    if-nez v6, :cond_2

    if-eqz v1, :cond_7

    new-instance v6, Lorg/apache/commons/imaging/formats/pnm/PamWriter;

    invoke-direct {v6}, Lorg/apache/commons/imaging/formats/pnm/PamWriter;-><init>()V

    :cond_2
    :goto_1
    if-eqz p3, :cond_8

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, v2

    :goto_2
    const-string v7, "FORMAT"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "FORMAT"

    invoke-interface {p3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v7, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown parameter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    sget-object v7, Lorg/apache/commons/imaging/ImageFormats;->PGM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v6, Lorg/apache/commons/imaging/formats/pnm/PgmWriter;

    invoke-direct {v6, v4}, Lorg/apache/commons/imaging/formats/pnm/PgmWriter;-><init>(Z)V

    goto :goto_0

    :cond_5
    sget-object v7, Lorg/apache/commons/imaging/ImageFormats;->PPM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v6, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;

    invoke-direct {v6, v4}, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;-><init>(Z)V

    goto :goto_0

    :cond_6
    sget-object v7, Lorg/apache/commons/imaging/ImageFormats;->PAM:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v6, Lorg/apache/commons/imaging/formats/pnm/PamWriter;

    invoke-direct {v6}, Lorg/apache/commons/imaging/formats/pnm/PamWriter;-><init>()V

    goto :goto_0

    :cond_7
    new-instance v6, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;

    invoke-direct {v6, v4}, Lorg/apache/commons/imaging/formats/pnm/PpmWriter;-><init>(Z)V

    goto :goto_1

    :cond_8
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_2

    :cond_9
    invoke-interface {v6, p1, p2, p3}, Lorg/apache/commons/imaging/formats/pnm/PnmWriter;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void
.end method
