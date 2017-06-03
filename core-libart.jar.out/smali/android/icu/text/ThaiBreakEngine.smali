.class Landroid/icu/text/ThaiBreakEngine;
.super Landroid/icu/text/DictionaryBreakEngine;
.source "ThaiBreakEngine.java"


# static fields
.field private static final THAI_LOOKAHEAD:B = 0x3t

.field private static final THAI_MAIYAMOK:C = '\u0e46'

.field private static final THAI_MIN_WORD:B = 0x2t

.field private static final THAI_MIN_WORD_SPAN:B = 0x4t

.field private static final THAI_PAIYANNOI:C = '\u0e2f'

.field private static final THAI_PREFIX_COMBINE_THRESHOLD:B = 0x3t

.field private static final THAI_ROOT_COMBINE_THRESHOLD:B = 0x3t

.field private static fBeginWordSet:Landroid/icu/text/UnicodeSet;

.field private static fEndWordSet:Landroid/icu/text/UnicodeSet;

.field private static fMarkSet:Landroid/icu/text/UnicodeSet;

.field private static fSuffixSet:Landroid/icu/text/UnicodeSet;

.field private static fThaiWordSet:Landroid/icu/text/UnicodeSet;


# instance fields
.field private fDictionary:Landroid/icu/text/DictionaryMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xe44

    const/16 v3, 0xe40

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/ThaiBreakEngine;->fThaiWordSet:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fThaiWordSet:Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[[:Thai:]&[:LineBreak=SA:]]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fThaiWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[[:Thai:]&[:LineBreak=SA:]&[:M:]]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    sget-object v1, Landroid/icu/text/ThaiBreakEngine;->fThaiWordSet:Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    sput-object v0, Landroid/icu/text/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    const/16 v1, 0xe31

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->remove(I)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v3, v4}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    const/16 v1, 0xe01

    const/16 v2, 0xe2e

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v3, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    const/16 v1, 0xe2f

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    const/16 v1, 0xe46

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fThaiWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Landroid/icu/text/DictionaryBreakEngine;-><init>([Ljava/lang/Integer;)V

    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fThaiWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Landroid/icu/text/DictionaryBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    const-string/jumbo v0, "Thai"

    invoke-static {v0}, Landroid/icu/text/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Landroid/icu/text/DictionaryMatcher;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    return-void
.end method


# virtual methods
.method public divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 19

    sub-int v17, p3, p2

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    const/16 v17, 0x0

    return v17

    :cond_0
    const/4 v15, 0x0

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v14, v0, [Landroid/icu/text/DictionaryBreakEngine$PossibleWord;

    const/4 v9, 0x0

    :goto_0
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    new-instance v17, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;

    invoke-direct/range {v17 .. v17}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;-><init>()V

    aput-object v17, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v8

    move/from16 v0, p3

    if-ge v8, v0, :cond_16

    const/4 v13, 0x0

    rem-int/lit8 v17, v15, 0x3

    aget-object v17, v14, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v5

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_8

    rem-int/lit8 v17, v15, 0x3

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    move-result v13

    add-int/lit8 v15, v15, 0x1

    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_7

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v13, v0, :cond_7

    rem-int/lit8 v17, v15, 0x3

    aget-object v17, v14, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v17

    if-gtz v17, :cond_f

    if-eqz v13, :cond_4

    rem-int/lit8 v17, v15, 0x3

    aget-object v17, v14, v17

    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->longestPrefix()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_f

    :cond_4
    add-int v17, v8, v13

    sub-int v11, p3, v17

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v10

    const/4 v6, 0x0

    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v12

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v11, v11, -0x1

    if-gtz v11, :cond_d

    :cond_5
    if-gtz v13, :cond_6

    add-int/lit8 v15, v15, 0x1

    :cond_6
    add-int/2addr v13, v6

    :cond_7
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v7

    move/from16 v0, p3

    if-ge v7, v0, :cond_10

    sget-object v17, Landroid/icu/text/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v17

    sub-int v17, v17, v7

    add-int v13, v13, v17

    goto :goto_4

    :cond_8
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v5, v0, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_9

    :goto_5
    add-int/lit8 v17, v15, 0x1

    rem-int/lit8 v17, v17, 0x3

    aget-object v17, v14, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v17

    if-lez v17, :cond_c

    rem-int/lit8 v17, v15, 0x3

    aget-object v17, v14, v17

    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    const/16 v16, 0x2

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p3

    if-lt v0, v1, :cond_b

    :cond_9
    :goto_6
    rem-int/lit8 v17, v15, 0x3

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    move-result v13

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v17, v15, 0x1

    rem-int/lit8 v17, v17, 0x3

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_b
    add-int/lit8 v17, v15, 0x2

    rem-int/lit8 v17, v17, 0x3

    aget-object v17, v14, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v17

    if-lez v17, :cond_a

    rem-int/lit8 v17, v15, 0x3

    aget-object v17, v14, v17

    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    goto :goto_6

    :cond_c
    rem-int/lit8 v17, v15, 0x3

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    move-result v17

    if-eqz v17, :cond_9

    goto :goto_5

    :cond_d
    sget-object v17, Landroid/icu/text/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v17

    if-eqz v17, :cond_e

    sget-object v17, Landroid/icu/text/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v17

    if-eqz v17, :cond_e

    add-int/lit8 v17, v15, 0x1

    rem-int/lit8 v17, v17, 0x3

    aget-object v17, v14, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v4

    add-int v17, v8, v13

    add-int v17, v17, v6

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    if-gtz v4, :cond_5

    :cond_e
    move v10, v12

    goto/16 :goto_3

    :cond_f
    add-int v17, v8, v13

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto/16 :goto_4

    :cond_10
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_12

    if-lez v13, :cond_12

    rem-int/lit8 v17, v15, 0x3

    aget-object v17, v14, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v17

    if-gtz v17, :cond_15

    sget-object v17, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v12

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v17

    if-eqz v17, :cond_15

    const/16 v17, 0xe2f

    move/from16 v0, v17

    if-ne v12, v0, :cond_11

    sget-object v17, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->previous()C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v17

    if-nez v17, :cond_13

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    add-int/lit8 v13, v13, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v12

    :cond_11
    :goto_7
    const/16 v17, 0xe46

    move/from16 v0, v17

    if-ne v12, v0, :cond_12

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->previous()C

    move-result v17

    const/16 v18, 0xe46

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    add-int/lit8 v13, v13, 0x1

    :cond_12
    :goto_8
    if-lez v13, :cond_2

    add-int v17, v8, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    goto/16 :goto_1

    :cond_13
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    goto :goto_7

    :cond_14
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    goto :goto_8

    :cond_15
    add-int v17, v8, v13

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto :goto_8

    :cond_16
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p3

    if-lt v0, v1, :cond_17

    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    add-int/lit8 v15, v15, -0x1

    :cond_17
    return v15
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/icu/text/ThaiBreakEngine;

    return v0
.end method

.method public handles(II)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    :cond_0
    const/16 v3, 0x100a

    invoke-static {p1, v3}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v0

    const/16 v3, 0x26

    if-ne v0, v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
