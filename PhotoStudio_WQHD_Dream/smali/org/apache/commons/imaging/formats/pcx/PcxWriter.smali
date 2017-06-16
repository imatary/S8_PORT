.class Lorg/apache/commons/imaging/formats/pcx/PcxWriter;
.super Ljava/lang/Object;
.source "PcxWriter.java"


# instance fields
.field private bitDepth:I

.field private encoding:I

.field private pixelDensity:Lorg/apache/commons/imaging/PixelDensity;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const-wide/high16 v4, 0x4052000000000000L    # 72.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    const-string v3, "FORMAT"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "FORMAT"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v3, 0x1

    iput v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    const-string v3, "PCX_COMPRESSION"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "PCX_COMPRESSION"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_2

    new-instance v3, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid compression parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p1, v3

    goto :goto_0

    :cond_2
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    :cond_3
    const-string v3, "PCX_BIT_DEPTH"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "PCX_BIT_DEPTH"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_4

    new-instance v3, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid bit depth parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    iput v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    :cond_5
    const-string v3, "PIXEL_DENSITY"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "PIXEL_DENSITY"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    instance-of v3, v2, Lorg/apache/commons/imaging/PixelDensity;

    if-nez v3, :cond_6

    new-instance v3, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v4, "Invalid pixel density parameter"

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    check-cast v2, Lorg/apache/commons/imaging/PixelDensity;

    iput-object v2, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    :cond_7
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    if-nez v3, :cond_8

    invoke-static {v4, v5, v4, v5}, Lorg/apache/commons/imaging/PixelDensity;->createFromPixelsPerInch(DD)Lorg/apache/commons/imaging/PixelDensity;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    :cond_8
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    return-void
.end method

