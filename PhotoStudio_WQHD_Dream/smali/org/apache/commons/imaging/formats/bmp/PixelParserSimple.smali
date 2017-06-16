.class abstract Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;
.super Lorg/apache/commons/imaging/formats/bmp/PixelParser;
.source "PixelParserSimple.java"


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/bmp/PixelParser;-><init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V

    return-void
.end method


# virtual methods
.method public abstract getNextRGB()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newline()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public processImage(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->height:I

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iget v3, v3, Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;->width:I

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;->getNextRGB()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/bmp/PixelParserSimple;->newline()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
