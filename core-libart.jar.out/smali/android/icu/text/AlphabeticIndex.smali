.class public final Landroid/icu/text/AlphabeticIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/AlphabeticIndex$1;,
        Landroid/icu/text/AlphabeticIndex$Bucket;,
        Landroid/icu/text/AlphabeticIndex$BucketList;,
        Landroid/icu/text/AlphabeticIndex$ImmutableIndex;,
        Landroid/icu/text/AlphabeticIndex$Record;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/text/AlphabeticIndex$Bucket",
        "<TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BASE:Ljava/lang/String; = "\ufdd0"

.field private static final CGJ:C = '\u034f'

.field private static final GC_CN_MASK:I = 0x1

.field private static final GC_LL_MASK:I = 0x4

.field private static final GC_LM_MASK:I = 0x10

.field private static final GC_LO_MASK:I = 0x20

.field private static final GC_LT_MASK:I = 0x8

.field private static final GC_LU_MASK:I = 0x2

.field private static final GC_L_MASK:I = 0x3e

.field private static final binaryCmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buckets:Landroid/icu/text/AlphabeticIndex$BucketList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$BucketList",
            "<TV;>;"
        }
    .end annotation
.end field

.field private collatorExternal:Landroid/icu/text/RuleBasedCollator;

.field private final collatorOriginal:Landroid/icu/text/RuleBasedCollator;

.field private final collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

.field private final firstCharsInScripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inflowLabel:Ljava/lang/String;

.field private final initialLabels:Landroid/icu/text/UnicodeSet;

.field private inputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Record",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private maxLabelCount:I

.field private overflowLabel:Ljava/lang/String;

.field private final recordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Record",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private underflowLabel:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/icu/text/AlphabeticIndex;)Landroid/icu/text/RuleBasedCollator;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/text/AlphabeticIndex;->-assertionsDisabled:Z

    new-instance v0, Landroid/icu/text/UTF16$StringComparator;

    invoke-direct {v0, v2, v1, v1}, Landroid/icu/text/UTF16$StringComparator;-><init>(ZZI)V

    sput-object v0, Landroid/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/RuleBasedCollator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/icu/text/AlphabeticIndex;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/AlphabeticIndex;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V

    return-void
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/icu/text/AlphabeticIndex$1;

    invoke-direct {v1, p0}, Landroid/icu/text/AlphabeticIndex$1;-><init>(Landroid/icu/text/AlphabeticIndex;)V

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->recordComparator:Ljava/util/Comparator;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "\u2026"

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    const-string/jumbo v1, "\u2026"

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    const-string/jumbo v1, "\u2026"

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    const/16 v1, 0x63

    iput v1, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    :try_start_0
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1, v4}, Landroid/icu/text/RuleBasedCollator;->setStrength(I)V

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->freeze()Landroid/icu/text/Collator;

    invoke-virtual {p0}, Landroid/icu/text/AlphabeticIndex;->getFirstCharactersInScripts()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_1
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "AlphabeticIndex requires some non-ignorable script boundary strings"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    move-object p2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Collator cannot be cloned"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v1, v3}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->addChineseIndexCharacters()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Landroid/icu/text/AlphabeticIndex;->addIndexExemplars(Landroid/icu/util/ULocale;)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/AlphabeticIndex;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/RuleBasedCollator;)V

    return-void
.end method

.method private addChineseIndexCharacters()Z
    .locals 11

    const/16 v10, 0x5a

    const/16 v9, 0x41

    const/4 v8, 0x0

    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    :try_start_0
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    const-string/jumbo v6, "\ufdd0"

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6, v1}, Landroid/icu/text/RuleBasedCollator;->internalAddContractions(ILandroid/icu/text/UnicodeSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    return v8

    :catch_0
    move-exception v2

    return v8

    :cond_0
    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-boolean v5, Landroid/icu/text/AlphabeticIndex;->-assertionsDisabled:Z

    if-nez v5, :cond_2

    const-string/jumbo v5, "\ufdd0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v9, v0, :cond_1

    if-gt v0, v10, :cond_1

    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5, v9, v10}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    :cond_3
    const/4 v5, 0x1

    return v5
.end method

