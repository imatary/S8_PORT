.class public Lorg/apache/commons/imaging/common/ImageBuilder;
.super Ljava/lang/Object;
.source "ImageBuilder.java"


# instance fields
.field private final data:[I

.field private final hasAlpha:Z

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    new-instance v0, Ljava/awt/image/RasterFormatException;

    const-string v1, "zero or negative width value"

    invoke-direct {v0, v1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/awt/image/RasterFormatException;

    const-string v1, "zero or negative height value"

    invoke-direct {v0, v1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->data:[I

    iput p1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    iput p2, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->height:I

    iput-boolean p3, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->hasAlpha:Z

    return-void
.end method

.method private makeBufferedImage([IIIZ)Ljava/awt/image/BufferedImage;
    .locals 9

    const/4 v6, 0x0

    const/high16 v2, 0xff0000

    const v3, 0xff00

    const/16 v4, 0xff

    new-instance v7, Ljava/awt/image/DataBufferInt;

    mul-int v1, p2, p3

    invoke-direct {v7, p1, v1}, Ljava/awt/image/DataBufferInt;-><init>([II)V

    if-eqz p4, :cond_0

    new-instance v0, Ljava/awt/image/DirectColorModel;

    const/16 v1, 0x20

    const/high16 v5, -0x1000000

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/DirectColorModel;-><init>(IIIII)V

    const/4 v1, 0x4

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    move-object v1, v7

    move v2, p2

    move v3, p3

    move v4, p2

    invoke-static/range {v1 .. v6}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v8

    :goto_0
    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-direct {v1, v0, v8, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/awt/image/DirectColorModel;

    const/16 v1, 0x18

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    const/4 v1, 0x3

    new-array v5, v1, [I

    fill-array-data v5, :array_1

    move-object v1, v7

    move v2, p2

    move v3, p3

    move v4, p2

    invoke-static/range {v1 .. v6}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v8

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0xff0000
        0xff00
        0xff
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        0xff0000
        0xff00
        0xff
    .end array-data
.end method


# virtual methods
.method public getBufferedImage()Ljava/awt/image/BufferedImage;
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->data:[I

    iget v1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    iget v2, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->height:I

    iget-boolean v3, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->hasAlpha:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->makeBufferedImage([IIIZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->height:I

    return v0
.end method

.method public getRGB(II)I
    .locals 3

    iget v1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    mul-int v0, p2, v1

    iget-object v1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->data:[I

    add-int v2, v0, p1

    aget v1, v1, v2

    return v1
.end method

.method public getSubimage(IIII)Ljava/awt/image/BufferedImage;
    .locals 6

    if-gtz p3, :cond_0

    new-instance v4, Ljava/awt/image/RasterFormatException;

    const-string v5, "negative or zero subimage width"

    invoke-direct {v4, v5}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-gtz p4, :cond_1

    new-instance v4, Ljava/awt/image/RasterFormatException;

    const-string v5, "negative or zero subimage height"

    invoke-direct {v4, v5}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-ltz p1, :cond_2

    iget v4, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    if-lt p1, v4, :cond_3

    :cond_2
    new-instance v4, Ljava/awt/image/RasterFormatException;

    const-string v5, "subimage x is outside raster"

    invoke-direct {v4, v5}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    add-int v4, p1, p3

    iget v5, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    if-le v4, v5, :cond_4

    new-instance v4, Ljava/awt/image/RasterFormatException;

    const-string v5, "subimage (x+width) is outside raster"

    invoke-direct {v4, v5}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    if-ltz p2, :cond_5

    iget v4, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->height:I

    if-lt p2, v4, :cond_6

    :cond_5
    new-instance v4, Ljava/awt/image/RasterFormatException;

    const-string v5, "subimage y is outside raster"

    invoke-direct {v4, v5}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    add-int v4, p2, p4

    iget v5, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->height:I

    if-le v4, v5, :cond_7

    new-instance v4, Ljava/awt/image/RasterFormatException;

    const-string v5, "subimage (y+height) is outside raster"

    invoke-direct {v4, v5}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    mul-int v4, p3, p4

    new-array v0, v4, [I

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p4, :cond_8

    add-int v4, v2, p2

    iget v5, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    mul-int/2addr v4, v5

    add-int v1, v4, p1

    iget-object v4, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->data:[I

    invoke-static {v4, v1, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    iget-boolean v4, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->hasAlpha:Z

    invoke-direct {p0, v0, p3, p4, v4}, Lorg/apache/commons/imaging/common/ImageBuilder;->makeBufferedImage([IIIZ)Ljava/awt/image/BufferedImage;

    move-result-object v4

    return-object v4
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    return v0
.end method

.method public setRGB(III)V
    .locals 3

    iget v1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->width:I

    mul-int v0, p2, v1

    iget-object v1, p0, Lorg/apache/commons/imaging/common/ImageBuilder;->data:[I

    add-int v2, v0, p1

    aput p3, v1, v2

    return-void
.end method
