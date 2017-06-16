.class public Lorg/apache/commons/imaging/common/BinaryConstant;
.super Ljava/lang/Object;
.source "BinaryConstant.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final value:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/BinaryConstant;->clone()Lorg/apache/commons/imaging/common/BinaryConstant;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/imaging/common/BinaryConstant;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Lorg/apache/commons/imaging/common/BinaryConstant;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/imaging/common/BinaryConstant;

    iget-object v1, v0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/common/BinaryConstant;->equals([B)Z

    move-result v1

    goto :goto_0
.end method

.method public equals([B)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public equals([BII)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    array-length v2, v2

    if-eq v2, p3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    iget-object v2, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public get(I)B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/imaging/common/BinaryConstant;->value:[B

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