.method private addIndexExemplars(Landroid/icu/util/ULocale;)V
    .locals 11

    const v10, 0xd7a3

    const/16 v9, 0x7a

    const/16 v8, 0x61

    const v7, 0xac00

    const/4 v6, 0x0

    const/4 v5, 0x2

    invoke-static {p1, v6, v5}, Landroid/icu/util/LocaleData;->getExemplarSet(Landroid/icu/util/ULocale;II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void

    :cond_0
    invoke-static {p1, v6, v6}, Landroid/icu/util/LocaleData;->getExemplarSet(Landroid/icu/util/ULocale;II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {v1, v8, v9}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    :cond_2
    invoke-virtual {v1, v7, v10}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1, v7, v10}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xb098

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xb2e4

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xb77c

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xb9c8

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xbc14

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xc0ac

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xc544

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xc790

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xcc28

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xce74

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xd0c0

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xd30c

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    const v6, 0xd558

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_3
    const/16 v5, 0x1200

    const/16 v6, 0x137f

    invoke-virtual {v1, v5, v6}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v5, "[[:Block=Ethiopic:]&[:Script=Ethiopic:]]"

    invoke-direct {v0, v5}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v2, v0}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :cond_4
    :goto_0
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v6, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v5, v6, :cond_5

    iget v5, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    and-int/lit8 v5, v5, 0x7

    if-eqz v5, :cond_4

    iget v5, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v1, v5}, Landroid/icu/text/UnicodeSet;->remove(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-static {p1, v3}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_1

    :cond_6
    return-void
.end method

.method private createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/text/AlphabeticIndex$BucketList",
            "<TV;>;"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->initLabels()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v26, v28, v30

    :goto_0
    const/4 v14, 0x0

    const/16 v28, 0x1a

    move/from16 v0, v28

    new-array v7, v0, [Landroid/icu/text/AlphabeticIndex$Bucket;

    const/16 v28, 0x1a

    move/from16 v0, v28

    new-array v0, v0, [Landroid/icu/text/AlphabeticIndex$Bucket;

    move-object/from16 v20, v0

    const/4 v15, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v28, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->getUnderflowLabel()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, ""

    sget-object v31, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/16 v32, 0x0

    invoke-direct/range {v28 .. v32}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v22, -0x1

    const-string/jumbo v23, ""

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    if-ltz v28, :cond_1

    move-object/from16 v18, v23

    const/16 v25, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    move-object/from16 v28, v0

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    if-gez v28, :cond_5

    if-eqz v25, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1

    new-instance v28, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->getInflowLabel()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v8, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-static {v12}, Landroid/icu/text/AlphabeticIndex;->fixLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v29, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v8, v0, v12, v1, v2}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v28, 0x41

    move/from16 v0, v28

    if-gt v0, v11, :cond_6

    const/16 v28, 0x5a

    move/from16 v0, v28

    if-gt v11, v0, :cond_6

    add-int/lit8 v28, v11, -0x41

    aput-object v8, v7, v28

    :cond_2
    :goto_3
    const-string/jumbo v28, "\ufdd0"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2, v12}, Landroid/icu/text/AlphabeticIndex;->hasMultiplePrimaryWeights(Landroid/icu/text/RuleBasedCollator;JLjava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_0

    const-string/jumbo v28, "\uffff"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v16, v28, -0x2

    :goto_4
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-static/range {v24 .. v24}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get2(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v28

    sget-object v29, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_0

    invoke-static/range {v24 .. v24}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v28

    if-nez v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    move-object/from16 v28, v0

    invoke-static/range {v24 .. v24}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get3(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-wide/from16 v1, v26

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/icu/text/AlphabeticIndex;->hasMultiplePrimaryWeights(Landroid/icu/text/RuleBasedCollator;JLjava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    :cond_3
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    :cond_4
    const-wide/16 v26, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v25, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    const-string/jumbo v29, "\ufdd0"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    const-string/jumbo v28, "\ufdd0"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    const-string/jumbo v28, "\ufdd0"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v28, 0x41

    move/from16 v0, v28

    if-gt v0, v11, :cond_2

    const/16 v28, 0x5a

    move/from16 v0, v28

    if-gt v11, v0, :cond_2

    add-int/lit8 v28, v11, -0x41

    aput-object v8, v20, v28

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_7
    new-instance v8, Landroid/icu/text/AlphabeticIndex$Bucket;

    const-string/jumbo v28, ""

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "\uffff"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    move-object/from16 v0, v24

    invoke-static {v8, v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-set0(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    new-instance v28, Landroid/icu/text/AlphabeticIndex$BucketList;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v10, v10, v1}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex$BucketList;)V

    return-object v28

    :cond_9
    new-instance v28, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/AlphabeticIndex;->getOverflowLabel()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/AlphabeticIndex$Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;Landroid/icu/text/AlphabeticIndex$Bucket;)V

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v15, :cond_c

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_5
    const/16 v28, 0x1a

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    aget-object v28, v7, v16

    if-eqz v28, :cond_a

    aget-object v6, v7, v16

    :cond_a
    aget-object v28, v20, v16

    if-eqz v28, :cond_b

    if-eqz v6, :cond_b

    aget-object v28, v20, v16

    move-object/from16 v0, v28

    invoke-static {v0, v6}, Landroid/icu/text/AlphabeticIndex$Bucket;->-set0(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    const/4 v14, 0x1

    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_c
    if-nez v14, :cond_d

    new-instance v28, Landroid/icu/text/AlphabeticIndex$BucketList;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v10, v10, v1}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex$BucketList;)V

    return-object v28

    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v16, v28, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/icu/text/AlphabeticIndex$Bucket;

    :cond_e
    :goto_6
    add-int/lit8 v16, v16, -0x1

    if-lez v16, :cond_10

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-static {v8}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v28

    if-nez v28, :cond_e

    invoke-static {v8}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get2(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v28

    sget-object v29, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_f

    invoke-static/range {v19 .. v19}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get2(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v28

    sget-object v29, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-set0(Landroid/icu/text/AlphabeticIndex$Bucket;Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    goto :goto_6

    :cond_f
    move-object/from16 v19, v8

    goto :goto_6

    :cond_10
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-static {v8}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v28

    if-nez v28, :cond_11

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    new-instance v28, Landroid/icu/text/AlphabeticIndex$BucketList;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    move-object/from16 v2, v29

    invoke-direct {v0, v10, v1, v2}, Landroid/icu/text/AlphabeticIndex$BucketList;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/icu/text/AlphabeticIndex$BucketList;)V

    return-object v28
.end method

.method private static fixLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "\ufdd0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo v1, "\ufdd0"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2800

    if-ge v1, v0, :cond_1

    const/16 v1, 0x28ff

    if-gt v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v2, v0, -0x2800

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5283"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const-string/jumbo v1, "\ufdd0"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static hasMultiplePrimaryWeights(Landroid/icu/text/RuleBasedCollator;JLjava/lang/String;)Z
    .locals 9

    invoke-virtual {p0, p3}, Landroid/icu/text/RuleBasedCollator;->internalGetCEs(Ljava/lang/CharSequence;)[J

    move-result-object v2

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_2

    aget-wide v0, v2, v3

    const/16 v7, 0x20

    ushr-long v4, v0, v7

    cmp-long v7, v4, p1

    if-lez v7, :cond_1

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    return v7

    :cond_0
    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    return v7
.end method

.method private initBuckets()V
    .locals 9

    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    if-eqz v7, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;

    move-result-object v7

    iput-object v7, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    iget-object v8, p0, Landroid/icu/text/AlphabeticIndex;->recordComparator:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-static {v7}, Landroid/icu/text/AlphabeticIndex$BucketList;->-wrap2(Landroid/icu/text/AlphabeticIndex$BucketList;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-static {v3}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get3(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/AlphabeticIndex$Record;

    :goto_2
    if-eqz v6, :cond_5

    iget-object v7, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-static {v4}, Landroid/icu/text/AlphabeticIndex$Record;->-get0(Landroid/icu/text/AlphabeticIndex$Record;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_5

    move-object v2, v3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-static {v3}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get3(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    move-object v0, v2

    invoke-static {v2}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get0(Landroid/icu/text/AlphabeticIndex$Bucket;)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v0

    :cond_6
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get4(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v7}, Landroid/icu/text/AlphabeticIndex$Bucket;->-set2(Landroid/icu/text/AlphabeticIndex$Bucket;Ljava/util/List;)Ljava/util/List;

    :cond_7
    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->-get4(Landroid/icu/text/AlphabeticIndex$Bucket;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    return-void
.end method

.method private initLabels()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFKDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v11

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/AlphabeticIndex;->firstCharsInScripts:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v15, 0x1

    invoke-static {v8, v15}, Landroid/icu/text/UTF16;->hasMoreCodePointsThan(Ljava/lang/String;I)Z

    move-result v15

    if-nez v15, :cond_2

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v15, v8, v4}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v15, v8, v13}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_0

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/icu/text/AlphabeticIndex;->separated(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Landroid/icu/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-static {v5, v8, v15}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v6

    if-gez v6, :cond_4

    not-int v15, v6

    invoke-interface {v5, v15, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2a

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2a

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v11, v8, v10}, Landroid/icu/text/AlphabeticIndex;->isOneLabelBetterThanOther(Landroid/icu/text/Normalizer2;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v5, v6, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v14, v15, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    if-le v14, v15, :cond_7

    const/4 v3, 0x0

    const/4 v12, -0x1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    mul-int/2addr v15, v3

    div-int v1, v15, v14

    if-ne v1, v12, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    move v12, v1

    goto :goto_2

    :cond_7
    return-object v5
.end method

.method private static isOneLabelBetterThanOther(Landroid/icu/text/Normalizer2;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->codePointCount(II)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->codePointCount(II)I

    move-result v6

    sub-int v2, v5, v6

    if-eqz v2, :cond_1

    if-gez v2, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    sget-object v5, Landroid/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    invoke-interface {v5, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_3

    if-gez v2, :cond_2

    :goto_1
    return v3

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    sget-object v5, Landroid/icu/text/AlphabeticIndex;->binaryCmp:Ljava/util/Comparator;

    invoke-interface {v5, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4

    :goto_2
    return v3

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private separated(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x34f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public addLabels(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/AlphabeticIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/UnicodeSet;",
            ")",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->initialLabels:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public varargs addLabels([Landroid/icu/util/ULocale;)Landroid/icu/text/AlphabeticIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/icu/util/ULocale;",
            ")",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Landroid/icu/text/AlphabeticIndex;->addIndexExemplars(Landroid/icu/util/ULocale;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public varargs addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Locale;",
            ")",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/icu/text/AlphabeticIndex;->addIndexExemplars(Landroid/icu/util/ULocale;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public addRecord(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/text/AlphabeticIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    new-instance v1, Landroid/icu/text/AlphabeticIndex$Record;

    invoke-direct {v1, p1, p2, v2}, Landroid/icu/text/AlphabeticIndex$Record;-><init>(Ljava/lang/CharSequence;Ljava/lang/Object;Landroid/icu/text/AlphabeticIndex$Record;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/text/AlphabeticIndex$ImmutableIndex",
            "<TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    :cond_1
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    :goto_0
    new-instance v1, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    iget-object v2, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-direct {v1, v0, v2, v3}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;-><init>(Landroid/icu/text/AlphabeticIndex$BucketList;Landroid/icu/text/Collator;Landroid/icu/text/AlphabeticIndex$ImmutableIndex;)V

    return-object v1

    :cond_2
    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->createBucketList()Landroid/icu/text/AlphabeticIndex$BucketList;

    move-result-object v0

    goto :goto_0
.end method

.method public clearRecords()Landroid/icu/text/AlphabeticIndex;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    goto :goto_0
.end method

.method public getBucketCount()I
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-static {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->-wrap0(Landroid/icu/text/AlphabeticIndex$BucketList;)I

    move-result v0

    return v0
.end method

.method public getBucketIndex(Ljava/lang/CharSequence;)I
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    invoke-static {v0, p1, v1}, Landroid/icu/text/AlphabeticIndex$BucketList;->-wrap1(Landroid/icu/text/AlphabeticIndex$BucketList;Ljava/lang/CharSequence;Landroid/icu/text/Collator;)I

    move-result v0

    return v0
.end method

.method public getBucketLabels()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/AlphabeticIndex$Bucket;

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getCollator()Landroid/icu/text/RuleBasedCollator;
    .locals 3

    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorExternal:Landroid/icu/text/RuleBasedCollator;

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorOriginal:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    iput-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorExternal:Landroid/icu/text/RuleBasedCollator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Landroid/icu/text/AlphabeticIndex;->collatorExternal:Landroid/icu/text/RuleBasedCollator;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Collator cannot be cloned"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFirstCharactersInScripts()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xc8

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Landroid/icu/text/UnicodeSet;

    invoke-direct {v4}, Landroid/icu/text/UnicodeSet;-><init>()V

    iget-object v5, p0, Landroid/icu/text/AlphabeticIndex;->collatorPrimaryOnly:Landroid/icu/text/RuleBasedCollator;

    const v6, 0xfdd1

    invoke-virtual {v5, v6, v4}, Landroid/icu/text/RuleBasedCollator;->internalAddContractions(ILandroid/icu/text/UnicodeSet;)V

    invoke-virtual {v4}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v6, "AlphabeticIndex requires script-first-primary contractions"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v5

    shl-int v3, v7, v5

    and-int/lit8 v5, v3, 0x3f

    if-eqz v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getInflowLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxLabelCount()I
    .locals 1

    iget v0, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    return v0
.end method

.method public getOverflowLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordCount()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->inputList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnderflowLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/text/AlphabeticIndex$Bucket",
            "<TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/text/AlphabeticIndex;->initBuckets()V

    iget-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex$BucketList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setInflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->inflowLabel:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public setMaxLabelCount(I)Landroid/icu/text/AlphabeticIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    iput p1, p0, Landroid/icu/text/AlphabeticIndex;->maxLabelCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public setOverflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->overflowLabel:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method

.method public setUnderflowLabel(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/AlphabeticIndex",
            "<TV;>;"
        }
    .end annotation

    iput-object p1, p0, Landroid/icu/text/AlphabeticIndex;->underflowLabel:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/AlphabeticIndex;->buckets:Landroid/icu/text/AlphabeticIndex$BucketList;

    return-object p0
.end method
