.class public Landroid/icu/impl/coll/BOCSU;
.super Ljava/lang/Object;
.source "BOCSU.java"


# static fields
.field private static final SLOPE_LEAD_2_:I = 0x2a

.field private static final SLOPE_LEAD_3_:I = 0x3

.field private static final SLOPE_MAX_:I = 0xff

.field private static final SLOPE_MAX_BYTES_:I = 0x4

.field private static final SLOPE_MIDDLE_:I = 0x81

.field private static final SLOPE_MIN_:I = 0x3

.field private static final SLOPE_REACH_NEG_1_:I = -0x50

.field private static final SLOPE_REACH_NEG_2_:I = -0x29ac

.field private static final SLOPE_REACH_NEG_3_:I = -0x2f112

.field private static final SLOPE_REACH_POS_1_:I = 0x50

.field private static final SLOPE_REACH_POS_2_:I = 0x29ab

.field private static final SLOPE_REACH_POS_3_:I = 0x2f111

.field private static final SLOPE_SINGLE_:I = 0x50

.field private static final SLOPE_START_NEG_2_:I = 0x31

.field private static final SLOPE_START_NEG_3_:I = 0x7

.field private static final SLOPE_START_POS_2_:I = 0xd2

.field private static final SLOPE_START_POS_3_:I = 0xfc

.field private static final SLOPE_TAIL_COUNT_:I = 0xfd


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureAppendCapacity(Landroid/icu/util/ByteArrayWrapper;II)V
    .locals 3

    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    array-length v1, v1

    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    sub-int v0, v1, v2

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    if-ge p2, p1, :cond_1

    move p2, p1

    :cond_1
    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Landroid/icu/util/ByteArrayWrapper;->ensureCapacity(I)Landroid/icu/util/ByteArrayWrapper;

    return-void
.end method

.method private static final getNegDivMod(II)J
    .locals 8

    rem-int v0, p0, p1

    div-int v1, p0, p1

    int-to-long v2, v1

    if-gez v0, :cond_0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    add-int/2addr v0, p1

    :cond_0
    const/16 v1, 0x20

    shl-long v4, v2, v1

    int-to-long v6, v0

    or-long/2addr v4, v6

    return-wide v4
.end method

.method private static final writeDiff(I[BI)I
    .locals 9

    const/16 v8, 0xfd

    const/16 v7, 0x20

    const/4 v6, 0x3

    const/16 v4, -0x50

    if-lt p0, v4, :cond_3

    const/16 v4, 0x50

    if-gt p0, v4, :cond_0

    add-int/lit8 v3, p2, 0x1

    add-int/lit16 v4, p0, 0x81

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    move p2, v3

    :goto_0
    return p2

    :cond_0
    const/16 v4, 0x29ab

    if-gt p0, v4, :cond_1

    add-int/lit8 v3, p2, 0x1

    div-int/lit16 v4, p0, 0xfd

    add-int/lit16 v4, v4, 0xd2

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    add-int/lit8 p2, v3, 0x1

    rem-int/lit16 v4, p0, 0xfd

    add-int/lit8 v4, v4, 0x3

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    goto :goto_0

    :cond_1
    const v4, 0x2f111

    if-gt p0, v4, :cond_2

    add-int/lit8 v4, p2, 0x2

    rem-int/lit16 v5, p0, 0xfd

    add-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    div-int/lit16 p0, p0, 0xfd

    add-int/lit8 v4, p2, 0x1

    rem-int/lit16 v5, p0, 0xfd

    add-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    div-int/lit16 v4, p0, 0xfd

    add-int/lit16 v4, v4, 0xfc

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    add-int/lit8 p2, p2, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 v4, p2, 0x3

    rem-int/lit16 v5, p0, 0xfd

    add-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    div-int/lit16 p0, p0, 0xfd

    add-int/lit8 v4, p2, 0x2

    rem-int/lit16 v5, p0, 0xfd

    add-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    div-int/lit16 p0, p0, 0xfd

    add-int/lit8 v4, p2, 0x1

    rem-int/lit16 v5, p0, 0xfd

    add-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    const/4 v4, -0x1

    aput-byte v4, p1, p2

    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_3
    invoke-static {p0, v8}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v4, -0x29ac

    if-lt p0, v4, :cond_4

    shr-long v4, v0, v7

    long-to-int p0, v4

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p0, 0x31

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    add-int/lit8 p2, v3, 0x1

    add-int/lit8 v4, v2, 0x3

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    goto :goto_0

    :cond_4
    const v4, -0x2f112

    if-lt p0, v4, :cond_5

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, v2, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    shr-long v4, v0, v7

    long-to-int p0, v4

    invoke-static {p0, v8}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v0

    long-to-int v2, v0

    shr-long v4, v0, v7

    long-to-int p0, v4

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, v2, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, p0, 0x7

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    add-int/lit8 p2, p2, 0x3

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, v2, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    shr-long v4, v0, v7

    long-to-int p0, v4

    invoke-static {p0, v8}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v0

    long-to-int v2, v0

    shr-long v4, v0, v7

    long-to-int p0, v4

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, v2, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    invoke-static {p0, v8}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v0

    long-to-int v2, v0

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, v2, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    aput-byte v6, p1, p2

    add-int/lit8 p2, p2, 0x4

    goto/16 :goto_0
.end method

.method public static writeIdenticalLevelRun(ILjava/lang/CharSequence;IILandroid/icu/util/ByteArrayWrapper;)I
    .locals 8

    :goto_0
    if-ge p2, p3, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    const/16 v7, 0x10

    invoke-static {p4, v7, v6}, Landroid/icu/impl/coll/BOCSU;->ensureAppendCapacity(Landroid/icu/util/ByteArrayWrapper;II)V

    iget-object v0, p4, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    array-length v2, v0

    iget v4, p4, Landroid/icu/util/ByteArrayWrapper;->size:I

    add-int/lit8 v3, v2, -0x4

    move v5, v4

    :goto_1
    if-ge p2, p3, :cond_3

    if-gt v5, v3, :cond_3

    const/16 v6, 0x4e00

    if-lt p0, v6, :cond_0

    const v6, 0xa000

    if-lt p0, v6, :cond_1

    :cond_0
    and-int/lit8 v6, p0, -0x80

    add-int/lit8 p0, v6, 0x50

    :goto_2
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr p2, v6

    const v6, 0xfffe

    if-ne v1, v6, :cond_2

    add-int/lit8 v4, v5, 0x1

    const/4 v6, 0x2

    aput-byte v6, v0, v5

    const/4 p0, 0x0

    :goto_3
    move v5, v4

    goto :goto_1

    :cond_1
    const/16 p0, 0x7654

    goto :goto_2

    :cond_2
    sub-int v6, v1, p0

    invoke-static {v6, v0, v5}, Landroid/icu/impl/coll/BOCSU;->writeDiff(I[BI)I

    move-result v4

    move p0, v1

    goto :goto_3

    :cond_3
    iput v5, p4, Landroid/icu/util/ByteArrayWrapper;->size:I

    goto :goto_0

    :cond_4
    return p0
.end method
