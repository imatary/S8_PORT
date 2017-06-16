.class public abstract Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;
.super Ljava/lang/Object;
.source "DataParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBasicChannelsCount()I
.end method

.method protected abstract getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I
.end method

.method public final parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;)V
    .locals 8

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v7

    invoke-virtual {v7}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v0

    iget-object v1, p3, Lorg/apache/commons/imaging/formats/psd/ImageContents;->header:Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;

    iget v4, v1, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->columns:I

    iget v2, v1, Lorg/apache/commons/imaging/formats/psd/PsdHeaderInfo;->rows:I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-virtual {p0, p1, v5, v6, p3}, Lorg/apache/commons/imaging/formats/psd/dataparsers/DataParser;->getRGB([[[IIILorg/apache/commons/imaging/formats/psd/ImageContents;)I

    move-result v3

    mul-int v7, v6, v4

    add-int/2addr v7, v5

    invoke-virtual {v0, v7, v3}, Ljava/awt/image/DataBuffer;->setElem(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
