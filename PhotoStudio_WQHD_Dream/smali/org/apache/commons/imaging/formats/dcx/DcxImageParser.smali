.class public Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "DcxImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".dcx"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".dcx"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-super {p0, v0}, Lorg/apache/commons/imaging/ImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private readDcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v10, "Id"

    const-string v11, "Not a Valid DCX File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-static {v10, v3, v11, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    new-instance v5, Ljava/util/ArrayList;

    const/16 v10, 0x400

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v10, 0x400

    if-ge v1, v10, :cond_0

    const-wide v10, 0xffffffffL

    const-string v12, "PageTable"

    const-string v13, "Not a Valid DCX File"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-static {v12, v3, v13, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    int-to-long v12, v12

    and-long v6, v10, v12

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_1

    :cond_0
    const v10, 0x3ade68b1

    if-eq v2, v10, :cond_2

    new-instance v10, Lorg/apache/commons/imaging/ImageReadException;

    const-string v11, "Not a Valid DCX File: file id incorrect"

    invoke-direct {v10, v11}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/io/Closeable;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v0, v11}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v10

    :cond_1
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0x400

    if-ne v10, v11, :cond_3

    new-instance v10, Lorg/apache/commons/imaging/ImageReadException;

    const-string v11, "DCX page table not terminated by zero entry"

    invoke-direct {v10, v11}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    array-length v10, v4

    new-array v8, v10, [J

    const/4 v1, 0x0

    :goto_1
    array-length v10, v4

    if-ge v1, v10, :cond_4

    aget-object v10, v4, v1

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v9, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;

    invoke-direct {v9, v2, v8}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;-><init>(I[J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/io/Closeable;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v0, v10}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v9
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

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->readDcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;->dump(Ljava/io/PrintWriter;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->DCX:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;
    .locals 17
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

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->readDcxHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;

    move-result-object v4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;

    invoke-direct {v11}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;-><init>()V

    iget-object v2, v4, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;->pageTable:[J

    array-length v10, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v10, :cond_0

    aget-wide v6, v2, v5

    const/4 v13, 0x0

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream(J)Ljava/io/InputStream;

    move-result-object v13

    new-instance v12, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11, v12, v14}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/io/Closeable;

    const/4 v15, 0x0

    aput-object v13, v14, v15

    invoke-static {v3, v14}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    invoke-static {v3, v15}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v14

    :cond_0
    return-object v9
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 2
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

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;->getAllBufferedImages(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/image/BufferedImage;

    goto :goto_0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".dcx"

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
            "Lorg/apache/commons/imaging/ImageInfo;"
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

.method public getImageSize(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
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
            "Ljava/awt/Dimension;"
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

    const-string v0, "Dcx-Custom"

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

    if-nez p3, :cond_2

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v7, "FORMAT"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "FORMAT"

    invoke-interface {p3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v7, "PCX_COMPRESSION"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "PCX_COMPRESSION"

    invoke-interface {p3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "PCX_COMPRESSION"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v7, "PIXEL_DENSITY"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "PIXEL_DENSITY"

    invoke-interface {p3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    instance-of v7, v6, Lorg/apache/commons/imaging/PixelDensity;

    if-nez v7, :cond_3

    new-instance v7, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v8, "Invalid pixel density parameter"

    invoke-direct {v7, v8}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p3, v7

    goto :goto_0

    :cond_3
    const-string v7, "PIXEL_DENSITY"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v7, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown parameter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    const/16 v2, 0x1004

    new-instance v0, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, p2, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    const v7, 0x3ade68b1

    invoke-virtual {v0, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/16 v7, 0x1004

    invoke-virtual {v0, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    const/4 v3, 0x0

    :goto_1
    const/16 v7, 0x3ff

    if-ge v3, v7, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    new-instance v4, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;

    invoke-direct {v4}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;-><init>()V

    invoke-virtual {v4, p1, v0, v5}, Lorg/apache/commons/imaging/formats/pcx/PcxImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void
.end method
