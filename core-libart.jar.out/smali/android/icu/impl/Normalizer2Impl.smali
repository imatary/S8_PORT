.class public final Landroid/icu/impl/Normalizer2Impl;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Normalizer2Impl$1;,
        Landroid/icu/impl/Normalizer2Impl$Hangul;,
        Landroid/icu/impl/Normalizer2Impl$IsAcceptable;,
        Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;,
        Landroid/icu/impl/Normalizer2Impl$UTF16Plus;
    }
.end annotation


# static fields
.field private static final CANON_HAS_COMPOSITIONS:I = 0x40000000

.field private static final CANON_HAS_SET:I = 0x200000

.field private static final CANON_NOT_SEGMENT_STARTER:I = -0x80000000

.field private static final CANON_VALUE_MASK:I = 0x1fffff

.field public static final COMP_1_LAST_TUPLE:I = 0x8000

.field public static final COMP_1_TRAIL_LIMIT:I = 0x3400

.field public static final COMP_1_TRAIL_MASK:I = 0x7ffe

.field public static final COMP_1_TRAIL_SHIFT:I = 0x9

.field public static final COMP_1_TRIPLE:I = 0x1

.field public static final COMP_2_TRAIL_MASK:I = 0xffc0

.field public static final COMP_2_TRAIL_SHIFT:I = 0x6

.field private static final DATA_FORMAT:I = 0x4e726d32

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

.field public static final IX_COUNT:I = 0x10

.field public static final IX_EXTRA_DATA_OFFSET:I = 0x1

.field public static final IX_LIMIT_NO_NO:I = 0xc

.field public static final IX_MIN_COMP_NO_MAYBE_CP:I = 0x9

.field public static final IX_MIN_DECOMP_NO_CP:I = 0x8

.field public static final IX_MIN_MAYBE_YES:I = 0xd

.field public static final IX_MIN_NO_NO:I = 0xb

.field public static final IX_MIN_YES_NO:I = 0xa

.field public static final IX_MIN_YES_NO_MAPPINGS_ONLY:I = 0xe

.field public static final IX_NORM_TRIE_OFFSET:I = 0x0

.field public static final IX_RESERVED3_OFFSET:I = 0x3

.field public static final IX_SMALL_FCD_OFFSET:I = 0x2

.field public static final IX_TOTAL_SIZE:I = 0x7

.field public static final JAMO_L:I = 0x1

.field public static final JAMO_VT:I = 0xff00

.field public static final MAPPING_HAS_CCC_LCCC_WORD:I = 0x80

.field public static final MAPPING_HAS_RAW_MAPPING:I = 0x40

.field public static final MAPPING_LENGTH_MASK:I = 0x1f

.field public static final MAPPING_NO_COMP_BOUNDARY_AFTER:I = 0x20

.field public static final MAX_DELTA:I = 0x40

.field public static final MIN_CCC_LCCC_CP:I = 0x300

.field public static final MIN_NORMAL_MAYBE_YES:I = 0xfe00

.field public static final MIN_YES_YES_WITH_CC:I = 0xff01

.field private static final segmentStarterMapper:Landroid/icu/impl/Trie2$ValueMapper;


# instance fields
.field private canonIterData:Landroid/icu/impl/Trie2_32;

.field private canonStartSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation
.end field

.field private dataVersion:Landroid/icu/util/VersionInfo;

.field private extraData:Ljava/lang/String;

.field private limitNoNo:I

.field private maybeYesCompositions:Ljava/lang/String;

.field private minCompNoMaybeCP:I

.field private minDecompNoCP:I

.field private minMaybeYes:I

.field private minNoNo:I

.field private minYesNo:I

.field private minYesNoMappingsOnly:I

.field private normTrie:Landroid/icu/impl/Trie2_16;

