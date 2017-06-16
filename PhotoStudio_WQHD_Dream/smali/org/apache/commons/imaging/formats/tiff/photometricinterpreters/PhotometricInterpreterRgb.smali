.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterRgb;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterRgb.java"


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    return-void
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    aget v3, p2, v5

    const/4 v5, 0x1

    aget v2, p2, v5

    const/4 v5, 0x2

    aget v1, p2, v5

    const/16 v0, 0xff

    const/high16 v5, -0x1000000

    shl-int/lit8 v6, v3, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v1, 0x0

    or-int v4, v5, v6

    invoke-virtual {p1, p3, p4, v4}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
