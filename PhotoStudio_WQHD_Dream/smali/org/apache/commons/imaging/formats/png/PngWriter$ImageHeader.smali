.class Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;
.super Ljava/lang/Object;
.source "PngWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/png/PngWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageHeader"
.end annotation


# instance fields
.field public final bitDepth:B

.field public final compressionMethod:B

.field public final filterMethod:B

.field public final height:I

.field public final interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

.field public final pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

.field public final width:I


# direct methods
.method public constructor <init>(IIBLorg/apache/commons/imaging/formats/png/PngColorType;BBLorg/apache/commons/imaging/formats/png/InterlaceMethod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->width:I

    iput p2, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->height:I

    iput-byte p3, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->bitDepth:B

    iput-object p4, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->pngColorType:Lorg/apache/commons/imaging/formats/png/PngColorType;

    iput-byte p5, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->compressionMethod:B

    iput-byte p6, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->filterMethod:B

    iput-object p7, p0, Lorg/apache/commons/imaging/formats/png/PngWriter$ImageHeader;->interlaceMethod:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    return-void
.end method
