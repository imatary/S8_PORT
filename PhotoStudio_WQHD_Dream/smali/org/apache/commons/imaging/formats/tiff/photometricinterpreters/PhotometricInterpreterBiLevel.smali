.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterBiLevel.java"


# instance fields
.field private final invert:Z


# direct methods
.method public constructor <init>(I[IIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    iput-boolean p6, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;->invert:Z

    return-void
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    aget v5, p2, v6

    iget-boolean v6, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterBiLevel;->invert:Z

    if-eqz v6, :cond_0

    rsub-int v5, v5, 0xff

    :cond_0
    move v3, v5

    move v2, v5

    move v1, v5

    const/16 v0, 0xff

    const/high16 v6, -0x1000000

    shl-int/lit8 v7, v3, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v7, v2, 0x8

    or-int/2addr v6, v7

    shl-int/lit8 v7, v1, 0x0

    or-int v4, v6, v7

    invoke-virtual {p1, p3, p4, v4}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
