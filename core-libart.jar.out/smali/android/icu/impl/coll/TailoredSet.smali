.class public final Landroid/icu/impl/coll/TailoredSet;
.super Ljava/lang/Object;
.source "TailoredSet.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private baseData:Landroid/icu/impl/coll/CollationData;

.field private data:Landroid/icu/impl/coll/CollationData;

.field private suffix:Ljava/lang/String;

.field private tailored:Landroid/icu/text/UnicodeSet;

.field private unreversedPrefix:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/TailoredSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    iput-object p1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method private add(I)V
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method private addContractions(ILjava/lang/CharSequence;I)V
    .locals 3

    new-instance v2, Landroid/icu/util/CharsTrie;

    invoke-direct {v2, p2, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v2}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v0

    iget-object v2, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v2}, Landroid/icu/impl/coll/TailoredSet;->addSuffix(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V
    .locals 4

    invoke-direct {p0, p2}, Landroid/icu/impl/coll/TailoredSet;->setPrefix(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p4

    invoke-static {p4}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p4}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    iget-object v1, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    invoke-direct {p0, p3, v1, v2}, Landroid/icu/impl/coll/TailoredSet;->addContractions(ILjava/lang/CharSequence;I)V

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    invoke-direct {p0}, Landroid/icu/impl/coll/TailoredSet;->resetPrefix()V

    return-void
.end method

.method private addPrefixes(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;I)V
    .locals 4

    new-instance v2, Landroid/icu/util/CharsTrie;

    invoke-direct {v2, p3, p4}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v2}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v0

    iget-object v2, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    iget v3, v0, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, v2, p2, v3}, Landroid/icu/impl/coll/TailoredSet;->addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addSuffix(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method private compare(III)V
    .locals 22

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->isPrefixCE32(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v11}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p2

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isPrefixCE32(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v8}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v5, v11, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v6, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v7, v8, 0x2

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/coll/TailoredSet;->comparePrefixes(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V

    :cond_0
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v11

    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_4

    const/16 p2, 0x1

    :goto_1
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v8

    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_5

    const/16 p3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v5, v11, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v6, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v7, v8, 0x2

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/coll/TailoredSet;->compareContractions(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V

    :cond_1
    :goto_3
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v19

    sget-boolean v2, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    if-nez v2, :cond_9

    const/16 v2, 0x8

    move/from16 v0, v19

    if-eq v0, v2, :cond_8

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v4, v11, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/icu/impl/coll/TailoredSet;->addPrefixes(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;I)V

    goto :goto_0

    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isPrefixCE32(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v8}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v4, v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/icu/impl/coll/TailoredSet;->addPrefixes(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v11}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p2

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v8}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p3

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v3, v11, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/coll/TailoredSet;->addContractions(ILjava/lang/CharSequence;I)V

    goto/16 :goto_3

    :cond_7
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v3, v8}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v3, v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/coll/TailoredSet;->addContractions(ILjava/lang/CharSequence;I)V

    goto/16 :goto_3

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_9
    sget-boolean v2, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    if-nez v2, :cond_b

    const/16 v2, 0x9

    move/from16 v0, v19

    if-eq v0, v2, :cond_a

    const/4 v2, 0x1

    :goto_5
    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    sget-boolean v2, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    if-nez v2, :cond_e

    const/16 v2, 0xe

    move/from16 v0, v19

    if-eq v0, v2, :cond_c

    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    :cond_d
    const/16 v19, -0x1

    :cond_e
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v10

    sget-boolean v2, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    if-nez v2, :cond_10

    const/16 v2, 0x8

    if-eq v10, v2, :cond_f

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_7

    :cond_10
    sget-boolean v2, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    if-nez v2, :cond_13

    const/16 v2, 0x9

    if-eq v10, v2, :cond_11

    const/4 v2, 0x1

    :goto_8
    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_8

    :cond_12
    const/4 v10, -0x1

    :cond_13
    const/16 v2, 0xe

    if-ne v10, v2, :cond_15

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->isLongPrimaryCE32(I)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    return-void

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v3

    aget-wide v12, v2, v3

    move/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    move-result-wide v20

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->primaryFromLongPrimaryCE32(I)J

    move-result-wide v2

    cmp-long v2, v2, v20

    if-eqz v2, :cond_15

    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    return-void

    :cond_15
    move/from16 v0, v19

    if-eq v0, v10, :cond_16

    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    return-void

    :cond_16
    const/4 v2, 0x5

    move/from16 v0, v19

    if-ne v0, v2, :cond_1a

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v18

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v9

    move/from16 v0, v18

    if-eq v0, v9, :cond_17

    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    return-void

    :cond_17
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v15

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v16

    const/4 v14, 0x0

    :goto_9
    move/from16 v0, v18

    if-ge v14, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int v3, v15, v14

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int v4, v16, v14

    aget v3, v3, v4

    if-eq v2, v3, :cond_19

    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    :cond_18
    :goto_a
    return-void

    :cond_19
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_1a
    const/4 v2, 0x6

    move/from16 v0, v19

    if-ne v0, v2, :cond_1d

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v18

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v9

    move/from16 v0, v18

    if-eq v0, v9, :cond_1b

    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    return-void

    :cond_1b
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v15

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v16

    const/4 v14, 0x0

    :goto_b
    move/from16 v0, v18

    if-ge v14, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->ces:[J

    add-int v3, v15, v14

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->ces:[J

    add-int v5, v16, v14

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    goto :goto_a

    :cond_1c
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_1d
    const/16 v2, 0xc

    move/from16 v0, v19

    if-ne v0, v2, :cond_1f

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x3

    move/from16 v0, v18

    if-ne v0, v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_1e
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    goto/16 :goto_a

    :cond_1f
    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_18

    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    goto/16 :goto_a
.end method

.method private compareContractions(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V
    .locals 10

    new-instance v8, Landroid/icu/util/CharsTrie;

    invoke-direct {v8, p2, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v8}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v5

    new-instance v8, Landroid/icu/util/CharsTrie;

    invoke-direct {v8, p4, p5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v8}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string/jumbo v4, "\uffff\uffff"

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v7, :cond_0

    invoke-virtual {v5}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v6

    iget-object v8, v6, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v1

    iget-object v8, v1, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_2
    if-ne v7, v4, :cond_4

    if-ne v2, v4, :cond_4

    return-void

    :cond_2
    const/4 v6, 0x0

    move-object v7, v4

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move-object v2, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v7, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5

    invoke-direct {p0, p1, v7}, Landroid/icu/impl/coll/TailoredSet;->addSuffix(ILjava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    if-lez v3, :cond_6

    invoke-direct {p0, p1, v2}, Landroid/icu/impl/coll/TailoredSet;->addSuffix(ILjava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    iput-object v7, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    iget v8, v6, Landroid/icu/util/CharsTrie$Entry;->value:I

    iget v9, v1, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, v8, v9}, Landroid/icu/impl/coll/TailoredSet;->compare(III)V

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    goto :goto_0
.end method

.method private comparePrefixes(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V
    .locals 10

    new-instance v8, Landroid/icu/util/CharsTrie;

    invoke-direct {v8, p2, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v8}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v5

    new-instance v8, Landroid/icu/util/CharsTrie;

    invoke-direct {v8, p4, p5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v8}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string/jumbo v4, "\uffff"

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v7, :cond_0

    invoke-virtual {v5}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v6

    iget-object v8, v6, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    :goto_1
    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v1

    iget-object v8, v1, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_2
    if-ne v7, v4, :cond_4

    if-ne v2, v4, :cond_4

    return-void

    :cond_2
    const/4 v6, 0x0

    move-object v7, v4

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move-object v2, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v7, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_7

    sget-boolean v8, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    if-nez v8, :cond_6

    if-eqz v6, :cond_5

    const/4 v8, 0x1

    :goto_3
    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    :cond_6
    iget-object v8, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget v9, v6, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, v8, v7, p1, v9}, Landroid/icu/impl/coll/TailoredSet;->addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_7
    if-lez v3, :cond_a

    sget-boolean v8, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    if-nez v8, :cond_9

    if-eqz v1, :cond_8

    const/4 v8, 0x1

    :goto_4
    if-nez v8, :cond_9

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    :cond_9
    iget-object v8, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget v9, v1, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, v8, v2, p1, v9}, Landroid/icu/impl/coll/TailoredSet;->addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_a
    invoke-direct {p0, v7}, Landroid/icu/impl/coll/TailoredSet;->setPrefix(Ljava/lang/CharSequence;)V

    sget-boolean v8, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    if-nez v8, :cond_c

    if-eqz v6, :cond_b

    if-eqz v1, :cond_b

    const/4 v8, 0x1

    :goto_5
    if-nez v8, :cond_c

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    :cond_c
    iget v8, v6, Landroid/icu/util/CharsTrie$Entry;->value:I

    iget v9, v1, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, v8, v9}, Landroid/icu/impl/coll/TailoredSet;->compare(III)V

    invoke-direct {p0}, Landroid/icu/impl/coll/TailoredSet;->resetPrefix()V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private enumTailoredRange(IIILandroid/icu/impl/coll/TailoredSet;)V
    .locals 1

    const/16 v0, 0xc0

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p4, p1, p2, p3}, Landroid/icu/impl/coll/TailoredSet;->handleCE32(III)V

    return-void
.end method

.method private handleCE32(III)V
    .locals 3

    const/16 v2, 0xc0

    sget-boolean v1, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eq p3, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, p3}, Landroid/icu/impl/coll/CollationData;->getIndirectCE32(I)I

    move-result p3

    if-ne p3, v2, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v0

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isSelfContainedCE32(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->isSelfContainedCE32(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eq p3, v0, :cond_3

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-le p1, p2, :cond_2

    return-void

    :cond_4
    invoke-direct {p0, p1, p3, v0}, Landroid/icu/impl/coll/TailoredSet;->compare(III)V

    goto :goto_1
.end method

.method private resetPrefix()V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private setPrefix(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public forData(Landroid/icu/impl/coll/CollationData;)V
    .locals 5

    iput-object p1, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    iput-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    sget-boolean v2, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v2}, Landroid/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v2, :cond_3

    :cond_2
    return-void

    :cond_3
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v4, v0, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v2, v3, v4, p0}, Landroid/icu/impl/coll/TailoredSet;->enumTailoredRange(IIILandroid/icu/impl/coll/TailoredSet;)V

    goto :goto_1
.end method
