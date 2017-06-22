.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterCmyk;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterCmyk.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    aget v1, p2, v5

    const/4 v5, 0x1

    aget v3, p2, v5

    const/4 v5, 0x2

    aget v4, p2, v5

    const/4 v5, 0x3

    aget v2, p2, v5

    invoke-static {v1, v3, v4, v2}, Lorg/apache/commons/imaging/color/ColorConversions;->convertCMYKtoRGB(IIII)I

    move-result v0

    invoke-virtual {p1, p3, p4, v0}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
