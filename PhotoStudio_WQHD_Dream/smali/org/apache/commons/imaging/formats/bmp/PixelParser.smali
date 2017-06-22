.class abstract Lorg/apache/commons/imaging/formats/bmp/PixelParser;
.super Ljava/lang/Object;
.source "PixelParser.java"


# instance fields
.field final bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

.field final colorTable:[B

.field final imageData:[B

.field final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->bhi:Lorg/apache/commons/imaging/formats/bmp/BmpHeaderInfo;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->colorTable:[B

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->imageData:[B

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method getColorTableRGB(I)I
    .locals 6

    mul-int/lit8 p1, p1, 0x4

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->colorTable:[B

    add-int/lit8 v5, p1, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v1, v4, 0xff

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->colorTable:[B

    add-int/lit8 v5, p1, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    iget-object v4, p0, Lorg/apache/commons/imaging/formats/bmp/PixelParser;->colorTable:[B

    add-int/lit8 v5, p1, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    const/16 v0, 0xff

    const/high16 v4, -0x1000000

    shl-int/lit8 v5, v3, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x0

    or-int/2addr v4, v5

    return v4
.end method

.method public abstract processImage(Lorg/apache/commons/imaging/common/ImageBuilder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
