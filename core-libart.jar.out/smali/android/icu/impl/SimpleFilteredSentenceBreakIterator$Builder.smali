.class public Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;
.super Landroid/icu/text/FilteredBreakIteratorBuilder;
.source "SimpleFilteredSentenceBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final AddToForward:I = 0x2

.field static final MATCH:I = 0x2

.field static final PARTIAL:I = 0x1

.field static final SuppressInReverse:I = 0x1


# instance fields
.field private filterSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/FilteredBreakIteratorBuilder;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 8

    invoke-direct {p0}, Landroid/icu/text/FilteredBreakIteratorBuilder;-><init>()V

    const-string/jumbo v7, "android/icu/impl/data/icudt56b/brkitr"

    invoke-static {v7, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v7, "exceptions"

    invoke-virtual {v5, v7}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    const-string/jumbo v7, "SentenceBreak"

    invoke-virtual {v3, v7}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v6

    :goto_0
    if-ge v4, v6, :cond_0

    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public build(Landroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;
    .locals 27

    new-instance v6, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v6}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    new-instance v7, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v7}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    const/4 v15, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v20

    new-array v13, v0, [I

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    aput-object v17, v21, v10

    const/16 v22, 0x0

    aput v22, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v10, v0, :cond_6

    aget-object v22, v21, v10

    const/16 v23, 0x2e

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v12, v0, :cond_5

    add-int/lit8 v22, v12, 0x1

    aget-object v23, v21, v10

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    const/16 v19, -0x1

    const/4 v11, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v11, v0, :cond_4

    if-ne v11, v10, :cond_2

    :cond_1
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    aget-object v22, v21, v10

    aget-object v23, v21, v11

    add-int/lit8 v24, v12, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v23

    move/from16 v3, v26

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v22

    if-eqz v22, :cond_1

    aget v22, v13, v11

    if-nez v22, :cond_3

    const/16 v22, 0x3

    aput v22, v13, v11

    goto :goto_3

    :cond_3
    aget v22, v13, v11

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_1

    move/from16 v19, v11

    goto :goto_3

    :cond_4
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    aget v22, v13, v10

    if-nez v22, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    aget-object v22, v21, v10

    add-int/lit8 v23, v12, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v14, v0}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    add-int/lit8 v15, v15, 0x1

    const/16 v22, 0x3

    aput v22, v13, v10

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v10, 0x0

    :goto_4
    move/from16 v0, v20

    if-ge v10, v0, :cond_8

    aget v22, v13, v10

    if-nez v22, :cond_7

    new-instance v22, Ljava/lang/StringBuilder;

    aget-object v23, v21, v10

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v22, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    add-int/lit8 v15, v15, 0x1

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    aget-object v22, v21, v10

    const/16 v23, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    if-lez v15, :cond_9

    sget-object v22, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/icu/util/CharsTrieBuilder;->build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/CharsTrie;

    move-result-object v5

    :cond_9
    if-lez v9, :cond_a

    sget-object v22, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/icu/util/CharsTrieBuilder;->build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/CharsTrie;

    move-result-object v8

    :cond_a
    new-instance v22, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v5}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;-><init>(Landroid/icu/text/BreakIterator;Landroid/icu/util/CharsTrie;Landroid/icu/util/CharsTrie;)V

    return-object v22
.end method

.method public suppressBreakAfter(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unsuppressBreakAfter(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
