.class public final Landroid/icu/util/CharsTrie;
.super Ljava/lang/Object;
.source "CharsTrie.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/CharsTrie$Entry;,
        Landroid/icu/util/CharsTrie$Iterator;,
        Landroid/icu/util/CharsTrie$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/util/CharsTrie$Entry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final kMaxBranchLinearSubNodeLength:I = 0x5

.field static final kMaxLinearMatchLength:I = 0x10

.field static final kMaxOneUnitDelta:I = 0xfbff

.field static final kMaxOneUnitNodeValue:I = 0xff

.field static final kMaxOneUnitValue:I = 0x3fff

.field static final kMaxTwoUnitDelta:I = 0x3feffff

.field static final kMaxTwoUnitNodeValue:I = 0xfdffff

.field static final kMaxTwoUnitValue:I = 0x3ffeffff

.field static final kMinLinearMatch:I = 0x30

.field static final kMinTwoUnitDeltaLead:I = 0xfc00

.field static final kMinTwoUnitNodeValueLead:I = 0x4040

.field static final kMinTwoUnitValueLead:I = 0x4000

.field static final kMinValueLead:I = 0x40

.field static final kNodeTypeMask:I = 0x3f

.field static final kThreeUnitDeltaLead:I = 0xffff

.field static final kThreeUnitNodeValueLead:I = 0x7fc0

.field static final kThreeUnitValueLead:I = 0x7fff

.field static final kValueIsFinal:I = 0x8000

