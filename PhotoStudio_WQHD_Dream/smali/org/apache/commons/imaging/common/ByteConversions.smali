.class public final Lorg/apache/commons/imaging/common/ByteConversions;
.super Ljava/lang/Object;
.source "ByteConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toBytes(DLjava/nio/ByteOrder;[BI)V
    .locals 12

    const/16 v10, 0x18

    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v3, 0x0

    const-wide/16 v6, 0xff

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v2, :cond_0

    add-int/lit8 v2, p4, 0x0

    shr-long v4, v0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x1

    shr-long v4, v0, v8

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x2

    shr-long v4, v0, v9

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x3

    shr-long v4, v0, v10

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x4

    const/16 v3, 0x20

    shr-long v4, v0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x5

    const/16 v3, 0x28

    shr-long v4, v0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x6

    const/16 v3, 0x30

    shr-long v4, v0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x7

    const/16 v3, 0x38

    shr-long v4, v0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v2, p4, 0x7

    shr-long v4, v0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x6

    shr-long v4, v0, v8

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x5

    shr-long v4, v0, v9

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x4

    shr-long v4, v0, v10

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x3

    const/16 v3, 0x20

    shr-long v4, v0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x2

    const/16 v3, 0x28

    shr-long v4, v0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x1

    const/16 v3, 0x30

    shr-long v4, v0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x0

    const/16 v3, 0x38

    shr-long v4, v0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    goto :goto_0
.end method

