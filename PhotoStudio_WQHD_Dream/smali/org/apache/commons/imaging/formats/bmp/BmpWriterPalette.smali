.class Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;
.super Ljava/lang/Object;
.source "BmpWriterPalette.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/bmp/BmpWriter;


# instance fields
.field private final bitsPerSample:I

.field private final palette:Lorg/apache/commons/imaging/palette/SimplePalette;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/palette/SimplePalette;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->palette:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {p1}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    goto :goto_0
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    return v0
.end method

.method public getImageData(Ljava/awt/image/BufferedImage;)[B
    .locals 13

    const/16 v12, 0x8

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    add-int/lit8 v10, v5, -0x1

    :goto_0
    if-ltz v10, :cond_5

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    invoke-virtual {p1, v9, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    const v11, 0xffffff

    and-int v7, v11, v0

    iget-object v11, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->palette:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {v11, v7}, Lorg/apache/commons/imaging/palette/SimplePalette;->getPaletteIndex(I)I

    move-result v6

    iget v11, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    if-ne v11, v12, :cond_1

    and-int/lit16 v11, v6, 0xff

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iget v11, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    shl-int v11, v2, v11

    or-int v2, v11, v6

    iget v11, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->bitsPerSample:I

    add-int/2addr v3, v11

    if-lt v3, v12, :cond_0

    and-int/lit16 v11, v2, 0xff

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    if-lez v3, :cond_3

    rsub-int/lit8 v11, v3, 0x8

    shl-int/2addr v2, v11

    and-int/lit16 v11, v2, 0xff

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3
    :goto_3
    rem-int/lit8 v11, v4, 0x4

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    return-object v11
.end method

.method public getPaletteSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->palette:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v0

    return v0
.end method

.method public writePalette(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->palette:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {v5}, Lorg/apache/commons/imaging/palette/SimplePalette;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lorg/apache/commons/imaging/formats/bmp/BmpWriterPalette;->palette:Lorg/apache/commons/imaging/palette/SimplePalette;

    invoke-virtual {v5, v2}, Lorg/apache/commons/imaging/palette/SimplePalette;->getEntry(I)I

    move-result v4

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v3, v5, 0xff

    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v1, v5, 0xff

    shr-int/lit8 v5, v4, 0x0

    and-int/lit16 v0, v5, 0xff

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p1, v1}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    invoke-virtual {p1, v3}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
