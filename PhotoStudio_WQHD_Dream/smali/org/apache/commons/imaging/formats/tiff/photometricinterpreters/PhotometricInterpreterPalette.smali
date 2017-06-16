.class public Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;
.super Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.source "PhotometricInterpreterPalette.java"


# instance fields
.field private final indexColorMap:[I


# direct methods
.method public constructor <init>(I[IIII[I)V
    .locals 9

    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;-><init>(I[IIII)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->getBitsPerSample(I)I

    move-result v0

    const/4 v6, 0x1

    shl-int v2, v6, v0

    new-array v6, v2, [I

    iput-object v6, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->indexColorMap:[I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget v6, p6, v4

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v5, v6, 0xff

    add-int v6, v4, v2

    aget v6, p6, v6

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v3, v6, 0xff

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v4

    aget v6, p6, v6

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v1, v6, 0xff

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->indexColorMap:[I

    const/high16 v7, -0x1000000

    shl-int/lit8 v8, v5, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v3, 0x8

    or-int/2addr v7, v8

    or-int/2addr v7, v1

    aput v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreterPalette;->indexColorMap:[I

    const/4 v1, 0x0

    aget v1, p2, v1

    aget v0, v0, v1

    invoke-virtual {p1, p3, p4, v0}, Lorg/apache/commons/imaging/common/ImageBuilder;->setRGB(III)V

    return-void
.end method