.field private static valueResults_:[Landroid/icu/util/BytesTrie$Result;


# instance fields
.field private chars_:Ljava/lang/CharSequence;

.field private pos_:I

.field private remainingMatchLength_:I

.field private root_:I


# direct methods
.method static synthetic -wrap0(Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/CharSequence;II)I
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/CharSequence;II)I
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(II)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(II)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipValue(II)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Landroid/icu/util/CharsTrie;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/util/CharsTrie;->-assertionsDisabled:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/util/BytesTrie$Result;

    sget-object v3, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/icu/util/CharsTrie;->root_:I

    iput p2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

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
    .locals 8

    const/16 v7, 0x40

    if-nez p2, :cond_0

    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    move p1, v2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    move v2, p1

    :goto_0
    const/4 v4, 0x5

    if-le p2, v4, :cond_a

    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 p1, v2, 0x1

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge p3, v4, :cond_1

    shr-int/lit8 p2, p2, 0x1

    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {v4, p1}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    :goto_1
    move v2, p1

    goto :goto_0

    :cond_1
    shr-int/lit8 v4, p2, 0x1

    sub-int/2addr p2, v4

    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {v4, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {v4, v2}, Landroid/icu/util/CharsTrie;->skipValue(Ljava/lang/CharSequence;I)I

    move-result p1

    const/4 v4, 0x1

    if-le p2, v4, :cond_7

    :goto_2
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne p3, v4, :cond_2

    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v4, 0x8000

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    sget-object v3, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    move p1, v2

    :goto_3
    iput p1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    return-object v3

    :cond_3
    add-int/lit8 p1, v2, 0x1

    const/16 v4, 0x4000

    if-ge v1, v4, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr p1, v0

    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-lt v1, v7, :cond_6

    sget-object v4, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    shr-int/lit8 v5, v1, 0xf

    aget-object v3, v4, v5

    goto :goto_3

    :cond_4
    const/16 v4, 0x7fff

    if-ge v1, v4, :cond_5

    add-int/lit16 v4, v1, -0x4000

    shl-int/lit8 v4, v4, 0x10

    iget-object v5, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    or-int v0, v4, v5

    move p1, v2

    goto :goto_4

    :cond_5
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    iget-object v5, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    or-int v0, v4, v5

    add-int/lit8 p1, p1, 0x2

    goto :goto_4

    :cond_6
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    goto :goto_3

    :cond_7
    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne p3, v4, :cond_9

    iput v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-lt v1, v7, :cond_8

    sget-object v4, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    shr-int/lit8 v5, v1, 0xf

    aget-object v4, v4, v5

    :goto_5
    return-object v4

    :cond_8
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    goto :goto_5

    :cond_9
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v4

    :cond_a
    move p1, v2

    goto/16 :goto_2
.end method

.method private static findUniqueValue(Ljava/lang/CharSequence;IJ)J
    .locals 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    :goto_0
    const/16 v6, 0x30

    if-ge v1, v6, :cond_1

    if-nez v1, :cond_8

    add-int/lit8 p1, v2, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    :goto_1
    add-int/lit8 v6, v1, 0x1

    invoke-static {p0, p1, v6, p2, p3}, Landroid/icu/util/CharsTrie;->findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J

    move-result-wide p2

    cmp-long v6, p2, v10

    if-nez v6, :cond_0

    return-wide v10

    :cond_0
    const/16 v6, 0x21

    ushr-long v6, p2, v6

    long-to-int p1, v6

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move p1, v2

    :goto_2
    move v2, p1

    goto :goto_0

    :cond_1
    const/16 v6, 0x40

    if-ge v1, v6, :cond_2

    add-int/lit8 v6, v1, -0x30

    add-int/lit8 v6, v6, 0x1

    add-int p1, v2, v6

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move p1, v2

    goto :goto_2

    :cond_2
    const v6, 0x8000

    and-int/2addr v6, v1

    if-eqz v6, :cond_3

    move v0, v4

    :goto_3
    if-eqz v0, :cond_4

    and-int/lit16 v6, v1, 0x7fff

    invoke-static {p0, v2, v6}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result v3

    :goto_4
    cmp-long v6, p2, v10

    if-eqz v6, :cond_5

    shr-long v6, p2, v4

    long-to-int v6, v6

    if-eq v3, v6, :cond_6

    return-wide v10

    :cond_3
    move v0, v5

    goto :goto_3

    :cond_4
    invoke-static {p0, v2, v1}, Landroid/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    move-result v3

    goto :goto_4

    :cond_5
    int-to-long v6, v3

    shl-long/2addr v6, v4

    const-wide/16 v8, 0x1

    or-long p2, v6, v8

    :cond_6
    if-eqz v0, :cond_7

    return-wide p2

    :cond_7
    invoke-static {v2, v1}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result p1

    and-int/lit8 v1, v1, 0x3f

    goto :goto_2

    :cond_8
    move p1, v2

    goto :goto_1
.end method

.method private static findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J
    .locals 11

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    :goto_0
    const/4 v4, 0x5

    if-le p2, v4, :cond_3

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result v4

    shr-int/lit8 v5, p2, 0x1

    invoke-static {p0, v4, v5, p3, p4}, Landroid/icu/util/CharsTrie;->findUniqueValueFromBranch(Ljava/lang/CharSequence;IIJ)J

    move-result-wide p3

    cmp-long v4, p3, v8

    if-nez v4, :cond_0

    return-wide v8

    :cond_0
    shr-int/lit8 v4, p2, 0x1

    sub-int/2addr p2, v4

    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

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

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v4, 0x8000

    and-int/2addr v4, v1

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    :goto_1
    and-int/lit16 v1, v1, 0x7fff

    invoke-static {p0, v2, v1}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-static {v2, v1}, Landroid/icu/util/CharsTrie;->skipValue(II)I

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

    invoke-static {p0, v4, p3, p4}, Landroid/icu/util/CharsTrie;->findUniqueValue(Ljava/lang/CharSequence;IJ)J

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

.method private static getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V
    .locals 3

    :goto_0
    const/4 v1, 0x5

    if-le p2, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result v1

    shr-int/lit8 v2, p2, 0x1

    invoke-static {p0, v1, v2, p3}, Landroid/icu/util/CharsTrie;->getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V

    shr-int/lit8 v1, p2, 0x1

    sub-int/2addr p2, v1

    invoke-static {p0, p1}, Landroid/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {p3, v1}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    invoke-static {p0, v0}, Landroid/icu/util/CharsTrie;->skipValue(Ljava/lang/CharSequence;I)I

    move-result p1

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {p3, v1}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public static iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;
    .locals 6

    new-instance v0, Landroid/icu/util/CharsTrie$Iterator;

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie$Iterator;)V

    return-object v0
