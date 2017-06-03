.class public final Landroid/icu/impl/coll/Collation;
.super Ljava/lang/Object;
.source "Collation.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final BEFORE_WEIGHT16:I = 0x100

.field static final BUILDER_DATA_TAG:I = 0x7

.field public static final CASE_AND_QUATERNARY_MASK:I = 0xc0c0

.field static final CASE_AND_TERTIARY_MASK:I = 0xff3f

.field public static final CASE_LEVEL:I = 0x3

.field static final CASE_LEVEL_FLAG:I = 0x8

.field public static final CASE_MASK:I = 0xc000

.field static final COMMON_BYTE:I = 0x5

.field static final COMMON_SECONDARY_CE:I = 0x5000000

.field public static final COMMON_SEC_AND_TER_CE:I = 0x5000500

.field static final COMMON_TERTIARY_CE:I = 0x500

.field public static final COMMON_WEIGHT16:I = 0x500

.field static final CONTRACTION_TAG:I = 0x9

.field static final CONTRACT_NEXT_CCC:I = 0x200

.field static final CONTRACT_SINGLE_CP_NO_MATCH:I = 0x100

.field static final CONTRACT_TRAILING_CCC:I = 0x400

.field static final DIGIT_TAG:I = 0xa

.field public static final EQUAL:I = 0x0

.field static final EXPANSION32_TAG:I = 0x5

.field static final EXPANSION_TAG:I = 0x6

.field static final FALLBACK_CE32:I = 0xc0

.field static final FALLBACK_TAG:I = 0x0

.field static final FFFD_CE32:I = -0x2fafb

.field public static final FFFD_PRIMARY:J = 0xfffd0000L

.field static final FIRST_TRAILING_PRIMARY:J = 0xff020200L

.field static final FIRST_UNASSIGNED_PRIMARY:J = 0xfe040200L

.field public static final GREATER:I = 0x1

.field static final HANGUL_NO_SPECIAL_JAMO:I = 0x100

.field static final HANGUL_TAG:I = 0xc

.field public static final IDENTICAL_LEVEL:I = 0x6

.field static final IDENTICAL_LEVEL_FLAG:I = 0x40

.field static final IMPLICIT_TAG:I = 0xf

.field static final LATIN_EXPANSION_TAG:I = 0x4

.field static final LEAD_ALL_FALLBACK:I = 0x100

.field static final LEAD_ALL_UNASSIGNED:I = 0x0

.field static final LEAD_MIXED:I = 0x200

.field static final LEAD_SURROGATE_TAG:I = 0xd

.field static final LEAD_TYPE_MASK:I = 0x300

.field public static final LESS:I = -0x1

.field public static final LEVEL_SEPARATOR_BYTE:I = 0x1

.field static final LONG_PRIMARY_CE32_LOW_BYTE:I = 0xc1

.field static final LONG_PRIMARY_TAG:I = 0x1

.field static final LONG_SECONDARY_TAG:I = 0x2

.field static final MAX_EXPANSION_LENGTH:I = 0x1f

.field static final MAX_INDEX:I = 0x7ffff

.field public static final MAX_PRIMARY:J = 0xffff0000L

.field static final MAX_REGULAR_CE32:I = -0xfafb

.field public static final MERGE_SEPARATOR_BYTE:I = 0x2

.field static final MERGE_SEPARATOR_CE32:I = 0x2000505

.field public static final MERGE_SEPARATOR_PRIMARY:J = 0x2000000L

.field public static final NO_CE:J = 0x101000100L

.field static final NO_CE32:I = 0x1

.field static final NO_CE_PRIMARY:J = 0x1L

.field static final NO_CE_WEIGHT16:I = 0x100

.field public static final NO_LEVEL:I = 0x0

.field static final NO_LEVEL_FLAG:I = 0x1

.field static final OFFSET_TAG:I = 0xe

.field static final ONLY_SEC_TER_MASK:I = -0xc0c1

.field public static final ONLY_TERTIARY_MASK:I = 0x3f3f

.field static final PREFIX_TAG:I = 0x8

.field public static final PRIMARY_COMPRESSION_HIGH_BYTE:I = 0xff

.field public static final PRIMARY_COMPRESSION_LOW_BYTE:I = 0x3

.field public static final PRIMARY_LEVEL:I = 0x1

.field static final PRIMARY_LEVEL_FLAG:I = 0x2

.field public static final QUATERNARY_LEVEL:I = 0x5

.field static final QUATERNARY_LEVEL_FLAG:I = 0x20

.field public static final QUATERNARY_MASK:I = 0xc0

.field static final RESERVED_TAG_3:I = 0x3

.field static final SECONDARY_AND_CASE_MASK:I = -0x4000

.field public static final SECONDARY_LEVEL:I = 0x2

.field static final SECONDARY_LEVEL_FLAG:I = 0x4

.field static final SECONDARY_MASK:I = -0x10000

.field public static final SENTINEL_CP:I = -0x1

