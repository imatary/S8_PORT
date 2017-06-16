.class Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;
.super Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;
.source "PixelParserBitFields.java"


# instance fields
.field private final alphaMask:I

.field private final alphaShift:I

.field private final blueMask:I

.field private final blueShift:I

.field private bytecount:I

.field private final greenMask:I

.field private final greenShift:I

.field private final redMask:I

.field private final redShift:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    iget v0, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->redMask:I

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redMask:I

    iget v0, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->greenMask:I

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenMask:I

    iget v0, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->blueMask:I

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueMask:I

    iget v0, p1, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->alphaMask:I

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaMask:I

    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redMask:I

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->getMaskShift(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redShift:I

    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenMask:I

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->getMaskShift(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenShift:I

    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueMask:I

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->getMaskShift(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueShift:I

    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaMask:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaMask:I

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->getMaskShift(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaShift:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMaskShift(I)I
    .locals 5

    const v4, 0x7fffffff

    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_0

    shr-int/lit8 v2, p1, 0x1

    and-int p1, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    shr-int/lit8 v2, p1, 0x1

    and-int p1, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    rsub-int/lit8 v2, v0, 0x8

    sub-int v2, v1, v2

    return v2
.end method


# virtual methods
.method public getNextRGB()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->imageData:[B

    iget v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    add-int/lit8 v6, v6, 0x0

    aget-byte v5, v5, v6

    and-int/lit16 v2, v5, 0xff

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    :goto_0
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redMask:I

    and-int v4, v5, v2

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenMask:I

    and-int v3, v5, v2

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueMask:I

    and-int v1, v5, v2

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaMask:I

    if-eqz v5, :cond_4

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaMask:I

    and-int v0, v5, v2

    :goto_1
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redShift:I

    if-ltz v5, :cond_5

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redShift:I

    shr-int/2addr v4, v5

    :goto_2
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenShift:I

    if-ltz v5, :cond_6

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenShift:I

    shr-int/2addr v3, v5

    :goto_3
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueShift:I

    if-ltz v5, :cond_7

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueShift:I

    shr-int/2addr v1, v5

    :goto_4
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaShift:I

    if-ltz v5, :cond_8

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaShift:I

    shr-int/2addr v0, v5

    :goto_5
    shl-int/lit8 v5, v0, 0x18

    shl-int/lit8 v6, v4, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v1, 0x0

    or-int/2addr v5, v6

    return v5

    :cond_0
    iget-object v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v6, 0x18

    if-ne v5, v6, :cond_1

    const-string v5, "Pixel"

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->is:Ljava/io/InputStream;

    const-string v7, "BMP Image Data"

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read3Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v6, 0x20

    if-ne v5, v6, :cond_2

    const-string v5, "Pixel"

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->is:Ljava/io/InputStream;

    const-string v7, "BMP Image Data"

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v5, v5, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_3

    const-string v5, "Pixel"

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->is:Ljava/io/InputStream;

    const-string v7, "BMP Image Data"

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    goto/16 :goto_0

    :cond_3
    new-instance v5, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown BitsPerPixel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v7, v7, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->bitsPerPixel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    const/16 v0, 0xff

    goto/16 :goto_1

    :cond_5
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->redShift:I

    neg-int v5, v5

    shl-int/2addr v4, v5

    goto/16 :goto_2

    :cond_6
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->greenShift:I

    neg-int v5, v5

    shl-int/2addr v3, v5

    goto/16 :goto_3

    :cond_7
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->blueShift:I

    neg-int v5, v5

    shl-int/2addr v1, v5

    goto/16 :goto_4

    :cond_8
    iget v5, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->alphaShift:I

    neg-int v5, v5

    shl-int/2addr v0, v5

    goto/16 :goto_5
.end method

.method public newline()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const-string v0, "Pixel"

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->is:Ljava/io/InputStream;

    const-string v2, "BMP Image Data"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserBitFields;->bytecount:I

    goto :goto_0

    :cond_0
    return-void
.end method