.method private write16ColorPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/palette/SimplePalette;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    div-int/lit8 v1, v9, 0x2

    rem-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/16 v9, 0x30

    new-array v5, v9, [B

    const/4 v2, 0x0

    :goto_0
    const/16 v9, 0x10

    if-ge v2, v9, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v9

    if-ge v2, v9, :cond_1

    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v6

    :goto_1
    mul-int/lit8 v9, v2, 0x3

    add-int/lit8 v9, v9, 0x0

    shr-int/lit8 v10, v6, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    mul-int/lit8 v9, v2, 0x3

    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v10, v6, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    mul-int/lit8 v9, v2, 0x3

    add-int/lit8 v9, v9, 0x2

    and-int/lit16 v10, v6, 0xff

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/16 v9, 0xa

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v9, 0x5

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    iget v9, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v9, 0x4

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v9, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v9}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v9, v10

    int-to-short v9, v9

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v9, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v9}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v9, v10

    int-to-short v9, v9

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p3, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p3, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v9, 0x36

    new-array v9, v9, [B

    invoke-virtual {p3, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    new-array v3, v1, [B

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_4

    const/4 v9, 0x0

    invoke-static {v3, v9}, Ljava/util/Arrays;->fill([BB)V

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    if-ge v7, v9, :cond_3

    invoke-virtual {p1, v7, v8}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    const v9, 0xffffff

    and-int/2addr v9, v0

    invoke-virtual {p2, v9}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v4

    div-int/lit8 v9, v7, 0x2

    aget-byte v10, v3, v9

    rem-int/lit8 v11, v7, 0x2

    rsub-int/lit8 v11, v11, 0x1

    mul-int/lit8 v11, v11, 0x4

    shl-int v11, v4, v11

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    invoke-direct {p0, p3, v3}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeScanLine(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private write24BppPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    :goto_0
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    iget v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    int-to-short v0, v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    int-to-short v0, v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v0, 0x30

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p2, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p2, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v0, 0x36

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    new-array v5, v0, [I

    mul-int/lit8 v0, v8, 0x3

    new-array v9, v0, [B

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    move-object v0, p1

    move v6, v1

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/4 v10, 0x0

    :goto_2
    array-length v0, v5

    if-ge v10, v0, :cond_1

    aget v0, v5, v10

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v9, v10

    add-int v0, v8, v10

    aget v3, v5, v10

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v9, v0

    mul-int/lit8 v0, v8, 0x2

    add-int/2addr v0, v10

    aget v3, v5, v10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v9, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p2, v9}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeScanLine(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private write256ColorPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/palette/SimplePalette;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    :goto_0
    const/16 v8, 0xa

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v8, 0x5

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    iget v8, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v8, 0x8

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v8}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v8}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    int-to-short v8, v8

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v8, 0x30

    new-array v8, v8, [B

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    invoke-virtual {p3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p3, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p3, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p3, v11}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p3, v10}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v8, 0x36

    new-array v8, v8, [B

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    new-array v3, v1, [B

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    if-ge v6, v8, :cond_1

    invoke-virtual {p1, v6, v7}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    const v8, 0xffffff

    and-int/2addr v8, v0

    invoke-virtual {p2, v8}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v4

    int-to-byte v8, v4

    aput-byte v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    add-int/lit8 v1, v8, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p3, v3}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeScanLine(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/16 v8, 0xc

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v2, 0x0

    :goto_3
    const/16 v8, 0x100

    if-ge v2, v8, :cond_4

    invoke-virtual {p2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v8

    if-ge v2, v8, :cond_3

    invoke-virtual {p2, v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v5

    :goto_4
    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    and-int/lit16 v8, v5, 0xff

    invoke-virtual {p3, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    return-void
.end method

.method private write32BppPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    :goto_0
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    iget v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    int-to-short v0, v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    int-to-short v0, v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v0, 0x30

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p2, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p2, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p2, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v0, 0x36

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    new-array v5, v0, [I

    mul-int/lit8 v0, v8, 0x4

    new-array v9, v0, [B

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    move-object v0, p1

    move v6, v1

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/4 v10, 0x0

    :goto_2
    array-length v0, v5

    if-ge v10, v0, :cond_1

    mul-int/lit8 v0, v10, 0x4

    add-int/lit8 v0, v0, 0x0

    aget v3, v5, v10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v9, v0

    mul-int/lit8 v0, v10, 0x4

    add-int/lit8 v0, v0, 0x1

    aget v3, v5, v10

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v9, v0

    mul-int/lit8 v0, v10, 0x4

    add-int/lit8 v0, v0, 0x2

    aget v3, v5, v10

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v9, v0

    mul-int/lit8 v0, v10, 0x4

    add-int/lit8 v0, v0, 0x3

    aput-byte v1, v9, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p2, v9}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeScanLine(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private writeBlackAndWhitePCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const v10, 0xffffff

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v1, v6, 0x8

    rem-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/16 v6, 0xa

    invoke-virtual {p2, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v6, 0x3

    invoke-virtual {p2, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    iget v6, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    invoke-virtual {p2, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p2, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p2, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p2, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p2, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p2, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v6}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityInches()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-virtual {p2, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->pixelDensity:Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual {v6}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityInches()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-virtual {p2, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v6, 0x30

    new-array v6, v6, [B

    invoke-virtual {p2, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    invoke-virtual {p2, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p2, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p2, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p2, v8}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p2, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    invoke-virtual {p2, v9}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    const/16 v6, 0x36

    new-array v6, v6, [B

    invoke-virtual {p2, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    new-array v3, v1, [B

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-static {v3, v9}, Ljava/util/Arrays;->fill([BB)V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-virtual {p1, v4, v5}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v6

    and-int v2, v10, v6

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_2
    div-int/lit8 v6, v4, 0x8

    aget-byte v7, v3, v6

    rem-int/lit8 v8, v4, 0x8

    rsub-int/lit8 v8, v8, 0x7

    shl-int v8, v0, v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-ne v2, v10, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v6, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v7, "Pixel neither black nor white"

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-direct {p0, p2, v3}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeScanLine(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private writeScanLine(Lorg/apache/commons/imaging/common/BinaryOutputStream;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/16 v8, 0xc0

    const/4 v7, 0x1

    iget v6, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    if-nez v6, :cond_1

    invoke-virtual {p1, p2}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    if-ne v6, v7, :cond_7

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p2

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    aget-byte v1, v0, v2

    and-int/lit16 v6, v1, 0xff

    if-ne v6, v4, :cond_2

    const/16 v6, 0x3f

    if-ge v5, v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    if-ne v5, v7, :cond_4

    and-int/lit16 v6, v4, 0xc0

    if-eq v6, v8, :cond_4

    invoke-virtual {p1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :cond_3
    :goto_3
    and-int/lit16 v4, v1, 0xff

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    or-int/lit16 v6, v5, 0xc0

    invoke-virtual {p1, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_3

    :cond_5
    if-lez v5, :cond_0

    if-ne v5, v7, :cond_6

    and-int/lit16 v6, v4, 0xc0

    if-eq v6, v8, :cond_6

    invoke-virtual {p1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0

    :cond_6
    or-int/lit16 v6, v5, 0xc0

    invoke-virtual {p1, v6}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p1, v4}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0

    :cond_7
    new-instance v6, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid PCX encoding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->encoding:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    const v10, 0xffffff

    const/16 v9, 0x20

    const/4 v8, 0x2

    const/4 v7, 0x1

    new-instance v3, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v3}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    const/16 v5, 0x100

    invoke-virtual {v3, p1, v5}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeExactRgbPaletteSimple(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/SimplePalette;

    move-result-object v2

    new-instance v0, Lorg/apache/commons/imaging/common/BinaryOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, p2, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    if-eqz v2, :cond_0

    iget v5, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    const/16 v6, 0x18

    if-eq v5, v6, :cond_0

    iget v5, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    if-ne v5, v9, :cond_2

    :cond_0
    iget v5, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    if-ne v5, v9, :cond_1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->write32BppPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->write24BppPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v5

    const/16 v6, 0x10

    if-gt v5, v6, :cond_3

    iget v5, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    :cond_3
    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->write256ColorPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/palette/SimplePalette;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v5

    if-gt v5, v8, :cond_5

    iget v5, p0, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->bitDepth:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    :cond_5
    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->write16ColorPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/palette/SimplePalette;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v5

    if-lt v5, v7, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v4

    if-eqz v4, :cond_7

    if-eq v4, v10, :cond_7

    const/4 v1, 0x0

    :cond_7
    invoke-virtual {v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v5

    if-ne v5, v8, :cond_8

    invoke-virtual {v2, v7}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v4

    if-eqz v4, :cond_8

    if-eq v4, v10, :cond_8

    const/4 v1, 0x0

    :cond_8
    if-eqz v1, :cond_9

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->writeBlackAndWhitePCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_0

    :cond_9
    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/imaging/formats/pcx/PcxWriter;->write16ColorPCX(Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/palette/SimplePalette;Lorg/apache/commons/imaging/common/BinaryOutputStream;)V

    goto :goto_0
.end method
