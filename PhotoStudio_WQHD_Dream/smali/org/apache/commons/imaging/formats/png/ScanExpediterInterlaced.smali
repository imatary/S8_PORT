.class Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;
.super Lorg/apache/commons/imaging/formats/png/ScanExpediter;
.source "ScanExpediterInterlaced.java"


# static fields
.field private static final COL_INCREMENT:[I

.field private static final ROW_INCREMENT:[I

.field private static final STARTING_COL:[I

.field private static final STARTING_ROW:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x7

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->STARTING_ROW:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->STARTING_COL:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->ROW_INCREMENT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->COL_INCREMENT:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x0
        0x2
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x8
        0x4
        0x4
        0x2
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/apache/commons/imaging/formats/png/ScanExpediter;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/PngColorType;IILorg/apache/commons/imaging/formats/png/chunks/PngChunkPlte;Lorg/apache/commons/imaging/formats/png/GammaCorrection;Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;)V

    return-void
.end method

.method private visit(IILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/BitParser;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p4, p5}, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->getRGB(Lorg/apache/commons/imaging/formats/png/BitParser;I)I

    move-result v0

    invoke-virtual {p3, p1, p2, v0}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    return-void
.end method


# virtual methods
.method public drive()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    :goto_0
    const/4 v0, 0x7

    if-gt v8, v0, :cond_2

    const/4 v10, 0x0

    sget-object v0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->STARTING_ROW:[I

    add-int/lit8 v3, v8, -0x1

    aget v2, v0, v3

    :goto_1
    iget v0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->height:I

    if-ge v2, v0, :cond_1

    sget-object v0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->STARTING_COL:[I

    add-int/lit8 v3, v8, -0x1

    aget v1, v0, v3

    const/4 v5, 0x0

    iget v0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->width:I

    if-ge v1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->width:I

    sget-object v3, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->STARTING_COL:[I

    add-int/lit8 v12, v8, -0x1

    aget v3, v3, v12

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    sget-object v3, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->COL_INCREMENT:[I

    add-int/lit8 v12, v8, -0x1

    aget v3, v3, v12

    div-int/2addr v0, v3

    add-int/lit8 v7, v0, 0x1

    iget v0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->bitsPerPixel:I

    mul-int v6, v0, v7

    invoke-virtual {p0, v6}, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->getBitsToBytesRoundingUp(I)I

    move-result v9

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->is:Ljava/io/InputStream;

    iget v3, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->bytesPerPixel:I

    invoke-virtual {p0, v0, v9, v10, v3}, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->getNextScanline(Ljava/io/InputStream;I[BI)[B

    move-result-object v11

    move-object v10, v11

    new-instance v4, Lorg/apache/commons/imaging/formats/png/BitParser;

    iget v0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->bitsPerPixel:I

    iget v3, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->bitDepth:I

    invoke-direct {v4, v11, v0, v3}, Lorg/apache/commons/imaging/formats/png/BitParser;-><init>([BII)V

    :goto_2
    iget v0, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->width:I

    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->bi:Ljava/awt/image/BufferedImage;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->visit(IILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/png/BitParser;I)V

    sget-object v0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->COL_INCREMENT:[I

    add-int/lit8 v3, v8, -0x1

    aget v0, v0, v3

    add-int/2addr v1, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    sget-object v0, Lorg/apache/commons/imaging/formats/png/ScanExpediterInterlaced;->ROW_INCREMENT:[I

    add-int/lit8 v3, v8, -0x1

    aget v0, v0, v3

    add-int/2addr v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
