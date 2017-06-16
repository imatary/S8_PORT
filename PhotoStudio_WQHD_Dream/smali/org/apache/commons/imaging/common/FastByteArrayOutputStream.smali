.class Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "FastByteArrayOutputStream.java"


# instance fields
.field private final bytes:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    return-void
.end method


# virtual methods
.method public getBytesWritten()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    iget-object v2, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    iget v2, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    iget-object v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write exceeded expected length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->bytes:[B

    iget v1, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->count:I

    return-void
.end method
