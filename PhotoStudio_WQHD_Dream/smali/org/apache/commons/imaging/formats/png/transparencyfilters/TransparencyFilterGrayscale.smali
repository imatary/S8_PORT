.class public Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;
.super Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;
.source "TransparencyFilterGrayscale.java"


# instance fields
.field private final transparentColor:I


# direct methods
.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilter;-><init>([B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "transparentColor"

    const-string v2, "tRNS: Missing transparentColor"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;->transparentColor:I

    return-void
.end method


# virtual methods
.method public filter(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/imaging/formats/png/transparencyfilters/TransparencyFilterGrayscale;->transparentColor:I

    if-eq p2, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
