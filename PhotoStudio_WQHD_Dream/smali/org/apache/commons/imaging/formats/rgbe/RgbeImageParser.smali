.class public Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;
.super Lorg/apache/commons/imaging/ImageParser;
.source "RgbeImageParser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/imaging/ImageParser;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method


# virtual methods
.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".hdr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".pic"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/commons/imaging/ImageFormat;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/imaging/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 12
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

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v8, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;

    invoke-direct {v8, p1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V

    const/4 v7, 0x0

    :try_start_0
    new-instance v6, Ljava/awt/image/DataBufferFloat;

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getPixelData()[[F

    move-result-object v0

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {v6, v0, v1}, Ljava/awt/image/DataBufferFloat;-><init>([[FI)V

    new-instance v9, Ljava/awt/image/BufferedImage;

    new-instance v0, Ljava/awt/image/ComponentColorModel;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v6}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    new-instance v1, Ljava/awt/image/BandedSampleModel;

    invoke-virtual {v6}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v2

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getWidth()I

    move-result v3

    invoke-virtual {v8}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getHeight()I

    move-result v4

    const/4 v5, 0x3

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/awt/image/BandedSampleModel;-><init>(IIII)V

    new-instance v2, Ljava/awt/Point;

    invoke-direct {v2}, Ljava/awt/Point;-><init>()V

    invoke-static {v1, v6, v2}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v9, v0, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    new-array v0, v11, [Ljava/io/Closeable;

    aput-object v8, v0, v10

    invoke-static {v7, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v9

    :catchall_0
    move-exception v0

    new-array v1, v11, [Ljava/io/Closeable;

    aput-object v8, v1, v10

    invoke-static {v7, v1}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".hdr"

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
    .locals 23
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

    new-instance v22, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V

    const/16 v21, 0x0

    :try_start_0
    new-instance v2, Lorg/apache/commons/imaging/ImageInfo;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lorg/apache/commons/imaging/ImageFormats;->RGBE:Lorg/apache/commons/imaging/ImageFormats;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/rgbe/RgbeImageParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getHeight()I

    move-result v8

    const-string v9, "image/vnd.radiance"

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, -0x1

    const/high16 v14, -0x40800000    # -1.0f

    invoke-virtual/range {v22 .. v22}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getWidth()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lorg/apache/commons/imaging/ImageInfo$ColorType;->RGB:Lorg/apache/commons/imaging/ImageInfo$ColorType;

    sget-object v20, Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;->ADAPTIVE_RLE:Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;

    invoke-direct/range {v2 .. v20}, Lorg/apache/commons/imaging/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/List;Lorg/apache/commons/imaging/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZLorg/apache/commons/imaging/ImageInfo$ColorType;Lorg/apache/commons/imaging/ImageInfo$CompressionAlgorithm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v21, 0x1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v22, v3, v4

    move/from16 v0, v21

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v22, v4, v5

    move/from16 v0, v21

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v3
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

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;

    invoke-direct {v1, p1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/awt/Dimension;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v3

    new-array v4, v6, [Ljava/io/Closeable;

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v3
.end method

.method public getMetadata(Lorg/apache/commons/imaging/common/bytesource/ByteSource;Ljava/util/Map;)Lorg/apache/commons/imaging/common/ImageMetadata;
    .locals 6
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

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v1, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;

    invoke-direct {v1, p1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;-><init>(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/rgbe/RgbeInfo;->getMetadata()Lorg/apache/commons/imaging/common/ImageMetadata;
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

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Radiance HDR"

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
