.class Landroid/icu/text/KhmerBreakEngine;
.super Landroid/icu/text/DictionaryBreakEngine;
.source "KhmerBreakEngine.java"


# static fields
.field private static final KHMER_LOOKAHEAD:B = 0x3t

.field private static final KHMER_MIN_WORD:B = 0x2t

.field private static final KHMER_MIN_WORD_SPAN:B = 0x4t

.field private static final KHMER_PREFIX_COMBINE_THRESHOLD:B = 0x3t

.field private static final KHMER_ROOT_COMBINE_THRESHOLD:B = 0x3t

.field private static fBeginWordSet:Landroid/icu/text/UnicodeSet;

.field private static fEndWordSet:Landroid/icu/text/UnicodeSet;

.field private static fKhmerWordSet:Landroid/icu/text/UnicodeSet;

.field private static fMarkSet:Landroid/icu/text/UnicodeSet;


# instance fields
.field private fDictionary:Landroid/icu/text/DictionaryMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/KhmerBreakEngine;->fKhmerWordSet:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/KhmerBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sput-object v0, Landroid/icu/text/KhmerBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fKhmerWordSet:Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[[:Khmer:]&[:LineBreak=SA:]]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fKhmerWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[[:Khmer:]&[:LineBreak=SA:]&[:M:]]"

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    sget-object v1, Landroid/icu/text/KhmerBreakEngine;->fKhmerWordSet:Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    sput-object v0, Landroid/icu/text/KhmerBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    const/16 v1, 0x1780

    const/16 v2, 0x17b3

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    const/16 v1, 0x17d2

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->remove(I)Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fKhmerWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

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

    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fKhmerWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Landroid/icu/text/DictionaryBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    const-string/jumbo v0, "Khmr"

    invoke-static {v0}, Landroid/icu/text/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Landroid/icu/text/DictionaryMatcher;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/KhmerBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    return-void
.end method


# virtual methods
.method public divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 20

    sub-int v18, p3, p2

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    const/16 v18, 0x0

    return v18

    :cond_0
    const/16 v16, 0x0

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v15, v0, [Landroid/icu/text/DictionaryBreakEngine$PossibleWord;

    const/4 v10, 0x0

    :goto_0
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    new-instance v18, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;

    invoke-direct/range {v18 .. v18}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;-><init>()V

    aput-object v18, v15, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v8

    move/from16 v0, p3

    if-ge v8, v0, :cond_12

    const/4 v14, 0x0

    rem-int/lit8 v18, v16, 0x3

    aget-object v18, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/KhmerBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_8

    rem-int/lit8 v18, v16, 0x3

    aget-object v18, v15, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    move-result v14

    add-int/lit8 v16, v16, 0x1

    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_7

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v14, v0, :cond_7

    rem-int/lit8 v18, v16, 0x3

    aget-object v18, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/KhmerBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v18

    if-gtz v18, :cond_10

    if-eqz v14, :cond_4

    rem-int/lit8 v18, v16, 0x3

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->longestPrefix()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    :cond_4
    add-int v18, v8, v14

    sub-int v12, p3, v18

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v11

    const/4 v6, 0x0

    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v13

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v12, v12, -0x1

    if-gtz v12, :cond_e

    :cond_5
    if-gtz v14, :cond_6

    add-int/lit8 v16, v16, 0x1

    :cond_6
    add-int/2addr v14, v6

    :cond_7
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v7

    move/from16 v0, p3

    if-ge v7, v0, :cond_11

    sget-object v18, Landroid/icu/text/KhmerBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v18

    sub-int v18, v18, v7

    add-int v14, v14, v18

    goto :goto_4

    :cond_8
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v5, v0, :cond_3

    const/4 v9, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_a

    :cond_9
    add-int/lit8 v18, v16, 0x1

    rem-int/lit8 v18, v18, 0x3

    aget-object v18, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/KhmerBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v18

    if-lez v18, :cond_d

    rem-int/lit8 v18, v16, 0x3

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    const/16 v17, 0x2

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_c

    :cond_a
    :goto_5
    rem-int/lit8 v18, v16, 0x3

    aget-object v18, v15, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    move-result v14

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v18, v16, 0x1

    rem-int/lit8 v18, v18, 0x3

    aget-object v18, v15, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    move-result v18

    if-eqz v18, :cond_d

    :cond_c
    add-int/lit8 v18, v16, 0x2

    rem-int/lit8 v18, v18, 0x3

    aget-object v18, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/KhmerBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v18

    if-lez v18, :cond_b

    rem-int/lit8 v18, v16, 0x3

    aget-object v18, v15, v18

    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    const/4 v9, 0x1

    :cond_d
    rem-int/lit8 v18, v16, 0x3

    aget-object v18, v15, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    move-result v18

    if-eqz v18, :cond_a

    if-eqz v9, :cond_9

    goto :goto_5

    :cond_e
    sget-object v18, Landroid/icu/text/KhmerBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v18

    if-eqz v18, :cond_f

    sget-object v18, Landroid/icu/text/KhmerBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v18

    if-eqz v18, :cond_f

    add-int/lit8 v18, v16, 0x1

    rem-int/lit8 v18, v18, 0x3

    aget-object v18, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/KhmerBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    move-result v4

    add-int v18, v8, v14

    add-int v18, v18, v6

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    if-gtz v4, :cond_5

    :cond_f
    move v11, v13

    goto/16 :goto_3

    :cond_10
    add-int v18, v8, v14

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto/16 :goto_4

    :cond_11
    if-lez v14, :cond_2

    add-int v18, v8, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    goto/16 :goto_1

    :cond_12
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_13

    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    add-int/lit8 v16, v16, -0x1

    :cond_13
    return v16
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/icu/text/KhmerBreakEngine;

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

    const/16 v3, 0x17

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
