.class public Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "WbmpImageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;
    }
.end annotation


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".wbmp"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".wbmp"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    return-void
.end method

.method private readImage(Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget v5, p1, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->width:I

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v11, v5, 0x8

    const-string v5, "Pixels"

    iget v6, p1, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->height:I

    mul-int/2addr v6, v11

    const-string v7, "Error reading image pixels"

    invoke-static {v5, p2, v6, v7}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readBytes(Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;)[B

    move-result-object v9

    new-instance v8, Ljava/awt/image/DataBufferByte;

    array-length v5, v9

    invoke-direct {v8, v9, v5}, Ljava/awt/image/DataBufferByte;-><init>([BI)V

    iget v5, p1, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->width:I

    iget v6, p1, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->height:I

    const/4 v7, 0x0

    invoke-static {v8, v5, v6, v1, v7}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v10

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-instance v0, Ljava/awt/image/IndexColorModel;

    const/4 v6, -0x1

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/IndexColorModel;->isAlphaPremultiplied()Z

    move-result v2

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-direct {v1, v0, v10, v2, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0xffffff
    .end array-data
.end method

.method private readMultiByteInteger(Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    :cond_0
    const-string v3, "Header"

    const-string v4, "Error reading WBMP header"

    invoke-static {v3, p1, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    shl-int/lit8 v2, v2, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x7

    const/16 v3, 0x1f

    if-le v1, v3, :cond_1

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    const-string v4, "Overflow reading WBMP multi-byte field"

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_0

    return v2
.end method

.method private readWbmpHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readMultiByteInteger(Ljava/io/InputStream;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v4, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid/unsupported WBMP type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string v4, "FixHeaderField"

    const-string v5, "Invalid WBMP File"

    invoke-static {v4, p1, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v4, v0, 0x9f

    if-eqz v4, :cond_1

    new-instance v4, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid/unsupported WBMP FixHeaderField 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, v0, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readMultiByteInteger(Ljava/io/InputStream;)I

    move-result v3

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readMultiByteInteger(Ljava/io/InputStream;)I

    move-result v1

    new-instance v4, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;

    invoke-direct {v4, v2, v0, v3, v1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;-><init>(IBII)V

    return-object v4
.end method

.method private readWbmpHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;
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

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readWbmpHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;
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

.method private writeMultiByteInteger(Ljava/io/OutputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v1, 0x1c

    :goto_0
    if-lez v1, :cond_2

    ushr-int v3, p2, v1

    and-int/lit8 v0, v3, 0x7f

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    or-int/lit16 v3, v0, 0x80

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x7

    goto :goto_0

    :cond_2
    and-int/lit8 v3, p2, 0x7f

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    return-void
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

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readWbmpHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->dump(Ljava/io/PrintWriter;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->WBMP:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
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
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readWbmpHeader(Ljava/io/InputStream;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readImage(Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v5, [Ljava/io/Closeable;

    aput-object v1, v4, v6

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v4

    new-array v5, v5, [Ljava/io/Closeable;

    aput-object v1, v5, v6

    invoke-static {v0, v5}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v4
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".wbmp"

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

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readWbmpHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;

    move-result-object v20

    new-instance v1, Lorg/apache/commons/imaging/ImageInfo;

    const-string v2, "WBMP"

    const/4 v3, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lorg/apache/commons/imaging/ImageFormats;->WBMP:Lorg/apache/commons/imaging/ImageFormats;

    const-string v6, "Wireless Application Protocol Bitmap"

    move-object/from16 v0, v20

    iget v7, v0, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->height:I

    const-string v8, "image/vnd.wap.wbmp"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v20

    iget v14, v0, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->width:I

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

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->readWbmpHeader(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;

    move-result-object v0

    new-instance v1, Ljava/awt/Dimension;

    iget v2, v0, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->width:I

    iget v3, v0, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser$WbmpHeader;->height:I

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

    const-string v0, "Wireless Application Protocol Bitmap Format"

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
    .locals 14
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
    const-string v11, "FORMAT"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "FORMAT"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    new-instance v11, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown parameter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 p3, v11

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->writeMultiByteInteger(Ljava/io/OutputStream;I)V

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v11

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->writeMultiByteInteger(Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v11

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11}, Lorg/apache/commons/imaging/formats/wbmp/WbmpImageParser;->writeMultiByteInteger(Ljava/io/OutputStream;I)V

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_7

    const/4 v6, 0x0

    const/16 v5, 0x80

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v11

    if-ge v9, v11, :cond_5

    invoke-virtual {p1, v9, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v1

    shr-int/lit8 v11, v1, 0x10

    and-int/lit16 v7, v11, 0xff

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v4, v11, 0xff

    shr-int/lit8 v11, v1, 0x0

    and-int/lit16 v2, v11, 0xff

    add-int v11, v7, v4

    add-int/2addr v11, v2

    div-int/lit8 v8, v11, 0x3

    const/16 v11, 0x7f

    if-le v8, v11, :cond_3

    or-int/2addr v6, v5

    :cond_3
    ushr-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write(I)V

    const/4 v6, 0x0

    const/16 v5, 0x80

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    const/16 v11, 0x80

    if-eq v5, v11, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/OutputStream;->write(I)V

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method
