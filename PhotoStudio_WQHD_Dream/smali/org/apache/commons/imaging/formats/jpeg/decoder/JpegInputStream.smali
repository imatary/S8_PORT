.class Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;
.super Ljava/lang/Object;
.source "JpegInputStream.java"


# instance fields
.field private b:I

.field private cnt:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public nextBit()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    iget v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->cnt:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    iput v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    iget v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    if-gez v2, :cond_0

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Premature End of File"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/16 v2, 0x8

    iput v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->cnt:I

    iget v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Premature End of File"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-eqz v0, :cond_3

    const/16 v2, 0xdc

    if-ne v0, v2, :cond_2

    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "DNL not yet supported"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Lorg/apache/commons/imaging/ImageReadException;

    const-string v3, "Invalid marker found in entropy data"

    invoke-direct {v2, v3}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    shr-int/lit8 v2, v2, 0x7

    and-int/lit8 v1, v2, 0x1

    iget v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->cnt:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->cnt:I

    iget v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/imaging/formats/jpeg/decoder/JpegInputStream;->b:I

    return v1
.end method
