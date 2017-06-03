.class public final Landroid/icu/text/StringSearch;
.super Landroid/icu/text/SearchIterator;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/StringSearch$CEBuffer;,
        Landroid/icu/text/StringSearch$CEI;,
        Landroid/icu/text/StringSearch$CollationPCE;,
        Landroid/icu/text/StringSearch$Match;,
        Landroid/icu/text/StringSearch$Pattern;
    }
.end annotation


# static fields
.field private static CE_LEVEL2_BASE:I = 0x0

.field private static CE_LEVEL3_BASE:I = 0x0

.field private static final CE_MATCH:I = -0x1

.field private static final CE_NO_MATCH:I = 0x0

.field private static final CE_SKIP_PATN:I = 0x2

.field private static final CE_SKIP_TARG:I = 0x1

.field private static final INITIAL_ARRAY_SIZE_:I = 0x100

.field private static final PRIMARYORDERMASK:I = -0x10000

.field private static final SECONDARYORDERMASK:I = 0xff00

.field private static final TERTIARYORDERMASK:I = 0xff


# instance fields
.field ceMask_:I

.field private collator_:Landroid/icu/text/RuleBasedCollator;

.field private nfd_:Landroid/icu/text/Normalizer2;

.field private pattern_:Landroid/icu/text/StringSearch$Pattern;

.field private strength_:I

.field private textIter_:Landroid/icu/text/CollationElementIterator;

.field private textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

.field private toShift_:Z

.field private utilIter_:Landroid/icu/text/CollationElementIterator;

.field variableTop_:I


