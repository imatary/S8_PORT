.class public Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;
.super Ljava/io/InputStream;
.source "BitsToByteInputStream.java"


# instance fields
.field private final desiredDepth:I

.field private final is:Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->is:Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;

    iput p2, p0, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->desiredDepth:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->readBits(I)I

    move-result v0

    return v0
.end method

.method public readBits(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->is:Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;

    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/common/mylzw/MyBitInputStream;->readBits(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->desiredDepth:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->desiredDepth:I

    sub-int/2addr v1, p1

    shl-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->desiredDepth:I

    if-le p1, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->desiredDepth:I

    sub-int v1, p1, v1

    shr-int/2addr v0, v1

    goto :goto_0
.end method

.method public readBitsArray(II)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/common/mylzw/BitsToByteInputStream;->readBits(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
