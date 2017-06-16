.class Lorg/apache/commons/imaging/formats/png/BitParser;
.super Ljava/lang/Object;
.source "BitParser.java"


# instance fields
.field private final bitDepth:I

.field private final bitsPerPixel:I

.field private final bytes:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bytes:[B

    iput p2, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitsPerPixel:I

    iput p3, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    return-void
.end method


# virtual methods
.method public getSample(II)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/16 v7, 0x8

    iget v6, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitsPerPixel:I

    mul-int v3, v6, p1

    iget v6, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    mul-int/2addr v6, p2

    add-int v4, v3, v6

    shr-int/lit8 v5, v4, 0x3

    iget v6, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bytes:[B

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    :goto_0
    return v6

    :cond_0
    iget v6, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    if-ge v6, v7, :cond_1

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bytes:[B

    aget-byte v6, v6, v5

    and-int/lit16 v0, v6, 0xff

    and-int/lit8 v6, v3, 0x7

    iget v7, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    add-int/2addr v6, v7

    rsub-int/lit8 v2, v6, 0x8

    shr-int/2addr v0, v2

    const/4 v6, 0x1

    iget v7, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    shl-int/2addr v6, v7

    add-int/lit8 v1, v6, -0x1

    and-int v6, v0, v1

    goto :goto_0

    :cond_1
    iget v6, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bytes:[B

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    iget-object v7, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bytes:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    goto :goto_0

    :cond_2
    new-instance v6, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PNG: bad BitDepth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getSampleAsByte(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/formats/png/BitParser;->getSample(II)I

    move-result v1

    iget v2, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    rsub-int/lit8 v0, v2, 0x8

    if-lez v0, :cond_1

    mul-int/lit16 v2, v1, 0xff

    const/4 v3, 0x1

    iget v4, p0, Lorg/apache/commons/imaging/formats/png/BitParser;->bitDepth:I

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    div-int v1, v2, v3

    :cond_0
    :goto_0
    and-int/lit16 v2, v1, 0xff

    return v2

    :cond_1
    if-gez v0, :cond_0

    neg-int v2, v0

    shr-int/2addr v1, v2

    goto :goto_0
.end method
