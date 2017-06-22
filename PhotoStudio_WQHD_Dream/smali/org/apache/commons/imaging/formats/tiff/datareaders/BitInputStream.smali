.class Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;
.super Ljava/io/InputStream;
.source "BitInputStream.java"


# instance fields
.field private final byteOrder:Ljava/nio/ByteOrder;

.field private bytesRead:J

.field private cache:I

.field private cacheBitsRemaining:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    return-void
.end method

.method public getBytesRead()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    return-wide v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BitInputStream: incomplete bit read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final readBits(I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x1

    const/16 v7, 0x20

    const/16 v6, 0x18

    const/16 v5, 0x10

    const/16 v4, 0x8

    if-ge p1, v4, :cond_2

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cache:I

    iput v4, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    iget-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    :cond_0
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    if-le p1, v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "BitInputStream: can\'t read bit fields across bytes"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    sub-int/2addr v1, p1

    iput v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cache:I

    iget v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    shr-int v0, v1, v2

    packed-switch p1, :pswitch_data_0

    :cond_2
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->cacheBitsRemaining:I

    if-lez v1, :cond_3

    new-instance v1, Ljava/io/IOException;

    const-string v2, "BitInputStream: incomplete bit read"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    and-int/lit8 v1, v0, 0x1

    :goto_0
    return v1

    :pswitch_1
    and-int/lit8 v1, v0, 0x3

    goto :goto_0

    :pswitch_2
    and-int/lit8 v1, v0, 0x7

    goto :goto_0

    :pswitch_3
    and-int/lit8 v1, v0, 0xf

    goto :goto_0

    :pswitch_4
    and-int/lit8 v1, v0, 0x1f

    goto :goto_0

    :pswitch_5
    and-int/lit8 v1, v0, 0x3f

    goto :goto_0

    :pswitch_6
    and-int/lit8 v1, v0, 0x7f

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_4

    iget-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_7

    if-ne p1, v5, :cond_5

    iget-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    goto :goto_0

    :cond_5
    if-ne p1, v6, :cond_6

    iget-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    goto :goto_0

    :cond_6
    if-ne p1, v7, :cond_a

    iget-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    goto/16 :goto_0

    :cond_7
    if-ne p1, v5, :cond_8

    iget-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    goto/16 :goto_0

    :cond_8
    if-ne p1, v6, :cond_9

    iget-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    goto/16 :goto_0

    :cond_9
    if-ne p1, v7, :cond_a

    iget-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->bytesRead:J

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/datareaders/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    goto/16 :goto_0

    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "BitInputStream: unknown error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