.field static final SPECIAL_CE32_LOW_BYTE:I = 0xc0

.field public static final TERMINATOR_BYTE:I = 0x0

.field public static final TERTIARY_LEVEL:I = 0x4

.field static final TERTIARY_LEVEL_FLAG:I = 0x10

.field static final TRAIL_WEIGHT_BYTE:I = 0xff

.field static final U0000_TAG:I = 0xb

.field static final UNASSIGNED_CE32:I = -0x1

.field static final UNASSIGNED_IMPLICIT_BYTE:I = 0xfe

.field public static final ZERO_LEVEL:I = 0x7

.field static final ZERO_LEVEL_FLAG:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/Collation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/Collation;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ce32HasContext(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static ceFromCE32(I)J
    .locals 6

    const/16 v4, 0x20

    const/4 v1, 0x1

    and-int/lit16 v0, p0, 0xff

    const/16 v2, 0xc0

    if-ge v0, v2, :cond_0

    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    int-to-long v2, v1

    shl-long/2addr v2, v4

    const v1, 0xff00

    and-int/2addr v1, p0

    int-to-long v4, v1

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    shl-int/lit8 v1, v0, 0x8

    int-to-long v4, v1

    or-long/2addr v2, v4

    return-wide v2

    :cond_0
    sub-int/2addr p0, v0

    and-int/lit8 v2, v0, 0xf

    if-ne v2, v1, :cond_1

    int-to-long v2, p0

    shl-long/2addr v2, v4

    const-wide/32 v4, 0x5000500

    or-long/2addr v2, v4

    return-wide v2

    :cond_1
    sget-boolean v2, Landroid/icu/impl/coll/Collation;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    and-int/lit8 v2, v0, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :goto_0
    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    return-wide v2
.end method

.method static ceFromLongPrimaryCE32(I)J
    .locals 4

    and-int/lit16 v0, p0, -0x100

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/32 v2, 0x5000500

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static ceFromLongSecondaryCE32(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffff00L

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static ceFromSimpleCE32(I)J
    .locals 5

    sget-boolean v0, Landroid/icu/impl/coll/Collation;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0xc0

    if-ge v0, v1, :cond_0

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
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const v2, 0xff00

    and-int/2addr v2, p0

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    and-int/lit16 v2, p0, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static decThreeBytePrimaryByOneStep(JZI)J
    .locals 8

    const-wide/32 v6, 0x1000000

    const/4 v4, 0x2

    const/4 v2, 0x0

    sget-boolean v3, Landroid/icu/impl/coll/Collation;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-lez p3, :cond_0

    const/16 v3, 0x7f

    if-gt p3, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    const/16 v2, 0x8

    shr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    sub-int v1, v2, p3

    if-lt v1, v4, :cond_2

    const-wide v2, 0xffff0000L

    and-long/2addr v2, p0

    shl-int/lit8 v4, v1, 0x8

    int-to-long v4, v4

    or-long/2addr v2, v4

    return-wide v2

    :cond_2
    add-int/lit16 v1, v1, 0xfe

    const/16 v2, 0x10

    shr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, -0x1

    if-eqz p2, :cond_4

    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    const/16 v0, 0xfe

    sub-long/2addr p0, v6

    :cond_3
    :goto_0
    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    shl-int/lit8 v4, v0, 0x10

    int-to-long v4, v4

    or-long/2addr v2, v4

    shl-int/lit8 v4, v1, 0x8

    int-to-long v4, v4

    or-long/2addr v2, v4

    return-wide v2

    :cond_4
    if-ge v0, v4, :cond_3

    const/16 v0, 0xff

    sub-long/2addr p0, v6

    goto :goto_0
.end method

.method static decTwoBytePrimaryByOneStep(JZI)J
    .locals 6

    const-wide/32 v4, 0x1000000

    const/4 v1, 0x0

    sget-boolean v2, Landroid/icu/impl/coll/Collation;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-lez p3, :cond_0

    const/16 v2, 0x7f

    if-gt p3, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    const/16 v1, 0x10

    shr-long v2, p0, v1

    long-to-int v1, v2

    and-int/lit16 v1, v1, 0xff

    sub-int v0, v1, p3

    if-eqz p2, :cond_3

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    add-int/lit16 v0, v0, 0xfb

    sub-long/2addr p0, v4

    :cond_2
    :goto_0
    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    shl-int/lit8 v1, v0, 0x10

    int-to-long v4, v1

    or-long/2addr v2, v4

    return-wide v2

    :cond_3
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    add-int/lit16 v0, v0, 0xfe

    sub-long/2addr p0, v4

    goto :goto_0
.end method

.method static digitFromCE32(I)C
    .locals 1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0xf

    int-to-char v0, v0

    return v0
.end method

.method static getThreeBytePrimaryForOffsetData(IJ)J
    .locals 9

    const/4 v0, 0x0

    const/16 v3, 0x20

    ushr-long v4, p1, v3

    long-to-int v1, p1

    shr-int/lit8 v3, v1, 0x8

    sub-int v3, p0, v3

    and-int/lit8 v6, v1, 0x7f

    mul-int v2, v3, v6

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v4, v5, v0, v2}, Landroid/icu/impl/coll/Collation;->incThreeBytePrimaryByOffset(JZI)J

    move-result-wide v6

    return-wide v6
.end method

.method static hasCE32Tag(II)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static incThreeBytePrimaryByOffset(JZI)J
    .locals 8

    const/16 v4, 0x10

    const/16 v2, 0x8

    shr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, -0x2

    add-int/2addr p3, v2

    rem-int/lit16 v2, p3, 0xfe

    add-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v0, v2

    div-int/lit16 p3, p3, 0xfe

    if-eqz p2, :cond_0

    shr-long v2, p0, v4

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, -0x4

    add-int/2addr p3, v2

    rem-int/lit16 v2, p3, 0xfb

    add-int/lit8 v2, v2, 0x4

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    div-int/lit16 p3, p3, 0xfb

    :goto_0
    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    int-to-long v4, p3

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    or-long/2addr v2, v0

    return-wide v2

    :cond_0
    shr-long v2, p0, v4

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, -0x2

    add-int/2addr p3, v2

    rem-int/lit16 v2, p3, 0xfe

    add-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    div-int/lit16 p3, p3, 0xfe

    goto :goto_0
.end method

.method public static incTwoBytePrimaryByOffset(JZI)J
    .locals 8

    const/16 v2, 0x10

    if-eqz p2, :cond_0

    shr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, -0x4

    add-int/2addr p3, v2

    rem-int/lit16 v2, p3, 0xfb

    add-int/lit8 v2, v2, 0x4

    shl-int/lit8 v2, v2, 0x10

    int-to-long v0, v2

    div-int/lit16 p3, p3, 0xfb

    :goto_0
    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    int-to-long v4, p3

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    or-long/2addr v2, v0

    return-wide v2

    :cond_0
    shr-long v2, p0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, -0x2

    add-int/2addr p3, v2

    rem-int/lit16 v2, p3, 0xfe

    add-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v0, v2

    div-int/lit16 p3, p3, 0xfe

    goto :goto_0
.end method

.method static indexFromCE32(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0xd

    return v0
.end method

.method static isAssignedCE32(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc0

    if-eq p0, v1, :cond_0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isContractionCE32(I)Z
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v0

    return v0
.end method

.method static isLongPrimaryCE32(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v0

    return v0
.end method

.method static isPrefixCE32(I)Z
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v0

    return v0
.end method

.method static isSelfContainedCE32(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSimpleOrLongCE32(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSpecialCE32(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0xc0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static latinCE0FromCE32(I)J
    .locals 4

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/32 v2, 0x5000000

    or-long/2addr v0, v2

    const/high16 v2, 0xff0000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static latinCE1FromCE32(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0xff00

    and-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x500

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static lengthFromCE32(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static makeCE(J)J
    .locals 4

    const/16 v0, 0x20

    shl-long v0, p0, v0

    const-wide/32 v2, 0x5000500

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static makeCE(JIII)J
    .locals 6

    const/16 v0, 0x20

    shl-long v0, p0, v0

    int-to-long v2, p2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p3

    or-long/2addr v0, v2

    shl-int/lit8 v2, p4, 0x6

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static makeCE32FromTagAndIndex(II)I
    .locals 1

    shl-int/lit8 v0, p1, 0xd

    or-int/lit16 v0, v0, 0xc0

    or-int/2addr v0, p0

    return v0
.end method

.method static makeCE32FromTagIndexAndLength(III)I
    .locals 2

    shl-int/lit8 v0, p1, 0xd

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/lit16 v0, v0, 0xc0

    or-int/2addr v0, p0

    return v0
.end method

.method static makeLongPrimaryCE32(J)I
    .locals 2

    const-wide/16 v0, 0xc1

    or-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method static makeLongSecondaryCE32(I)I
    .locals 1

    or-int/lit16 v0, p0, 0xc0

    or-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static primaryFromLongPrimaryCE32(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffff00L

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static tagFromCE32(I)I
    .locals 1

    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method static unassignedCEFromCodePoint(I)J
    .locals 2

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->unassignedPrimaryFromCodePoint(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static unassignedPrimaryFromCodePoint(I)J
    .locals 4

    add-int/lit8 p0, p0, 0x1

    rem-int/lit8 v2, p0, 0x12

    mul-int/lit8 v2, v2, 0xe

    add-int/lit8 v2, v2, 0x2

    int-to-long v0, v2

    div-int/lit8 p0, p0, 0x12

    rem-int/lit16 v2, p0, 0xfe

    add-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    div-int/lit16 p0, p0, 0xfe

    rem-int/lit16 v2, p0, 0xfb

    add-int/lit8 v2, v2, 0x4

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide v2, 0xfe000000L

    or-long/2addr v2, v0

    return-wide v2
.end method
