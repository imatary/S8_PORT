.class Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;
.super Ljava/io/InputStream;
.source "BitInputStreamFlexible.java"


# instance fields
.field private bytesRead:J

.field private cache:I

.field private cacheBitsRemaining:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    return-void
.end method

.method public getBytesRead()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    return-wide v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BitInputStream: incomplete bit read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final readBits(I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x1

    const/4 v4, 0x1

    const/16 v1, 0x20

    if-gt p1, v1, :cond_6

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    if-lez v1, :cond_0

    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    shl-int v1, v4, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    and-int v0, v1, v2

    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    sub-int/2addr p1, v1

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    :cond_0
    :goto_0
    const/16 v1, 0x8

    if-lt p1, v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    if-gez v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string v2, "couldn\'t read bits"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    sub-int/2addr v1, p1

    iput v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    shl-int v1, v4, p1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    iget v3, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    shr-int/2addr v2, v3

    and-int v0, v1, v2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    shl-int/lit8 v1, v0, 0x8

    iget v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    add-int/lit8 p1, p1, -0x8

    goto :goto_0

    :cond_3
    if-lez p1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    if-gez v1, :cond_4

    new-instance v1, Ljava/io/IOException;

    const-string v2, "couldn\'t read bits"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-wide v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->bytesRead:J

    rsub-int/lit8 v1, p1, 0x8

    iput v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    shl-int v1, v0, p1

    shl-int v2, v4, p1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cache:I

    iget v4, p0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->cacheBitsRemaining:I

    shr-int/2addr v3, v4

    and-int/2addr v2, v3

    or-int v0, v1, v2

    const/4 p1, 0x0

    :cond_5
    return v0

    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "BitInputStream: unknown error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