.end method

.method private static jumpByDelta(Ljava/lang/CharSequence;I)I
    .locals 4

    const v3, 0xfc00

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v3, :cond_1

    const v2, 0xffff

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    or-int v0, v2, v3

    add-int/lit8 p1, v1, 0x2

    :goto_0
    add-int v2, p1, v0

    return v2

    :cond_0
    sub-int v2, v0, v3

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 p1, v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    or-int v0, v2, v3

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_0
.end method

.method private nextImpl(II)Landroid/icu/util/BytesTrie$Result;
    .locals 5

    const/16 v4, 0x40

    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v3, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    :goto_0
    const/16 v3, 0x30

    if-ge v1, v3, :cond_0

    invoke-direct {p0, v2, v1, p2}, Landroid/icu/util/CharsTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    move-result-object v3

    return-object v3

    :cond_0
    if-ge v1, v4, :cond_2

    add-int/lit8 v0, v1, -0x30

    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 p1, v2, 0x1

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne p2, v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    iput p1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    if-gez v0, :cond_1

    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v3, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-lt v1, v4, :cond_1

    sget-object v3, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    shr-int/lit8 v4, v1, 0xf

    aget-object v3, v3, v4

    :goto_1
    return-object v3

    :cond_1
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    goto :goto_1

    :cond_2
    const v3, 0x8000

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    move p1, v2

    :cond_3
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    sget-object v3, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v3

    :cond_4
    invoke-static {v2, v1}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result p1

    and-int/lit8 v1, v1, 0x3f

    move v2, p1

    goto :goto_0
.end method

.method private static readNodeValue(Ljava/lang/CharSequence;II)I
    .locals 3

    const/4 v1, 0x0

    sget-boolean v2, Landroid/icu/util/CharsTrie;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    const/16 v2, 0x40

    if-gt v2, p2, :cond_0

    const v2, 0x8000

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    const/16 v1, 0x4040

    if-ge p2, v1, :cond_2

    shr-int/lit8 v1, p2, 0x6

    add-int/lit8 v0, v1, -0x1

    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x7fc0

    if-ge p2, v1, :cond_3

    and-int/lit16 v1, p2, 0x7fc0

    add-int/lit16 v1, v1, -0x4040

    shl-int/lit8 v1, v1, 0xa

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int v0, v1, v2

    goto :goto_0

    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int v0, v1, v2

    goto :goto_0
.end method

.method private static readValue(Ljava/lang/CharSequence;II)I
    .locals 3

    const/16 v1, 0x4000

    if-ge p2, v1, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x7fff

    if-ge p2, v1, :cond_1

    add-int/lit16 v1, p2, -0x4000

    shl-int/lit8 v1, v1, 0x10

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int v0, v1, v2

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int v0, v1, v2

    goto :goto_0
.end method

.method private static skipDelta(Ljava/lang/CharSequence;I)I
    .locals 3

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v2, 0xfc00

    if-lt v0, v2, :cond_1

    const v2, 0xffff

    if-ne v0, v2, :cond_0

    add-int/lit8 p1, v1, 0x2

    :goto_0
    return p1

    :cond_0
    add-int/lit8 p1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_0
.end method

.method private static skipNodeValue(II)I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/icu/util/CharsTrie;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    const/16 v1, 0x40

    if-gt v1, p1, :cond_0

    const v1, 0x8000

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const/16 v0, 0x4040

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7fc0

    if-ge p1, v0, :cond_3

    add-int/lit8 p0, p0, 0x1

    :cond_2
    :goto_0
    return p0

    :cond_3
    add-int/lit8 p0, p0, 0x2

    goto :goto_0
.end method

.method private static skipValue(II)I
    .locals 1

    const/16 v0, 0x4000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7fff

    if-ge p1, v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    :cond_0
    :goto_0
    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x2

    goto :goto_0
.end method

.method private static skipValue(Ljava/lang/CharSequence;I)I
    .locals 3

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    and-int/lit16 v2, v0, 0x7fff

    invoke-static {v1, v2}, Landroid/icu/util/CharsTrie;->skipValue(II)I

    move-result v2

    return v2
