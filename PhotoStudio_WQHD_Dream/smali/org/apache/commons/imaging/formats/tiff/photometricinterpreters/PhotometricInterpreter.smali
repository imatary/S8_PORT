.class public abstract Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;
.super Ljava/lang/Object;
.source "PhotometricInterpreter.java"


# instance fields
.field private final bitsPerSample:[I

.field protected final height:I

.field protected final predictor:I

.field protected final samplesPerPixel:I

.field protected final width:I


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->samplesPerPixel:I

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->bitsPerSample:[I

    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->predictor:I

    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->width:I

    iput p5, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->height:I

    return-void
.end method


# virtual methods
.method protected getBitsPerSample(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/photometricinterpreters/PhotometricInterpreter;->bitsPerSample:[I

    aget v0, v0, p1

    return v0
.end method

.method public abstract interpretPixel(Lorg/apache/commons/imaging/common/ImageBuilder;[III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