.method private static toBytes(FLjava/nio/ByteOrder;[BI)V
    .locals 3

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v1, :cond_0

    add-int/lit8 v1, p3, 0x0

    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, p3, 0x2

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, p3, 0x3

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v1, p3, 0x3

    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, p3, 0x2

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, p3, 0x0

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    goto :goto_0
.end method

.method private static toBytes(ILjava/nio/ByteOrder;[BI)V
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p3, 0x0

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p0, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x0

    shr-int/lit8 v1, p0, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    goto :goto_0
.end method

.method private static toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;[BI)V
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p3, 0x0

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x7

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p3, 0x3

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x0

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    shr-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x7

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    shr-int/lit8 v1, v1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    goto :goto_0
.end method

.method private static toBytes(SLjava/nio/ByteOrder;[BI)V
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p3, 0x0

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p0, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x0

    shr-int/lit8 v1, p0, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    goto :goto_0
.end method

.method public static toBytes(DLjava/nio/ByteOrder;)[B
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(DLjava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes(FLjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(FLjava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes(ILjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(ILjava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method public static toBytes(SLjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;[BI)V

    return-object v0
.end method

.method private static toBytes([DIILjava/nio/ByteOrder;)[B
    .locals 5

    mul-int/lit8 v2, p2, 0x8

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    mul-int/lit8 v4, v0, 0x8

    invoke-static {v2, v3, p3, v1, v4}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(DLjava/nio/ByteOrder;[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toBytes([DLjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([DIILjava/nio/ByteOrder;)[B

    move-result-object v0

    return-object v0
.end method

.method private static toBytes([FIILjava/nio/ByteOrder;)[B
    .locals 4

    mul-int/lit8 v2, p2, 0x4

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v2, p1, v0

    aget v2, p0, v2

    mul-int/lit8 v3, v0, 0x4

    invoke-static {v2, p3, v1, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(FLjava/nio/ByteOrder;[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toBytes([FLjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([FIILjava/nio/ByteOrder;)[B

    move-result-object v0

    return-object v0
.end method

.method private static toBytes([IIILjava/nio/ByteOrder;)[B
    .locals 4

    mul-int/lit8 v2, p2, 0x4

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v2, p1, v0

    aget v2, p0, v2

    mul-int/lit8 v3, v0, 0x4

    invoke-static {v2, p3, v1, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(ILjava/nio/ByteOrder;[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toBytes([ILjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([IIILjava/nio/ByteOrder;)[B

    move-result-object v0

    return-object v0
.end method

.method private static toBytes([Lorg/apache/commons/imaging/common/RationalNumber;IILjava/nio/ByteOrder;)[B
    .locals 4

    mul-int/lit8 v2, p2, 0x8

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v2, p1, v0

    aget-object v2, p0, v2

    mul-int/lit8 v3, v0, 0x8

    invoke-static {v2, p3, v1, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toBytes([Lorg/apache/commons/imaging/common/RationalNumber;Ljava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([Lorg/apache/commons/imaging/common/RationalNumber;IILjava/nio/ByteOrder;)[B

    move-result-object v0

    return-object v0
.end method

.method private static toBytes([SIILjava/nio/ByteOrder;)[B
    .locals 4

    mul-int/lit8 v2, p2, 0x2

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v2, p1, v0

    aget-short v2, p0, v2

    mul-int/lit8 v3, v0, 0x2

    invoke-static {v2, p3, v1, v3}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes(SLjava/nio/ByteOrder;[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toBytes([SLjava/nio/ByteOrder;)[B
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toBytes([SIILjava/nio/ByteOrder;)[B

    move-result-object v0

    return-object v0
.end method

.method private static toDouble([BILjava/nio/ByteOrder;)D
    .locals 24

    const-wide/16 v20, 0xff

    add-int/lit8 v22, p1, 0x0

    aget-byte v22, p0, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    and-long v4, v20, v22

    const-wide/16 v20, 0xff

    add-int/lit8 v22, p1, 0x1

    aget-byte v22, p0, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    and-long v6, v20, v22

    const-wide/16 v20, 0xff

    add-int/lit8 v22, p1, 0x2

    aget-byte v22, p0, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    and-long v8, v20, v22

    const-wide/16 v20, 0xff

    add-int/lit8 v22, p1, 0x3

    aget-byte v22, p0, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    and-long v10, v20, v22

    const-wide/16 v20, 0xff

    add-int/lit8 v22, p1, 0x4

    aget-byte v22, p0, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    and-long v12, v20, v22

    const-wide/16 v20, 0xff

    add-int/lit8 v22, p1, 0x5

    aget-byte v22, p0, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    and-long v14, v20, v22

    const-wide/16 v20, 0xff

    add-int/lit8 v22, p1, 0x6

    aget-byte v22, p0, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    and-long v16, v20, v22

    const-wide/16 v20, 0xff

    add-int/lit8 v22, p1, 0x7

    aget-byte v22, p0, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    and-long v18, v20, v22

    sget-object v20, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/16 v20, 0x38

    shl-long v20, v4, v20

    const/16 v22, 0x30

    shl-long v22, v6, v22

    or-long v20, v20, v22

    const/16 v22, 0x28

    shl-long v22, v8, v22

    or-long v20, v20, v22

    const/16 v22, 0x20

    shl-long v22, v10, v22

    or-long v20, v20, v22

    const/16 v22, 0x18

    shl-long v22, v12, v22

    or-long v20, v20, v22

    const/16 v22, 0x10

    shl-long v22, v14, v22

    or-long v20, v20, v22

    const/16 v22, 0x8

    shl-long v22, v16, v22

    or-long v20, v20, v22

    const/16 v22, 0x0

    shl-long v22, v18, v22

    or-long v2, v20, v22

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v20

    return-wide v20

    :cond_0
    const/16 v20, 0x38

    shl-long v20, v18, v20

    const/16 v22, 0x30

    shl-long v22, v16, v22

    or-long v20, v20, v22

    const/16 v22, 0x28

    shl-long v22, v14, v22

    or-long v20, v20, v22

    const/16 v22, 0x20

    shl-long v22, v12, v22

    or-long v20, v20, v22

    const/16 v22, 0x18

    shl-long v22, v10, v22

    or-long v20, v20, v22

    const/16 v22, 0x10

    shl-long v22, v8, v22

    or-long v20, v20, v22

    const/16 v22, 0x8

    shl-long v22, v6, v22

    or-long v20, v20, v22

    const/16 v22, 0x0

    shl-long v22, v4, v22

    or-long v2, v20, v22

    goto :goto_0
.end method

.method public static toDouble([BLjava/nio/ByteOrder;)D
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toDouble([BILjava/nio/ByteOrder;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static toDoubles([BIILjava/nio/ByteOrder;)[D
    .locals 4

    div-int/lit8 v2, p2, 0x8

    new-array v1, v2, [D

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toDouble([BILjava/nio/ByteOrder;)D

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toDoubles([BLjava/nio/ByteOrder;)[D
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toDoubles([BIILjava/nio/ByteOrder;)[D

    move-result-object v0

    return-object v0
.end method

.method private static toFloat([BILjava/nio/ByteOrder;)F
    .locals 7

    add-int/lit8 v5, p1, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v3, v5, 0xff

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v4, v5, 0xff

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v5, :cond_0

    shl-int/lit8 v5, v1, 0x18

    shl-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v4, 0x0

    or-int v0, v5, v6

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    return v5

    :cond_0
    shl-int/lit8 v5, v4, 0x18

    shl-int/lit8 v6, v3, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v1, 0x0

    or-int v0, v5, v6

    goto :goto_0
.end method

.method public static toFloat([BLjava/nio/ByteOrder;)F
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toFloat([BILjava/nio/ByteOrder;)F

    move-result v0

    return v0
.end method

.method private static toFloats([BIILjava/nio/ByteOrder;)[F
    .locals 3

    div-int/lit8 v2, p2, 0x4

    new-array v1, v2, [F

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toFloat([BILjava/nio/ByteOrder;)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toFloats([BLjava/nio/ByteOrder;)[F
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toFloats([BIILjava/nio/ByteOrder;)[F

    move-result-object v0

    return-object v0
.end method

.method public static toInt([BILjava/nio/ByteOrder;)I
    .locals 6

    add-int/lit8 v4, p1, 0x0

    aget-byte v4, p0, v4

    and-int/lit16 v0, v4, 0xff

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v4, :cond_0

    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    :goto_0
    return v4

    :cond_0
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v0

    goto :goto_0
.end method

.method public static toInt([BLjava/nio/ByteOrder;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method private static toInts([BIILjava/nio/ByteOrder;)[I
    .locals 3

    div-int/lit8 v2, p2, 0x4

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toInt([BILjava/nio/ByteOrder;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toInts([BLjava/nio/ByteOrder;)[I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toInts([BIILjava/nio/ByteOrder;)[I

    move-result-object v0

    return-object v0
.end method

.method private static toRational([BILjava/nio/ByteOrder;)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 12

    add-int/lit8 v10, p1, 0x0

    aget-byte v10, p0, v10

    and-int/lit16 v0, v10, 0xff

    add-int/lit8 v10, p1, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v1, v10, 0xff

    add-int/lit8 v10, p1, 0x2

    aget-byte v10, p0, v10

    and-int/lit16 v2, v10, 0xff

    add-int/lit8 v10, p1, 0x3

    aget-byte v10, p0, v10

    and-int/lit16 v3, v10, 0xff

    add-int/lit8 v10, p1, 0x4

    aget-byte v10, p0, v10

    and-int/lit16 v4, v10, 0xff

    add-int/lit8 v10, p1, 0x5

    aget-byte v10, p0, v10

    and-int/lit16 v5, v10, 0xff

    add-int/lit8 v10, p1, 0x6

    aget-byte v10, p0, v10

    and-int/lit16 v6, v10, 0xff

    add-int/lit8 v10, p1, 0x7

    aget-byte v10, p0, v10

    and-int/lit16 v7, v10, 0xff

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v10, :cond_0

    shl-int/lit8 v10, v0, 0x18

    shl-int/lit8 v11, v1, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v2, 0x8

    or-int/2addr v10, v11

    or-int v9, v10, v3

    shl-int/lit8 v10, v4, 0x18

    shl-int/lit8 v11, v5, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v6, 0x8

    or-int/2addr v10, v11

    or-int v8, v10, v7

    :goto_0
    new-instance v10, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {v10, v9, v8}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object v10

    :cond_0
    shl-int/lit8 v10, v3, 0x18

    shl-int/lit8 v11, v2, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v1, 0x8

    or-int/2addr v10, v11

    or-int v9, v10, v0

    shl-int/lit8 v10, v7, 0x18

    shl-int/lit8 v11, v6, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v5, 0x8

    or-int/2addr v10, v11

    or-int v8, v10, v4

    goto :goto_0
.end method

.method public static toRational([BLjava/nio/ByteOrder;)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toRational([BILjava/nio/ByteOrder;)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v0

    return-object v0
.end method

.method private static toRationals([BIILjava/nio/ByteOrder;)[Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 3

    div-int/lit8 v2, p2, 0x8

    new-array v1, v2, [Lorg/apache/commons/imaging/common/RationalNumber;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toRational([BILjava/nio/ByteOrder;)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toRationals([BLjava/nio/ByteOrder;)[Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toRationals([BIILjava/nio/ByteOrder;)[Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v0

    return-object v0
.end method

.method private static toShort([BILjava/nio/ByteOrder;)S
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static toShort([BLjava/nio/ByteOrder;)S
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toShort([BILjava/nio/ByteOrder;)S

    move-result v0

    return v0
.end method

.method private static toShorts([BIILjava/nio/ByteOrder;)[S
    .locals 3

    div-int/lit8 v2, p2, 0x2

    new-array v1, v2, [S

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p1

    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toShort([BILjava/nio/ByteOrder;)S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toShorts([BLjava/nio/ByteOrder;)[S
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toShorts([BIILjava/nio/ByteOrder;)[S

    move-result-object v0

    return-object v0
.end method

.method public static toUInt16([BILjava/nio/ByteOrder;)I
    .locals 3

    add-int/lit8 v2, p1, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v0, v2, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v1, v2, 0xff

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v2, :cond_0

    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    :goto_0
    return v2

    :cond_0
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    goto :goto_0
.end method

.method public static toUInt16([BLjava/nio/ByteOrder;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v0

    return v0
.end method

.method private static toUInt16s([BIILjava/nio/ByteOrder;)[I
    .locals 3

    div-int/lit8 v2, p2, 0x2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p1

    invoke-static {p0, v2, p3}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16([BILjava/nio/ByteOrder;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toUInt16s([BLjava/nio/ByteOrder;)[I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/imaging/common/ByteConversions;->toUInt16s([BIILjava/nio/ByteOrder;)[I

    move-result-object v0

    return-object v0
.end method
