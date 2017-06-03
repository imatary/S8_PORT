.class public final Landroid/icu/util/BytesTrie;
.super Ljava/lang/Object;
.source "BytesTrie.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/BytesTrie$Entry;,
        Landroid/icu/util/BytesTrie$Iterator;,
        Landroid/icu/util/BytesTrie$Result;,
        Landroid/icu/util/BytesTrie$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/util/BytesTrie$Entry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final kFiveByteDeltaLead:I = 0xff

.field static final kFiveByteValueLead:I = 0x7f

.field static final kFourByteDeltaLead:I = 0xfe

.field static final kFourByteValueLead:I = 0x7e

.field static final kMaxBranchLinearSubNodeLength:I = 0x5

.field static final kMaxLinearMatchLength:I = 0x10

.field static final kMaxOneByteDelta:I = 0xbf

.field static final kMaxOneByteValue:I = 0x40

.field static final kMaxThreeByteDelta:I = 0xdffff

.field static final kMaxThreeByteValue:I = 0x11ffff

.field static final kMaxTwoByteDelta:I = 0x2fff

.field static final kMaxTwoByteValue:I = 0x1aff

.field static final kMinLinearMatch:I = 0x10

.field static final kMinOneByteValueLead:I = 0x10

.field static final kMinThreeByteDeltaLead:I = 0xf0

.field static final kMinThreeByteValueLead:I = 0x6c

.field static final kMinTwoByteDeltaLead:I = 0xc0

.field static final kMinTwoByteValueLead:I = 0x51

.field static final kMinValueLead:I = 0x20

.field private static final kValueIsFinal:I = 0x1

