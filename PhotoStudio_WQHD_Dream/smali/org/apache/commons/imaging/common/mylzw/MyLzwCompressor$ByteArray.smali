.class final Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;
.super Ljava/lang/Object;
.source "MyLzwCompressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteArray"
.end annotation


# instance fields
.field private final bytes:[B

.field private final hash:I

.field private final length:I

.field private final start:I


# direct methods
.method public constructor <init>([BII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->bytes:[B

    iput p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->start:I

    iput p3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->length:I

    move v2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v3, v1, p2

    aget-byte v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    shl-int/lit8 v3, v2, 0x8

    add-int/2addr v3, v2

    xor-int/2addr v3, v0

    xor-int v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->hash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    instance-of v3, p1, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;

    iget v3, v1, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->hash:I

    iget v4, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->hash:I

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, v1, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->length:I

    iget v4, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->length:I

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->length:I

    if-ge v0, v3, :cond_2

    iget-object v3, v1, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->bytes:[B

    iget v4, v1, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->start:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->bytes:[B

    iget v5, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->start:I

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$ByteArray;->hash:I

    return v0
.end method
