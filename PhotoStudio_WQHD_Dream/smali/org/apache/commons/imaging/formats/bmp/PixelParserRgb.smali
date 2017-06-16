.class Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;
.super Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;
.source "PixelParserRgb.java"


# instance fields
.field private bytecount:I

.field private cachedBitCount:I

.field private cachedByte:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    return-void
.end method


# virtual methods
.method public getNextRGB()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    const/high16 v12, -0x1000000

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-eq v8, v10, :cond_0

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    :cond_0
    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    iget-object v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v9, v9, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    if-ge v8, v9, :cond_2

    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    if-eqz v8, :cond_1

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected leftover bits: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v10, v10, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    add-int/lit8 v8, v8, 0x8

    iput v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedByte:I

    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    :cond_2
    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int v8, v10, v8

    add-int/lit8 v2, v8, -0x1

    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedByte:I

    iget-object v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v9, v9, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    rsub-int/lit8 v9, v9, 0x8

    shr-int/2addr v8, v9

    and-int v7, v2, v8

    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedByte:I

    iget-object v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v9, v9, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    shl-int/2addr v8, v9

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedByte:I

    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    iget-object v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v9, v9, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    invoke-virtual {p0, v7}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->getColorTableRGB(I)I

    move-result v6

    :goto_0
    return v6

    :cond_3
    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x0

    aget-byte v8, v8, v9

    and-int/lit16 v7, v8, 0xff

    invoke-virtual {p0, v7}, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->getColorTableRGB(I)I

    move-result v6

    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v9, 0x10

    if-ne v8, v9, :cond_5

    const-string v8, "Pixel"

    iget-object v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->is:Ljava/io/InputStream;

    const-string v10, "BMP Image Data"

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    shr-int/lit8 v8, v3, 0x0

    and-int/lit8 v8, v8, 0x1f

    shl-int/lit8 v1, v8, 0x3

    shr-int/lit8 v8, v3, 0x5

    and-int/lit8 v8, v8, 0x1f

    shl-int/lit8 v4, v8, 0x3

    shr-int/lit8 v8, v3, 0xa

    and-int/lit8 v8, v8, 0x1f

    shl-int/lit8 v5, v8, 0x3

    const/16 v0, 0xff

    shl-int/lit8 v8, v5, 0x10

    or-int/2addr v8, v12

    shl-int/lit8 v9, v4, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v1, 0x0

    or-int v6, v8, v9

    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v8, v8, 0x2

    iput v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v9, 0x18

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x0

    aget-byte v8, v8, v9

    and-int/lit16 v1, v8, 0xff

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    and-int/lit16 v4, v8, 0xff

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v5, v8, 0xff

    const/16 v0, 0xff

    shl-int/lit8 v8, v5, 0x10

    or-int/2addr v8, v12

    shl-int/lit8 v9, v4, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v1, 0x0

    or-int v6, v8, v9

    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v8, v8, 0x3

    iput v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v8, v8, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v9, 0x20

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x0

    aget-byte v8, v8, v9

    and-int/lit16 v1, v8, 0xff

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    and-int/lit16 v4, v8, 0xff

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->imageData:[B

    iget v9, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v5, v8, 0xff

    const/16 v0, 0xff

    shl-int/lit8 v8, v5, 0x10

    or-int/2addr v8, v12

    shl-int/lit8 v9, v4, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v1, 0x0

    or-int v6, v8, v9

    iget v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    goto/16 :goto_0

    :cond_7
    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown BitsPerPixel: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v10, v10, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public newline()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->cachedBitCount:I

    :goto_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const-string v0, "Pixel"

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->is:Ljava/io/InputStream;

    const-string v2, "BMP Image Data"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserRgb;->bytecount:I

    goto :goto_0

    :cond_0
    return-void
.end method
