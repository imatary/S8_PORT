.class final Landroid/icu/impl/coll/CollationDataBuilder;
.super Ljava/lang/Object;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;,
        Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;,
        Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;,
        Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final IS_BUILDER_JAMO_CE32:I = 0x100


# instance fields
.field protected base:Landroid/icu/impl/coll/CollationData;

.field protected baseSettings:Landroid/icu/impl/coll/CollationSettings;

.field protected ce32s:Landroid/icu/impl/coll/UVector32;

.field protected ce64s:Landroid/icu/impl/coll/UVector64;

.field protected collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

.field protected conditionalCE32s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;",
            ">;"
        }
    .end annotation
.end field

.field protected contextChars:Landroid/icu/text/UnicodeSet;

.field protected contexts:Ljava/lang/StringBuilder;

.field protected fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

.field protected fastLatinEnabled:Z

.field protected modified:Z

.field protected nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field protected trie:Landroid/icu/impl/Trie2Writable;

.field protected unsafeBackwardSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->baseSettings:Landroid/icu/impl/coll/CollationSettings;

    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    new-instance v0, Landroid/icu/impl/coll/UVector32;

    invoke-direct {v0}, Landroid/icu/impl/coll/UVector32;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    new-instance v0, Landroid/icu/impl/coll/UVector64;

    invoke-direct {v0}, Landroid/icu/impl/coll/UVector64;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    iput-boolean v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    iput-boolean v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    iput-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v0, v2}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    return-void
.end method

.method protected static encodeOneCEAsCE32(J)I
    .locals 12

    const-wide/16 v10, 0x0

    const v7, 0xc000

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x20

    ushr-long v2, p0, v6

    long-to-int v0, p0

    const v6, 0xffff

    and-int v1, v0, v6

    sget-boolean v6, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    and-int v6, v1, v7

    if-eq v6, v7, :cond_0

    move v4, v5

    :cond_0
    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_1
    const-wide v6, 0xffff00ff00ffL

    and-long/2addr v6, p0

    cmp-long v4, v6, v10

    if-nez v4, :cond_2

    long-to-int v4, v2

    ushr-int/lit8 v5, v0, 0x10

    or-int/2addr v4, v5

    shr-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    return v4

    :cond_2
    const-wide v6, 0xffffffffffL

    and-long/2addr v6, p0

    const-wide/32 v8, 0x5000500

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    invoke-static {v2, v3}, Landroid/icu/impl/coll/Collation;->makeLongPrimaryCE32(J)I

    move-result v4

    return v4

    :cond_3
    cmp-long v4, v2, v10

    if-nez v4, :cond_4

    and-int/lit16 v4, v1, 0xff

    if-nez v4, :cond_4

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->makeLongSecondaryCE32(I)I

    move-result v4

    return v4

    :cond_4
    return v5
.end method

.method private static enumRangeForCopy(IIILandroid/icu/impl/coll/CollationDataBuilder$CopyHelper;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/16 v0, 0xc0

    if-eq p2, v0, :cond_0

    invoke-virtual {p3, p0, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyRangeCE32(III)V

    :cond_0
    return-void
.end method

.method protected static isBuilderContextCE32(I)Z
    .locals 1

    const/4 v0, 0x7

    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v0

    return v0
.end method

.method protected static jamoCpFromIndex(I)I
    .locals 1

    const/16 v0, 0x13

    if-ge p0, v0, :cond_0

    add-int/lit16 v0, p0, 0x1100

    return v0

    :cond_0
    add-int/lit8 p0, p0, -0x13

    const/16 v0, 0x15

    if-ge p0, v0, :cond_1

    add-int/lit16 v0, p0, 0x1161

    return v0

    :cond_1
    add-int/lit8 p0, p0, -0x15

    add-int/lit16 v0, p0, 0x11a8

    return v0
.end method

.method protected static makeBuilderContextCE32(I)I
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0, p0}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)V
    .locals 1

    invoke-virtual {p0, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method protected addCE(J)I
    .locals 5

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2, p1, p2}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    return v1
.end method

.method protected addCE32(I)I
    .locals 3

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    return v1
.end method

