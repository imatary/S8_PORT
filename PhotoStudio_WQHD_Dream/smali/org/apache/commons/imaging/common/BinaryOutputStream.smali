.class public Lorg/apache/commons/imaging/common/BinaryOutputStream;
.super Ljava/io/OutputStream;
.source "BinaryOutputStream.java"


# instance fields
.field private byteOrder:Ljava/nio/ByteOrder;

.field private count:I

.field private debug:Z

.field private final os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    iput-object p1, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->os:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    iput-object p2, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    iput-object p1, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->os:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getByteCount()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->count:I

    return v0
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public final getDebug()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->debug:Z

    return v0
.end method

.method protected setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public final setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->debug:Z

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->count:I

    return-void
.end method

.method public final write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->os:Ljava/io/OutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->count:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->count:I

    return-void
.end method

.method public final write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->count:I

    return-void
.end method

.method public final write2Bytes(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0
.end method

.method public final write3Bytes(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0
.end method

.method public final write4Bytes(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryOutputStream;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    goto :goto_0
.end method
