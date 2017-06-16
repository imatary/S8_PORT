.class public Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;
.super Ljava/io/InputStream;
.source "MyBitInputStream.java"


# instance fields
.field private bitCache:I

.field private bitsInCache:I

.field private final byteOrder:Ljava/nio/ByteOrder;

.field private bytesRead:J

.field private final is:Ljava/io/InputStream;

.field private tiffLZWMode:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    iput-object p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    return-void
.end method

.method public getBytesRead()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bytesRead:J

    return-wide v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->readBits(I)I

    move-result v0

    return v0
.end method

.method public readBits(I)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x1

    :goto_0
    iget v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    if-ge v6, p1, :cond_3

    iget-object v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_1

    iget-boolean v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->tiffLZWMode:Z

    if-eqz v6, :cond_0

    const/16 v3, 0x101

    :goto_1
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v1, 0xff

    iget-object v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v6, v7, :cond_2

    iget v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v0

    iput v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    :goto_2
    iget-wide v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bytesRead:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bytesRead:J

    iget v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    add-int/lit8 v6, v6, 0x8

    iput v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    goto :goto_0

    :cond_2
    iget v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    shl-int v6, v0, v6

    iget v7, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    or-int/2addr v6, v7

    iput v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    goto :goto_2

    :cond_3
    shl-int v6, v10, p1

    add-int/lit8 v5, v6, -0x1

    iget-object v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v6, v7, :cond_4

    iget v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    iget v7, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    sub-int/2addr v7, p1

    shr-int/2addr v6, v7

    and-int v4, v5, v6

    :goto_3
    move v3, v4

    iget v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    sub-int/2addr v6, p1

    iput v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    iget v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitsInCache:I

    shl-int v6, v10, v6

    add-int/lit8 v2, v6, -0x1

    iget v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    and-int/2addr v6, v2

    iput v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    goto :goto_1

    :cond_4
    iget v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    and-int v4, v5, v6

    iget v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    shr-int/2addr v6, p1

    iput v6, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->bitCache:I

    goto :goto_3
.end method

.method public setTiffLZWMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->tiffLZWMode:Z

    return-void
.end method