.method addCE32(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 17

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "mapping from empty string"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v15

    if-nez v15, :cond_1

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string/jumbo v16, "attempt to add mappings after build()"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v15, v3}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v13

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-le v15, v4, :cond_5

    :cond_2
    const/4 v9, 0x1

    :goto_0
    const/16 v15, 0xc0

    if-ne v13, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v2

    if-nez v9, :cond_3

    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->ce32HasContext(I)Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_3
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v15}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v15, v3, v13}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    :cond_4
    if-nez v9, :cond_7

    invoke-static {v13}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v15

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    move/from16 v0, p3

    invoke-virtual {v15, v3, v0}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    :goto_1
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    return-void

    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v6

    const/4 v15, 0x1

    iput v15, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    move/from16 v0, p3

    iput v0, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    goto :goto_1

    :cond_7
    invoke-static {v13}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v15

    if-nez v15, :cond_8

    const-string/jumbo v15, "\u0000"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v13}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v15, v3, v8}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v15, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v6

    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v15, v14}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    :goto_3
    iget v11, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-gez v11, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v7, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v10

    iput v10, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v6

    const/4 v15, 0x1

    iput v15, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v12

    iget-object v15, v12, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v7, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v10

    iput v10, v6, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v15

    iput v11, v15, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    goto/16 :goto_1

    :cond_a
    if-nez v5, :cond_b

    move/from16 v0, p3

    iput v0, v12, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    goto/16 :goto_1

    :cond_b
    move-object v6, v12

    goto :goto_3
.end method

.method protected addConditionalCE32(Ljava/lang/String;I)I
    .locals 4

    const/4 v2, 0x0

    sget-boolean v3, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0x7ffff

    if-le v1, v2, :cond_2

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v3, "too many context-sensitive mappings"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method protected addContextTrie(ILandroid/icu/util/CharsTrieBuilder;)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v2, p1, 0x10

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/icu/util/StringTrieBuilder$Option;->SMALL:Landroid/icu/util/StringTrieBuilder$Option;

    invoke-virtual {p2, v2}, Landroid/icu/util/CharsTrieBuilder;->buildCharSequence(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    return v1
.end method

.method build(Landroid/icu/impl/coll/CollationData;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->buildMappings(Landroid/icu/impl/coll/CollationData;)V

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    iput-wide v0, p1, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget v0, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    iput v0, p1, Landroid/icu/impl/coll/CollationData;->numScripts:I

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationDataBuilder;->buildFastLatinTable(Landroid/icu/impl/coll/CollationData;)V

    return-void
.end method

.method protected buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I
    .locals 24

    sget-boolean v20, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->hasContext()Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x0

    :goto_0
    if-nez v20, :cond_1

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    :cond_0
    const/16 v20, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v20, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v20, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move/from16 v20, v0

    if-ltz v20, :cond_2

    const/16 v20, 0x1

    :goto_1
    if-nez v20, :cond_3

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    :cond_2
    const/16 v20, 0x0

    goto :goto_1

    :cond_3
    new-instance v15, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v15}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    new-instance v6, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v6}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    move-object/from16 v5, p1

    :goto_2
    sget-boolean v20, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v20, :cond_5

    move-object/from16 v0, p1

    if-eq v5, v0, :cond_4

    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->hasContext()Z

    move-result v20

    :goto_3
    if-nez v20, :cond_5

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    :cond_4
    const/16 v20, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    move-result v16

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    move-object/from16 v21, v0

    add-int/lit8 v22, v16, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v9, v5

    move-object v12, v5

    :goto_4
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move/from16 v20, v0

    if-ltz v20, :cond_6

    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v5

    iget-object v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object v12, v5

    goto :goto_4

    :cond_6
    add-int/lit8 v19, v16, 0x1

    iget-object v0, v12, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    sget-boolean v20, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v20, :cond_8

    if-ne v9, v12, :cond_7

    const/16 v20, 0x1

    :goto_5
    if-nez v20, :cond_8

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    :cond_7
    const/16 v20, 0x0

    goto :goto_5

    :cond_8
    iget v4, v12, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    move-object v5, v12

    :goto_6
    sget-boolean v20, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v20, :cond_13

    if-ne v5, v12, :cond_12

    const/16 v20, 0x1

    :goto_7
    if-nez v20, :cond_13

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    :cond_9
    invoke-virtual {v6}, Landroid/icu/util/CharsTrieBuilder;->clear()Landroid/icu/util/CharsTrieBuilder;

    const/4 v7, 0x1

    const/4 v10, 0x0

    iget-object v0, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    iget v7, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    iget v0, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v5

    :goto_8
    or-int/lit16 v10, v10, 0x200

    :goto_9
    iget-object v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v8

    const/16 v20, 0xff

    move/from16 v0, v20

    if-gt v8, v0, :cond_a

    and-int/lit16 v10, v10, -0x201

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v8

    const/16 v20, 0xff

    move/from16 v0, v20

    if-le v8, v0, :cond_b

    or-int/lit16 v10, v10, 0x400

    :cond_b
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    if-ne v5, v12, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Landroid/icu/impl/coll/CollationDataBuilder;->addContextTrie(ILandroid/icu/util/CharsTrieBuilder;)I

    move-result v11

    const v20, 0x7ffff

    move/from16 v0, v20

    if-le v11, v0, :cond_11

    new-instance v20, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v21, "too many context-sensitive mappings"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_c
    const/16 v10, 0x100

    move-object/from16 v5, p1

    :goto_a
    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    move-result v13

    move/from16 v0, v16

    if-ne v13, v0, :cond_d

    move-object v5, v9

    goto :goto_8

    :cond_d
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    if-eqz v13, :cond_e

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    sub-int v20, v20, v13

    iget-object v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v20

    if-eqz v20, :cond_f

    :cond_e
    iget v7, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    :cond_f
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v5

    goto :goto_a

    :cond_10
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v5

    goto/16 :goto_9

    :cond_11
    const/16 v20, 0x9

    move/from16 v0, v20

    invoke-static {v0, v11}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v20

    or-int v4, v20, v10

    goto/16 :goto_6

    :cond_12
    const/16 v20, 0x0

    goto/16 :goto_7

    :cond_13
    iput v4, v9, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    if-nez v16, :cond_14

    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move/from16 v20, v0

    if-gez v20, :cond_15

    return v4

    :cond_14
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14, v4}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move/from16 v20, v0

    if-gez v20, :cond_15

    sget-boolean v20, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v20, :cond_17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    const/16 v20, 0x1

    :goto_b
    if-nez v20, :cond_17

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    :cond_15
    iget v0, v5, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v5

    goto/16 :goto_2

    :cond_16
    const/16 v20, 0x0

    goto :goto_b

    :cond_17
    move-object/from16 v0, p1

    iget v0, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/icu/impl/coll/CollationDataBuilder;->addContextTrie(ILandroid/icu/util/CharsTrieBuilder;)I

    move-result v11

    const v20, 0x7ffff

    move/from16 v0, v20

    if-le v11, v0, :cond_18

    new-instance v20, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v21, "too many context-sensitive mappings"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_18
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-static {v0, v11}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v20

    return v20
