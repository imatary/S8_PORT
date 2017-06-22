.class public Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;
.super Ljava/io/OutputStream;
.source "MyBitOutputStream.java"


# instance fields
.field private bitCache:I

.field private bitsInCache:I

.field private final byteOrder:Ljava/nio/ByteOrder;

.field private bytesWritten:I

.field private final os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    iput-object p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->os:Ljava/io/OutputStream;

    return-void
.end method

.method private actualWrite(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bytesWritten:I

    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    if-lez v2, :cond_0

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    shl-int/2addr v2, v3

    add-int/lit8 v1, v2, -0x1

    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    and-int v0, v1, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_1

    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    rsub-int/lit8 v2, v2, 0x8

    shl-int/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    :goto_0
    iput v4, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    iput v4, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public getBytesWritten()I
    .locals 2

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bytesWritten:I

    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->writeBits(II)V

    return-void
.end method

.method public writeBits(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    shl-int v3, v5, p2

    add-int/lit8 v2, v3, -0x1

    and-int/2addr p1, v2

    iget-object v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    shl-int/2addr v3, p2

    or-int/2addr v3, p1

    iput v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    :goto_0
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    add-int/2addr v3, p2

    iput v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    :goto_1
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_1

    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    iget v4, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    add-int/lit8 v4, v4, -0x8

    shr-int/2addr v3, v4

    and-int/lit16 v0, v3, 0xff

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->actualWrite(I)V

    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    :goto_2
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    shl-int v3, v5, v3

    add-int/lit8 v1, v3, -0x1

    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    and-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    goto :goto_1

    :cond_0
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    iget v4, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    shl-int v4, p1, v4

    or-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    and-int/lit16 v0, v3, 0xff

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->actualWrite(I)V

    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    shr-int/lit8 v3, v3, 0x8

    iput v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitCache:I

    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    add-int/lit8 v3, v3, -0x8

    iput v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->bitsInCache:I

    goto :goto_2

    :cond_2
    return-void
.end method
