.class public final Lcom/android/dex/Leb128;
.super Ljava/lang/Object;
.source "Leb128.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readSignedLeb128(Lcom/android/dex/util/ByteInput;)I
    .locals 7

    const/16 v6, 0x80

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, -0x1

    :cond_0
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v4

    and-int/lit16 v1, v4, 0xff

    and-int/lit8 v4, v1, 0x7f

    mul-int/lit8 v5, v0, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v2, v4

    shl-int/lit8 v3, v3, 0x7

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v4, v1, 0x80

    if-ne v4, v6, :cond_1

    const/4 v4, 0x5

    if-lt v0, v4, :cond_0

    :cond_1
    and-int/lit16 v4, v1, 0x80

    if-ne v4, v6, :cond_2

    new-instance v4, Lcom/android/dex/DexException;

    const-string/jumbo v5, "invalid LEB128 sequence"

    invoke-direct {v4, v5}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    shr-int/lit8 v4, v3, 0x1

    and-int/2addr v4, v2

    if-eqz v4, :cond_3

    or-int/2addr v2, v3

    :cond_3
    return v2
.end method

.method public static readUnsignedLeb128(Lcom/android/dex/util/ByteInput;)I
    .locals 6

    const/16 v5, 0x80

    const/4 v2, 0x0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v1, v3, 0xff

    and-int/lit8 v3, v1, 0x7f

    mul-int/lit8 v4, v0, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v3, v1, 0x80

    if-ne v3, v5, :cond_1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    :cond_1
    and-int/lit16 v3, v1, 0x80

    if-ne v3, v5, :cond_2

    new-instance v3, Lcom/android/dex/DexException;

    const-string/jumbo v4, "invalid LEB128 sequence"

    invoke-direct {v3, v4}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    return v2
.end method

.method public static signedLeb128Size(I)I
    .locals 6

    shr-int/lit8 v3, p0, 0x7

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/high16 v4, -0x80000000

    and-int/2addr v4, p0

    if-nez v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_3

    if-ne v3, v1, :cond_1

    and-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, p0, 0x6

    and-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    move p0, v3

    shr-int/lit8 v3, v3, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    return v0
.end method

.method public static unsignedLeb128Size(I)I
    .locals 3

    shr-int/lit8 v1, p0, 0x7

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_0

    shr-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    return v2
.end method

.method public static writeSignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    shr-int/lit8 v2, p1, 0x7

    const/4 v1, 0x1

    const/high16 v3, -0x80000000

    and-int/2addr v3, p1

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_4

    if-ne v2, v0, :cond_1

    and-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, p1, 0x6

    and-int/lit8 v6, v6, 0x1

    if-eq v3, v6, :cond_2

    move v1, v5

    :goto_1
    and-int/lit8 v6, p1, 0x7f

    if-eqz v1, :cond_3

    const/16 v3, 0x80

    :goto_2
    or-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-interface {p0, v3}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    move p1, v2

    shr-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static writeUnsignedLeb128(Lcom/android/dex/util/ByteOutput;I)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x7

    :goto_0
    if-eqz v0, :cond_0

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    move p1, v0

    ushr-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_0
    and-int/lit8 v1, p1, 0x7f

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    return-void
.end method