.end method

.method protected buildContexts()V
    .locals 7

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v3, Landroid/icu/text/UnicodeSetIterator;

    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-direct {v3, v4}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :goto_0
    invoke-virtual {v3}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    iget v4, v3, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v6, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    iget v0, v3, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v4, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "Impossible: No context data for c in contextChars."

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_2
    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContext(Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v1

    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v4, v0, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected buildFastLatinTable(Landroid/icu/impl/coll/CollationData;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-direct {v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->forData(Landroid/icu/impl/coll/CollationData;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getHeader()[C

    move-result-object v0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getTable()[C

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v2, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v2, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    :cond_1
    iput-object v0, p1, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    iput-object v1, p1, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    :goto_0
    return-void

    :cond_2
    iput-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinBuilder:Landroid/icu/impl/coll/CollationFastLatinBuilder;

    goto :goto_0
.end method

.method protected buildMappings(Landroid/icu/impl/coll/CollationData;)V
    .locals 12

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "attempt to build() after build()"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->buildContexts()V

    const/16 v9, 0x43

    new-array v5, v9, [I

    const/4 v6, -0x1

    invoke-virtual {p0, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->getJamoCE32s([I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v9}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_0
    const/16 v9, 0x43

    if-ge v3, v9, :cond_1

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    aget v10, v5, v3

    invoke-virtual {v9, v10}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/16 v3, 0x13

    :goto_1
    const/16 v9, 0x43

    if-ge v3, v9, :cond_2

    aget v9, v5, v3

    invoke-static {v9}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v4, 0x1

    :cond_2
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v2

    const v0, 0xac00

    const/4 v3, 0x0

    :goto_2
    const/16 v9, 0x13

    if-ge v3, v9, :cond_8

    move v1, v2

    if-nez v4, :cond_3

    aget v9, v5, v3

    invoke-static {v9}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_3
    :goto_3
    add-int/lit16 v8, v0, 0x24c

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v10, v8, -0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v0, v10, v1, v11}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    move v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    or-int/lit16 v1, v2, 0x100

    goto :goto_3

    :cond_6
    const v0, 0xac00

    :goto_4
    const v9, 0xd7a4

    if-ge v0, v9, :cond_8

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v9, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    sget-boolean v9, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v9, :cond_7

    const/16 v9, 0xc

    invoke-static {v1, v9}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_7
    add-int/lit16 v8, v0, 0x24c

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v10, v8, -0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v0, v10, v1, v11}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    move v0, v8

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->setDigitTags()V

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->setLeadSurrogates()V

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    iget-object v10, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/icu/impl/coll/UVector32;->setElementAt(II)V

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v9}, Landroid/icu/impl/Trie2Writable;->toTrie2_32()Landroid/icu/impl/Trie2_32;

    move-result-object v9

    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    const/high16 v0, 0x10000

    const v7, 0xd800

    :goto_5
    const v9, 0xdc00

    if-ge v7, v9, :cond_a

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    add-int/lit16 v10, v0, 0x3ff

    invoke-virtual {v9, v0, v10}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v9, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_9
    add-int/lit8 v9, v7, 0x1

    int-to-char v7, v9

    add-int/lit16 v0, v0, 0x400

    goto :goto_5

    :cond_a
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v9}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v9}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v9

    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v9}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v9

    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->ces:[J

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-ltz v6, :cond_b

    iput-object v5, p1, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    :goto_6
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    return-void

    :cond_b
    iget-object v9, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v9, v9, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    iput-object v9, p1, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    goto :goto_6
.end method

.method protected clearContexts()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contexts:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v1, Landroid/icu/text/UnicodeSetIterator;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :goto_0
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    iget v2, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v5, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v2, v5, :cond_0

    move v2, v3

    :goto_1
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    iget v5, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v2, v5}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v0

    sget-boolean v2, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v2

    iput v3, v2, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v4

    and-int/lit16 v7, p3, 0x100

    if-eqz v7, :cond_2

    sget-boolean v7, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v7, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v5, :cond_0

    move v7, v5

    :goto_0
    if-nez v7, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    move v7, v6

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v7, v7, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v8, v4, 0x2

    invoke-static {v7, v8, v6}, Landroid/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v3

    :goto_2
    invoke-virtual {v3}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v0

    iget-object v7, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-virtual {p0, p2, v7, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v1

    iput v1, p4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p4

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_2
    iget-object v7, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v7, v4}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p3

    sget-boolean v7, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v7, :cond_4

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v6

    :goto_3
    if-nez v7, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_3
    move v7, v5

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p2, p3, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v1

    iput v1, p4, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p4

    goto :goto_1

    :cond_5
    sget-boolean v7, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v7, :cond_7

    if-ltz v1, :cond_6

    :goto_4
    if-nez v5, :cond_7

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_6
    move v5, v6

    goto :goto_4

    :cond_7
    return v1
.end method

.method copyFrom(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V
    .locals 6

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "attempt to copyFrom() after build()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;

    invoke-direct {v0, p1, p0, p2}, Landroid/icu/impl/coll/CollationDataBuilder$CopyHelper;-><init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;)V

    iget-object v3, p1, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3}, Landroid/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    iget-boolean v3, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    iget-boolean v4, p1, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    or-int/2addr v3, v4

    iput-boolean v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    return-void

    :cond_2
    iget v3, v1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v4, v1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v5, v1, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-static {v3, v4, v5, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->enumRangeForCopy(IIILandroid/icu/impl/coll/CollationDataBuilder$CopyHelper;)V

    goto :goto_0
.end method

.method protected copyFromBaseCE32(IIZ)I
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v8

    if-nez v8, :cond_0

    return p2

    :cond_0
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    new-instance v8, Ljava/lang/AssertionError;

    const-string/jumbo v9, "copyFromBaseCE32(c, ce32, withContext) requires ce32 == base.getFinalCE32(ce32)"

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    :pswitch_1
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v4

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v5

    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v8, v8, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-virtual {p0, v8, v4, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    move-result p2

    :goto_0
    :pswitch_2
    return p2

    :pswitch_3
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v4

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v5

    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v8, v8, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-virtual {p0, v8, v4, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    move-result p2

    goto :goto_0

    :pswitch_4
    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v7

    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v8, v7}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p2

    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p2, v10}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v8

    return v8

    :cond_1
    new-instance v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    const-string/jumbo v8, ""

    invoke-direct {v3, v8, v10}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u0000"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0, v1, p1, p2, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v4

    :goto_1
    invoke-virtual {p0, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v8, v8, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v9, v7, 0x2

    invoke-static {v8, v9, v10}, Landroid/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v6

    :goto_2
    invoke-virtual {v6}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v2

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v8, v2, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    int-to-char v9, v9

    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    iget p2, v2, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    move-result v4

    :goto_3
    invoke-virtual {p0, v4}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, p2, v11}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2, v11}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    goto :goto_3

    :cond_4
    iget v8, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-static {v8}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result p2

    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v8, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto/16 :goto_0

    :pswitch_5
    if-nez p3, :cond_5

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v4

    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v8, v4}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p2

    invoke-virtual {p0, p1, p2, v10}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v8

    return v8

    :cond_5
    new-instance v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    const-string/jumbo v8, ""

    invoke-direct {v3, v8, v10}, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u0000"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, p2, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->copyContractionsFromBaseCE32(Ljava/lang/StringBuilder;IILandroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;)I

    iget v8, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-static {v8}, Landroid/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result p2

    iget-object v8, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v8, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto/16 :goto_0

    :pswitch_6
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v9, "We forbid tailoring of Hangul syllables."

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_7
    invoke-virtual {p0, v11, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->getCE32FromOffsetCE32(ZII)I

    move-result p2

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    move-result p2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method enableFastLatin()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->fastLatinEnabled:Z

    return-void
.end method

.method encodeCEs([JI)I
    .locals 18

    if-ltz p2, :cond_0

    const/16 v11, 0x1f

    move/from16 v0, p2

    if-le v0, v11, :cond_1

    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "mapping to too many CEs"

    invoke-direct {v11, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationDataBuilder;->isMutable()Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v14, "attempt to add mappings after build()"

    invoke-direct {v11, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    if-nez p2, :cond_3

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    move-result v11

    return v11

    :cond_3
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_4

    const/4 v11, 0x0

    aget-wide v14, p1, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    move-result v11

    return v11

    :cond_4
    const/4 v11, 0x2

    move/from16 v0, p2

    if-ne v0, v11, :cond_5

    const/4 v11, 0x0

    aget-wide v4, p1, v11

    const/4 v11, 0x1

    aget-wide v6, p1, v11

    const/16 v11, 0x20

    ushr-long v12, v4, v11

    const-wide v14, 0xffffffffff00ffL

    and-long/2addr v14, v4

    const-wide/32 v16, 0x5000000

    cmp-long v11, v14, v16

    if-nez v11, :cond_5

    const-wide v14, -0xff000001L

    and-long/2addr v14, v6

    const-wide/16 v16, 0x500

    cmp-long v11, v14, v16

    if-nez v11, :cond_5

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_5

    long-to-int v11, v12

    long-to-int v14, v4

    const v15, 0xff00

    and-int/2addr v14, v15

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v11, v14

    long-to-int v14, v6

    shr-int/lit8 v14, v14, 0x10

    const v15, 0xff00

    and-int/2addr v14, v15

    or-int/2addr v11, v14

    or-int/lit16 v11, v11, 0xc0

    or-int/lit8 v11, v11, 0x4

    return v11

    :cond_5
    const/16 v11, 0x1f

    new-array v10, v11, [I

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, p2

    if-ne v9, v0, :cond_6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v10, v11, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    move-result v11

    return v11

    :cond_6
    aget-wide v14, p1, v9

    invoke-static {v14, v15}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_7

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v11, v2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    move-result v11

    return v11

    :cond_7
    aput v8, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method protected encodeExpansion([JII)I
    .locals 12

    const v11, 0x7ffff

    const/4 v10, 0x6

    aget-wide v2, p1, p2

    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v5}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v5

    sub-int v0, v5, p3

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_4

    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v5, v1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-nez v5, :cond_2

    if-le v1, v11, :cond_0

    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v6, "too many mappings"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v4, 0x1

    :goto_1
    if-ne v4, p3, :cond_1

    invoke-static {v10, v1, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v5

    return v5

    :cond_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    add-int v6, v1, v4

    invoke-virtual {v5, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v6

    add-int v5, p2, v4

    aget-wide v8, p1, v5

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v5}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v1

    if-le v1, v11, :cond_5

    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v6, "too many mappings"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-ge v4, p3, :cond_6

    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    add-int v6, p2, v4

    aget-wide v6, p1, v6

    invoke-virtual {v5, v6, v7}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v10, v1, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v5

    return v5
.end method

.method protected encodeExpansion32([III)I
    .locals 8

    const v7, 0x7ffff

    const/4 v6, 0x5

    aget v1, p1, p2

    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v4}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v4

    sub-int v0, v4, p3

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v0, :cond_4

    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v4, v2}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v4

    if-ne v1, v4, :cond_2

    if-le v2, v7, :cond_0

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v5, "too many mappings"

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-ne v3, p3, :cond_1

    invoke-static {v6, v2, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v4

    return v4

    :cond_1
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    add-int v5, v2, v3

    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v4

    add-int v5, p2, v3

    aget v5, p1, v5

    if-eq v4, v5, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    invoke-virtual {v4}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v2

    if-le v2, v7, :cond_5

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v5, "too many mappings"

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-ge v3, p3, :cond_6

    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce32s:Landroid/icu/impl/coll/UVector32;

    add-int v5, p2, v3

    aget v5, p1, v5

    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v6, v2, p3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v4

    return v4
.end method

.method protected encodeOneCE(J)I
    .locals 5

    const/4 v3, 0x1

    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->encodeOneCEAsCE32(J)I

    move-result v0

    if-eq v0, v3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE(J)I

    move-result v1

    const v2, 0x7ffff

    if-le v1, v2, :cond_1

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v3, "too many mappings"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x6

    invoke-static {v2, v1, v3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v2

    return v2
.end method

.method protected getCE32FromOffsetCE32(ZII)I
    .locals 6

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v2

    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->ces:[J

    aget-wide v0, v3, v2

    :goto_0
    invoke-static {p2, v0, v1}, Landroid/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/icu/impl/coll/Collation;->makeLongPrimaryCE32(J)I

    move-result v3

    return v3

    :cond_0
    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->ce64s:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v3, v2}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected getCEs(Ljava/lang/CharSequence;I[JI)I
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    new-instance v1, Landroid/icu/impl/coll/CollationData;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-direct {v1, v2}, Landroid/icu/impl/coll/CollationData;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;-><init>(Landroid/icu/impl/coll/CollationDataBuilder;Landroid/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->collIter:Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder$DataBuilderCollationIterator;->fetchCEs(Ljava/lang/CharSequence;I[JI)I

    move-result v0

    return v0
.end method

.method getCEs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[JI)I
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, v1, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3, p4}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    move-result v1

    return v1
.end method

.method getCEs(Ljava/lang/CharSequence;[JI)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/impl/coll/CollationDataBuilder;->getCEs(Ljava/lang/CharSequence;I[JI)I

    move-result v0

    return v0
.end method

.method protected getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->conditionalCE32s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    return-object v0
.end method

.method protected getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
    .locals 1

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    return-object v0
.end method

.method protected getJamoCE32s([I)Z
    .locals 11

    const/16 v9, 0xc0

    const/16 v7, 0x43

    const/4 v8, 0x1

    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_4

    invoke-static {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    move-result v4

    const/4 v2, 0x0

    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v6, v4}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->isAssignedCE32(I)Z

    move-result v6

    or-int/2addr v0, v6

    if-ne v1, v9, :cond_0

    const/4 v2, 0x1

    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v6, v4}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    :cond_0
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_2
    :pswitch_0
    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    if-eqz v2, :cond_1

    const/16 v1, 0xc0

    const/4 v5, 0x1

    goto :goto_2

    :pswitch_2
    sget-boolean v6, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v6, :cond_3

    if-nez v2, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_3
    const/16 v1, 0xc0

    const/4 v5, 0x1

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, v2, v4, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getCE32FromOffsetCE32(ZII)I

    move-result v1

    goto :goto_2

    :pswitch_4
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "unexpected special tag in ce32=0x%08x"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v5, :cond_6

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_6

    aget v6, p1, v3

    if-ne v6, v9, :cond_5

    invoke-static {v3}, Landroid/icu/impl/coll/CollationDataBuilder;->jamoCpFromIndex(I)I

    move-result v4

    iget-object v6, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v6, v4}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v6

    invoke-virtual {p0, v4, v6, v8}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v6

    aput v6, p1, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method hasMappings()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    return v0
.end method

.method initForTailoring(Landroid/icu/impl/coll/CollationData;)V
    .locals 6

    const/16 v4, 0xc0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "attempt to reuse a CollationDataBuilder"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "null CollationData"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    new-instance v2, Landroid/icu/impl/Trie2Writable;

    const v3, -0x2fafb

    invoke-direct {v2, v4, v3}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    iput-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    const/16 v0, 0xc0

    :goto_0
    const/16 v2, 0xff

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v2, v0, v4}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    const v3, 0xac00

    const v4, 0xd7a3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    iget-object v3, p1, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method isAssigned(I)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->isAssignedCE32(I)Z

    move-result v0

    return v0
.end method

.method isCompressibleLeadByte(I)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationData;->isCompressibleLeadByte(I)Z

    move-result v0

    return v0
.end method

.method isCompressiblePrimary(J)Z
    .locals 1

    long-to-int v0, p1

    ushr-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationDataBuilder;->isCompressibleLeadByte(I)Z

    move-result v0

    return v0
.end method

.method protected final isMutable()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method optimize(Landroid/icu/text/UnicodeSet;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v2, p1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v4, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v3, v4, :cond_2

    iget v0, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    const/16 v3, 0xc0

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, v5}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v1

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v0, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    return-void
.end method

.method protected setDigitTags()V
    .locals 7

    new-instance v2, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v5, "[:Nd:]"

    invoke-direct {v2, v5}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v4, v2}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-boolean v5, Landroid/icu/impl/coll/CollationDataBuilder;->-assertionsDisabled:Z

    if-nez v5, :cond_2

    iget v5, v4, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v6, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    iget v0, v4, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v5, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    const/16 v5, 0xc0

    if-eq v1, v5, :cond_0

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->addCE32(I)I

    move-result v3

    const v5, 0x7ffff

    if-le v3, v5, :cond_3

    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v6, "too many mappings"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v5

    const/16 v6, 0xa

    invoke-static {v6, v3, v5}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagIndexAndLength(III)I

    move-result v1

    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v5, v0, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected setLeadSurrogates()V
    .locals 8

    const/4 v7, 0x0

    const v0, 0xd800

    :goto_0
    const v5, 0xdc00

    if-ge v0, v5, :cond_5

    const/4 v1, -0x1

    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v5, v0}, Landroid/icu/impl/Trie2;->iteratorForLeadSurrogate(C)Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/Trie2$Range;

    iget v4, v2, Landroid/icu/impl/Trie2$Range;->value:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    :goto_2
    if-gez v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_1
    const/16 v5, 0xc0

    if-ne v4, v5, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x200

    :cond_3
    :goto_3
    iget-object v5, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    const/16 v6, 0xd

    invoke-static {v6, v7}, Landroid/icu/impl/coll/Collation;->makeCE32FromTagAndIndex(II)I

    move-result v6

    or-int/2addr v6, v1

    invoke-virtual {v5, v0, v6}, Landroid/icu/impl/Trie2Writable;->setForLeadSurrogateCodeUnit(CI)Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v5, v0, 0x1

    int-to-char v0, v5

    goto :goto_0

    :cond_4
    if-eq v1, v4, :cond_0

    const/16 v1, 0x200

    goto :goto_3

    :cond_5
    return-void
.end method

.method suppressContractions(Landroid/icu/text/UnicodeSet;)V
    .locals 5

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v2, p1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v4, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v3, v4, :cond_3

    iget v0, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v0}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v1

    const/16 v3, 0xc0

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    iget-object v4, p0, Landroid/icu/impl/coll/CollationDataBuilder;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->ce32HasContext(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Landroid/icu/impl/coll/CollationDataBuilder;->copyFromBaseCE32(IIZ)I

    move-result v1

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v0, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v3

    iget v1, v3, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->trie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v3, v0, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->contextChars:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v0}, Landroid/icu/text/UnicodeSet;->remove(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/icu/impl/coll/CollationDataBuilder;->modified:Z

    return-void
.end method