.field private static valueResults_:[Landroid/icu/util/BytesTrie$Result;


# instance fields
.field private bytes_:[B

.field private pos_:I

.field private remainingMatchLength_:I

.field private root_:I


# direct methods
.method static synthetic -wrap0([BI)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([BII)I
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2([BI)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(II)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Landroid/icu/util/BytesTrie;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/util/BytesTrie$Result;

    sget-object v3, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    iput p2, p0, Landroid/icu/util/BytesTrie;->root_:I

    iput p2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    return-void
.end method

.method private static append(Ljava/lang/Appendable;I)V
    .locals 2

    int-to-char v1, p1

    :try_start_0
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private branchNext(III)Landroid/icu/util/BytesTrie$Result;
    .locals 9

    const/16 v8, 0x7e

    const/4 v4, 0x1

    const/16 v7, 0x20

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v6, v6, p1

    and-int/lit16 p2, v6, 0xff

    move p1, v2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    move v2, p1

    :goto_0
    const/4 v6, 0x5

    if-le p2, v6, :cond_e

    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 p1, v2, 0x1

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    if-ge p3, v6, :cond_1

    shr-int/lit8 p2, p2, 0x1

    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    invoke-static {v6, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result p1

    :goto_1
    move v2, p1

    goto :goto_0

    :cond_1
    shr-int/lit8 v6, p2, 0x1

    sub-int/2addr p2, v6

    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    invoke-static {v6, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    invoke-static {v6, v2}, Landroid/icu/util/BytesTrie;->skipValue([BI)I

    move-result p1

    if-le p2, v4, :cond_b

    :goto_2
    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v6, v6, p1

    and-int/lit16 v6, v6, 0xff

    if-ne p3, v6, :cond_2

    iget-object v6, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v6, v6, v2

    and-int/lit16 v1, v6, 0xff

    sget-boolean v6, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    if-nez v6, :cond_4

    if-lt v1, v7, :cond_3

    :goto_3
    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_3
    move v4, v5

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_5

    sget-object v3, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    move p1, v2

    :goto_4
    iput p1, p0, Landroid/icu/util/BytesTrie;->pos_:I

    return-object v3

    :cond_5
    add-int/lit8 p1, v2, 0x1

    shr-int/lit8 v1, v1, 0x1

    const/16 v4, 0x51

    if-ge v1, v4, :cond_6

    add-int/lit8 v0, v1, -0x10

    :goto_5
    add-int/2addr p1, v0

    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v4, v4, p1

    and-int/lit16 v1, v4, 0xff

    if-lt v1, v7, :cond_a

    sget-object v4, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 v5, v1, 0x1

    aget-object v3, v4, v5

    goto :goto_4

    :cond_6
    const/16 v4, 0x6c

    if-ge v1, v4, :cond_7

    add-int/lit8 v4, v1, -0x51

    shl-int/lit8 v4, v4, 0x8

    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v5, v5, p1

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    move p1, v2

    goto :goto_5

    :cond_7
    if-ge v1, v8, :cond_8

    add-int/lit8 v4, v1, -0x6c

    shl-int/lit8 v4, v4, 0x10

    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v5, v5, p1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v6, p1, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    add-int/lit8 p1, p1, 0x2

    goto :goto_5

    :cond_8
    if-ne v1, v8, :cond_9

    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v4, v4, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v6, p1, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v6, p1, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    add-int/lit8 p1, p1, 0x3

    goto :goto_5

    :cond_9
    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v4, v4, p1

    shl-int/lit8 v4, v4, 0x18

    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v6, p1, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v6, p1, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v6, p1, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    add-int/lit8 p1, p1, 0x4

    goto/16 :goto_5

    :cond_a
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    goto/16 :goto_4

    :cond_b
    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v4, v4, p1

    and-int/lit16 v4, v4, 0xff

    if-ne p3, v4, :cond_d

    iput v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v4, v4, v2

    and-int/lit16 v1, v4, 0xff

    if-lt v1, v7, :cond_c

    sget-object v4, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    :goto_6
    return-object v4

    :cond_c
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    goto :goto_6

    :cond_d
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v4

    :cond_e
    move p1, v2

    goto/16 :goto_2
.end method

.method private static findUniqueValue([BIJ)J
    .locals 12

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    :goto_0
    add-int/lit8 v2, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v1, v4, 0xff

    const/16 v4, 0x10

    if-ge v1, v4, :cond_1

    if-nez v1, :cond_7

    add-int/lit8 p1, v2, 0x1

    aget-byte v4, p0, v2

    and-int/lit16 v1, v4, 0xff

    :goto_1
    add-int/lit8 v4, v1, 0x1

    invoke-static {p0, p1, v4, p2, p3}, Landroid/icu/util/BytesTrie;->findUniqueValueFromBranch([BIIJ)J

    move-result-wide p2

    cmp-long v4, p2, v8

    if-nez v4, :cond_0

    return-wide v8

    :cond_0
    const/16 v4, 0x21

    ushr-long v4, p2, v4

    long-to-int p1, v4

    goto :goto_0

    :cond_1
    const/16 v4, 0x20

    if-ge v1, v4, :cond_2

    add-int/lit8 v4, v1, -0x10

    add-int/lit8 v4, v4, 0x1

    add-int p1, v2, v4

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :goto_2
    shr-int/lit8 v4, v1, 0x1

    invoke-static {p0, v2, v4}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    move-result v3

    cmp-long v4, p2, v8

    if-eqz v4, :cond_4

    shr-long v4, p2, v10

    long-to-int v4, v4

    if-eq v3, v4, :cond_5

    return-wide v8

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    int-to-long v4, v3

    shl-long/2addr v4, v10

    const-wide/16 v6, 0x1

    or-long p2, v4, v6

    :cond_5
    if-eqz v0, :cond_6

    return-wide p2

    :cond_6
    invoke-static {v2, v1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result p1

    goto :goto_0

    :cond_7
    move p1, v2

    goto :goto_1
.end method

.method private static findUniqueValueFromBranch([BIIJ)J
    .locals 11

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    :goto_0
    const/4 v4, 0x5

    if-le p2, v4, :cond_3

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result v4

    shr-int/lit8 v5, p2, 0x1

    invoke-static {p0, v4, v5, p3, p4}, Landroid/icu/util/BytesTrie;->findUniqueValueFromBranch([BIIJ)J

    move-result-wide p3

    cmp-long v4, p3, v8

    if-nez v4, :cond_0

    return-wide v8

    :cond_0
    shr-int/lit8 v4, p2, 0x1

    sub-int/2addr p2, v4

    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p1

    goto :goto_0

    :cond_1
    int-to-long v4, v3

    shl-long/2addr v4, v10

    const-wide/16 v6, 0x1

    or-long p3, v4, v6

    :cond_2
    add-int/lit8 p2, p2, -0x1

    if-le p2, v10, :cond_6

    :cond_3
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, p1, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v1, v4, 0xff

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    :goto_1
    shr-int/lit8 v4, v1, 0x1

    invoke-static {p0, v2, v4}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    move-result v3

    invoke-static {v2, v1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result p1

    if-eqz v0, :cond_5

    cmp-long v4, p3, v8

    if-eqz v4, :cond_1

    shr-long v4, p3, v10

    long-to-int v4, v4

    if-eq v3, v4, :cond_2

    return-wide v8

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    add-int v4, p1, v3

    invoke-static {p0, v4, p3, p4}, Landroid/icu/util/BytesTrie;->findUniqueValue([BIJ)J

    move-result-wide p3

    cmp-long v4, p3, v8

    if-nez v4, :cond_2

    return-wide v8

    :cond_6
    add-int/lit8 v4, p1, 0x1

    int-to-long v4, v4

    const/16 v6, 0x21

    shl-long/2addr v4, v6

    const-wide v6, 0x1ffffffffL

    and-long/2addr v6, p3

    or-long/2addr v4, v6

    return-wide v4
.end method

.method private static getNextBranchBytes([BIILjava/lang/Appendable;)V
    .locals 3

    :goto_0
    const/4 v1, 0x5

    if-le p2, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->jumpByDelta([BI)I

    move-result v1

    shr-int/lit8 v2, p2, 0x1

    invoke-static {p0, v1, v2, p3}, Landroid/icu/util/BytesTrie;->getNextBranchBytes([BIILjava/lang/Appendable;)V

    shr-int/lit8 v1, p2, 0x1

    sub-int/2addr p2, v1

    invoke-static {p0, p1}, Landroid/icu/util/BytesTrie;->skipDelta([BI)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    invoke-static {p3, v1}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    invoke-static {p0, v0}, Landroid/icu/util/BytesTrie;->skipValue([BI)I

    move-result p1

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    invoke-static {p3, v1}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public static iterator([BII)Landroid/icu/util/BytesTrie$Iterator;
    .locals 6

    new-instance v0, Landroid/icu/util/BytesTrie$Iterator;

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIIILandroid/icu/util/BytesTrie$Iterator;)V

    return-object v0
.end method

.method private static jumpByDelta([BI)I
    .locals 4

    const/16 v3, 0xfe

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v0, v2, 0xff

    const/16 v2, 0xc0

    if-ge v0, v2, :cond_0

    move p1, v1

    :goto_0
    add-int v2, p1, v0

    return v2

    :cond_0
    const/16 v2, 0xf0

    if-ge v0, v2, :cond_1

    add-int/lit16 v2, v0, -0xc0

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p1, v1, 0x1

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    goto :goto_0

    :cond_1
    if-ge v0, v3, :cond_2

    add-int/lit16 v2, v0, -0xf0

    shl-int/lit8 v2, v2, 0x10

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    add-int/lit8 p1, v1, 0x2

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    add-int/lit8 p1, v1, 0x3

    goto :goto_0

    :cond_3
    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    add-int/lit8 p1, v1, 0x4

    goto :goto_0
.end method

.method private nextImpl(II)Landroid/icu/util/BytesTrie$Result;
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x0

    :cond_0
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v3, v3, p1

    and-int/lit16 v1, v3, 0xff

    const/16 v3, 0x10

    if-ge v1, v3, :cond_1

    invoke-direct {p0, v2, v1, p2}, Landroid/icu/util/BytesTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    move-result-object v3

    return-object v3

    :cond_1
    if-ge v1, v5, :cond_3

    add-int/lit8 v0, v1, -0x10

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 p1, v2, 0x1

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    if-ne p2, v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    iput p1, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v0, :cond_2

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v3, v3, p1

    and-int/lit16 v1, v3, 0xff

    if-lt v1, v5, :cond_2

    sget-object v3, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    :goto_0
    return-object v3

    :cond_2
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_5

    move p1, v2

    :cond_4
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v3

    :cond_5
    invoke-static {v2, v1}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result p1

    sget-boolean v3, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v3, v3, p1

    and-int/lit16 v3, v3, 0xff

    if-ge v3, v5, :cond_6

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_6
    move v3, v4

    goto :goto_1
.end method

.method private static readValue([BII)I
    .locals 3

    const/16 v2, 0x7e

    const/16 v1, 0x51

    if-ge p2, v1, :cond_0

    add-int/lit8 v0, p2, -0x10

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x6c

    if-ge p2, v1, :cond_1

    add-int/lit8 v1, p2, -0x51

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    goto :goto_0

    :cond_1
    if-ge p2, v2, :cond_2

    add-int/lit8 v1, p2, -0x6c

    shl-int/lit8 v1, v1, 0x10

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_3

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    goto :goto_0

    :cond_3
    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    goto :goto_0
.end method

.method private static skipDelta([BI)I
    .locals 3

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v0, v2, 0xff

    const/16 v2, 0xc0

    if-lt v0, v2, :cond_2

    const/16 v2, 0xf0

    if-ge v0, v2, :cond_0

    add-int/lit8 p1, v1, 0x1

    :goto_0
    return p1

    :cond_0
    const/16 v2, 0xfe

    if-ge v0, v2, :cond_1

    add-int/lit8 p1, v1, 0x2

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x3

    add-int p1, v1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    goto :goto_0
.end method

.method private static skipValue(II)I
    .locals 1

    sget-boolean v0, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0xa2

    if-lt p1, v0, :cond_2

    const/16 v0, 0xd8

    if-ge p1, v0, :cond_3

    add-int/lit8 p0, p0, 0x1

    :cond_2
    :goto_1
    return p0

    :cond_3
    const/16 v0, 0xfc

    if-ge p1, v0, :cond_4

    add-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_4
    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    add-int/2addr p0, v0

    goto :goto_1
.end method

.method private static skipValue([BI)I
    .locals 3

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v0, v2, 0xff

    invoke-static {v1, v0}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result v2

    return v2
.end method

.method private stop()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public current()Landroid/icu/util/BytesTrie$Result;
    .locals 4

    iget v1, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v1, :cond_0

    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v2

    :cond_0
    iget v2, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    if-gez v2, :cond_1

    iget-object v2, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v2, v2, v1

    and-int/lit16 v0, v2, 0xff

    const/16 v2, 0x20

    if-lt v0, v2, :cond_1

    sget-object v2, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    goto :goto_0
.end method

.method public first(I)Landroid/icu/util/BytesTrie$Result;
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x100

    :cond_0
    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    invoke-direct {p0, v0, p1}, Landroid/icu/util/BytesTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    return-object v0
.end method

.method public getNextBytes(Ljava/lang/Appendable;)I
    .locals 7

    const/16 v6, 0x20

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v1, :cond_0

    return v3

    :cond_0
    iget v5, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    if-ltz v5, :cond_1

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v3}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    return v4

    :cond_1
    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v5, v5, v1

    and-int/lit16 v0, v5, 0xff

    if-lt v0, v6, :cond_4

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_2

    return v3

    :cond_2
    invoke-static {v2, v0}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result v1

    iget-object v5, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v5, v5, v1

    and-int/lit16 v0, v5, 0xff

    sget-boolean v5, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    if-nez v5, :cond_4

    if-ge v0, v6, :cond_3

    move v3, v4

    :cond_3
    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_4
    const/16 v3, 0x10

    if-ge v0, v3, :cond_5

    if-nez v0, :cond_6

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v1, v2, 0x1

    aget-byte v3, v3, v2

    and-int/lit16 v0, v3, 0xff

    :goto_0
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v1, v0, p1}, Landroid/icu/util/BytesTrie;->getNextBranchBytes([BIILjava/lang/Appendable;)V

    return v0

    :cond_5
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v3}, Landroid/icu/util/BytesTrie;->append(Ljava/lang/Appendable;I)V

    return v4

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public getUniqueValue()J
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v6, 0x1f

    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v0, :cond_0

    return-wide v8

    :cond_0
    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    iget v4, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v4, v8, v9}, Landroid/icu/util/BytesTrie;->findUniqueValue([BIJ)J

    move-result-wide v2

    shl-long v4, v2, v6

    shr-long/2addr v4, v6

    return-wide v4
.end method

.method public getValue()I
    .locals 5

    iget v1, p0, Landroid/icu/util/BytesTrie;->pos_:I

    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v3, v3, v1

    and-int/lit16 v0, v3, 0xff

    sget-boolean v3, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    shr-int/lit8 v4, v0, 0x1

    invoke-static {v3, v2, v4}, Landroid/icu/util/BytesTrie;->readValue([BII)I

    move-result v3

    return v3
.end method

.method public iterator()Landroid/icu/util/BytesTrie$Iterator;
    .locals 6

    new-instance v0, Landroid/icu/util/BytesTrie$Iterator;

    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    iget v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    iget v3, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIIILandroid/icu/util/BytesTrie$Iterator;)V

    return-object v0
.end method

.method public iterator(I)Landroid/icu/util/BytesTrie$Iterator;
    .locals 6

    new-instance v0, Landroid/icu/util/BytesTrie$Iterator;

    iget-object v1, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    iget v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    iget v3, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    const/4 v5, 0x0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/BytesTrie$Iterator;-><init>([BIIILandroid/icu/util/BytesTrie$Iterator;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->iterator()Landroid/icu/util/BytesTrie$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public next(I)Landroid/icu/util/BytesTrie$Result;
    .locals 6

    iget v2, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v2, :cond_0

    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v4

    :cond_0
    if-gez p1, :cond_1

    add-int/lit16 p1, p1, 0x100

    :cond_1
    iget v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    if-ltz v0, :cond_4

    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    if-ne p1, v4, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    iput v3, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v0, :cond_2

    iget-object v4, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v4, v4, v3

    and-int/lit16 v1, v4, 0xff

    const/16 v4, 0x20

    if-lt v1, v4, :cond_2

    sget-object v4, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    :goto_0
    return-object v4

    :cond_2
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v4

    :cond_4
    invoke-direct {p0, v2, p1}, Landroid/icu/util/BytesTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    move-result-object v4

    return-object v4
.end method

.method public next([BII)Landroid/icu/util/BytesTrie$Result;
    .locals 10

    const/16 v9, 0x20

    const/4 v8, 0x0

    if-lt p2, p3, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/BytesTrie;->current()Landroid/icu/util/BytesTrie$Result;

    move-result-object v7

    return-object v7

    :cond_0
    iget v3, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v3, :cond_1

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v7

    :cond_1
    iget v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    move v6, p2

    :goto_0
    if-ne v6, p3, :cond_3

    iput v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    iput v3, p0, Landroid/icu/util/BytesTrie;->pos_:I

    if-gez v1, :cond_2

    iget-object v7, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v7, v7, v3

    and-int/lit16 v2, v7, 0xff

    if-lt v2, v9, :cond_2

    sget-object v7, Landroid/icu/util/BytesTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    and-int/lit8 v8, v2, 0x1

    aget-object v7, v7, v8

    :goto_1
    return-object v7

    :cond_2
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    goto :goto_1

    :cond_3
    add-int/lit8 p2, v6, 0x1

    aget-byte v0, p1, v6

    if-gez v1, :cond_5

    iput v1, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    :cond_4
    :goto_2
    iget-object v7, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v7, v7, v3

    and-int/lit16 v2, v7, 0xff

    const/16 v7, 0x10

    if-ge v2, v7, :cond_a

    and-int/lit16 v7, v0, 0xff

    invoke-direct {p0, v4, v2, v7}, Landroid/icu/util/BytesTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    move-result-object v5

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-ne v5, v7, :cond_7

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v7

    :cond_5
    iget-object v7, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v7, v7, v3

    if-eq v0, v7, :cond_6

    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    move v6, p2

    goto :goto_0

    :cond_7
    if-ne p2, p3, :cond_8

    return-object v5

    :cond_8
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v5, v7, :cond_9

    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v7

    :cond_9
    add-int/lit8 v6, p2, 0x1

    aget-byte v0, p1, p2

    iget v3, p0, Landroid/icu/util/BytesTrie;->pos_:I

    move p2, v6

    goto :goto_2

    :cond_a
    if-ge v2, v9, :cond_c

    add-int/lit8 v1, v2, -0x10

    iget-object v7, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v7, v7, v4

    if-eq v0, v7, :cond_b

    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v7

    :cond_b
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_c
    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_d

    invoke-direct {p0}, Landroid/icu/util/BytesTrie;->stop()V

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v7

    :cond_d
    invoke-static {v4, v2}, Landroid/icu/util/BytesTrie;->skipValue(II)I

    move-result v3

    sget-boolean v7, Landroid/icu/util/BytesTrie;->-assertionsDisabled:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    aget-byte v7, v7, v3

    and-int/lit16 v7, v7, 0xff

    if-ge v7, v9, :cond_e

    const/4 v7, 0x1

    :goto_4
    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_e
    move v7, v8

    goto :goto_4
.end method

.method public reset()Landroid/icu/util/BytesTrie;
    .locals 1

    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    return-object p0
.end method

.method public resetToState(Landroid/icu/util/BytesTrie$State;)Landroid/icu/util/BytesTrie;
    .locals 2

    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->-get0(Landroid/icu/util/BytesTrie$State;)[B

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->-get3(Landroid/icu/util/BytesTrie$State;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->-get1(Landroid/icu/util/BytesTrie$State;)I

    move-result v0

    iput v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    invoke-static {p1}, Landroid/icu/util/BytesTrie$State;->-get2(Landroid/icu/util/BytesTrie$State;)I

    move-result v0

    iput v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "incompatible trie state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveState(Landroid/icu/util/BytesTrie$State;)Landroid/icu/util/BytesTrie;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/BytesTrie;->bytes_:[B

    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->-set0(Landroid/icu/util/BytesTrie$State;[B)[B

    iget v0, p0, Landroid/icu/util/BytesTrie;->root_:I

    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->-set3(Landroid/icu/util/BytesTrie$State;I)I

    iget v0, p0, Landroid/icu/util/BytesTrie;->pos_:I

    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->-set1(Landroid/icu/util/BytesTrie$State;I)I

    iget v0, p0, Landroid/icu/util/BytesTrie;->remainingMatchLength_:I

    invoke-static {p1, v0}, Landroid/icu/util/BytesTrie$State;->-set2(Landroid/icu/util/BytesTrie$State;I)I

    return-object p0
.end method
