.class Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;
.super Ljava/io/OutputStream;
.source "BitArrayOutputStream.java"


# instance fields
.field private buffer:[B

.field private bytesWritten:I

.field private cache:I

.field private cacheMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    return-void
.end method

.method private writeByte(I)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    iget-object v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    iget v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    iget v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    return-void
.end method

.method public flush()V
    .locals 2

    const/16 v1, 0x80

    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cache:I

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeByte(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cache:I

    iput v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    :cond_0
    return-void
.end method

.method public getBitsAvailableInCurrentByte()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    iget-object v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->buffer:[B

    iget v2, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->bytesWritten:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeByte(I)V

    return-void
.end method

.method public writeBit(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cache:I

    iget v1, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cache:I

    :cond_0
    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    ushr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    iget v0, p0, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->cacheMask:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    :cond_1
    return-void
.end method
