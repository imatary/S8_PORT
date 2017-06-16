.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCieLab;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterCieLab.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    aget v2, p2, v4

    const/4 v4, 0x1

    aget v4, p2, v4

    int-to-byte v0, v4

    const/4 v4, 0x2

    aget v4, p2, v4

    int-to-byte v1, v4

    invoke-static {v2, v0, v1}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCIELabtoARGBTest(III)I

    move-result v3

    invoke-virtual {p1, p3, p4, v3}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
