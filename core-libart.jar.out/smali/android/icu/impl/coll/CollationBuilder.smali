.class public final Landroid/icu/impl/coll/CollationBuilder;
.super Landroid/icu/impl/coll/CollationRuleParser$Sink;
.source "CollationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationBuilder$BundleImporter;,
        Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-impl-coll-CollationRuleParser$PositionSwitchesValues:[I = null

.field static final synthetic -assertionsDisabled:Z

.field private static final COMPOSITES:Landroid/icu/text/UnicodeSet;

.field private static final DEBUG:Z = false

.field private static final HAS_BEFORE2:I = 0x40

.field private static final HAS_BEFORE3:I = 0x20

.field private static final IS_TAILORED:I = 0x8

.field private static final MAX_INDEX:I = 0xfffff


# instance fields
.field private base:Landroid/icu/impl/coll/CollationTailoring;

.field private baseData:Landroid/icu/impl/coll/CollationData;

.field private ces:[J

.field private cesLength:I

.field private dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

.field private fastLatinEnabled:Z

.field private fcd:Landroid/icu/text/Normalizer2;

.field private nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private nfd:Landroid/icu/text/Normalizer2;

.field private nodes:Landroid/icu/impl/coll/UVector64;

.field private optimizeSet:Landroid/icu/text/UnicodeSet;

.field private rootElements:Landroid/icu/impl/coll/CollationRootElements;

.field private rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

.field private variableTop:J


# direct methods
.method private static synthetic -getandroid-icu-impl-coll-CollationRuleParser$PositionSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/impl/coll/CollationBuilder;->-android-icu-impl-coll-CollationRuleParser$PositionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/coll/CollationBuilder;->-android-icu-impl-coll-CollationRuleParser$PositionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/impl/coll/CollationRuleParser$Position;->values()[Landroid/icu/impl/coll/CollationRuleParser$Position;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    :try_start_b
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    sput-object v0, Landroid/icu/impl/coll/CollationBuilder;->-android-icu-impl-coll-CollationRuleParser$PositionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1

    :catch_d
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(I)Z
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE32(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(J)Z
    .locals 2

    invoke-static {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(I)I
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/coll/CollationBuilder;->indexFromTempCE32(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(J)I
    .locals 2

    invoke-static {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->indexFromTempCE(J)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/icu/impl/coll/CollationBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[:NFD_QC=N:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/coll/CollationBuilder;->COMPOSITES:Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/impl/coll/CollationBuilder;->COMPOSITES:Landroid/icu/text/UnicodeSet;

    const v1, 0xac00

    const v2, 0xd7a3

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationTailoring;)V
    .locals 2

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser$Sink;-><init>()V

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    const/16 v0, 0x1f

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getFCDNormalizer2()Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->fcd:Landroid/icu/text/Normalizer2;

    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iput-object p1, p0, Landroid/icu/impl/coll/CollationBuilder;->base:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    new-instance v0, Landroid/icu/impl/coll/CollationRootElements;

    iget-object v1, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationRootElements;-><init>([J)V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/coll/CollationBuilder;->variableTop:J

    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationDataBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationBuilder;->fastLatinEnabled:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    new-instance v0, Landroid/icu/impl/coll/UVector32;

    invoke-direct {v0}, Landroid/icu/impl/coll/UVector32;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    new-instance v0, Landroid/icu/impl/coll/UVector64;

    invoke-direct {v0}, Landroid/icu/impl/coll/UVector64;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0}, Landroid/icu/impl/Normalizer2Impl;->ensureCanonIterData()Landroid/icu/impl/Normalizer2Impl;

    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->initForTailoring(Landroid/icu/impl/coll/CollationData;)V

    return-void
.end method

.method private addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I
    .locals 4

    const/16 v2, 0x1f

    new-array v0, v2, [J

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v0, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I

    move-result v1

    invoke-static {p3, p4, v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->sameCEs([JI[JI)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne p5, v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v2, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result p5

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v2, p1, p2, p5}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_1
    return p5
.end method

.method private addOnlyClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I
    .locals 9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v8, Landroid/icu/text/CanonicalIterator;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ""

    :cond_0
    :goto_0
    invoke-virtual {v8}, Landroid/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    return p5

    :cond_2
    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationBuilder;->ignoreString(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result p5

    goto :goto_0

    :cond_3
    new-instance v6, Landroid/icu/text/CanonicalIterator;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/icu/text/CanonicalIterator;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/icu/text/CanonicalIterator;-><init>(Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {v6}, Landroid/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationBuilder;->ignorePrefix(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    :cond_5
    :goto_2
    invoke-virtual {v8}, Landroid/icu/text/CanonicalIterator;->next()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {v8}, Landroid/icu/text/CanonicalIterator;->reset()V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationBuilder;->ignoreString(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v7, :cond_7

    invoke-virtual {v2, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_7
    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result p5

    goto :goto_2
.end method

.method private addTailComposites(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 17

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_0
    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static/range {v16 .. v16}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v3, v1

    goto :goto_0

    :cond_2
    new-instance v14, Landroid/icu/text/UnicodeSet;

    invoke-direct {v14}, Landroid/icu/text/UnicodeSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/icu/impl/coll/CollationBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    move/from16 v0, v16

    invoke-virtual {v1, v0, v14}, Landroid/icu/impl/Normalizer2Impl;->getCanonStartSet(ILandroid/icu/text/UnicodeSet;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1f

    new-array v11, v1, [J

    new-instance v15, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v15, v14}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :cond_4
    :goto_1
    invoke-virtual {v15}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v1, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v1, :cond_6

    iget v1, v15, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v2, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v1, v2, :cond_5

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    iget v4, v15, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v1, v4}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/coll/CollationBuilder;->mergeCompositeIntoString(Ljava/lang/CharSequence;IILjava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v6, v11, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I

    move-result v12

    const/16 v1, 0x1f

    if-gt v12, v1, :cond_4

    const/4 v13, -0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v7

    invoke-direct/range {v8 .. v13}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result v13

    const/4 v1, -0x1

    if-eq v13, v1, :cond_4

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v6

    invoke-direct/range {v8 .. v13}, Landroid/icu/impl/coll/CollationBuilder;->addOnlyClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    goto :goto_1

    :cond_7
    return-void
.end method

.method private addWithClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result p5

    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/coll/CollationBuilder;->addOnlyClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result p5

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->addTailComposites(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return p5
.end method

.method private static final alignWeightRight(I)I
    .locals 1

    if-eqz p0, :cond_0

    :goto_0
    and-int/lit16 v0, p0, 0xff

    if-nez v0, :cond_0

    ushr-int/lit8 p0, p0, 0x8

    goto :goto_0

    :cond_0
    return p0
.end method

.method private static final binarySearchForRootPrimaryNode([II[JJ)I
    .locals 9

    if-nez p1, :cond_0

    const/4 v7, -0x1

    return v7

    :cond_0
    const/4 v6, 0x0

    move v1, p1

    :goto_0
    add-int v7, v6, v1

    div-int/lit8 v0, v7, 0x2

    aget v7, p0, v0

    aget-wide v2, p2, v7

    const/16 v7, 0x20

    ushr-long v4, v2, v7

    cmp-long v7, p3, v4

    if-nez v7, :cond_1

    return v0

    :cond_1
    cmp-long v7, p3, v4

    if-gez v7, :cond_3

    if-ne v0, v6, :cond_2

    not-int v7, v6

    return v7

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    if-ne v0, v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    not-int v7, v7

    return v7

    :cond_4
    move v6, v0

    goto :goto_0
.end method

.method private static ceStrength(J)I
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromTempCE(J)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    long-to-int v0, p0

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    cmp-long v0, p0, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/16 v0, 0xf

    goto :goto_0
.end method

.method private static changeNodeNextIndex(JI)J
    .locals 4

    const-wide/32 v0, -0xfffff01

    and-long/2addr v0, p0

    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromNextIndex(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static changeNodePreviousIndex(JI)J
    .locals 4

    const-wide v0, -0xfffff0000001L

    and-long/2addr v0, p0

    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromPreviousIndex(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private closeOverComposites()V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v1, ""

    new-instance v6, Landroid/icu/text/UnicodeSetIterator;

    sget-object v0, Landroid/icu/impl/coll/CollationBuilder;->COMPOSITES:Landroid/icu/text/UnicodeSet;

    invoke-direct {v6, v0}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :cond_0
    :goto_0
    invoke-virtual {v6}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    iget v0, v6, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v3, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v8

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    iget v3, v6, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v0, v3}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    invoke-virtual {v0, v7, v3, v8}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;[JI)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    iget v0, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_0

    invoke-virtual {v6}, Landroid/icu/text/UnicodeSetIterator;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    iget v4, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static countTailoredNodes([JII)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    aget-wide v2, p0, p1

    invoke-static {v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v1

    if-lt v1, p2, :cond_0

    invoke-static {v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v1

    if-ne v1, p2, :cond_2

    invoke-static {v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-static {v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result p1

    goto :goto_0
.end method

.method private equalSubSequences(Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)Z
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v3, v0, p2

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p4

    if-eq v3, v4, :cond_0

    return v5

    :cond_0
    move v2, p4

    move v1, p2

    if-ge v1, v0, :cond_1

    add-int/lit8 p2, v1, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 p4, v2, 0x1

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    return v5

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method private finalizeCEs()V
    .locals 3

    new-instance v1, Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-direct {v1}, Landroid/icu/impl/coll/CollationDataBuilder;-><init>()V

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->initForTailoring(Landroid/icu/impl/coll/CollationData;)V

    new-instance v0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;-><init>([J)V

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFrom(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V

    iput-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    return-void
.end method

.method private findCommonNode(II)I
    .locals 6

    const/16 v5, 0x500

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-gt v3, p2, :cond_0

    const/4 v2, 0x2

    if-gt p2, v2, :cond_0

    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v2

    if-lt v2, p2, :cond_2

    return p1

    :cond_2
    if-ne p2, v3, :cond_4

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore2(J)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result p1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    sget-boolean v2, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v2

    if-ne v2, p2, :cond_7

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v2

    if-ge v2, v5, :cond_6

    move v2, v3

    :goto_1
    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_4
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore3(J)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_5
    return p1

    :cond_6
    move v2, v4

    goto :goto_1

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v2

    if-le v2, p2, :cond_b

    :cond_9
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result p1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    sget-boolean v2, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_8

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v2

    if-lt v2, p2, :cond_a

    move v2, v3

    :goto_2
    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_a
    move v2, v4

    goto :goto_2

    :cond_b
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v2

    if-lt v2, v5, :cond_9

    sget-boolean v2, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_d

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v2

    if-ne v2, v5, :cond_c

    :goto_3
    if-nez v3, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_c
    move v3, v4

    goto :goto_3

    :cond_d
    return p1
.end method

.method private findOrInsertNodeForCEs(I)I
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    if-ltz p1, :cond_0

    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    :cond_2
    iget v2, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v2, v4

    const-wide/16 v0, 0x0

    iput v3, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    :goto_1
    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->indexFromTempCE(J)I

    move-result v2

    return v2

    :cond_3
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    iget v5, p0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v0, v2, v5

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result v2

    if-gt v2, p1, :cond_1

    goto :goto_1

    :cond_4
    const/16 v2, 0x38

    ushr-long v2, v0, v2

    long-to-int v2, v2

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_5

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "tailoring relative to an unassigned code point not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-direct {p0, v0, v1, p1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v2

    return v2
.end method

.method private findOrInsertNodeForPrimary(J)I
    .locals 7

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v3}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v3

    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v4}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v4

    invoke-static {v2, v3, v4, p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->binarySearchForRootPrimaryNode([II[JJ)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v2, v1}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v2

    return v2

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight32(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    iget-object v2, p0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    not-int v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/icu/impl/coll/UVector32;->insertElementAt(II)V

    return v0
.end method

.method private findOrInsertNodeForRootCE(JI)I
    .locals 9

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-boolean v4, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    long-to-int v4, v4

    const/16 v5, 0xfe

    if-eq v4, v5, :cond_0

    move v4, v3

    :goto_0
    if-nez v4, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v4, v2

    goto :goto_0

    :cond_1
    sget-boolean v4, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v4, :cond_3

    const-wide/16 v4, 0xc0

    and-long/2addr v4, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v2, v3

    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3
    const/16 v2, 0x20

    ushr-long v4, p1, v2

    invoke-direct {p0, v4, v5}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForPrimary(J)I

    move-result v0

    if-lt p3, v3, :cond_4

    long-to-int v1, p1

    ushr-int/lit8 v2, v1, 0x10

    invoke-direct {p0, v0, v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertWeakNode(III)I

    move-result v0

    if-lt p3, v8, :cond_4

    and-int/lit16 v2, v1, 0x3f3f

    invoke-direct {p0, v0, v2, v8}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertWeakNode(III)I

    move-result v0

    :cond_4
    return v0
.end method

.method private findOrInsertWeakNode(III)I
    .locals 12

    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_1

    if-ltz p1, :cond_0

    iget-object v8, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v8}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v8

    if-ge p1, v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_3

    const/4 v8, 0x1

    if-gt v8, p3, :cond_2

    const/4 v8, 0x2

    if-gt p3, v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const/16 v8, 0x500

    if-ne p2, v8, :cond_4

    invoke-direct {p0, p1, p3}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result v8

    return v8

    :cond_4
    iget-object v8, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v8, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_6

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v8

    if-ge v8, p3, :cond_5

    const/4 v8, 0x1

    :goto_2
    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_a

    const/16 v8, 0x500

    if-ge p2, v8, :cond_a

    const/4 v8, 0x1

    if-ne p3, v8, :cond_8

    const/16 v2, 0x40

    :goto_3
    int-to-long v8, v2

    and-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    const/16 v8, 0x500

    invoke-static {v8}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    move-result-wide v8

    invoke-static {p3}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v10

    or-long v0, v8, v10

    const/4 v8, 0x1

    if-ne p3, v8, :cond_7

    const-wide/16 v8, 0x20

    and-long/2addr v8, v6

    or-long/2addr v0, v8

    const-wide/16 v8, -0x21

    and-long/2addr v6, v8

    :cond_7
    iget-object v8, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    int-to-long v10, v2

    or-long/2addr v10, v6

    invoke-virtual {v8, v10, v11, p1}, Landroid/icu/impl/coll/UVector64;->setElementAt(JI)V

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v3

    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    move-result-wide v8

    invoke-static {p3}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v10

    or-long v6, v8, v10

    invoke-direct {p0, p1, v3, v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    move-result p1

    invoke-direct {p0, p1, v3, v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    return p1

    :cond_8
    const/16 v2, 0x20

    goto :goto_3

    :cond_9
    move p1, v3

    :cond_a
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v3

    if-eqz v3, :cond_b

    iget-object v8, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v8, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v4

    if-gt v4, p3, :cond_9

    if-ge v4, p3, :cond_c

    :cond_b
    :goto_4
    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    move-result-wide v8

    invoke-static {p3}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v10

    or-long v6, v8, v10

    invoke-direct {p0, p1, v3, v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    move-result v8

    return v8

    :cond_c
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v5

    if-ne v5, p2, :cond_d

    return v3

    :cond_d
    if-le v5, p2, :cond_9

    goto :goto_4
.end method

.method private getSpecialResetPosition(Ljava/lang/CharSequence;)J
    .locals 24

    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v19, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/16 v19, 0x1

    :goto_0
    if-nez v19, :cond_1

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    :cond_1
    const/16 v18, 0x0

    const/4 v7, 0x0

    sget-object v19, Landroid/icu/impl/coll/CollationRuleParser;->POSITION_VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    add-int/lit16 v0, v0, -0x2800

    move/from16 v20, v0

    aget-object v17, v19, v20

    invoke-static {}, Landroid/icu/impl/coll/CollationBuilder;->-getandroid-icu-impl-coll-CollationRuleParser$PositionSwitchesValues()[I

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v19, :cond_9

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    :pswitch_0
    const-wide/16 v20, 0x0

    return-wide v20

    :pswitch_1
    const-wide/16 v20, 0x0

    return-wide v20

    :pswitch_2
    const-wide/16 v20, 0x0

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v12

    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v19, :cond_3

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    const/16 v19, 0x1

    :goto_1
    if-nez v19, :cond_3

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    :cond_3
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-static {v6, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v20

    return-wide v20

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationRootElements;->getFirstTertiaryCE()J

    move-result-wide v20

    return-wide v20

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationRootElements;->getLastTertiaryCE()J

    move-result-wide v4

    const/16 v18, 0x2

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v4, v5, v1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_14

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasAnyBefore(J)Z

    move-result v19

    if-nez v19, :cond_b

    if-eqz v7, :cond_b

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v6

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v12

    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v19, :cond_a

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v19

    if-nez v19, :cond_a

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    :pswitch_4
    const-wide/16 v20, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v12

    :cond_5
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecondaryCE()J

    move-result-wide v4

    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore3(J)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v6

    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v19

    if-nez v19, :cond_8

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v6, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v20

    return-wide v20

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationRootElements;->getLastSecondaryCE()J

    move-result-wide v4

    const/16 v18, 0x1

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationRootElements;->getFirstPrimaryCE()J

    move-result-wide v4

    const/4 v7, 0x1

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationBuilder;->variableTop:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Landroid/icu/impl/coll/CollationRootElements;->lastCEWithPrimaryBefore(J)J

    move-result-wide v4

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationBuilder;->variableTop:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Landroid/icu/impl/coll/CollationRootElements;->firstCEWithPrimaryAtLeast(J)J

    move-result-wide v4

    const/4 v7, 0x1

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v20, v0

    const/16 v21, 0x11

    invoke-virtual/range {v20 .. v21}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Landroid/icu/impl/coll/CollationRootElements;->firstCEWithPrimaryAtLeast(J)J

    move-result-wide v4

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v19, v0

    const/16 v20, 0x4e00

    invoke-virtual/range {v19 .. v20}, Landroid/icu/impl/coll/CollationData;->getSingleCE(I)J

    move-result-wide v4

    goto/16 :goto_2

    :pswitch_b
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v20, "reset to [last implicit] not supported"

    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v19

    :pswitch_c
    const-wide v20, 0xff020200L

    invoke-static/range {v20 .. v21}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v4

    const/4 v7, 0x1

    goto/16 :goto_2

    :pswitch_d
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v20, "LDML forbids tailoring to U+FFFF"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_9
    const-wide/16 v20, 0x0

    return-wide v20

    :cond_a
    move/from16 v0, v18

    invoke-static {v6, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v4

    :cond_b
    :goto_3
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasAnyBefore(J)Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore2(J)Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v12

    :cond_c
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nodeHasBefore3(J)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v6

    :cond_d
    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v19

    if-nez v19, :cond_11

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    :cond_e
    sget-boolean v19, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v19, :cond_10

    if-nez v18, :cond_f

    const/16 v19, 0x1

    :goto_4
    if-nez v19, :cond_10

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    :cond_f
    const/16 v19, 0x0

    goto :goto_4

    :cond_10
    const/16 v19, 0x20

    ushr-long v14, v4, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/icu/impl/coll/CollationData;->isCompressiblePrimary(J)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v8}, Landroid/icu/impl/coll/CollationRootElements;->getPrimaryAfter(JIZ)J

    move-result-wide v14

    invoke-static {v14, v15}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v4

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v4, v5, v1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForRootCE(JI)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v12

    goto/16 :goto_3

    :cond_11
    move/from16 v0, v18

    invoke-static {v6, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v4

    :cond_12
    :goto_5
    return-wide v4

    :cond_13
    move v6, v9

    move-wide v12, v10

    :cond_14
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v9

    if-nez v9, :cond_15

    :goto_6
    invoke-static {v12, v13}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v19

    if-eqz v19, :cond_12

    move/from16 v0, v18

    invoke-static {v6, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v4

    goto :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_c
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_9
        :pswitch_3
        :pswitch_1
        :pswitch_d
        :pswitch_7
    .end packed-switch
.end method

.method private getWeight16Before(IJI)I
    .locals 10

    const/16 v9, 0x100

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v7, :cond_1

    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v7

    if-lt v7, p4, :cond_0

    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v6

    :goto_0
    if-nez v7, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    move v7, v5

    goto :goto_0

    :cond_1
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v3

    :goto_1
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v7

    if-le v7, v5, :cond_3

    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result p1

    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v7, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p2

    goto :goto_1

    :cond_2
    const/16 v3, 0x500

    goto :goto_1

    :cond_3
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v7

    if-eqz v7, :cond_4

    return v9

    :cond_4
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v7

    if-ne v7, v5, :cond_5

    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v2

    :goto_2
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v7

    if-lez v7, :cond_6

    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result p1

    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v7, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p2

    goto :goto_2

    :cond_5
    const/16 v2, 0x500

    goto :goto_2

    :cond_6
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v7

    if-eqz v7, :cond_7

    return v9

    :cond_7
    invoke-static {p2, p3}, Landroid/icu/impl/coll/CollationBuilder;->weight32FromNode(J)J

    move-result-wide v0

    if-ne p4, v5, :cond_9

    iget-object v5, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v5, v0, v1, v2}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBefore(JI)I

    move-result v4

    :cond_8
    return v4

    :cond_9
    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBefore(JII)I

    move-result v4

    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v7, :cond_8

    and-int/lit16 v7, v4, -0x3f40

    if-nez v7, :cond_a

    :goto_3
    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_a
    move v5, v6

    goto :goto_3
.end method

.method private ignorePrefix(Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->isFCD(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ignoreString(Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationBuilder;->isFCD(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isHangul(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static indexFromTempCE(J)I
    .locals 4

    const-wide v0, 0x4040000006002000L    # 32.000000715313945

    sub-long/2addr p0, v0

    const/16 v0, 0x2b

    shr-long v0, p0, v0

    long-to-int v0, v0

    const v1, 0xfe000

    and-int/2addr v0, v1

    const/16 v1, 0x2a

    shr-long v2, p0, v1

    long-to-int v1, v2

    and-int/lit16 v1, v1, 0x1fc0

    or-int/2addr v0, v1

    const/16 v1, 0x18

    shr-long v2, p0, v1

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private static indexFromTempCE32(I)I
    .locals 2

    const v0, 0x40400620    # 3.0003738f

    sub-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0xb

    const v1, 0xfe000

    and-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0xa

    and-int/lit16 v1, v1, 0x1fc0

    or-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private insertNodeBetween(IIJ)I
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-static {p3, p4}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    :goto_0
    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    sget-boolean v3, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v3, :cond_3

    invoke-static {p3, p4}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    if-nez v3, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    sget-boolean v3, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v3, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v3

    if-ne v3, p2, :cond_4

    :goto_2
    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v0

    invoke-static {p1}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromPreviousIndex(I)J

    move-result-wide v2

    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromNextIndex(I)J

    move-result-wide v4

    or-long/2addr v2, v4

    or-long/2addr p3, v2

    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, p3, p4}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p3

    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-static {p3, p4, v0}, Landroid/icu/impl/coll/CollationBuilder;->changeNodeNextIndex(JI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/icu/impl/coll/UVector64;->setElementAt(JI)V

    if-eqz p2, :cond_6

    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, p2}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide p3

    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-static {p3, p4, v0}, Landroid/icu/impl/coll/CollationBuilder;->changeNodePreviousIndex(JI)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2}, Landroid/icu/impl/coll/UVector64;->setElementAt(JI)V

    :cond_6
    return v0
.end method

.method private insertTailoredNodeAfter(II)I
    .locals 8

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-boolean v5, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ltz p1, :cond_0

    iget-object v5, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v5}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    move v1, v4

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    if-lt p2, v4, :cond_2

    invoke-direct {p0, p1, v4}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result p1

    if-lt p2, v6, :cond_2

    invoke-direct {p0, p1, v6}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result p1

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, p1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v1

    if-gt v1, p2, :cond_4

    :cond_3
    invoke-static {p2}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v4

    const-wide/16 v6, 0x8

    or-long v2, v6, v4

    invoke-direct {p0, p1, v0, v2, v3}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    move-result v1

    return v1

    :cond_4
    move p1, v0

    goto :goto_0
.end method

.method private isFCD(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->fcd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isTailoredNode(J)Z
    .locals 4

    const-wide/16 v0, 0x8

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTempCE(J)Z
    .locals 4

    const/4 v1, 0x0

    long-to-int v2, p0

    ushr-int/lit8 v0, v2, 0x18

    const/4 v2, 0x6

    if-gt v2, v0, :cond_0

    const/16 v2, 0x45

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isTempCE32(I)Z
    .locals 3

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0xff

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x6

    if-gt v2, v1, :cond_0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x45

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private makeTailoredCEs()V
    .locals 41

    new-instance v19, Landroid/icu/impl/coll/CollationWeights;

    invoke-direct/range {v19 .. v19}, Landroid/icu/impl/coll/CollationWeights;-><init>()V

    new-instance v13, Landroid/icu/impl/coll/CollationWeights;

    invoke-direct {v13}, Landroid/icu/impl/coll/CollationWeights;-><init>()V

    new-instance v7, Landroid/icu/impl/coll/CollationWeights;

    invoke-direct {v7}, Landroid/icu/impl/coll/CollationWeights;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v8}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v27

    const/16 v33, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v8}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v8

    move/from16 v0, v33

    if-ge v0, v8, :cond_28

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootPrimaryIndexes:Landroid/icu/impl/coll/UVector32;

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v6

    aget-wide v28, v27, v6

    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->weight32FromNode(J)J

    move-result-wide v20

    const-wide/16 v8, 0x0

    cmp-long v8, v20, v8

    if-nez v8, :cond_1

    const/16 v34, 0x0

    :goto_1
    move/from16 v38, v34

    const/16 v32, 0x0

    const/16 v31, 0x0

    const/16 v35, 0x0

    const/16 v39, 0x0

    const-wide/16 v8, 0x0

    cmp-long v8, v20, v8

    if-nez v8, :cond_2

    const/16 v30, 0x0

    :goto_2
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v26

    :cond_0
    :goto_3
    if-eqz v26, :cond_27

    move/from16 v6, v26

    aget-wide v28, v27, v26

    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v26

    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v37

    const/4 v8, 0x3

    move/from16 v0, v37

    if-ne v0, v8, :cond_5

    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_3

    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_1
    const/16 v34, 0x500

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result v30

    goto :goto_2

    :cond_3
    const/4 v8, 0x3

    move/from16 v0, v32

    if-ne v0, v8, :cond_4

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v9, "quaternary tailoring gap too small"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    add-int/lit8 v32, v32, 0x1

    :goto_4
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v8

    if-eqz v8, :cond_0

    move-wide/from16 v0, v20

    move/from16 v2, v34

    move/from16 v3, v38

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/impl/coll/Collation;->makeCE(JIII)J

    move-result-wide v8

    aput-wide v8, v27, v6

    goto :goto_3

    :cond_5
    const/4 v8, 0x2

    move/from16 v0, v37

    if-ne v0, v8, :cond_14

    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v8

    if-eqz v8, :cond_12

    if-nez v39, :cond_10

    const/4 v8, 0x2

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/icu/impl/coll/CollationBuilder;->countTailoredNodes([JII)I

    move-result v8

    add-int/lit8 v12, v8, 0x1

    if-nez v38, :cond_7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    move-result v8

    add-int/lit16 v0, v8, -0x100

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getFirstTertiaryCE()J

    move-result-wide v8

    long-to-int v8, v8

    and-int/lit16 v0, v8, 0x3f3f

    move/from16 v40, v0

    :goto_5
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_e

    const/16 v8, 0x4000

    move/from16 v0, v40

    if-eq v0, v8, :cond_6

    move/from16 v0, v40

    and-int/lit16 v8, v0, -0x3f40

    if-nez v8, :cond_d

    :cond_6
    const/4 v8, 0x1

    :goto_6
    if-nez v8, :cond_e

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_7
    if-nez v31, :cond_8

    if-eqz v35, :cond_9

    :cond_8
    const/16 v8, 0x100

    move/from16 v0, v38

    if-ne v0, v8, :cond_a

    const/16 v40, 0x500

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move/from16 v0, v30

    move/from16 v1, v34

    move/from16 v2, v38

    invoke-virtual {v8, v0, v1, v2}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryAfter(III)I

    move-result v40

    goto :goto_5

    :cond_a
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_c

    const/16 v8, 0x500

    move/from16 v0, v38

    if-ne v0, v8, :cond_b

    const/4 v8, 0x1

    :goto_7
    if-nez v8, :cond_c

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    move-result v40

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    goto :goto_6

    :cond_e
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationWeights;->initForTertiary()V

    move/from16 v0, v38

    int-to-long v8, v0

    move/from16 v0, v40

    int-to-long v10, v0

    invoke-virtual/range {v7 .. v12}, Landroid/icu/impl/coll/CollationWeights;->allocWeights(JJI)Z

    move-result v8

    if-nez v8, :cond_f

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v9, "tertiary tailoring gap too small"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_f
    const/16 v39, 0x1

    :cond_10
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationWeights;->nextWeight()J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v38, v0

    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_13

    const/4 v8, -0x1

    move/from16 v0, v38

    if-eq v0, v8, :cond_11

    const/4 v8, 0x1

    :goto_8
    if-nez v8, :cond_13

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_11
    const/4 v8, 0x0

    goto :goto_8

    :cond_12
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v38

    const/16 v39, 0x0

    :cond_13
    :goto_9
    const/16 v32, 0x0

    goto/16 :goto_4

    :cond_14
    const/4 v8, 0x1

    move/from16 v0, v37

    if-ne v0, v8, :cond_20

    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v8

    if-eqz v8, :cond_1e

    if-nez v35, :cond_1c

    const/4 v8, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/icu/impl/coll/CollationBuilder;->countTailoredNodes([JII)I

    move-result v8

    add-int/lit8 v18, v8, 0x1

    if-nez v34, :cond_16

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBoundary()I

    move-result v8

    add-int/lit16 v0, v8, -0x100

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecondaryCE()J

    move-result-wide v8

    const/16 v10, 0x10

    shr-long/2addr v8, v10

    long-to-int v0, v8

    move/from16 v36, v0

    :goto_a
    const/16 v8, 0x500

    move/from16 v0, v34

    if-ne v0, v8, :cond_15

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getLastCommonSecondary()I

    move-result v34

    :cond_15
    invoke-virtual {v13}, Landroid/icu/impl/coll/CollationWeights;->initForSecondary()V

    move/from16 v0, v34

    int-to-long v14, v0

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v13 .. v18}, Landroid/icu/impl/coll/CollationWeights;->allocWeights(JJI)Z

    move-result v8

    if-nez v8, :cond_1b

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v9, "secondary tailoring gap too small"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_16
    if-nez v31, :cond_17

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v8, v0, v1}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryAfter(II)I

    move-result v36

    goto :goto_a

    :cond_17
    const/16 v8, 0x100

    move/from16 v0, v34

    if-ne v0, v8, :cond_18

    const/16 v36, 0x500

    goto :goto_a

    :cond_18
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_1a

    const/16 v8, 0x500

    move/from16 v0, v34

    if-ne v0, v8, :cond_19

    const/4 v8, 0x1

    :goto_b
    if-nez v8, :cond_1a

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_19
    const/4 v8, 0x0

    goto :goto_b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v8}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBoundary()I

    move-result v36

    goto :goto_a

    :cond_1b
    const/16 v35, 0x1

    :cond_1c
    invoke-virtual {v13}, Landroid/icu/impl/coll/CollationWeights;->nextWeight()J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v34, v0

    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_1f

    const/4 v8, -0x1

    move/from16 v0, v34

    if-eq v0, v8, :cond_1d

    const/4 v8, 0x1

    :goto_c
    if-nez v8, :cond_1f

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_1d
    const/4 v8, 0x0

    goto :goto_c

    :cond_1e
    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v34

    const/16 v35, 0x0

    :cond_1f
    :goto_d
    if-nez v34, :cond_26

    const/16 v38, 0x0

    :goto_e
    const/16 v39, 0x0

    goto/16 :goto_9

    :cond_20
    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_21

    invoke-static/range {v28 .. v29}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v8

    if-nez v8, :cond_21

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_21
    if-nez v31, :cond_23

    const/4 v8, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/icu/impl/coll/CollationBuilder;->countTailoredNodes([JII)I

    move-result v8

    add-int/lit8 v24, v8, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Landroid/icu/impl/coll/CollationData;->isCompressiblePrimary(J)Z

    move-result v25

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-wide/from16 v0, v20

    move/from16 v2, v30

    move/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/icu/impl/coll/CollationRootElements;->getPrimaryAfter(JIZ)J

    move-result-wide v22

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationWeights;->initForPrimary(Z)V

    invoke-virtual/range {v19 .. v24}, Landroid/icu/impl/coll/CollationWeights;->allocWeights(JJI)Z

    move-result v8

    if-nez v8, :cond_22

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v9, "primary tailoring gap too small"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_22
    const/16 v31, 0x1

    :cond_23
    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationWeights;->nextWeight()J

    move-result-wide v20

    sget-boolean v8, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v8, :cond_25

    const-wide v8, 0xffffffffL

    cmp-long v8, v20, v8

    if-eqz v8, :cond_24

    const/4 v8, 0x1

    :goto_f
    if-nez v8, :cond_25

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_24
    const/4 v8, 0x0

    goto :goto_f

    :cond_25
    const/16 v34, 0x500

    const/16 v35, 0x0

    goto :goto_d

    :cond_26
    const/16 v38, 0x500

    goto :goto_e

    :cond_27
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_0

    :cond_28
    return-void
.end method

.method private mergeCompositeIntoString(Ljava/lang/CharSequence;IILjava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 9

    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v7, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {p4, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_0
    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {p4, v7, v8}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v3

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v3, v7, :cond_2

    const/4 v7, 0x0

    return v7

    :cond_2
    invoke-direct {p0, p1, p2, p4, v3}, Landroid/icu/impl/coll/CollationBuilder;->equalSubSequences(Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    return v7

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v7, 0x0

    invoke-virtual {p5, p1, v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {p6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-int v7, p2, v3

    const/4 v8, 0x0

    invoke-virtual {p6, p1, v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move v6, p2

    move v2, v3

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_1
    if-gez v5, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lt v6, v7, :cond_5

    :cond_4
    if-ltz v5, :cond_e

    if-ge v4, v0, :cond_c

    const/4 v7, 0x0

    return v7

    :cond_5
    invoke-static {p1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v7, v5}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v4

    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v7, :cond_7

    if-eqz v4, :cond_6

    const/4 v7, 0x1

    :goto_2
    if-nez v7, :cond_7

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v2, v7, :cond_4

    invoke-static {p4, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v7, v1}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v7, 0x0

    return v7

    :cond_8
    if-ge v4, v0, :cond_9

    const/4 v7, 0x0

    return v7

    :cond_9
    if-ge v0, v4, :cond_a

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_1

    :cond_a
    if-eq v1, v5, :cond_b

    const/4 v7, 0x0

    return v7

    :cond_b
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v2, v7

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    const/4 v5, -0x1

    goto :goto_1

    :cond_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {p5, p1, v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {p6, p1, v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_d
    :goto_3
    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v7, :cond_f

    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v7, p5}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_e
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v2, v7, :cond_d

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {p5, p4, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_f
    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v7, :cond_10

    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->fcd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v7, p6}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_10
    sget-boolean v7, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v7, :cond_11

    iget-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v7, p6}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_11
    const/4 v7, 0x1

    return v7
.end method

.method private static nextIndexFromNode(J)I
    .locals 2

    long-to-int v0, p0

    shr-int/lit8 v0, v0, 0x8

    const v1, 0xfffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static nodeFromNextIndex(I)J
    .locals 2

    shl-int/lit8 v0, p0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method private static nodeFromPreviousIndex(I)J
    .locals 3

    int-to-long v0, p0

    const/16 v2, 0x1c

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method private static nodeFromStrength(I)J
    .locals 2

    int-to-long v0, p0

    return-wide v0
.end method

.method private static nodeFromWeight16(I)J
    .locals 3

    int-to-long v0, p0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method private static nodeFromWeight32(J)J
    .locals 2

    const/16 v0, 0x20

    shl-long v0, p0, v0

    return-wide v0
.end method

.method private static nodeHasAnyBefore(J)Z
    .locals 4

    const-wide/16 v0, 0x60

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nodeHasBefore2(J)Z
    .locals 4

    const-wide/16 v0, 0x40

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nodeHasBefore3(J)Z
    .locals 4

    const-wide/16 v0, 0x20

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static previousIndexFromNode(J)I
    .locals 2

    const/16 v0, 0x1c

    shr-long v0, p0, v0

    long-to-int v0, v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static sameCEs([JI[JI)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, p3, :cond_0

    return v3

    :cond_0
    sget-boolean v1, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    const/16 v1, 0x1f

    if-gt p1, v1, :cond_1

    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_4

    aget-wide v4, p0, v0

    aget-wide v6, p2, v0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method private setCaseBits(Ljava/lang/CharSequence;)V
    .locals 22

    const/4 v14, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    move-object/from16 v17, v0

    aget-wide v18, v17, v7

    invoke-static/range {v18 .. v19}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result v17

    if-nez v17, :cond_0

    add-int/lit8 v14, v14, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v17, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v17, :cond_3

    const/16 v17, 0x1f

    move/from16 v0, v17

    if-gt v14, v0, :cond_2

    const/16 v17, 0x1

    :goto_1
    if-nez v17, :cond_3

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 v8, 0x0

    if-lez v14, :cond_d

    move-object/from16 v15, p1

    new-instance v4, Landroid/icu/impl/coll/UTF16CollationIterator;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v19

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationIterator;->fetchCEs()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    sget-boolean v17, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v17, :cond_5

    if-ltz v5, :cond_4

    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v18

    const-wide v20, 0x101000100L

    cmp-long v17, v18, v20

    if-nez v17, :cond_4

    const/16 v17, 0x1

    :goto_2
    if-nez v17, :cond_5

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_c

    invoke-virtual {v4, v7}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    move-result-wide v10

    const/16 v17, 0x20

    ushr-long v18, v10, v17

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-eqz v17, :cond_9

    add-int/lit8 v13, v13, 0x1

    long-to-int v0, v10

    move/from16 v17, v0

    shr-int/lit8 v17, v17, 0xe

    and-int/lit8 v6, v17, 0x3

    sget-boolean v17, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v17, :cond_8

    if-eqz v6, :cond_6

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_7

    :cond_6
    const/16 v17, 0x1

    :goto_4
    if-nez v17, :cond_8

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_7
    const/16 v17, 0x0

    goto :goto_4

    :cond_8
    if-ge v13, v14, :cond_a

    int-to-long v0, v6

    move-wide/from16 v18, v0

    add-int/lit8 v17, v13, -0x1

    mul-int/lit8 v17, v17, 0x2

    shl-long v18, v18, v17

    or-long v8, v8, v18

    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    if-ne v13, v14, :cond_b

    move v12, v6

    goto :goto_5

    :cond_b
    if-eq v6, v12, :cond_9

    const/4 v12, 0x1

    :cond_c
    if-lt v13, v14, :cond_d

    int-to-long v0, v12

    move-wide/from16 v18, v0

    add-int/lit8 v17, v14, -0x1

    mul-int/lit8 v17, v17, 0x2

    shl-long v18, v18, v17

    or-long v8, v8, v18

    :cond_d
    const/4 v7, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    move-object/from16 v17, v0

    aget-wide v18, v17, v7

    const-wide/32 v20, -0xc001

    and-long v10, v18, v20

    invoke-static {v10, v11}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result v16

    if-nez v16, :cond_f

    const-wide/16 v18, 0x3

    and-long v18, v18, v8

    const/16 v17, 0xe

    shl-long v18, v18, v17

    or-long v10, v10, v18

    const/16 v17, 0x2

    ushr-long v8, v8, v17

    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    move-object/from16 v17, v0

    aput-wide v10, v17, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_f
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    const-wide/32 v18, 0x8000

    or-long v10, v10, v18

    goto :goto_7

    :cond_10
    return-void
.end method

.method private static strengthFromNode(J)I
    .locals 2

    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private static strengthFromTempCE(J)I
    .locals 2

    long-to-int v0, p0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private static tempCEFromIndexAndStrength(II)J
    .locals 5

    const v0, 0xfe000

    and-int/2addr v0, p0

    int-to-long v0, v0

    const/16 v2, 0x2b

    shl-long/2addr v0, v2

    const-wide v2, 0x4040000006002000L    # 32.000000715313945

    add-long/2addr v0, v2

    and-int/lit16 v2, p0, 0x1fc0

    int-to-long v2, v2

    const/16 v4, 0x2a

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    and-int/lit8 v2, p0, 0x3f

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-int/lit8 v2, p1, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static weight16FromNode(J)I
    .locals 2

    const/16 v0, 0x30

    shr-long v0, p0, v0

    long-to-int v0, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static weight32FromNode(J)J
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    return-wide v0
.end method


# virtual methods
.method addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 18

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v15, ""

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v2, 0x2

    if-lt v14, v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v8}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoV(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "contractions starting with conjoining Jamo L or V not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v14, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v8}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoV(I)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v14, -0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/Normalizer2Impl$Hangul;->isJamoL(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "contractions ending with conjoining Jamo L or L+V not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/16 v2, 0xf

    move/from16 v0, p1

    if-eq v0, v2, :cond_b

    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForCEs(I)I

    move-result v12

    sget-boolean v2, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    if-lez v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v10, v2, v3

    if-nez p1, :cond_7

    invoke-static {v10, v11}, Landroid/icu/impl/coll/CollationBuilder;->isTempCE(J)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "tailoring quaternary after tertiary ignorables not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    const/16 v2, 0x20

    ushr-long v2, v10, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "tailoring primary after ignorables not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v1}, Landroid/icu/impl/coll/CollationBuilder;->insertTailoredNodeAfter(II)I

    move-result v12

    invoke-static {v10, v11}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result v17

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    move/from16 v17, p1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v17

    invoke-static {v12, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v4

    aput-wide v4, v2, v3

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->setCaseBits(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v9, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    invoke-virtual {v2, v13, v3, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;[JI)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    const/16 v3, 0x1f

    if-le v2, v3, :cond_c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "extension string adds too many collation elements (more than 31 total)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    const/4 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    move-object/from16 v0, p0

    iget v6, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, v16

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/coll/CollationBuilder;->addWithClosure(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-object/from16 v0, p0

    iput v9, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    return-void

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->ignorePrefix(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->ignoreString(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    move-object/from16 v0, p0

    iget v6, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/coll/CollationBuilder;->addIfDifferent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JII)I

    move-result v7

    goto :goto_2
.end method

.method addReset(ILjava/lang/CharSequence;)V
    .locals 18

    sget-boolean v14, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v14, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    :goto_0
    if-nez v14, :cond_1

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const v15, 0xfffe

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationBuilder;->getSpecialResetPosition(Ljava/lang/CharSequence;)J

    move-result-wide v16

    const/4 v15, 0x0

    aput-wide v16, v14, v15

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    sget-boolean v14, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    const-wide/32 v16, 0xc0c0

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    const/4 v14, 0x1

    :goto_1
    if-nez v14, :cond_4

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->nfd:Landroid/icu/text/Normalizer2;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v5, v15, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;[JI)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    const/16 v15, 0x1f

    if-le v14, v15, :cond_4

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "reset position maps to too many collation elements (more than 31)"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_4
    const/16 v14, 0xf

    move/from16 v0, p1

    if-ne v0, v14, :cond_5

    return-void

    :cond_5
    sget-boolean v14, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v14, :cond_7

    if-ltz p1, :cond_6

    const/4 v14, 0x2

    move/from16 v0, p1

    if-gt v0, v14, :cond_6

    const/4 v14, 0x1

    :goto_2
    if-nez v14, :cond_7

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    :cond_7
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForCEs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v14, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    :goto_3
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v14

    move/from16 v0, p1

    if-le v14, v0, :cond_8

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v14, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    goto :goto_3

    :cond_8
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v14

    move/from16 v0, p1

    if-ne v14, v0, :cond_a

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result v3

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    add-int/lit8 v15, v15, -0x1

    move/from16 v0, p1

    invoke-static {v3, v0}, Landroid/icu/impl/coll/CollationBuilder;->tempCEFromIndexAndStrength(II)J

    move-result-wide v16

    aput-wide v16, v14, v15

    return-void

    :cond_a
    if-nez p1, :cond_e

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->weight32FromNode(J)J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_b

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v15, "reset primary-before ignorable not possible"

    invoke-direct {v14, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v14}, Landroid/icu/impl/coll/CollationRootElements;->getFirstPrimary()J

    move-result-wide v14

    cmp-long v14, v8, v14

    if-gtz v14, :cond_c

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v15, "reset primary-before first non-ignorable not supported"

    invoke-direct {v14, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_c
    const-wide v14, 0xff020200L

    cmp-long v14, v8, v14

    if-nez v14, :cond_d

    new-instance v14, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v15, "reset primary-before [first trailing] not supported"

    invoke-direct {v14, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->rootElements:Landroid/icu/impl/coll/CollationRootElements;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v15, v8, v9}, Landroid/icu/impl/coll/CollationData;->isCompressiblePrimary(J)Z

    move-result v15

    invoke-virtual {v14, v8, v9, v15}, Landroid/icu/impl/coll/CollationRootElements;->getPrimaryBefore(JZ)J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertNodeForPrimary(J)I

    move-result v3

    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v14, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->nextIndexFromNode(J)I

    move-result v4

    if-eqz v4, :cond_9

    move v3, v4

    goto :goto_5

    :cond_e
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result v3

    const/4 v14, 0x2

    move/from16 v0, p1

    if-lt v0, v14, :cond_f

    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Landroid/icu/impl/coll/CollationBuilder;->findCommonNode(II)I

    move-result v3

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v14, v3}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v14

    move/from16 v0, p1

    if-ne v14, v0, :cond_1b

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v13

    if-nez v13, :cond_11

    new-instance v15, Ljava/lang/UnsupportedOperationException;

    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_10

    const-string/jumbo v14, "reset secondary-before secondary ignorable not possible"

    :goto_6
    invoke-direct {v15, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_10
    const-string/jumbo v14, "reset tertiary-before completely ignorable not possible"

    goto :goto_6

    :cond_11
    sget-boolean v14, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v14, :cond_13

    const/16 v14, 0x100

    if-le v13, v14, :cond_12

    const/4 v14, 0x1

    :goto_7
    if-nez v14, :cond_13

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_12
    const/4 v14, 0x0

    goto :goto_7

    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v6, v7, v1}, Landroid/icu/impl/coll/CollationBuilder;->getWeight16Before(IJI)I

    move-result v13

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result v10

    move v2, v10

    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->nodes:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v14, v2}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->strengthFromNode(J)I

    move-result v11

    move/from16 v0, p1

    if-ge v11, v0, :cond_17

    sget-boolean v14, Landroid/icu/impl/coll/CollationBuilder;->-assertionsDisabled:Z

    if-nez v14, :cond_16

    const/16 v14, 0x500

    if-ge v13, v14, :cond_14

    if-ne v2, v10, :cond_15

    :cond_14
    const/4 v14, 0x1

    :goto_9
    if-nez v14, :cond_16

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_15
    const/4 v14, 0x0

    goto :goto_9

    :cond_16
    const/16 v12, 0x500

    :goto_a
    if-ne v12, v13, :cond_1a

    move v3, v10

    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationBuilder;->ces:[J

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/impl/coll/CollationBuilder;->cesLength:I

    add-int/lit8 v15, v15, -0x1

    aget-wide v14, v14, v15

    invoke-static {v14, v15}, Landroid/icu/impl/coll/CollationBuilder;->ceStrength(J)I

    move-result p1

    goto/16 :goto_4

    :cond_17
    move/from16 v0, p1

    if-ne v11, v0, :cond_18

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->isTailoredNode(J)Z

    move-result v14

    if-eqz v14, :cond_19

    :cond_18
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->previousIndexFromNode(J)I

    move-result v2

    goto :goto_8

    :cond_19
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->weight16FromNode(J)I

    move-result v12

    goto :goto_a

    :cond_1a
    invoke-static {v13}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromWeight16(I)J

    move-result-wide v14

    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/CollationBuilder;->nodeFromStrength(I)J

    move-result-wide v16

    or-long v6, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3, v6, v7}, Landroid/icu/impl/coll/CollationBuilder;->insertNodeBetween(IIJ)I

    move-result v3

    goto :goto_b

    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v6, v7, v1}, Landroid/icu/impl/coll/CollationBuilder;->getWeight16Before(IJI)I

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v13, v1}, Landroid/icu/impl/coll/CollationBuilder;->findOrInsertWeakNode(III)I

    move-result v3

    goto :goto_b
.end method

.method optimize(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public parseAndBuild(Ljava/lang/String;)Landroid/icu/impl/coll/CollationTailoring;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "missing root elements data, tailoring not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Landroid/icu/impl/coll/CollationTailoring;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->base:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-direct {v2, v3}, Landroid/icu/impl/coll/CollationTailoring;-><init>(Landroid/icu/impl/coll/SharedObject$Reference;)V

    new-instance v1, Landroid/icu/impl/coll/CollationRuleParser;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v3}, Landroid/icu/impl/coll/CollationRuleParser;-><init>(Landroid/icu/impl/coll/CollationData;)V

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->base:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v4, v3, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    iput-wide v4, p0, Landroid/icu/impl/coll/CollationBuilder;->variableTop:J

    invoke-virtual {v1, p0}, Landroid/icu/impl/coll/CollationRuleParser;->setSink(Landroid/icu/impl/coll/CollationRuleParser$Sink;)V

    new-instance v3, Landroid/icu/impl/coll/CollationBuilder$BundleImporter;

    invoke-direct {v3}, Landroid/icu/impl/coll/CollationBuilder$BundleImporter;-><init>()V

    invoke-virtual {v1, v3}, Landroid/icu/impl/coll/CollationRuleParser;->setImporter(Landroid/icu/impl/coll/CollationRuleParser$Importer;)V

    iget-object v3, v2, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1, p1, v0}, Landroid/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;Landroid/icu/impl/coll/CollationSettings;)V

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->hasMappings()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationBuilder;->makeTailoredCEs()V

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationBuilder;->closeOverComposites()V

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationBuilder;->finalizeCEs()V

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    const/16 v4, 0x7f

    invoke-virtual {v3, v6, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    const/16 v4, 0xc0

    const/16 v5, 0xff

    invoke-virtual {v3, v4, v5}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    const v4, 0xac00

    const v5, 0xd7a3

    invoke-virtual {v3, v4, v5}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v4, p0, Landroid/icu/impl/coll/CollationBuilder;->optimizeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->optimize(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationTailoring;->ensureOwnedData()V

    iget-boolean v3, p0, Landroid/icu/impl/coll/CollationBuilder;->fastLatinEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->enableFastLatin()V

    :cond_1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v4, v2, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->build(Landroid/icu/impl/coll/CollationData;)V

    iput-object v7, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    :goto_0
    iget-object v3, v2, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-static {v3, v0, v4}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    move-result v3

    iput v3, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/CollationTailoring;->setRules(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->base:Landroid/icu/impl/coll/CollationTailoring;

    iget v3, v3, Landroid/icu/impl/coll/CollationTailoring;->version:I

    invoke-virtual {v2, v3, v6}, Landroid/icu/impl/coll/CollationTailoring;->setVersion(II)V

    return-object v2

    :cond_2
    iget-object v3, p0, Landroid/icu/impl/coll/CollationBuilder;->baseData:Landroid/icu/impl/coll/CollationData;

    iput-object v3, v2, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    goto :goto_0
.end method

.method suppressContractions(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationBuilder;->dataBuilder:Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->suppressContractions(Landroid/icu/text/UnicodeSet;)V

    return-void
.end method
