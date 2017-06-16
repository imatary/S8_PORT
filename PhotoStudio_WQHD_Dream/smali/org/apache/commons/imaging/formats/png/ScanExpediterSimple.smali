.class Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;
.super Lorg/apache/commons/imaging/formats/png/ScanExpediter;
.source "ScanExpediterSimple.java"


# direct methods
.method public constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V

    return-void
.end method


# virtual methods
.method public drive()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget v8, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->bitsPerPixel:I

    iget v9, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->width:I

    mul-int v1, v8, v9

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->getBitsToBytesRoundingUp(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    iget v8, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->height:I

    if-ge v7, v8, :cond_1

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->is:Ljava/io/InputStream;

    iget v9, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->bytesPerPixel:I

    invoke-virtual {p0, v8, v2, v3, v9}, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->getNextScanline(Ljava/io/InputStream;I[BI)[B

    move-result-object v5

    move-object v3, v5

    new-instance v0, Lorg/apache/commons/imaging/formats/png/BitParser;

    iget v8, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->bitsPerPixel:I

    iget v9, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->bitDepth:I

    invoke-direct {v0, v5, v8, v9}, Lorg/apache/commons/imaging/formats/png/BitParser;-><init>([BII)V

    const/4 v6, 0x0

    :goto_1
    iget v8, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->width:I

    if-ge v6, v8, :cond_0

    invoke-virtual {p0, v0, v6}, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->getRGB(Lorg/apache/commons/imaging/formats/png/BitParser;I)I

    move-result v4

    iget-object v8, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterSimple;->bi:Ljava/awt/image/BufferedImage;

    invoke-virtual {v8, v6, v7, v4}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