.field private smallFCD:[B

.field private tccc180:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/Normalizer2Impl$IsAcceptable;-><init>(Landroid/icu/impl/Normalizer2Impl$IsAcceptable;)V

    sput-object v0, Landroid/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    new-instance v0, Landroid/icu/impl/Normalizer2Impl$1;

    invoke-direct {v0}, Landroid/icu/impl/Normalizer2Impl$1;-><init>()V

    sput-object v0, Landroid/icu/impl/Normalizer2Impl;->segmentStarterMapper:Landroid/icu/impl/Trie2$ValueMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addComposites(ILandroid/icu/text/UnicodeSet;)V
    .locals 6

    :cond_0
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 p1, p1, 0x2

    :goto_0
    shr-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result v3

    invoke-direct {p0, v3, p2}, Landroid/icu/impl/Normalizer2Impl;->addComposites(ILandroid/icu/text/UnicodeSet;)V

    :cond_1
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    return-void

    :cond_2
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, -0xffc1

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x10

    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    add-int/lit8 v5, p1, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    or-int v1, v3, v4

    add-int/lit8 p1, p1, 0x3

    goto :goto_0
.end method

.method private addToStartSet(Landroid/icu/impl/Trie2Writable;II)V
    .locals 6

    const/high16 v5, 0x200000

    const v4, 0x1fffff

    invoke-virtual {p1, p3}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v0

    const v3, 0x3fffff

    and-int/2addr v3, v0

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    or-int v3, v0, p2

    invoke-virtual {p1, p3, v3}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    :goto_0
    return-void

    :cond_0
    and-int v3, v0, v5

    if-nez v3, :cond_2

    and-int v1, v0, v4

    const/high16 v3, -0x200000

    and-int/2addr v3, v0

    or-int/2addr v3, v5

    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    or-int v0, v3, v4

    invoke-virtual {p1, p3, v0}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_1
    :goto_1
    invoke-virtual {v2, p2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    and-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/UnicodeSet;

    goto :goto_1
.end method

.method private static combine(Ljava/lang/String;II)I
    .locals 6

    const/16 v4, 0x3400

    if-ge p2, v4, :cond_2

    shl-int/lit8 v1, p2, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v1, v0, :cond_0

    and-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, 0x2

    add-int/2addr p1, v4

    goto :goto_0

    :cond_0
    and-int/lit16 v4, v0, 0x7ffe

    if-ne v1, v4, :cond_4

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, p1, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/2addr v4, v5

    return v4

    :cond_1
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    return v4

    :cond_2
    shr-int/lit8 v4, p2, 0x9

    and-int/lit8 v4, v4, -0x2

    add-int/lit16 v1, v4, 0x3400

    shl-int/lit8 v4, p2, 0x6

    const v5, 0xffff

    and-int v2, v4, v5

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v1, v0, :cond_3

    and-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, 0x2

    add-int/2addr p1, v4

    goto :goto_1

    :cond_3
    and-int/lit16 v4, v0, 0x7ffe

    if-ne v1, v4, :cond_4

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v2, v3, :cond_6

    const v4, 0x8000

    and-int/2addr v4, v0

    if-eqz v4, :cond_5

    :cond_4
    const/4 v4, -0x1

    return v4

    :cond_5
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_6
    const v4, 0xffc0

    and-int/2addr v4, v3

    if-ne v2, v4, :cond_4

    const v4, -0xffc1

    and-int/2addr v4, v3

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, p1, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/2addr v4, v5

    return v4
.end method

.method private decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p3}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    and-int/lit8 v7, v6, 0x1f

    shr-int/lit8 v5, v6, 0x8

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shr-int/lit8 v4, v0, 0x8

    :goto_2
    add-int/lit8 p2, p2, 0x1

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int v3, p2, v7

    move-object v0, p3

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIII)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private enumLcccRange(IIILandroid/icu/text/UnicodeSet;)V
    .locals 3

    const/16 v2, 0xff

    invoke-virtual {p0, p3}, Landroid/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {p4, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    if-le p1, p2, :cond_0

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    if-le v0, v2, :cond_2

    invoke-virtual {p4, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method private enumNorm16PropertyStartsRange(IIILandroid/icu/text/UnicodeSet;)V
    .locals 3

    invoke-virtual {p4, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p3}, Landroid/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-gt p1, p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p4, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findNextCompBoundary(Ljava/lang/CharSequence;II)I
    .locals 3

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v2, v0}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return p2

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr p2, v2

    goto :goto_0
.end method

.method private findNextFCDBoundary(Ljava/lang/CharSequence;II)I
    .locals 3

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    const/16 v1, 0x300

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_1

    :cond_0
    return p2

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0
.end method

.method private findPreviousCompBoundary(Ljava/lang/CharSequence;I)I
    .locals 2

    :cond_0
    if-lez p2, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return p2
.end method

.method private findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I
    .locals 3

    :cond_0
    if-lez p2, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr p2, v1

    const/16 v1, 0x300

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    :cond_1
    return p2
.end method

.method private getCCFromNoNo(I)I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    return v1
.end method

.method public static getCCFromYesOrMaybe(I)I
    .locals 1

    const v0, 0xfe00

    if-lt p0, v0, :cond_0

    and-int/lit16 v0, p0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCompositionsList(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result v0

    goto :goto_0
.end method

.method private getCompositionsListForComposite(I)I
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    const v2, 0xfe00

    sub-int v1, v2, v1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, v0, 0x1f

    add-int/2addr v1, v2

    return v1
.end method

.method private getCompositionsListForDecompYes(I)I
    .locals 2

    const v1, 0xfe00

    if-eqz p1, :cond_0

    if-gt v1, p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr p1, v0

    if-gez p1, :cond_2

    add-int/2addr p1, v1

    :cond_2
    return p1
.end method

.method private hasCompBoundaryBefore(II)Z
    .locals 4

    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    invoke-direct {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    if-nez v1, :cond_3

    return v3

    :cond_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v1

    return v1
.end method

.method private isCompYesAndZeroCC(I)Z
    .locals 1

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDecompNoAlgorithmic(I)Z
    .locals 1

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDecompYesAndZeroCC(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v2, :cond_0

    const v2, 0xff00

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v2, p1, :cond_2

    const v2, 0xfe00

    if-le p1, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isHangul(I)Z
    .locals 1

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInert(I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isJamoL(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isJamoVT(I)Z
    .locals 1

    const v0, 0xff00

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaybe(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v1, p1, :cond_0

    const v1, 0xff00

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isMaybeOrNonZeroCC(I)Z
    .locals 1

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMostDecompYesAndZeroCC(I)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v1, :cond_0

    const v1, 0xfe00

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v1, 0xff00

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapAlgorithmic(II)I
    .locals 2

    add-int v0, p1, p2

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    add-int/lit8 v1, v1, -0x40

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private recompose(Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V
    .locals 19

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v8, p2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v6, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v11, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v17

    add-int v8, v8, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v7

    invoke-static {v7}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/icu/impl/Normalizer2Impl;->isMaybe(I)Z

    move-result v17

    if-eqz v17, :cond_c

    if-ltz v6, :cond_c

    if-lt v11, v3, :cond_2

    if-nez v11, :cond_c

    :cond_2
    invoke-static {v7}, Landroid/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x11a7

    move/from16 v0, v17

    if-ge v2, v0, :cond_4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x1100

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v10, v0

    const/16 v17, 0x13

    move/from16 v0, v17

    if-ge v10, v0, :cond_4

    add-int/lit8 v9, v8, -0x1

    mul-int/lit8 v17, v10, 0x15

    add-int/lit16 v0, v2, -0x1161

    move/from16 v18, v0

    add-int v17, v17, v18

    mul-int/lit8 v17, v17, 0x1c

    const v18, 0xac00

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-char v15, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move/from16 v0, v17

    if-eq v8, v0, :cond_3

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x11a7

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    add-int/lit8 v8, v8, 0x1

    add-int v17, v15, v16

    move/from16 v0, v17

    int-to-char v15, v0

    :cond_3
    invoke-virtual {v12, v13, v15}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v12, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v8, v9

    :cond_4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move/from16 v0, v17

    if-ne v8, v0, :cond_6

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flush()V

    return-void

    :cond_6
    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v6, v2}, Landroid/icu/impl/Normalizer2Impl;->combine(Ljava/lang/String;II)I

    move-result v5

    if-ltz v5, :cond_c

    shr-int/lit8 v4, v5, 0x1

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v17

    sub-int v9, v8, v17

    invoke-virtual {v12, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v8, v9

    if-eqz v14, :cond_9

    const v17, 0xffff

    move/from16 v0, v17

    if-le v4, v0, :cond_8

    invoke-static {v4}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v17, v13, 0x1

    invoke-static {v4}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move/from16 v0, v17

    if-eq v8, v0, :cond_5

    and-int/lit8 v17, v5, 0x1

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result v6

    goto/16 :goto_0

    :cond_8
    int-to-char v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    add-int/lit8 v8, v9, -0x1

    goto :goto_1

    :cond_9
    const v17, 0xffff

    move/from16 v0, v17

    if-le v4, v0, :cond_a

    const/4 v14, 0x1

    invoke-static {v4}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v17, v13, 0x1

    invoke-static {v4}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v9, 0x1

    goto :goto_1

    :cond_a
    int-to-char v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v13, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_b
    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_c
    move v11, v3

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move/from16 v0, v17

    if-eq v8, v0, :cond_5

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    move-result v6

    if-ltz v6, :cond_1

    const v17, 0xffff

    move/from16 v0, v17

    if-gt v2, v0, :cond_d

    const/4 v14, 0x0

    add-int/lit8 v13, v8, -0x1

    goto/16 :goto_0

    :cond_d
    const/4 v14, 0x1

    add-int/lit8 v13, v8, -0x2

    goto/16 :goto_0

    :cond_e
    if-eqz p3, :cond_1

    const/4 v6, -0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public addCanonIterPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 4

    invoke-virtual {p0}, Landroid/icu/impl/Normalizer2Impl;->ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    sget-object v3, Landroid/icu/impl/Normalizer2Impl;->segmentStarterMapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-virtual {v2, v3}, Landroid/icu/impl/Trie2_32;->iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method public addLcccChars(Landroid/icu/text/UnicodeSet;)V
    .locals 5

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v4, v0, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v2, v3, v4, p1}, Landroid/icu/impl/Normalizer2Impl;->enumLcccRange(IIILandroid/icu/text/UnicodeSet;)V

    goto :goto_0
.end method

.method public addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 7

    const v6, 0xd7a4

    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v3}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    iget-boolean v3, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v3, :cond_1

    :cond_0
    const v0, 0xac00

    :goto_1
    if-ge v0, v6, :cond_2

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v0, v0, 0x1c

    goto :goto_1

    :cond_1
    iget v3, v1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v4, v1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v5, v1, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v3, v4, v5, p1}, Landroid/icu/impl/Normalizer2Impl;->enumNorm16PropertyStartsRange(IIILandroid/icu/text/UnicodeSet;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z
    .locals 19

    move-object/from16 v0, p0

    iget v7, v0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    move/from16 v11, p2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_0
    move/from16 v13, p2

    :goto_1
    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_2

    invoke-interface/range {p1 .. p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-lt v4, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    move-object/from16 v17, v0

    int-to-char v0, v4

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    int-to-char v0, v4

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v17

    if-nez v17, :cond_4

    :cond_2
    move/from16 v0, p2

    if-eq v0, v13, :cond_b

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_7

    if-eqz p5, :cond_3

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v13, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_3
    :goto_2
    const/16 v17, 0x1

    return v17

    :cond_4
    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v17

    if-eqz v17, :cond_6

    add-int/lit8 v17, p2, 0x1

    move/from16 v0, v17

    move/from16 v1, p3

    if-eq v0, v1, :cond_5

    add-int/lit8 v17, p2, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v17

    if-eqz v17, :cond_5

    int-to-char v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v17

    add-int p2, p2, v17

    goto :goto_1

    :cond_6
    move/from16 v0, p2

    if-ge v13, v0, :cond_5

    add-int/lit8 v17, p2, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v17

    if-eqz v17, :cond_5

    add-int/lit8 p2, p2, -0x1

    int-to-char v0, v4

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v5, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_3

    :cond_7
    add-int/lit8 v11, p2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v17

    if-eqz v17, :cond_8

    if-ge v13, v11, :cond_8

    add-int/lit8 v17, v11, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v17

    if-eqz v17, :cond_8

    add-int/lit8 v11, v11, -0x1

    :cond_8
    if-eqz p5, :cond_a

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v11}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v11, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :goto_4
    move/from16 v13, p2

    :cond_9
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v17

    add-int p2, p2, v17

    invoke-static {v9}, Landroid/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    move-result v17

    if-eqz v17, :cond_12

    if-eq v11, v13, :cond_12

    add-int/lit8 v17, v13, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/4 v8, 0x0

    const/16 v17, 0x11a7

    move/from16 v0, v17

    if-ge v4, v0, :cond_f

    add-int/lit16 v0, v10, -0x1100

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v10, v0

    const/16 v17, 0x13

    move/from16 v0, v17

    if-ge v10, v0, :cond_e

    if-nez p5, :cond_c

    const/16 v17, 0x0

    return v17

    :cond_a
    const/4 v12, 0x0

    goto :goto_4

    :cond_b
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_9

    goto/16 :goto_2

    :cond_c
    mul-int/lit8 v17, v10, 0x15

    add-int/lit16 v0, v4, -0x1161

    move/from16 v18, v0

    add-int v17, v17, v18

    mul-int/lit8 v17, v17, 0x1c

    const v18, 0xac00

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-char v15, v0

    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_d

    invoke-interface/range {p1 .. p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x11a7

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    add-int/lit8 p2, p2, 0x1

    add-int v17, v15, v16

    move/from16 v0, v17

    int-to-char v15, v0

    move/from16 v11, p2

    move-object/from16 v0, p6

    invoke-virtual {v0, v15}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setLastChar(C)V

    goto/16 :goto_0

    :cond_d
    const/4 v8, 0x1

    :cond_e
    if-nez v8, :cond_12

    if-eqz p5, :cond_11

    int-to-char v0, v4

    move/from16 v17, v0

    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto/16 :goto_0

    :cond_f
    invoke-static {v10}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isHangulWithoutJamoT(C)Z

    move-result v17

    if-eqz v17, :cond_e

    if-nez p5, :cond_10

    const/16 v17, 0x0

    return v17

    :cond_10
    add-int v17, v10, v4

    move/from16 v0, v17

    add-int/lit16 v0, v0, -0x11a7

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->setLastChar(C)V

    move/from16 v11, p2

    goto/16 :goto_0

    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_12
    const v17, 0xff01

    move/from16 v0, v17

    if-lt v9, v0, :cond_17

    and-int/lit16 v6, v9, 0xff

    if-eqz p4, :cond_14

    if-eqz p5, :cond_13

    invoke-virtual/range {p6 .. p6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getLastCC()I

    move-result v17

    :goto_5
    if-nez v17, :cond_14

    if-ge v11, v13, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v13}, Landroid/icu/impl/Normalizer2Impl;->getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_14

    if-nez p5, :cond_18

    const/16 v17, 0x0

    return v17

    :cond_13
    move/from16 v17, v12

    goto :goto_5

    :cond_14
    if-eqz p5, :cond_15

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    goto/16 :goto_0

    :cond_15
    if-gt v12, v6, :cond_16

    move v12, v6

    goto/16 :goto_0

    :cond_16
    const/16 v17, 0x0

    return v17

    :cond_17
    if-nez p5, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v17

    if-eqz v17, :cond_1a

    :cond_18
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v17

    if-eqz v17, :cond_1b

    move v11, v13

    :cond_19
    :goto_6
    invoke-direct/range {p0 .. p3}, Landroid/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;II)I

    move-result p2

    invoke-virtual/range {p6 .. p6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p4

    invoke-direct {v0, v1, v14, v2}, Landroid/icu/impl/Normalizer2Impl;->recompose(Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V

    if-nez p5, :cond_1d

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v11, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->equals(Ljava/lang/CharSequence;II)Z

    move-result v17

    if-nez v17, :cond_1c

    const/16 v17, 0x0

    return v17

    :cond_1a
    const/16 v17, 0x0

    return v17

    :cond_1b
    if-eqz p5, :cond_19

    sub-int v17, v13, v11

    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    goto :goto_6

    :cond_1c
    invoke-virtual/range {p6 .. p6}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->remove()V

    const/4 v12, 0x0

    :cond_1d
    move/from16 v11, p2

    goto/16 :goto_0
.end method

.method public composeAndAppend(Ljava/lang/CharSequence;ZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 13

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v12}, Landroid/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;II)I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v3

    invoke-direct {p0, v1, v3}, Landroid/icu/impl/Normalizer2Impl;->findPreviousCompBoundary(Ljava/lang/CharSequence;I)I

    move-result v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v11

    add-int/2addr v1, v10

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v1, v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move/from16 v5, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    move v5, v10

    :cond_0
    if-eqz p2, :cond_1

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v6, v12

    move/from16 v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p4

    invoke-virtual {v0, p1, v5, v12}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_0
.end method

.method public composePair(II)I
    .locals 5

    const v4, 0xfe00

    const/4 v3, -0x1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    if-ge v1, v2, :cond_7

    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->isJamoL(I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit16 p2, p2, -0x1161

    if-ltz p2, :cond_1

    const/16 v2, 0x15

    if-ge p2, v2, :cond_1

    add-int/lit16 v2, p1, -0x1100

    mul-int/lit8 v2, v2, 0x15

    add-int/2addr v2, p2

    mul-int/lit8 v2, v2, 0x1c

    const v3, 0xac00

    add-int/2addr v2, v3

    return v2

    :cond_1
    return v3

    :cond_2
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit16 p2, p2, -0x11a7

    int-to-char v2, p1

    invoke-static {v2}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isHangulWithoutJamoT(C)Z

    move-result v2

    if-eqz v2, :cond_3

    if-lez p2, :cond_3

    const/16 v2, 0x1c

    if-ge p2, v2, :cond_3

    add-int v2, p1, p2

    return v2

    :cond_3
    return v3

    :cond_4
    move v0, v1

    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-le v1, v2, :cond_5

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    add-int v0, v1, v2

    :cond_5
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int v2, v4, v2

    add-int/2addr v0, v2

    :goto_0
    if-ltz p2, :cond_6

    const v2, 0x10ffff

    if-ge v2, p2, :cond_a

    :cond_6
    return v3

    :cond_7
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt v1, v2, :cond_8

    if-gt v4, v1, :cond_9

    :cond_8
    return v3

    :cond_9
    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int v0, v1, v2

    goto :goto_0

    :cond_a
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    invoke-static {v2, v0, p2}, Landroid/icu/impl/Normalizer2Impl;->combine(Ljava/lang/String;II)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I
    .locals 11

    const/4 v8, 0x0

    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    move v5, p2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    move v7, p2

    :goto_1
    if-ne p2, p3, :cond_1

    shl-int/lit8 v9, p2, 0x1

    or-int/2addr v9, v8

    return v9

    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v3, :cond_2

    iget-object v9, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    int-to-char v10, v0

    invoke-virtual {v9, v10}, Landroid/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v4

    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    int-to-char v9, v0

    invoke-static {v9}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_4
    if-eq p2, v7, :cond_6

    add-int/lit8 v5, p2, -0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_5

    if-ge v7, v5, :cond_5

    add-int/lit8 v9, v5, -0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_5

    add-int/lit8 v5, v5, -0x1

    :cond_5
    const/4 v6, 0x0

    move v7, p2

    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr p2, v9

    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v2

    if-eqz p4, :cond_b

    if-eqz v2, :cond_b

    if-nez v6, :cond_b

    if-ge v5, v7, :cond_b

    invoke-virtual {p0, p1, v5, v7}, Landroid/icu/impl/Normalizer2Impl;->getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I

    move-result v9

    if-le v9, v2, :cond_b

    :cond_7
    shl-int/lit8 v9, v5, 0x1

    return v9

    :cond_8
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v9

    if-eqz v9, :cond_a

    add-int/lit8 v9, p2, 0x1

    if-eq v9, p3, :cond_9

    add-int/lit8 v9, p2, 0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_9

    int-to-char v9, v0

    invoke-static {v9, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    :cond_9
    :goto_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v4

    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr p2, v9

    goto/16 :goto_1

    :cond_a
    if-ge v7, p2, :cond_9

    add-int/lit8 v9, p2, -0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_9

    add-int/lit8 p2, p2, -0x1

    int-to-char v9, v0

    invoke-static {v1, v9}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_2

    :cond_b
    if-le v6, v2, :cond_c

    if-nez v2, :cond_7

    :cond_c
    move v6, v2

    const v9, 0xff01

    if-ge v4, v9, :cond_0

    if-nez p5, :cond_d

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_d
    shl-int/lit8 v9, v5, 0x1

    return v9
.end method

.method public decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 10

    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v0, 0x0

    const/4 v4, 0x0

    move v5, p2

    const/4 v6, 0x0

    :cond_0
    :goto_0
    move v7, p2

    :goto_1
    if-eq p2, p3, :cond_3

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v3, :cond_1

    iget-object v8, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    int-to-char v9, v0

    invoke-virtual {v8, v9}, Landroid/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v4

    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    int-to-char v8, v0

    invoke-static {v8}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    if-eq p2, v7, :cond_4

    if-eqz p4, :cond_8

    invoke-virtual {p4, p1, v7, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_4
    :goto_2
    if-ne p2, p3, :cond_9

    return p2

    :cond_5
    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v8, p2, 0x1

    if-eq v8, p3, :cond_6

    add-int/lit8 v8, p2, 0x1

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_6

    int-to-char v8, v0

    invoke-static {v8, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v4

    invoke-direct {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr p2, v8

    goto :goto_1

    :cond_7
    if-ge v7, p2, :cond_6

    add-int/lit8 v8, p2, -0x1

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 p2, p2, -0x1

    int-to-char v8, v0

    invoke-static {v1, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    move v5, p2

    goto :goto_2

    :cond_9
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr p2, v8

    if-eqz p4, :cond_a

    invoke-direct {p0, v0, v4, p4}, Landroid/icu/impl/Normalizer2Impl;->decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    goto :goto_0

    :cond_a
    invoke-virtual {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v2

    if-le v6, v2, :cond_b

    if-nez v2, :cond_c

    :cond_b
    move v6, v2

    const/4 v8, 0x1

    if-gt v2, v8, :cond_0

    move v5, p2

    goto/16 :goto_0

    :cond_c
    return v5
.end method

.method public decompose(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/Appendable;
    .locals 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    return-object p2
.end method

.method public decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V
    .locals 2

    const/4 v1, 0x0

    if-gez p5, :cond_0

    sub-int p5, p3, p2

    :cond_0
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    invoke-direct {v0, p0, p4, p5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    return-void
.end method

.method public decomposeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 10

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, v2, v9, p3}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    return-void

    :cond_1
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/4 v3, 0x0

    invoke-virtual {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v4

    move v5, v4

    move v8, v4

    move v7, v4

    :goto_0
    if-eqz v7, :cond_2

    move v5, v7

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v3, v0

    if-lt v3, v9, :cond_3

    :cond_2
    move-object v0, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIII)V

    invoke-virtual {p3, p1, v3, v9}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    return-void

    :cond_3
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v7

    goto :goto_0
.end method

.method public decomposeShort(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p4}, Landroid/icu/impl/Normalizer2Impl;->decompose(IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;
    .locals 15

    monitor-enter p0

    :try_start_0
    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    if-nez v13, :cond_2

    new-instance v6, Landroid/icu/impl/Trie2Writable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v6, v13, v14}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v13}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/impl/Trie2$Range;

    iget-boolean v13, v11, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v13, :cond_3

    :cond_1
    invoke-virtual {v6}, Landroid/icu/impl/Trie2Writable;->toTrie2_32()Landroid/icu/impl/Trie2_32;

    move-result-object v13

    iput-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object p0

    :cond_3
    :try_start_1
    iget v8, v11, Landroid/icu/impl/Trie2$Range;->value:I

    if-eqz v8, :cond_0

    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v13, v8, :cond_4

    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt v8, v13, :cond_0

    :cond_4
    iget v0, v11, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    :goto_0
    iget v13, v11, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    if-gt v0, v13, :cond_0

    invoke-virtual {v6, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v10

    move v7, v10

    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt v8, v13, :cond_7

    const/high16 v13, -0x80000000

    or-int v7, v10, v13

    const v13, 0xfe00

    if-ge v8, v13, :cond_5

    const/high16 v13, 0x40000000    # 2.0f

    or-int/2addr v7, v13

    :cond_5
    :goto_1
    if-eq v7, v10, :cond_6

    invoke-virtual {v6, v0, v7}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ge v8, v13, :cond_8

    const/high16 v13, 0x40000000    # 2.0f

    or-int v7, v10, v13

    goto :goto_1

    :cond_8
    move v1, v0

    move v9, v8

    :goto_2
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v13, v9, :cond_9

    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge v9, v13, :cond_9

    invoke-direct {p0, v1, v9}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v9

    goto :goto_2

    :cond_9
    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v13, v9, :cond_c

    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-ge v9, v13, :cond_c

    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit8 v4, v3, 0x1f

    and-int/lit16 v13, v3, 0x80

    if-eqz v13, :cond_a

    if-ne v0, v1, :cond_a

    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v14, v9, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    and-int/lit16 v13, v13, 0xff

    if-eqz v13, :cond_a

    const/high16 v13, -0x80000000

    or-int v7, v10, v13

    :cond_a
    if-eqz v4, :cond_5

    add-int/lit8 v9, v9, 0x1

    add-int v5, v9, v4

    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-direct {p0, v6, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->addToStartSet(Landroid/icu/impl/Trie2Writable;II)V

    iget v13, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt v9, v13, :cond_5

    :cond_b
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    add-int/2addr v9, v13

    if-ge v9, v5, :cond_5

    iget-object v13, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v2

    const/high16 v13, -0x80000000

    and-int/2addr v13, v2

    if-nez v13, :cond_b

    const/high16 v13, -0x80000000

    or-int/2addr v13, v2

    invoke-virtual {v6, v1, v13}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    :cond_c
    :try_start_2
    invoke-direct {p0, v6, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->addToStartSet(Landroid/icu/impl/Trie2Writable;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getCC(I)I
    .locals 1

    const v0, 0xfe00

    if-lt p1, v0, :cond_0

    and-int/lit16 v0, p1, 0xff

    return v0

    :cond_0
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v0, p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-direct {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCCFromNoNo(I)I

    move-result v0

    return v0
.end method

.method public getCanonStartSet(ILandroid/icu/text/UnicodeSet;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v4, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    move-result v4

    const v5, 0x7fffffff

    and-int v0, v4, v5

    if-nez v0, :cond_0

    return v6

    :cond_0
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    const v4, 0x1fffff

    and-int v3, v0, v4

    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p2, v4}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    :cond_1
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    if-ne v1, v7, :cond_4

    add-int/lit16 v4, p1, -0x1100

    mul-int/lit16 v4, v4, 0x24c

    const v5, 0xac00

    add-int v2, v5, v4

    add-int/lit16 v4, v2, 0x24c

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v2, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    :cond_2
    :goto_1
    return v7

    :cond_3
    if-eqz v3, :cond_1

    invoke-virtual {p2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->getCompositionsList(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Landroid/icu/impl/Normalizer2Impl;->addComposites(ILandroid/icu/text/UnicodeSet;)V

    goto :goto_1
.end method

.method public getCompQuickCheck(I)I
    .locals 1

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt p1, v0, :cond_0

    const v0, 0xff01

    if-gt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 7

    const/4 v1, -0x1

    :goto_0
    iget v5, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-lt p1, v5, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-gez v1, :cond_4

    const/4 v5, 0x0

    return-object v5

    :cond_1
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p1, v3}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    move v1, p1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit8 v2, v5, 0x1f

    iget-object v5, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int v6, v4, v2

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_4
    invoke-static {v1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getFCD16(I)I
    .locals 2

    const/4 v1, 0x0

    if-gez p1, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x180

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    aget v0, v0, p1

    return v0

    :cond_1
    const v0, 0xffff

    if-gt p1, v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v0

    return v0
.end method

.method public getFCD16FromBelow180(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    aget v0, v0, p1

    return v0
.end method

.method public getFCD16FromNormData(I)I
    .locals 5

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v2

    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v2, v3, :cond_0

    return v4

    :cond_0
    const v3, 0xfe00

    if-lt v2, v3, :cond_1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v2, 0x8

    or-int/2addr v3, v2

    return v3

    :cond_1
    iget v3, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt v2, v3, :cond_2

    return v4

    :cond_2
    invoke-direct {p0, v2}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, v2}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit8 v3, v1, 0x1f

    if-nez v3, :cond_4

    const/16 v3, 0x1ff

    return v3

    :cond_4
    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    :cond_5
    return v0
.end method

.method public getNorm16(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    return v0
.end method

.method public getNormTrie()Landroid/icu/impl/Trie2_16;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    return-object v0
.end method

.method public getRawDecomposition(I)Ljava/lang/String;
    .locals 8

    iget v6, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-lt p1, v6, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    return-object v6

    :cond_1
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->getRawDecomposition(ILjava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_2
    invoke-direct {p0, v3}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, p1, v3}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v6

    invoke-static {v6}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_3
    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit8 v2, v1, 0x1f

    and-int/lit8 v6, v1, 0x40

    if-eqz v6, :cond_5

    shr-int/lit8 v6, v1, 0x7

    and-int/lit8 v6, v6, 0x1

    sub-int v6, v3, v6

    add-int/lit8 v4, v6, -0x1

    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_4

    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    sub-int v7, v4, v5

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, -0x1

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v3, 0x3

    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int v7, v3, v2

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v0, v6, v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int v7, v3, v2

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I
    .locals 3

    add-int/lit8 v2, p3, -0x1

    if-ne p2, v2, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    iget v2, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v1, v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    return v2
.end method

.method public hasCompBoundaryAfter(IZZ)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v1, v4, :cond_3

    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v4

    if-eqz v4, :cond_1

    int-to-char v4, p1

    invoke-static {v4}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isHangulWithoutJamoT(C)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    :goto_2
    if-lt v1, v4, :cond_5

    return v2

    :cond_4
    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    goto :goto_2

    :cond_5
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    goto :goto_0

    :cond_6
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v4, v0, 0x20

    if-nez v4, :cond_9

    if-eqz p2, :cond_7

    const/16 v4, 0x1ff

    if-gt v0, v4, :cond_8

    :cond_7
    :goto_3
    return v3

    :cond_8
    move v3, v2

    goto :goto_3

    :cond_9
    move v3, v2

    goto :goto_3
.end method

.method public hasCompBoundaryBefore(I)Z
    .locals 1

    iget v0, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-lt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasDecompBoundary(IZ)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-ge p1, v4, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isDecompYesAndZeroCC(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    return v2

    :cond_2
    const v4, 0xfe00

    if-le v1, v4, :cond_3

    return v3

    :cond_3
    invoke-direct {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v4, v0, 0x1f

    if-nez v4, :cond_5

    return v3

    :cond_5
    if-nez p2, :cond_7

    const/16 v4, 0x1ff

    if-le v0, v4, :cond_6

    return v3

    :cond_6
    const/16 v4, 0xff

    if-gt v0, v4, :cond_7

    return v2

    :cond_7
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    if-nez v4, :cond_9

    :cond_8
    :goto_1
    return v2

    :cond_9
    move v2, v3

    goto :goto_1
.end method

.method public hasFCDBoundaryAfter(I)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    if-le v0, v1, :cond_0

    and-int/lit16 v3, v0, 0xff

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public hasFCDBoundaryBefore(I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x300

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlgorithmicNoNo(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCanonSegmentStarter(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/impl/Normalizer2Impl;->canonIterData:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCompNo(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDecompInert(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->isDecompYesAndZeroCC(I)Z

    move-result v0

    return v0
.end method

.method public isDecompYes(I)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFCDInert(I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)Landroid/icu/impl/Normalizer2Impl;
    .locals 1

    invoke-static {p1}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Normalizer2Impl;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Normalizer2Impl;
    .locals 14

    const/16 v13, 0x180

    const/16 v12, 0xd

    :try_start_0
    sget-object v10, Landroid/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Landroid/icu/impl/Normalizer2Impl$IsAcceptable;

    const v11, 0x4e726d32

    invoke-static {p1, v11, v10}, Landroid/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;

    move-result-object v10

    iput-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->dataVersion:Landroid/icu/util/VersionInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    div-int/lit8 v5, v10, 0x4

    if-gt v5, v12, :cond_0

    new-instance v10, Landroid/icu/util/ICUUncheckedIOException;

    const-string/jumbo v11, "Normalizer2 data: not enough indexes"

    invoke-direct {v10, v11}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v10, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v10, v2}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    :cond_0
    :try_start_1
    new-array v4, v5, [I

    mul-int/lit8 v10, v5, 0x4

    const/4 v11, 0x0

    aput v10, v4, v11

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v5, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    aput v10, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v10, 0x8

    aget v10, v4, v10

    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/16 v10, 0x9

    aget v10, v4, v10

    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    const/16 v10, 0xa

    aget v10, v4, v10

    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNo:I

    const/16 v10, 0xe

    aget v10, v4, v10

    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    const/16 v10, 0xb

    aget v10, v4, v10

    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->minNoNo:I

    const/16 v10, 0xc

    aget v10, v4, v10

    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->limitNoNo:I

    const/16 v10, 0xd

    aget v10, v4, v10

    iput v10, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    const/4 v10, 0x0

    aget v8, v4, v10

    const/4 v10, 0x1

    aget v6, v4, v10

    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v10

    iput-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    iget-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->normTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v10}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v9

    sub-int v10, v6, v8

    if-le v9, v10, :cond_2

    new-instance v10, Landroid/icu/util/ICUUncheckedIOException;

    const-string/jumbo v11, "Normalizer2 data: not enough bytes for normTrie"

    invoke-direct {v10, v11}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    sub-int v10, v6, v8

    sub-int/2addr v10, v9

    invoke-static {p1, v10}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    move v8, v6

    const/4 v10, 0x2

    aget v6, v4, v10

    sub-int v10, v6, v8

    div-int/lit8 v7, v10, 0x2

    if-eqz v7, :cond_3

    const/4 v10, 0x0

    invoke-static {p1, v7, v10}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    iget-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    iget v11, p0, Landroid/icu/impl/Normalizer2Impl;->minMaybeYes:I

    const v12, 0xfe00

    sub-int v11, v12, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    :cond_3
    move v8, v6

    const/16 v10, 0x100

    new-array v10, v10, [B

    iput-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    iget-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v10, 0x180

    new-array v10, v10, [I

    iput-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v13, :cond_7

    and-int/lit16 v10, v1, 0xff

    if-nez v10, :cond_4

    iget-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    shr-int/lit8 v11, v1, 0x8

    aget-byte v0, v10, v11

    :cond_4
    and-int/lit8 v10, v0, 0x1

    if-eqz v10, :cond_5

    const/4 v3, 0x0

    :goto_2
    const/16 v10, 0x20

    if-ge v3, v10, :cond_6

    iget-object v10, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    invoke-virtual {p0, v1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    aput v11, v10, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x20

    :cond_6
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return-object p0
.end method

.method public makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 11

    const/4 v10, 0x1

    move v5, p2

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    move v7, p2

    :goto_1
    if-eq p2, p3, :cond_4

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v8, 0x300

    if-ge v0, v8, :cond_0

    not-int v6, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v6, 0x0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    int-to-char v8, v0

    invoke-static {v8}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v8, p2, 0x1

    if-eq v8, p3, :cond_2

    add-int/lit8 v8, p2, 0x1

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_2

    int-to-char v8, v0

    invoke-static {v8, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v2

    const/16 v8, 0xff

    if-gt v2, v8, :cond_4

    move v6, v2

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr p2, v8

    goto :goto_1

    :cond_3
    if-ge v7, p2, :cond_2

    add-int/lit8 v8, p2, -0x1

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 p2, p2, -0x1

    int-to-char v8, v0

    invoke-static {v1, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_2

    :cond_4
    if-eq p2, v7, :cond_f

    if-ne p2, p3, :cond_6

    if-eqz p4, :cond_5

    invoke-virtual {p4, p1, v7, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_5
    :goto_3
    return p2

    :cond_6
    move v5, p2

    if-gez v6, :cond_d

    not-int v4, v6

    const/16 v8, 0x180

    if-ge v4, v8, :cond_c

    iget-object v8, p0, Landroid/icu/impl/Normalizer2Impl;->tccc180:[I

    aget v6, v8, v4

    :goto_4
    if-le v6, v10, :cond_7

    add-int/lit8 v5, v5, -0x1

    :cond_7
    :goto_5
    if-eqz p4, :cond_8

    invoke-virtual {p4, p1, v7, v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    invoke-virtual {p4, p1, v5, p2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_8
    move v7, p2

    :cond_9
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr p2, v8

    and-int/lit16 v8, v6, 0xff

    shr-int/lit8 v9, v2, 0x8

    if-gt v8, v9, :cond_10

    and-int/lit16 v8, v2, 0xff

    if-gt v8, v10, :cond_a

    move v5, p2

    :cond_a
    if-eqz p4, :cond_b

    invoke-virtual {p4, v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->appendZeroCC(I)V

    :cond_b
    move v6, v2

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, v4}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v6

    goto :goto_4

    :cond_d
    add-int/lit8 v3, p2, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_e

    if-ge v7, v3, :cond_e

    add-int/lit8 v8, v3, -0x1

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_e

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v6

    :cond_e
    if-le v6, v10, :cond_7

    move v5, v3

    goto :goto_5

    :cond_f
    if-ne p2, p3, :cond_9

    goto :goto_3

    :cond_10
    if-nez p4, :cond_11

    return v5

    :cond_11
    sub-int v8, v7, v5

    invoke-virtual {p4, v8}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    move-result p2

    invoke-virtual {p0, p1, v5, p2, p4}, Landroid/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    move v5, p2

    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public makeFCDAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, p1, v7, v2}, Landroid/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/icu/impl/Normalizer2Impl;->findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v1

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    invoke-virtual {v3, v5, v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p3, v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    invoke-virtual {v3, p1, v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p0, v3, v7, v5, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move v4, v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, v4, v2, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3, p1, v4, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_0
.end method

.method public singleLeadMightHaveNonZeroFCD16(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/icu/impl/Normalizer2Impl;->smallFCD:[B

    shr-int/lit8 v3, p1, 0x8

    aget-byte v0, v2, v3

    if-nez v0, :cond_0

    return v1

    :cond_0
    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v2, v2, 0x7

    shr-int v2, v0, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