.end method

.method private stop()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

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

    iget v1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    if-gez v1, :cond_0

    sget-object v2, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v2

    :cond_0
    iget v2, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    if-gez v2, :cond_1

    iget-object v2, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_1

    sget-object v2, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    shr-int/lit8 v3, v0, 0xf

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

    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    invoke-direct {p0, v0, p1}, Landroid/icu/util/CharsTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    return-object v0
.end method

.method public firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;
    .locals 1

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/util/CharsTrie;->first(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrie;->first(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    goto :goto_0
.end method

.method public getNextChars(Ljava/lang/Appendable;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    if-gez v1, :cond_0

    return v4

    :cond_0
    iget v3, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    if-ltz v3, :cond_1

    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {p1, v3}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    return v5

    :cond_1
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x40

    if-lt v0, v3, :cond_3

    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_2

    return v4

    :cond_2
    invoke-static {v2, v0}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result v1

    and-int/lit8 v0, v0, 0x3f

    move v2, v1

    :cond_3
    const/16 v3, 0x30

    if-ge v0, v3, :cond_4

    if-nez v0, :cond_5

    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_0
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v1, v0, p1}, Landroid/icu/util/CharsTrie;->getNextBranchChars(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V

    return v0

    :cond_4
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {p1, v3}, Landroid/icu/util/CharsTrie;->append(Ljava/lang/Appendable;I)V

    return v5

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public getUniqueValue()J
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v6, 0x1f

    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    if-gez v0, :cond_0

    return-wide v8

    :cond_0
    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v4, v8, v9}, Landroid/icu/util/CharsTrie;->findUniqueValue(Ljava/lang/CharSequence;IJ)J

    move-result-wide v2

    shl-long v4, v2, v6

    shr-long/2addr v4, v6

    return-wide v4
.end method

.method public getValue()I
    .locals 5

    const/4 v3, 0x0

    iget v1, p0, Landroid/icu/util/CharsTrie;->pos_:I

    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sget-boolean v4, Landroid/icu/util/CharsTrie;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    const/16 v4, 0x40

    if-lt v0, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_1
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    and-int/lit16 v4, v0, 0x7fff

    invoke-static {v3, v2, v4}, Landroid/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result v3

    :goto_0
    return v3

    :cond_2
    iget-object v3, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {v3, v2, v0}, Landroid/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    move-result v3

    goto :goto_0
.end method

.method public iterator()Landroid/icu/util/CharsTrie$Iterator;
    .locals 6

    new-instance v0, Landroid/icu/util/CharsTrie$Iterator;

    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    iget v3, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie$Iterator;)V

    return-object v0
.end method

.method public iterator(I)Landroid/icu/util/CharsTrie$Iterator;
    .locals 6

    new-instance v0, Landroid/icu/util/CharsTrie$Iterator;

    iget-object v1, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    iget v3, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    const/4 v5, 0x0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie$Iterator;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public next(I)Landroid/icu/util/BytesTrie$Result;
    .locals 6

    iget v2, p0, Landroid/icu/util/CharsTrie;->pos_:I

    if-gez v2, :cond_0

    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v4

    :cond_0
    iget v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    if-ltz v0, :cond_3

    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne p1, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    iput v3, p0, Landroid/icu/util/CharsTrie;->pos_:I

    if-gez v0, :cond_1

    iget-object v4, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v4, 0x40

    if-lt v1, v4, :cond_1

    sget-object v4, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    shr-int/lit8 v5, v1, 0xf

    aget-object v4, v4, v5

    :goto_0
    return-object v4

    :cond_1
    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    sget-object v4, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v4

    :cond_3
    invoke-direct {p0, v2, p1}, Landroid/icu/util/CharsTrie;->nextImpl(II)Landroid/icu/util/BytesTrie$Result;

    move-result-object v4

    return-object v4
.end method

.method public next(Ljava/lang/CharSequence;II)Landroid/icu/util/BytesTrie$Result;
    .locals 9

    const/16 v8, 0x40

    if-lt p2, p3, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/CharsTrie;->current()Landroid/icu/util/BytesTrie$Result;

    move-result-object v7

    return-object v7

    :cond_0
    iget v3, p0, Landroid/icu/util/CharsTrie;->pos_:I

    if-gez v3, :cond_1

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v7

    :cond_1
    iget v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    move v4, v3

    move v6, p2

    :goto_0
    if-ne v6, p3, :cond_3

    iput v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    iput v4, p0, Landroid/icu/util/CharsTrie;->pos_:I

    if-gez v1, :cond_2

    iget-object v7, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-lt v2, v8, :cond_2

    sget-object v7, Landroid/icu/util/CharsTrie;->valueResults_:[Landroid/icu/util/BytesTrie$Result;

    shr-int/lit8 v8, v2, 0xf

    aget-object v7, v7, v8

    :goto_1
    return-object v7

    :cond_2
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    goto :goto_1

    :cond_3
    add-int/lit8 p2, v6, 0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-gez v1, :cond_4

    iput v1, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    iget-object v7, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v3, v4, 0x1

    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v6, p2

    :goto_2
    const/16 v7, 0x30

    if-ge v2, v7, :cond_9

    invoke-direct {p0, v3, v2, v0}, Landroid/icu/util/CharsTrie;->branchNext(III)Landroid/icu/util/BytesTrie$Result;

    move-result-object v5

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-ne v5, v7, :cond_6

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v7

    :cond_4
    iget-object v7, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v7, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_5

    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v7

    :cond_5
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    move v4, v3

    move v6, p2

    goto :goto_0

    :cond_6
    if-ne v6, p3, :cond_7

    return-object v5

    :cond_7
    sget-object v7, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v5, v7, :cond_8

    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v7

    :cond_8
    add-int/lit8 p2, v6, 0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget v3, p0, Landroid/icu/util/CharsTrie;->pos_:I

    iget-object v7, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v3, v4

    :goto_3
    move v6, p2

    goto :goto_2

    :cond_9
    if-ge v2, v8, :cond_b

    add-int/lit8 v1, v2, -0x30

    iget-object v7, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v0, v7, :cond_a

    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v7

    :cond_a
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, -0x1

    move v4, v3

    goto/16 :goto_0

    :cond_b
    const v7, 0x8000

    and-int/2addr v7, v2

    if-eqz v7, :cond_c

    invoke-direct {p0}, Landroid/icu/util/CharsTrie;->stop()V

    sget-object v7, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    return-object v7

    :cond_c
    invoke-static {v3, v2}, Landroid/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result v3

    and-int/lit8 v2, v2, 0x3f

    move p2, v6

    goto :goto_3
.end method

.method public nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;
    .locals 1

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    goto :goto_0
.end method

.method public reset()Landroid/icu/util/CharsTrie;
    .locals 1

    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    return-object p0
.end method

.method public resetToState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;
    .locals 2

    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-get0(Landroid/icu/util/CharsTrie$State;)Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-get3(Landroid/icu/util/CharsTrie$State;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-get1(Landroid/icu/util/CharsTrie$State;)I

    move-result v0

    iput v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    invoke-static {p1}, Landroid/icu/util/CharsTrie$State;->-get2(Landroid/icu/util/CharsTrie$State;)I

    move-result v0

    iput v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "incompatible trie state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveState(Landroid/icu/util/CharsTrie$State;)Landroid/icu/util/CharsTrie;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-set0(Landroid/icu/util/CharsTrie$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget v0, p0, Landroid/icu/util/CharsTrie;->root_:I

    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-set3(Landroid/icu/util/CharsTrie$State;I)I

    iget v0, p0, Landroid/icu/util/CharsTrie;->pos_:I

    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-set1(Landroid/icu/util/CharsTrie$State;I)I

    iget v0, p0, Landroid/icu/util/CharsTrie;->remainingMatchLength_:I

    invoke-static {p1, v0}, Landroid/icu/util/CharsTrie$State;->-set2(Landroid/icu/util/CharsTrie$State;I)I

    return-object p0
.end method