# direct methods
.method static synthetic -get0(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$Pattern;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$CollationPCE;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/text/StringSearch;)Z
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initTextProcessedIter()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    const/high16 v0, 0x50000

    sput v0, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/text/StringCharacterIterator;

    invoke-direct {v1, p2}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/icu/text/Collator;->getInstance()Landroid/icu/text/Collator;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p2, p4}, Landroid/icu/text/SearchIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/BreakIterator;)V

    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getNumericCollation()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Numeric collation is not supported by StringSearch"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p3, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v1

    iput v1, p0, Landroid/icu/text/StringSearch;->strength_:I

    iget v1, p0, Landroid/icu/text/StringSearch;->strength_:I

    invoke-static {v1}, Landroid/icu/text/StringSearch;->getMask(I)I

    move-result v1

    iput v1, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v1

    iput-boolean v1, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    invoke-virtual {p3}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v1

    iput v1, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    new-instance v1, Landroid/icu/text/StringSearch$Pattern;

    invoke-direct {v1, p1}, Landroid/icu/text/StringSearch$Pattern;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v2, -0x1

    iput v2, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iput-object v3, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    new-instance v1, Landroid/icu/text/CollationElementIterator;

    invoke-direct {v1, p2, p3}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    iput-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iput-object v3, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    sget-object v1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p3, v1}, Landroid/icu/text/RuleBasedCollator;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    if-nez v0, :cond_1

    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_1
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    invoke-interface {p2}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    invoke-virtual {v2, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/util/ULocale;)V
    .locals 2

    invoke-static {p3}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;Landroid/icu/text/BreakIterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/CharacterIterator;Ljava/util/Locale;)V
    .locals 1

    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/StringSearch;-><init>(Ljava/lang/String;Ljava/text/CharacterIterator;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private static addToIntArray([IIIII)[I
    .locals 4

    const/4 v3, 0x0

    move v0, p2

    add-int/lit8 v2, p1, 0x1

    if-ne v2, p2, :cond_0

    add-int v0, p2, p4

    new-array v1, v0, [I

    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy([II[III)V

    move-object p0, v1

    :cond_0
    aput p3, p0, p1

    return-object p0
.end method

.method private static addToLongArray([JIIJI)[J
    .locals 5

    const/4 v3, 0x0

    move v0, p2

    add-int/lit8 v2, p1, 0x1

    if-ne v2, p2, :cond_0

    add-int v0, p2, p5

    new-array v1, v0, [J

    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    move-object p0, v1

    :cond_0
    aput-wide p3, p0, p1

    return-object p0
.end method

.method private checkIdentical(II)Z
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Landroid/icu/text/StringSearch;->strength_:I

    const/16 v3, 0xf

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    sub-int v3, p2, p1

    invoke-static {v2, p1, v3}, Landroid/icu/text/StringSearch;->getString(Ljava/text/CharacterIterator;II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    invoke-static {v1, v2, v4}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v2

    sget-object v3, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-ne v2, v3, :cond_1

    invoke-static {v1, v4}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v0, v2, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    sget-object v2, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    invoke-static {v0, v2, v4}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v2

    sget-object v3, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-ne v2, v3, :cond_2

    invoke-static {v0, v4}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static codePointAt(Ljava/text/CharacterIterator;I)I
    .locals 5

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    move v1, v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    :cond_0
    invoke-interface {p0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    return v1
.end method

.method private static codePointBefore(Ljava/text/CharacterIterator;I)I
    .locals 5

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    move v1, v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    :cond_0
    invoke-interface {p0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    return v1
.end method

.method private static compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I
    .locals 14

    cmp-long v12, p0, p2

    if-nez v12, :cond_0

    const/4 v12, -0x1

    return v12

    :cond_0
    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_1

    const/4 v12, 0x0

    return v12

    :cond_1
    const/16 v12, 0x20

    ushr-long v8, p0, v12

    const/16 v12, 0x20

    ushr-long v2, p2, v12

    const-wide v12, 0xffff0000L

    and-long/2addr v12, v8

    long-to-int v7, v12

    const-wide v12, 0xffff0000L

    and-long/2addr v12, v2

    long-to-int v4, v12

    if-eq v7, v4, :cond_4

    if-nez v7, :cond_2

    const/4 v12, 0x1

    return v12

    :cond_2
    if-nez v4, :cond_3

    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_3

    const/4 v12, 0x2

    return v12

    :cond_3
    const/4 v12, 0x0

    return v12

    :cond_4
    const-wide/32 v12, 0xffff

    and-long/2addr v12, v8

    long-to-int v10, v12

    const-wide/32 v12, 0xffff

    and-long/2addr v12, v2

    long-to-int v5, v12

    if-eq v10, v5, :cond_9

    if-nez v10, :cond_5

    const/4 v12, 0x1

    return v12

    :cond_5
    if-nez v5, :cond_6

    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_6

    const/4 v12, 0x2

    return v12

    :cond_6
    sget v12, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    if-eq v5, v12, :cond_7

    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_8

    sget v12, Landroid/icu/text/StringSearch;->CE_LEVEL2_BASE:I

    if-ne v10, v12, :cond_8

    :cond_7
    const/4 v12, -0x1

    :goto_0
    return v12

    :cond_8
    const/4 v12, 0x0

    goto :goto_0

    :cond_9
    const-wide v12, 0xffff0000L

    and-long/2addr v12, p0

    long-to-int v11, v12

    const-wide v12, 0xffff0000L

    and-long v12, v12, p2

    long-to-int v6, v12

    if-eq v11, v6, :cond_c

    sget v12, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    if-eq v6, v12, :cond_a

    sget-object v12, Landroid/icu/text/SearchIterator$ElementComparisonType;->ANY_BASE_WEIGHT_IS_WILDCARD:Landroid/icu/text/SearchIterator$ElementComparisonType;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_b

    sget v12, Landroid/icu/text/StringSearch;->CE_LEVEL3_BASE:I

    if-ne v11, v12, :cond_b

    :cond_a
    const/4 v12, -0x1

    :goto_1
    return v12

    :cond_b
    const/4 v12, 0x0

    goto :goto_1

    :cond_c
    const/4 v12, -0x1

    return v12
.end method

.method private getCE(I)I
    .locals 2

    const/4 v1, 0x3

    iget v0, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    and-int/2addr p1, v0

    iget-boolean v0, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    if-le v0, p1, :cond_0

    iget v0, p0, Landroid/icu/text/StringSearch;->strength_:I

    if-lt v0, v1, :cond_1

    const/high16 v0, -0x10000

    and-int/2addr p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/icu/text/StringSearch;->strength_:I

    if-lt v0, v1, :cond_0

    if-nez p1, :cond_0

    const p1, 0xffff

    goto :goto_0
.end method

.method private static getMask(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/high16 v0, -0x10000

    return v0

    :pswitch_1
    const/16 v0, -0x100

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final getString(Ljava/text/CharacterIterator;II)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private handleNextCanonical()Z
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCommonImpl()Z

    move-result v0

    return v0
.end method

.method private handleNextCommonImpl()Z
    .locals 5

    iget-object v2, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v2}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v1

    new-instance v0, Landroid/icu/text/StringSearch$Match;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/icu/text/StringSearch$Match;-><init>(Landroid/icu/text/StringSearch$Match;)V

    invoke-direct {p0, v1, v0}, Landroid/icu/text/StringSearch;->search(ILandroid/icu/text/StringSearch$Match;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v3, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    iput v3, v2, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v3, v0, Landroid/icu/text/StringSearch$Match;->limit_:I

    iget v4, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    const/4 v2, 0x0

    return v2
.end method

.method private handleNextExact()Z
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCommonImpl()Z

    move-result v0

    return v0
.end method

.method private handlePreviousCanonical()Z
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCommonImpl()Z

    move-result v0

    return v0
.end method

.method private handlePreviousCommonImpl()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v5, v5, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v5, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v5, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v6, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v6}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v5, -0x1

    :goto_0
    new-instance v0, Landroid/icu/text/StringSearch$Match;

    invoke-direct {v0, v9}, Landroid/icu/text/StringSearch$Match;-><init>(Landroid/icu/text/StringSearch$Match;)V

    invoke-direct {p0, v4, v0}, Landroid/icu/text/StringSearch;->searchBackwards(ILandroid/icu/text/StringSearch$Match;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v6, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    iput v6, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v6, v0, Landroid/icu/text/StringSearch$Match;->limit_:I

    iget v7, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    const/4 v5, 0x1

    return v5

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initTextProcessedIter()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    return v8

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v5, v5, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    invoke-virtual {v5, v9}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v5}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v4

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v5}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v4

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    return v8
.end method

.method private handlePreviousExact()Z
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCommonImpl()Z

    move-result v0

    return v0
.end method

.method private initTextProcessedIter()Z
    .locals 2

    iget-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/StringSearch$CollationPCE;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch$CollationPCE;-><init>(Landroid/icu/text/CollationElementIterator;)V

    iput-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textProcessedIter_:Landroid/icu/text/StringSearch$CollationPCE;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, v1}, Landroid/icu/text/StringSearch$CollationPCE;->init(Landroid/icu/text/CollationElementIterator;)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePattern()I

    return-void
.end method

.method private initializePattern()I
    .locals 2

    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initializePatternCETable()I

    move-result v0

    return v0
.end method

.method private initializePatternCETable()I
    .locals 12

    const/4 v11, 0x0

    const/16 v9, 0x100

    new-array v1, v9, [I

    array-length v2, v1

    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v9, v9, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v3, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    if-nez v3, :cond_1

    new-instance v3, Landroid/icu/text/CollationElementIterator;

    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v9, v9, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    iget-object v10, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v3, v9, v10}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    iput-object v3, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    :goto_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_2

    invoke-direct {p0, v0}, Landroid/icu/text/StringSearch;->getCE(I)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v9

    sub-int v9, v6, v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v1, v5, v2, v4, v9}, Landroid/icu/text/StringSearch;->addToIntArray([IIIII)[I

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    move-object v1, v8

    :cond_0
    invoke-virtual {v3, v0}, Landroid/icu/text/CollationElementIterator;->getMaxExpansion(I)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v7, v9

    goto :goto_1

    :cond_1
    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v9, v9, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    aput v11, v1, v5

    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput-object v1, v9, Landroid/icu/text/StringSearch$Pattern;->CE_:[I

    iget-object v9, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput v5, v9, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    return v7
.end method

.method private initializePatternPCETable()I
    .locals 15

    const/4 v14, 0x0

    const/16 v6, 0x100

    new-array v1, v6, [J

    array-length v3, v1

    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v6, v6, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v0, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/CollationElementIterator;

    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v6, v6, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    iget-object v11, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v0, v6, v11}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    iput-object v0, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    :goto_0
    const/4 v2, 0x0

    const/4 v9, 0x0

    new-instance v7, Landroid/icu/text/StringSearch$CollationPCE;

    invoke-direct {v7, v0}, Landroid/icu/text/StringSearch$CollationPCE;-><init>(Landroid/icu/text/CollationElementIterator;)V

    :goto_1
    invoke-virtual {v7, v14}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v4

    const-wide/16 v12, -0x1

    cmp-long v6, v4, v12

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v6

    sub-int v6, v8, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static/range {v1 .. v6}, Landroid/icu/text/StringSearch;->addToLongArray([JIIJI)[J

    move-result-object v10

    add-int/lit8 v2, v2, 0x1

    move-object v1, v10

    goto :goto_1

    :cond_0
    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v6, v6, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-wide/16 v12, 0x0

    aput-wide v12, v1, v2

    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput-object v1, v6, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    iget-object v6, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput v2, v6, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    return v9
.end method

.method private isBreakBoundary(I)Z
    .locals 2

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final isOutOfBounds(III)Z
    .locals 1

    const/4 v0, 0x1

    if-lt p2, p0, :cond_0

    if-le p2, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextBoundaryAfter(I)I
    .locals 2

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v1

    return v1

    :cond_1
    return p1
.end method

.method private search(ILandroid/icu/text/StringSearch$Match;)Z
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    move/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v25

    move/from16 v0, p1

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v25, Ljava/lang/IllegalArgumentException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "search("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ", m) - expected position to be between "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " and "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v25

    move/from16 v0, p1

    move/from16 v1, v25

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    move-object/from16 v25, v0

    if-nez v25, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    new-instance v8, Landroid/icu/text/StringSearch$CEBuffer;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;-><init>(Landroid/icu/text/StringSearch;)V

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/4 v13, -0x1

    const/4 v12, -0x1

    const/16 v23, 0x0

    :goto_0
    const/4 v10, 0x1

    const/16 v24, 0x0

    const-wide/16 v18, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v9

    if-nez v9, :cond_3

    new-instance v25, Landroid/icu/util/ICUException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "CEBuffer.get("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ") returned null."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_3
    const/16 v20, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    move/from16 v25, v0

    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    move-object/from16 v25, v0

    aget-wide v18, v25, v20

    add-int v25, v23, v20

    add-int v25, v25, v24

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v22

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-wide/from16 v2, v18

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    move-result v7

    if-nez v7, :cond_6

    const/4 v10, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    move/from16 v25, v0

    add-int v24, v24, v25

    if-nez v10, :cond_9

    if-eqz v22, :cond_5

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x1

    cmp-long v25, v26, v28

    if-eqz v25, :cond_9

    :cond_5
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    :cond_6
    if-lez v7, :cond_7

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_8

    add-int/lit8 v20, v20, -0x1

    add-int/lit8 v24, v24, 0x1

    :cond_7
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v24, v24, -0x1

    goto :goto_2

    :cond_9
    if-nez v10, :cond_c

    :goto_3
    if-nez v10, :cond_a

    const/4 v12, -0x1

    const/4 v13, -0x1

    :cond_a
    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    iput v13, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    move-object/from16 v0, p2

    iput v12, v0, Landroid/icu/text/StringSearch$Match;->limit_:I

    :cond_b
    return v10

    :cond_c
    add-int v25, v23, v24

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v11

    iget v13, v9, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    iget v15, v11, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    move-object/from16 v25, v0

    sget-object v26, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_15

    add-int v25, v23, v24

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v17

    move-object/from16 v0, v17

    iget v14, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x1

    cmp-long v25, v26, v28

    if-eqz v25, :cond_d

    const/4 v10, 0x0

    :cond_d
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v25

    if-nez v25, :cond_e

    const/4 v10, 0x0

    :cond_e
    iget v0, v9, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v13, v0, :cond_f

    const/4 v10, 0x0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->breakIterator:Landroid/icu/text/BreakIterator;

    move-object/from16 v25, v0

    if-nez v25, :cond_19

    if-eqz v17, :cond_19

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-wide/from16 v26, v0

    const/16 v25, 0x20

    ushr-long v26, v26, v25

    const-wide v28, 0xffff0000L

    and-long v26, v26, v28

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-eqz v25, :cond_19

    iget v0, v11, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v14, v0, :cond_19

    move-object/from16 v0, v17

    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v0, v14, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v14}, Landroid/icu/text/StringSearch;->codePointAt(Ljava/text/CharacterIterator;I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v25

    if-nez v25, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v14}, Landroid/icu/text/StringSearch;->codePointBefore(Ljava/text/CharacterIterator;I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v6

    :goto_5
    move v12, v14

    if-ge v15, v14, :cond_10

    iget v0, v11, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v15, v0, :cond_1a

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v25

    if-eqz v25, :cond_1a

    move v12, v15

    :cond_10
    :goto_6
    if-nez v6, :cond_12

    if-le v12, v14, :cond_11

    const/4 v10, 0x0

    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v25

    if-nez v25, :cond_12

    const/4 v10, 0x0

    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Landroid/icu/text/StringSearch;->checkIdentical(II)Z

    move-result v25

    if-nez v25, :cond_13

    const/4 v10, 0x0

    :cond_13
    if-eqz v10, :cond_5

    goto/16 :goto_3

    :cond_14
    add-int/lit8 v24, v24, 0x1

    :cond_15
    add-int v25, v23, v24

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/icu/text/StringSearch$CEBuffer;->get(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v17

    move-object/from16 v0, v17

    iget v14, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x1

    cmp-long v25, v26, v28

    if-eqz v25, :cond_d

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-wide/from16 v26, v0

    const/16 v25, 0x20

    ushr-long v26, v26, v25

    const-wide v28, 0xffff0000L

    and-long v26, v26, v28

    const-wide/16 v28, 0x0

    cmp-long v25, v26, v28

    if-nez v25, :cond_17

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    move-object/from16 v25, v0

    move-wide/from16 v0, v26

    move-wide/from16 v2, v18

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    move-result v7

    if-eqz v7, :cond_16

    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v7, v0, :cond_14

    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, v17

    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_18
    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    move-result v16

    iget v0, v11, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-lt v0, v1, :cond_10

    if-eqz v6, :cond_1b

    move/from16 v0, v16

    if-ge v0, v14, :cond_10

    :cond_1b
    move/from16 v12, v16

    goto/16 :goto_6
.end method

.method private searchBackwards(ILandroid/icu/text/StringSearch$Match;)Z
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    move/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v27, Ljava/lang/IllegalArgumentException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "searchBackwards("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ", m) - expected position to be between "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " and "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    move-object/from16 v27, v0

    if-nez v27, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/StringSearch;->initializePatternPCETable()I

    :cond_2
    new-instance v9, Landroid/icu/text/StringSearch$CEBuffer;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/icu/text/StringSearch$CEBuffer;-><init>(Landroid/icu/text/StringSearch;)V

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v7, v0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    const/16 v25, 0x0

    :goto_0
    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_3

    :goto_1
    const/16 v24, 0x0

    move/from16 v13, v25

    const/4 v15, -0x1

    const/4 v14, -0x1

    :goto_2
    const/4 v11, 0x1

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v12

    if-nez v12, :cond_5

    new-instance v27, Landroid/icu/util/ICUException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "CEBuffer.getPrevious("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ") returned null."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    goto :goto_1

    :cond_5
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    move/from16 v27, v0

    add-int/lit8 v21, v27, -0x1

    :goto_3
    if-ltz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCE_:[J

    move-object/from16 v27, v0

    aget-wide v22, v27, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    move/from16 v27, v0

    add-int v27, v27, v25

    add-int/lit8 v27, v27, -0x1

    sub-int v27, v27, v21

    add-int v27, v27, v26

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v24

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    move-object/from16 v27, v0

    move-wide/from16 v0, v28

    move-wide/from16 v2, v22

    move-object/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/text/StringSearch;->compareCE64s(JJLandroid/icu/text/SearchIterator$ElementComparisonType;)I

    move-result v8

    if-nez v8, :cond_8

    const/4 v11, 0x0

    :cond_6
    if-nez v11, :cond_b

    if-eqz v24, :cond_7

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x1

    cmp-long v27, v28, v30

    if-eqz v27, :cond_b

    :cond_7
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    :cond_8
    if-lez v8, :cond_9

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_a

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v26, v26, 0x1

    :cond_9
    :goto_4
    add-int/lit8 v21, v21, -0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v26, v26, -0x1

    goto :goto_4

    :cond_b
    if-nez v11, :cond_e

    :goto_5
    if-nez v11, :cond_c

    const/4 v14, -0x1

    const/4 v15, -0x1

    :cond_c
    if-eqz p2, :cond_d

    move-object/from16 v0, p2

    iput v15, v0, Landroid/icu/text/StringSearch$Match;->start_:I

    move-object/from16 v0, p2

    iput v14, v0, Landroid/icu/text/StringSearch$Match;->limit_:I

    :cond_d
    return v11

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    move/from16 v27, v0

    add-int v27, v27, v25

    add-int/lit8 v27, v27, -0x1

    add-int v27, v27, v26

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v10

    iget v15, v10, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v27

    if-nez v27, :cond_f

    const/4 v11, 0x0

    :cond_f
    iget v0, v10, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v15, v0, :cond_10

    const/4 v11, 0x0

    :cond_10
    iget v0, v12, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move/from16 v17, v0

    if-lez v25, :cond_19

    add-int/lit8 v27, v25, -0x1

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/icu/text/StringSearch$CEBuffer;->getPrevious(I)Landroid/icu/text/StringSearch$CEI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x1

    cmp-long v27, v28, v30

    if-eqz v27, :cond_11

    const/4 v11, 0x0

    :cond_11
    move-object/from16 v0, v20

    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    move/from16 v16, v0

    move/from16 v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->breakIterator:Landroid/icu/text/BreakIterator;

    move-object/from16 v27, v0

    if-nez v27, :cond_18

    if-eqz v20, :cond_18

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/icu/text/StringSearch$CEI;->ce_:J

    move-wide/from16 v28, v0

    const/16 v27, 0x20

    ushr-long v28, v28, v27

    const-wide v30, 0xffff0000L

    and-long v28, v28, v30

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-eqz v27, :cond_18

    iget v0, v12, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    move/from16 v27, v0

    move/from16 v0, v16

    move/from16 v1, v27

    if-lt v0, v1, :cond_18

    move-object/from16 v0, v20

    iget v0, v0, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-le v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/icu/text/StringSearch;->codePointAt(Ljava/text/CharacterIterator;I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v27

    if-nez v27, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringSearch;->nfd_:Landroid/icu/text/Normalizer2;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SearchIterator;->targetText:Ljava/text/CharacterIterator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/icu/text/StringSearch;->codePointBefore(Ljava/text/CharacterIterator;I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v6

    :goto_6
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    move-result v18

    iget v0, v12, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-lt v0, v1, :cond_13

    if-eqz v6, :cond_12

    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_13

    :cond_12
    move/from16 v14, v18

    :cond_13
    if-nez v6, :cond_15

    move/from16 v0, v16

    if-le v14, v0, :cond_14

    const/4 v11, 0x0

    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/icu/text/StringSearch;->isBreakBoundary(I)Z

    move-result v27

    if-nez v27, :cond_15

    const/4 v11, 0x0

    :cond_15
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Landroid/icu/text/StringSearch;->checkIdentical(II)Z

    move-result v27

    if-nez v27, :cond_16

    const/4 v11, 0x0

    :cond_16
    if-eqz v11, :cond_7

    goto/16 :goto_5

    :cond_17
    const/4 v6, 0x1

    goto :goto_6

    :cond_18
    const/4 v6, 0x0

    goto :goto_6

    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch;->nextBoundaryAfter(I)I

    move-result v18

    if-lez v18, :cond_1a

    move/from16 v0, p1

    move/from16 v1, v18

    if-le v0, v1, :cond_1a

    move/from16 v16, v18

    :goto_8
    move/from16 v14, v16

    goto :goto_7

    :cond_1a
    move/from16 v16, p1

    goto :goto_8
.end method


# virtual methods
.method public getCollator()Landroid/icu/text/RuleBasedCollator;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    return-object v0
.end method

.method public getIndex()I
    .locals 3

    iget-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v1}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/icu/text/StringSearch;->isOutOfBounds(III)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    return-object v0
.end method

.method protected handleNext(I)I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->getIndex()I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, v3}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput v2, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    add-int/lit8 v1, p1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    :cond_3
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextCanonical()Z

    :goto_1
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    :goto_2
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    return v0

    :cond_4
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handleNextExact()Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    goto :goto_2
.end method

.method protected handlePrevious(I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->CELength_:I

    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->getIndex()I

    move-result v0

    :goto_0
    iput v0, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/StringSearch;->setMatchNotFound()V

    :goto_1
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, v3}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousCanonical()Z

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/icu/text/StringSearch;->handlePreviousExact()Z

    goto :goto_1
.end method

.method public isCanonical()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    return v0
.end method

.method public reset()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v2, 0x1

    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v5}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v1

    iget v5, p0, Landroid/icu/text/StringSearch;->strength_:I

    if-ge v5, v6, :cond_5

    if-lt v1, v6, :cond_5

    :goto_0
    const/4 v2, 0x0

    :cond_0
    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v5}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v5

    iput v5, p0, Landroid/icu/text/StringSearch;->strength_:I

    iget v5, p0, Landroid/icu/text/StringSearch;->strength_:I

    invoke-static {v5}, Landroid/icu/text/StringSearch;->getMask(I)I

    move-result v0

    iget v5, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    if-eq v5, v0, :cond_1

    iput v0, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    const/4 v2, 0x0

    :cond_1
    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v5}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v3

    iget-boolean v5, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    if-eq v5, v3, :cond_2

    iput-boolean v3, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    const/4 v2, 0x0

    :cond_2
    iget-object v5, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v5}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v4

    iget v5, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    if-eq v5, v4, :cond_3

    iput v4, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    const/4 v2, 0x0

    :cond_3
    if-nez v2, :cond_4

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    :cond_4
    iget-object v5, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v6, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v6}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v5, v7}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v6, -0x1

    iput v6, v5, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v7, v5, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v7, v5, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    sget-object v6, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    iput-object v6, v5, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v8, v5, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    iget-object v5, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v8, v5, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    return-void

    :cond_5
    iget v5, p0, Landroid/icu/text/StringSearch;->strength_:I

    if-lt v5, v6, :cond_0

    if-ge v1, v6, :cond_0

    goto :goto_0
.end method

.method public setCanonical(Z)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean p1, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    return-void
.end method

.method public setCollator(Landroid/icu/text/RuleBasedCollator;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Collator can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    iget-object v1, p0, Landroid/icu/text/StringSearch;->collator_:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v1

    invoke-static {v1}, Landroid/icu/text/StringSearch;->getMask(I)I

    move-result v1

    iput v1, p0, Landroid/icu/text/StringSearch;->ceMask_:I

    sget-object v1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p1, v1}, Landroid/icu/text/RuleBasedCollator;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    if-nez v0, :cond_1

    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_1
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v2, v1, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    invoke-virtual {v2, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v1

    iput-boolean v1, p0, Landroid/icu/text/StringSearch;->toShift_:Z

    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v1

    iput v1, p0, Landroid/icu/text/StringSearch;->variableTop_:I

    new-instance v1, Landroid/icu/text/CollationElementIterator;

    iget-object v2, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v2, v2, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    iput-object v1, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    new-instance v1, Landroid/icu/text/CollationElementIterator;

    iget-object v2, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iget-object v2, v2, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    iput-object v1, p0, Landroid/icu/text/StringSearch;->utilIter_:Landroid/icu/text/CollationElementIterator;

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    return-void
.end method

.method public setIndex(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    return-void
.end method

.method protected setMatchNotFound()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    goto :goto_0
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pattern to search for can not be null or of length 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/StringSearch;->pattern_:Landroid/icu/text/StringSearch$Pattern;

    iput-object p1, v0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    invoke-direct {p0}, Landroid/icu/text/StringSearch;->initialize()V

    return-void
.end method

.method public setTarget(Ljava/text/CharacterIterator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/icu/text/SearchIterator;->setTarget(Ljava/text/CharacterIterator;)V

    iget-object v0, p0, Landroid/icu/text/StringSearch;->textIter_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/CollationElementIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method
