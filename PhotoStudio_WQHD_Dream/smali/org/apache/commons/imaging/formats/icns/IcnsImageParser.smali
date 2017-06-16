.class public Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "IcnsImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;,
        Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;,
        Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".icns"

.field static final ICNS_MAGIC:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "icns"

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->typeAsInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->ICNS_MAGIC:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".icns"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private readIcnsElement(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, "Type"

    const-string v4, "Not a Valid ICNS File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v3, p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    const-string v3, "ElementSize"

    const-string v4, "Not a Valid ICNS File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v3, p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    const-string v3, "Data"

    add-int/lit8 v4, v1, -0x8

    const-string v5, "Not a Valid ICNS File"

    invoke-static {v3, p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v0

    new-instance v3, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    invoke-direct {v3, v2, v1, v0}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;-><init>(II[B)V

    return-object v3
.end method

.method private readIcnsHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "Magic"

    const-string v3, "Not a Valid ICNS File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    const-string v2, "FileSize"

    const-string v3, "Not a Valid ICNS File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    sget v2, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->ICNS_MAGIC:I

    if-eq v1, v2, :cond_0

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a Valid ICNS File: magic is 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;-><init>(II)V

    return-object v2
.end method

.method private readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readIcnsHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;

    move-result-object v5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v9, v5, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;->fileSize:I

    add-int/lit8 v7, v9, -0x8

    :goto_0
    if-lez v7, :cond_0

    invoke-direct {p0, v6}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readIcnsElement(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v9, v2, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->elementSize:I

    sub-int/2addr v7, v9

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v4, v9, [Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    const/4 v1, 0x0

    :goto_1
    array-length v9, v4

    if-ge v1, v9, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    aput-object v9, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v8, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;

    invoke-direct {v8, v5, v4}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;-><init>(Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    new-array v9, v10, [Ljava/io/Closeable;

    aput-object v6, v9, v11

    invoke-static {v0, v9}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v8

    :catchall_0
    move-exception v9

    new-array v10, v10, [Ljava/io/Closeable;

    aput-object v6, v10, v11

    invoke-static {v0, v10}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v9
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;

    move-result-object v2

    iget-object v5, v2, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsHeader:Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;

    invoke-virtual {v5, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, v2, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsElements:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    return v5
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/bytesource/ByteSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;

    move-result-object v0

    iget-object v1, v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsElements:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->decodeAllImages([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
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
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;

    move-result-object v0

    iget-object v2, v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsElements:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    invoke-static {v2}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->decodeAllImages([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/image/BufferedImage;

    return-object v2

    :cond_0
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "No icons in ICNS file"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".icns"

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

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct/range {p2 .. p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v1, "VERBOSE"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VERBOSE"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 p2, v1

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v1, v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsElements:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    invoke-static {v1}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->decodeAllImages([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v2, "No icons in ICNS file"

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/awt/image/BufferedImage;

    new-instance v1, Lorg/apache/commons/imaging/ImageInfo;

    const-string v2, "Icns"

    const/16 v3, 0x20

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lorg/apache/commons/imaging/ImageFormats;->ICNS:Lorg/apache/commons/imaging/ImageFormats;

    const-string v6, "ICNS Apple Icon Image"

    invoke-virtual/range {v22 .. v22}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    const-string v8, "image/x-icns"

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    sget-object v18, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->UNKNOWN:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    invoke-direct/range {v1 .. v19}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V

    return-object v1
.end method

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 7
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

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v4, "VERBOSE"

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "VERBOSE"

    invoke-interface {p2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v4

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->readImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;

    move-result-object v0

    iget-object v4, v0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsElements:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    invoke-static {v4}, Lorg/apache/commons/imaging/formats/icns/IcnsDecoder;->decodeAllImages([Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lorg/apache/commons/imaging/ImageReadException;

    const-string v5, "No icons in ICNS file"

    invoke-direct {v4, v5}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/image/BufferedImage;

    new-instance v4, Ljava/awt/Dimension;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/awt/Dimension;-><init>(II)V

    return-object v4
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

    const-string v0, "Apple Icon Image"

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
    .locals 12
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

    const/16 v11, 0x80

    const/16 v10, 0x30

    const/16 v9, 0x20

    const/16 v8, 0x10

    if-nez p3, :cond_1

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v7, "FORMAT"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "FORMAT"

    invoke-interface {p3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v7, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown parameter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    if-ne v7, v8, :cond_3

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    if-ne v7, v8, :cond_3

    sget-object v3, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_16x16_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    :goto_1
    new-instance v1, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    sget v7, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;->ICNS_MAGIC:I

    invoke-virtual {v1, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-virtual {v1, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v7

    invoke-virtual {v1, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v1, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_8

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    if-ge v5, v7, :cond_7

    invoke-virtual {p1, v5, v6}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v7, v0, 0x10

    invoke-virtual {v1, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v7, v0, 0x8

    invoke-virtual {v1, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {v1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    if-ne v7, v9, :cond_4

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    if-ne v7, v9, :cond_4

    sget-object v3, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_32x32_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    if-ne v7, v10, :cond_5

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    if-ne v7, v10, :cond_5

    sget-object v3, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_48x48_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    if-ne v7, v11, :cond_6

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    if-ne v7, v11, :cond_6

    sget-object v3, Lorg/apache/commons/imaging/formats/icns/IcnsType;->ICNS_128x128_32BIT_IMAGE:Lorg/apache/commons/imaging/formats/icns/IcnsType;

    goto/16 :goto_1

    :cond_6
    new-instance v7, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid/unsupported source width "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and height "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_8
    invoke-static {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->find8BPPMaskType(Lorg/apache/commons/imaging/formats/icns/IcnsType;)Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getType()I

    move-result v7

    invoke-virtual {v1, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v1, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_a

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    if-ge v5, v7, :cond_9

    invoke-virtual {p1, v5, v6}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    shr-int/lit8 v7, v0, 0x18

    invoke-virtual {v1, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->close()V

    return-void
.end method
