.class Lorg/apache/commons/imaging/formats/png/PngWriter;
.super Ljava/lang/Object;
.source "PngWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;,
        Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;
    }
.end annotation


# instance fields
.field private final verbose:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "VERBOSE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    return-void
.end method

.method private deflate([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    new-array v3, v4, [Ljava/io/Closeable;

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    :catchall_0
    move-exception v3

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v3
.end method

.method private getBitDepth(Lorg/apache/commons/imaging/formats/png/PngColorType;Ljava/util/Map;)B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/png/PngColorType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)B"
        }
    .end annotation

    const/16 v0, 0x8

    const-string v2, "PNG_BIT_DEPTH"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/formats/png/PngColorType;->isBitDepthAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private isValidISO_8859_1(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error parsing string."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    iget-object v7, p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->array:[B

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    new-instance v6, Lorg/apache/commons/imaging/formats/png/PngCrc;

    invoke-direct {v6}, Lorg/apache/commons/imaging/formats/png/PngCrc;-><init>()V

    iget-object v7, p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->array:[B

    iget-object v8, p2, Lorg/apache/commons/imaging/formats/png/ChunkType;->array:[B

    array-length v8, v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/imaging/formats/png/PngCrc;->start_partial_crc([BI)J

    move-result-wide v2

    if-nez p3, :cond_2

    move-wide v4, v2

    :goto_1
    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/imaging/formats/png/PngCrc;->finish_partial_crc(J)J

    move-result-wide v8

    long-to-int v0, v8

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    return-void

    :cond_1
    array-length v1, p3

    goto :goto_0

    :cond_2
    array-length v7, p3

    invoke-virtual {v6, v2, v3, p3, v7}, Lorg/apache/commons/imaging/formats/png/PngCrc;->continue_partial_crc(J[BI)J

    move-result-wide v4

    goto :goto_1
.end method

.method private writeChunkIDAT(Ljava/io/OutputStream;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->IDAT:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkIEND(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/imaging/formats/png/ChunkType;->IEND:Lorg/apache/commons/imaging/formats/png/ChunkType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkIHDR(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->width:I

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    iget v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->height:I

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    iget-byte v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->bitDepth:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->getValue()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-byte v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->compressionMethod:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-byte v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->filterMethod:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->ordinal()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->IHDR:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkPHYS(Ljava/io/OutputStream;IIB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x9

    new-array v0, v1, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 v2, p2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    shr-int/lit8 v2, p3, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    shr-int/lit8 v2, p3, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    shr-int/lit8 v2, p3, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    aput-byte p4, v0, v1

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->pHYs:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkPLTE(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v3

    mul-int/lit8 v5, v3, 0x3

    new-array v0, v5, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p2, v1}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v4

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v5, v2, 0x0

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v2, 0x2

    shr-int/lit8 v6, v4, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v5, Lorg/apache/commons/imaging/formats/png/ChunkType;->PLTE:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p1, v5, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkTRNS(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/commons/imaging/palette/Palette;->length()I

    move-result v2

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Lorg/apache/commons/imaging/palette/Palette;->getEntry(I)I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/commons/imaging/formats/png/ChunkType;->tRNS:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkXmpiTXt(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "XML:com.adobe.xmp"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v1, "XML:com.adobe.xmp"

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v1, "utf-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->deflate([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkiTXt(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Itxt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->keyword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Png tEXt chunk keyword is not ISO-8859-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->languageTag:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Png tEXt chunk language tag is not ISO-8859-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->languageTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->keyword:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->languageTag:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->translatedKeyword:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->text:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->deflate([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->iTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunktEXt(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Text;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Text;->keyword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Png tEXt chunk keyword is not ISO-8859-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/commons/imaging/formats/png/PngText$Text;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Text;->text:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Png tEXt chunk text is not ISO-8859-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/commons/imaging/formats/png/PngText$Text;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Text;->keyword:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Text;->text:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->tEXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeChunkzTXt(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;->keyword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Png zTXt chunk keyword is not ISO-8859-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;->text:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Png zTXt chunk text is not ISO-8859-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;->keyword:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p2, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;->text:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->deflate([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sget-object v1, Lorg/apache/commons/imaging/formats/png/ChunkType;->zTXt:Lorg/apache/commons/imaging/formats/png/ChunkType;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/ChunkType;[B)V

    return-void
.end method

.method private writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p2, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 57
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

    new-instance v46, Ljava/util/HashMap;

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v9, "FORMAT"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "FORMAT"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v9, "VERBOSE"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "VERBOSE"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v49, Ljava/util/HashMap;

    move-object/from16 v0, v49

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v9, "PNG_FORCE_TRUE_COLOR"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "PNG_FORCE_TRUE_COLOR"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v9, "PNG_FORCE_INDEXED_COLOR"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "PNG_FORCE_INDEXED_COLOR"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v9, "PNG_BIT_DEPTH"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "PNG_BIT_DEPTH"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v9, "XMP_XML"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "XMP_XML"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v9, "PNG_TEXT_CHUNKS"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "PNG_TEXT_CHUNKS"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v9, "PIXEL_DENSITY"

    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {v46 .. v46}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-interface/range {v46 .. v46}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    new-instance v9, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown parameter: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    move-object/from16 p3, v49

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    new-instance v9, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v9}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v35

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    if-eqz v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasAlpha: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v35

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_8
    new-instance v9, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct {v9}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/palette/PaletteFactory;->isGrayscale(Ljava/awt/image/BufferedImage;)Z

    move-result v38

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isGrayscale: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_9
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v10, "PNG_FORCE_INDEXED_COLOR"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v31

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v10, "PNG_FORCE_TRUE_COLOR"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v31, :cond_a

    if-eqz v32, :cond_a

    new-instance v9, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v10, "Params: Cannot force both indexed and true color modes"

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_a
    if-eqz v31, :cond_11

    sget-object v8, Lorg/apache/commons/imaging/formats/png/PngColorType;->INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "colorType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v8, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->getBitDepth(Lorg/apache/commons/imaging/formats/png/PngColorType;Ljava/util/Map;)B

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    if-eqz v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitDepth: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_c
    sget-object v9, Lorg/apache/commons/imaging/formats/png/PngColorType;->INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-ne v8, v9, :cond_14

    const/16 v51, 0x8

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/commons/imaging/formats/png/PngWriter;->verbose:Z

    if-eqz v9, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sampleDepth: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v51

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_d
    sget-object v9, Lorg/apache/commons/imaging/formats/png/PngConstants;->PNG_SIGNATURE:Lorg/apache/commons/imaging/common/BinaryConstant;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lorg/apache/commons/imaging/common/BinaryConstant;->writeTo(Ljava/io/OutputStream;)V

    const/16 v26, 0x0

    const/16 v29, 0x0

    sget-object v11, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->NONE:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    new-instance v4, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v11}, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;-><init>(IIBLorg/apache/commons/imaging/formats/png/PngColorType;BBLorg/apache/commons/imaging/formats/png/InterlaceMethod;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkIHDR(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;)V

    const/16 v43, 0x0

    sget-object v9, Lorg/apache/commons/imaging/formats/png/PngColorType;->INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-ne v8, v9, :cond_e

    if-eqz v35, :cond_15

    const/16 v40, 0xff

    :goto_2
    new-instance v45, Lorg/apache/commons/imaging/palette/PaletteFactory;

    invoke-direct/range {v45 .. v45}, Lorg/apache/commons/imaging/palette/PaletteFactory;-><init>()V

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/palette/PaletteFactory;->makeQuantizedRgbPalette(Ljava/awt/image/BufferedImage;I)Lorg/apache/commons/imaging/palette/Palette;

    move-result-object v43

    if-eqz v35, :cond_16

    new-instance v44, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter$TransparentPalette;-><init>(Lorg/apache/commons/imaging/palette/Palette;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkPLTE(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V

    new-instance v9, Lorg/apache/commons/imaging/palette/SimplePalette;

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v10, v12

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/palette/SimplePalette;-><init>([I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkTRNS(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V

    move-object/from16 v43, v44

    :cond_e
    :goto_3
    const-string v9, "PIXEL_DENSITY"

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    move-object/from16 v0, v48

    instance-of v9, v0, Lorg/apache/commons/imaging/PixelDensity;

    if-eqz v9, :cond_f

    move-object/from16 v47, v48

    check-cast v47, Lorg/apache/commons/imaging/PixelDensity;

    invoke-virtual/range {v47 .. v47}, Lorg/apache/commons/imaging/PixelDensity;->isUnitless()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-virtual/range {v47 .. v47}, Lorg/apache/commons/imaging/PixelDensity;->getRawHorizontalDensity()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v9, v12

    invoke-virtual/range {v47 .. v47}, Lorg/apache/commons/imaging/PixelDensity;->getRawVerticalDensity()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v10, v12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9, v10, v12}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkPHYS(Ljava/io/OutputStream;IIB)V

    :cond_f
    :goto_4
    const-string v9, "XMP_XML"

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "XMP_XML"

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkXmpiTXt(Ljava/io/OutputStream;Ljava/lang/String;)V

    :cond_10
    const-string v9, "PNG_TEXT_CHUNKS"

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    const-string v9, "PNG_TEXT_CHUNKS"

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/List;

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_5
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    move-object/from16 v52, v41

    check-cast v52, Lorg/apache/commons/imaging/formats/png/PngText;

    move-object/from16 v0, v52

    instance-of v9, v0, Lorg/apache/commons/imaging/formats/png/PngText$Text;

    if-eqz v9, :cond_18

    check-cast v52, Lorg/apache/commons/imaging/formats/png/PngText$Text;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunktEXt(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Text;)V

    goto :goto_5

    :cond_11
    if-eqz v32, :cond_13

    if-eqz v35, :cond_12

    sget-object v8, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    :goto_6
    const/16 v38, 0x0

    goto/16 :goto_0

    :cond_12
    sget-object v8, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    goto :goto_6

    :cond_13
    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->getColorType(ZZ)Lorg/apache/commons/imaging/formats/png/PngColorType;

    move-result-object v8

    goto/16 :goto_0

    :cond_14
    move/from16 v51, v7

    goto/16 :goto_1

    :cond_15
    const/16 v40, 0x100

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkPLTE(Ljava/io/OutputStream;Lorg/apache/commons/imaging/palette/Palette;)V

    goto/16 :goto_3

    :cond_17
    invoke-virtual/range {v47 .. v47}, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensityMetres()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v9, v12

    invoke-virtual/range {v47 .. v47}, Lorg/apache/commons/imaging/PixelDensity;->verticalDensityMetres()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v10, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9, v10, v12}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkPHYS(Ljava/io/OutputStream;IIB)V

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, v52

    instance-of v9, v0, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;

    if-eqz v9, :cond_19

    check-cast v52, Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkzTXt(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;)V

    goto :goto_5

    :cond_19
    move-object/from16 v0, v52

    instance-of v9, v0, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;

    if-eqz v9, :cond_1a

    check-cast v52, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkiTXt(Ljava/io/OutputStream;Lorg/apache/commons/imaging/formats/png/PngText$Itxt;)V

    goto/16 :goto_5

    :cond_1a
    new-instance v9, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown text to embed in PNG: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1b
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v9, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-eq v8, v9, :cond_1c

    sget-object v9, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    if-ne v8, v9, :cond_1e

    :cond_1c
    const/16 v54, 0x1

    :goto_7
    new-array v0, v5, [I

    move-object/from16 v17, v0

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v6, :cond_23

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x0

    move-object/from16 v12, p1

    move v15, v5

    move/from16 v19, v5

    invoke-virtual/range {v12 .. v19}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    sget-object v9, Lorg/apache/commons/imaging/formats/png/FilterType;->NONE:Lorg/apache/commons/imaging/formats/png/FilterType;

    invoke-virtual {v9}, Lorg/apache/commons/imaging/formats/png/FilterType;->ordinal()I

    move-result v9

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v55, 0x0

    :goto_9
    move/from16 v0, v55

    if-ge v0, v5, :cond_22

    aget v21, v17, v55

    if-eqz v43, :cond_20

    if-eqz v35, :cond_1f

    ushr-int/lit8 v9, v21, 0x18

    if-nez v9, :cond_1f

    const/4 v9, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1d
    :goto_a
    add-int/lit8 v55, v55, 0x1

    goto :goto_9

    :cond_1e
    const/16 v54, 0x0

    goto :goto_7

    :cond_1f
    move-object/from16 v0, v43

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/apache/commons/imaging/palette/Palette;->getPaletteIndex(I)I

    move-result v37

    move/from16 v0, v37

    and-int/lit16 v9, v0, 0xff

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a

    :cond_20
    shr-int/lit8 v9, v21, 0x18

    and-int/lit16 v0, v9, 0xff

    move/from16 v20, v0

    shr-int/lit8 v9, v21, 0x10

    and-int/lit16 v0, v9, 0xff

    move/from16 v50, v0

    shr-int/lit8 v9, v21, 0x8

    and-int/lit16 v0, v9, 0xff

    move/from16 v34, v0

    shr-int/lit8 v9, v21, 0x0

    and-int/lit16 v0, v9, 0xff

    move/from16 v23, v0

    if-eqz v38, :cond_21

    add-int v9, v50, v34

    add-int v9, v9, v23

    div-int/lit8 v33, v9, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_b
    if-eqz v54, :cond_1d

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a

    :cond_21
    move-object/from16 v0, v22

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual/range {v22 .. v23}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_b

    :cond_22
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    :cond_23
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v53

    new-instance v22, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v27, Ljava/util/zip/DeflaterOutputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/high16 v24, 0x40000

    const/16 v37, 0x0

    :goto_c
    move-object/from16 v0, v53

    array-length v9, v0

    move/from16 v0, v37

    if-ge v0, v9, :cond_25

    move-object/from16 v0, v53

    array-length v9, v0

    const/high16 v10, 0x40000

    add-int v10, v10, v37

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v28

    sub-int v39, v28, v37

    move-object/from16 v0, v27

    move-object/from16 v1, v53

    move/from16 v2, v37

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    invoke-virtual/range {v27 .. v27}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->reset()V

    move-object/from16 v0, v25

    array-length v9, v0

    if-lez v9, :cond_24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkIDAT(Ljava/io/OutputStream;[B)V

    :cond_24
    const/high16 v9, 0x40000

    add-int v37, v37, v9

    goto :goto_c

    :cond_25
    invoke-virtual/range {v27 .. v27}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    move-object/from16 v0, v25

    array-length v9, v0

    if-lez v9, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkIDAT(Ljava/io/OutputStream;[B)V

    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/formats/png/PngWriter;->writeChunkIEND(Ljava/io/OutputStream;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    return-void
.end method
