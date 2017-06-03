.class public final Lcom/android/dex/EncodedValueCodec;
.super Ljava/lang/Object;
.source "EncodedValueCodec.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readSignedInt(Lcom/android/dex/util/ByteInput;I)I
    .locals 4

    const/4 v1, 0x0

    move v0, p1

    :goto_0
    if-ltz v0, :cond_0

    ushr-int/lit8 v2, v1, 0x8

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int v1, v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, p1, 0x3

    mul-int/lit8 v2, v2, 0x8

    shr-int/2addr v1, v2

    return v1
.end method

.method public static readSignedLong(Lcom/android/dex/util/ByteInput;I)J
    .locals 10

    const-wide/16 v2, 0x0

    move v0, p1

    :goto_0
    if-ltz v0, :cond_0

    const/16 v1, 0x8

    ushr-long v4, v2, v1

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v1

    int-to-long v6, v1

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v1, 0x38

    shl-long/2addr v6, v1

    or-long v2, v4, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, p1, 0x7

    mul-int/lit8 v1, v1, 0x8

    shr-long/2addr v2, v1

    return-wide v2
.end method

.method public static readUnsignedInt(Lcom/android/dex/util/ByteInput;IZ)I
    .locals 4

    const/4 v1, 0x0

    if-nez p2, :cond_2

    move v0, p1

    :goto_0
    if-ltz v0, :cond_0

    ushr-int/lit8 v2, v1, 0x8

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int v1, v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, p1, 0x3

    mul-int/lit8 v2, v2, 0x8

    ushr-int/2addr v1, v2

    :cond_1
    return v1

    :cond_2
    move v0, p1

    :goto_1
    if-ltz v0, :cond_1

    ushr-int/lit8 v2, v1, 0x8

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int v1, v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static readUnsignedLong(Lcom/android/dex/util/ByteInput;IZ)J
    .locals 12

    const-wide/16 v10, 0xff

    const/16 v9, 0x38

    const/16 v8, 0x8

    const-wide/16 v2, 0x0

    if-nez p2, :cond_2

    move v0, p1

    :goto_0
    if-ltz v0, :cond_0

    ushr-long v4, v2, v8

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v1

    int-to-long v6, v1

    and-long/2addr v6, v10

    shl-long/2addr v6, v9

    or-long v2, v4, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, p1, 0x7

    mul-int/lit8 v1, v1, 0x8

    ushr-long/2addr v2, v1

    :cond_1
    return-wide v2

    :cond_2
    move v0, p1

    :goto_1
    if-ltz v0, :cond_1

    ushr-long v4, v2, v8

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v1

    int-to-long v6, v1

    and-long/2addr v6, v10

    shl-long/2addr v6, v9

    or-long v2, v4, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static writeRightZeroExtendedValue(Lcom/android/dex/util/ByteOutput;IJ)V
    .locals 4

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    rsub-int/lit8 v0, v2, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v0, 0x7

    shr-int/lit8 v1, v2, 0x3

    mul-int/lit8 v2, v1, 0x8

    rsub-int/lit8 v2, v2, 0x40

    shr-long/2addr p2, v2

    add-int/lit8 v2, v1, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v2, p1

    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    :goto_0
    if-lez v1, :cond_1

    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    const/16 v2, 0x8

    shr-long/2addr p2, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeSignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V
    .locals 4

    const/16 v2, 0x3f

    shr-long v2, p2, v2

    xor-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    rsub-int/lit8 v0, v2, 0x41

    add-int/lit8 v2, v0, 0x7

    shr-int/lit8 v1, v2, 0x3

    add-int/lit8 v2, v1, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v2, p1

    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    :goto_0
    if-lez v1, :cond_0

    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    const/16 v2, 0x8

    shr-long/2addr p2, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeUnsignedIntegralValue(Lcom/android/dex/util/ByteOutput;IJ)V
    .locals 4

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    rsub-int/lit8 v0, v2, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v0, 0x7

    shr-int/lit8 v1, v2, 0x3

    add-int/lit8 v2, v1, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v2, p1

    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    :goto_0
    if-lez v1, :cond_1

    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-interface {p0, v2}, Lcom/android/dex/util/ByteOutput;->writeByte(I)V

    const/16 v2, 0x8

    shr-long/2addr p2, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
