.class Landroid/icu/text/CjkBreakEngine;
.super Landroid/icu/text/DictionaryBreakEngine;
.source "CjkBreakEngine.java"


# static fields
.field private static final fHanWordSet:Landroid/icu/text/UnicodeSet;

.field private static final fHangulWordSet:Landroid/icu/text/UnicodeSet;

.field private static final fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

.field private static final fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

.field private static final kMaxKatakanaGroupLength:I = 0x14

.field private static final kMaxKatakanaLength:I = 0x8

.field private static final kint32max:I = 0x7fffffff

.field private static final maxSnlp:I = 0xff


# instance fields
.field private fDictionary:Landroid/icu/text/DictionaryMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/CjkBreakEngine;->fHanWordSet:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/CjkBreakEngine;->fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/CjkBreakEngine;->fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[\\uac00-\\ud7a3]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHanWordSet:Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[:Han:]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[[:Katakana:]\\uff9e\\uff9f]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[:Hiragana:]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHanWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Landroid/icu/text/DictionaryBreakEngine;-><init>([Ljava/lang/Integer;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/CjkBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    const-string/jumbo v1, "Hira"

    invoke-static {v1}, Landroid/icu/text/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Landroid/icu/text/DictionaryMatcher;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/CjkBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    if-eqz p1, :cond_0

    sget-object v1, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v1}, Landroid/icu/text/DictionaryBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sget-object v1, Landroid/icu/text/CjkBreakEngine;->fHanWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    sget-object v1, Landroid/icu/text/CjkBreakEngine;->fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    sget-object v1, Landroid/icu/text/CjkBreakEngine;->fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const v1, 0xff70

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v1, 0x30fc

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Landroid/icu/text/DictionaryBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0
.end method

.method private static getKatakanaCost(I)I
    .locals 2

    const/16 v1, 0x9

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    const/16 v1, 0x8

    if-le p0, v1, :cond_0

    const/16 v1, 0x2000

    :goto_0
    return v1

    :cond_0
    aget v1, v0, p0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x2000
        0x3d8
        0x198
        0xf0
        0xcc
        0xfc
        0x12c
        0x174
        0x1e0
    .end array-data
.end method

.method private static isKatakana(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x30a1

    if-lt p0, v2, :cond_1

    const/16 v2, 0x30fe

    if-gt p0, v2, :cond_1

    const/16 v2, 0x30fb

    if-eq p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v2, 0xff66

    if-lt p0, v2, :cond_2

    const v2, 0xff9f

    if-le p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 33

    move/from16 v0, p2

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    sub-int v16, p3, p2

    add-int/lit8 v2, v16, 0x1

    new-array v10, v2, [I

    new-instance v31, Ljava/lang/StringBuffer;

    const-string/jumbo v2, ""

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    move/from16 v0, p3

    if-ge v2, v0, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    goto :goto_0

    :cond_1
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v2

    sget-object v7, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-eq v2, v7, :cond_2

    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-static {v0, v2, v7}, Landroid/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z

    move-result v17

    :goto_1
    const/16 v27, 0x0

    if-eqz v17, :cond_3

    new-instance v3, Ljava/text/StringCharacterIterator;

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    aput v2, v10, v7

    :goto_2
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v15, v2, :cond_4

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v15, v2

    add-int/lit8 v27, v27, 0x1

    aput v15, v10, v27

    goto :goto_2

    :cond_2
    const/16 v17, 0x1

    goto :goto_1

    :cond_3
    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Ljava/lang/String;

    move-result-object v23

    new-instance v3, Ljava/text/StringCharacterIterator;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v10, v2, [I

    new-instance v24, Landroid/icu/text/Normalizer;

    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    const/4 v7, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v2, v7}, Landroid/icu/text/Normalizer;-><init>(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)V

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    aput v2, v10, v7

    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/Normalizer;->endIndex()I

    move-result v2

    if-ge v15, v2, :cond_4

    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/Normalizer;->next()I

    add-int/lit8 v27, v27, 0x1

    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/Normalizer;->getIndex()I

    move-result v15

    aput v15, v10, v27

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v27, 0x1

    new-array v9, v2, [I

    const/4 v2, 0x0

    const/4 v7, 0x0

    aput v2, v9, v7

    const/4 v14, 0x1

    :goto_4
    move/from16 v0, v27

    if-gt v14, v0, :cond_5

    const v2, 0x7fffffff

    aput v2, v9, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v27, 0x1

    new-array v0, v2, [I

    move-object/from16 v30, v0

    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v27

    if-gt v14, v0, :cond_6

    const/4 v2, -0x1

    aput v2, v30, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_6
    const/16 v21, 0x14

    move/from16 v0, v27

    new-array v8, v0, [I

    move/from16 v0, v27

    new-array v5, v0, [I

    const/16 v19, 0x0

    const/4 v14, 0x0

    :goto_6
    move/from16 v0, v27

    if-ge v14, v0, :cond_10

    invoke-interface {v3, v14}, Ljava/text/CharacterIterator;->setIndex(I)C

    aget v2, v9, v14

    const v7, 0x7fffffff

    if-ne v2, v7, :cond_7

    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v14, 0x14

    move/from16 v0, v27

    if-ge v2, v0, :cond_b

    const/16 v4, 0x14

    :goto_8
    const/4 v2, 0x1

    new-array v6, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/CjkBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move v7, v4

    invoke-virtual/range {v2 .. v8}, Landroid/icu/text/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II[I)I

    const/4 v2, 0x0

    aget v13, v6, v2

    if-eqz v13, :cond_8

    const/4 v2, 0x0

    aget v2, v5, v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_9

    :cond_8
    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v2

    const v7, 0x7fffffff

    if-eq v2, v7, :cond_9

    sget-object v2, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_9
    :goto_9
    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    if-ge v0, v13, :cond_d

    aget v2, v9, v14

    aget v7, v8, v20

    add-int v22, v2, v7

    aget v2, v5, v20

    add-int/2addr v2, v14

    aget v2, v9, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_a

    aget v2, v5, v20

    add-int/2addr v2, v14

    aput v22, v9, v2

    aget v2, v5, v20

    add-int/2addr v2, v14

    aput v14, v30, v2

    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    :cond_b
    sub-int v4, v27, v14

    goto :goto_8

    :cond_c
    const/16 v2, 0xff

    aput v2, v8, v13

    const/4 v2, 0x1

    aput v2, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_d
    invoke-interface {v3, v14}, Ljava/text/CharacterIterator;->setIndex(I)C

    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v2

    invoke-static {v2}, Landroid/icu/text/CjkBreakEngine;->isKatakana(I)Z

    move-result v18

    if-nez v19, :cond_f

    if-eqz v18, :cond_f

    add-int/lit8 v20, v14, 0x1

    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    :goto_b
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    sub-int v2, v20, v14

    const/16 v7, 0x14

    if-ge v2, v7, :cond_e

    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v2

    invoke-static {v2}, Landroid/icu/text/CjkBreakEngine;->isKatakana(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    :cond_e
    sub-int v2, v20, v14

    const/16 v7, 0x14

    if-ge v2, v7, :cond_f

    aget v2, v9, v14

    sub-int v7, v20, v14

    invoke-static {v7}, Landroid/icu/text/CjkBreakEngine;->getKatakanaCost(I)I

    move-result v7

    add-int v22, v2, v7

    aget v2, v9, v20

    move/from16 v0, v22

    if-ge v0, v2, :cond_f

    aput v22, v9, v20

    aput v14, v30, v20

    :cond_f
    move/from16 v19, v18

    goto/16 :goto_7

    :cond_10
    add-int/lit8 v2, v27, 0x1

    new-array v0, v2, [I

    move-object/from16 v32, v0

    const/16 v25, 0x0

    aget v2, v9, v27

    const v7, 0x7fffffff

    if-ne v2, v7, :cond_15

    aput v27, v32, v25

    const/16 v25, 0x1

    :goto_c
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v2

    move/from16 v0, p2

    if-ge v2, v0, :cond_12

    :cond_11
    add-int/lit8 v26, v25, 0x1

    const/4 v2, 0x0

    aput v2, v32, v25

    move/from16 v25, v26

    :cond_12
    const/4 v12, 0x0

    add-int/lit8 v14, v25, -0x1

    :goto_d
    if-ltz v14, :cond_19

    aget v2, v32, v14

    aget v2, v10, v2

    add-int v28, v2, p2

    move-object/from16 v0, p4

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->contains(I)Z

    move-result v2

    if-nez v2, :cond_13

    move/from16 v0, v28

    move/from16 v1, p2

    if-ne v0, v1, :cond_18

    :cond_13
    const/4 v2, 0x1

    :goto_e
    if-nez v2, :cond_14

    aget v2, v32, v14

    aget v2, v10, v2

    add-int v2, v2, p2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    add-int/lit8 v12, v12, 0x1

    :cond_14
    add-int/lit8 v14, v14, -0x1

    goto :goto_d

    :cond_15
    move/from16 v14, v27

    :goto_f
    if-lez v14, :cond_16

    aput v14, v32, v25

    add-int/lit8 v25, v25, 0x1

    aget v14, v30, v14

    goto :goto_f

    :cond_16
    add-int/lit8 v2, v25, -0x1

    aget v2, v32, v2

    aget v2, v30, v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    :goto_10
    invoke-static {v2}, Landroid/icu/impl/Assert;->assrt(Z)V

    goto :goto_c

    :cond_17
    const/4 v2, 0x0

    goto :goto_10

    :cond_18
    const/4 v2, 0x0

    goto :goto_e

    :cond_19
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_1a

    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    add-int/lit8 v12, v12, -0x1

    :cond_1a
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    :cond_1b
    return v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Landroid/icu/text/CjkBreakEngine;

    if-eqz v1, :cond_0

    move-object v0, p1

    nop

    nop

    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    iget-object v2, v0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
