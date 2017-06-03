.class final Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;
.super Ljava/lang/Object;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationDataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CopyHelper"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field dest:Landroid/icu/impl/coll/CollationDataBuilder;

.field modifiedCEs:[J

.field modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

.field src:Landroid/icu/impl/coll/CollationDataBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    iput-object p2, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    iput-object p3, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    return-void
.end method


# virtual methods
.method copyCE32(I)I
    .locals 22

    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;->modifyCE32(I)J

    move-result-wide v2

    const-wide v18, 0x101000100L

    cmp-long v18, v2, v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    move-result p1

    :cond_0
    :goto_0
    return p1

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v11

    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v15

    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v9

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_7

    add-int v18, v15, v6

    aget p1, v11, v18

    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;->modifyCE32(I)J

    move-result-wide v2

    const-wide v18, 0x101000100L

    cmp-long v18, v2, v18

    if-nez v18, :cond_4

    :cond_2
    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v20

    aput-wide v20, v18, v6

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-nez v7, :cond_6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    move-object/from16 v18, v0

    add-int v19, v15, v8

    aget v19, v11, v19

    invoke-static/range {v19 .. v19}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v20

    aput-wide v20, v18, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    move-object/from16 v18, v0

    aput-wide v2, v18, v6

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result p1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15, v9}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    move-result p1

    goto/16 :goto_0

    :cond_9
    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v15

    invoke-static/range {p1 .. p1}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v9

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v9, :cond_e

    add-int v18, v15, v6

    aget-wide v12, v14, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v12, v13}, Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;->modifyCE(J)J

    move-result-wide v2

    const-wide v18, 0x101000100L

    cmp-long v18, v2, v18

    if-nez v18, :cond_b

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    move-object/from16 v18, v0

    aput-wide v12, v18, v6

    :cond_a
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    if-nez v7, :cond_d

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    move-object/from16 v18, v0

    add-int v19, v15, v8

    aget-wide v20, v14, v19

    aput-wide v20, v18, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_c
    const/4 v7, 0x1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    move-object/from16 v18, v0

    aput-wide v2, v18, v6

    goto :goto_5

    :cond_e
    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result p1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15, v9}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    move-result p1

    goto/16 :goto_0

    :cond_10
    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v4

    sget-boolean v18, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->-assertionsDisabled:Z

    if-nez v18, :cond_12

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->hasContext()Z

    move-result v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    :goto_7
    if-nez v18, :cond_12

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_11
    const/16 v18, 0x1

    goto :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    iget-object v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyCE32(I)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result p1

    :goto_8
    iget v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move/from16 v18, v0

    if-ltz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    iget v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    iget-object v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyCE32(I)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    move-result v18

    add-int/lit8 v16, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v18, v0

    iget-object v0, v4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    iput v5, v10, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    goto :goto_8

    :cond_13
    sget-boolean v18, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->-assertionsDisabled:Z

    if-nez v18, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    :cond_14
    const/16 v18, 0x1

    :goto_9
    if-nez v18, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_15
    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    const/16 v18, 0x1

    goto :goto_9

    :cond_16
    const/16 v18, 0x0

    goto :goto_9
.end method

.method copyRangeCE32(III)V
    .locals 2

    invoke-virtual {p0, p3}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyCE32(I)I

    move-result p3

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    invoke-static {p3}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Landroid/icu/impl/coll/CollationDataBuilder;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    :cond_0
    return-void
.end method
