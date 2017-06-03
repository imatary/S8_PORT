.class public abstract Landroid/icu/impl/coll/CollationIterator;
.super Ljava/lang/Object;
.source "CollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationIterator$CEBuffer;,
        Landroid/icu/impl/coll/CollationIterator$SkippedState;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field protected static final NO_CP_AND_CE32:J = -0xffffff40L


# instance fields
.field private ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

.field private cesIndex:I

.field protected final data:Landroid/icu/impl/coll/CollationData;

.field private isNumeric:Z

.field private numCpFwd:I

.field private skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

.field protected final trie:Landroid/icu/impl/Trie2_32;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    iput-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    iput-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    iput-boolean p2, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    new-instance v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    return-void
.end method

.method private final appendNumericCEs(IZ)V
    .locals 9

    const/16 v8, 0xc0

    const/16 v7, 0xa

    const/4 v6, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_6

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->digitFromCE32(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-nez v5, :cond_3

    :cond_1
    :goto_1
    const/4 v3, 0x0

    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-nez v5, :cond_9

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v5, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    if-ne p1, v8, :cond_4

    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v5, v5, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v5, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    :cond_4
    invoke-static {p1, v7}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0, v6}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    goto :goto_1

    :cond_5
    iget v5, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-lez v5, :cond_0

    iget v5, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    goto :goto_0

    :cond_6
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->digitFromCE32(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result v0

    if-gez v0, :cond_7

    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v5, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    if-ne p1, v8, :cond_8

    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v5, v5, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v5, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    :cond_8
    invoke-static {p1, v7}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v6}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int v4, v5, v3

    const/16 v5, 0xfe

    if-le v4, v5, :cond_a

    const/16 v4, 0xfe

    :cond_a
    add-int v5, v3, v4

    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationIterator;->appendNumericSegmentCEs(Ljava/lang/CharSequence;)V

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lt v3, v5, :cond_2

    return-void
.end method

.method private final appendNumericSegmentCEs(Ljava/lang/CharSequence;)V
    .locals 18

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sget-boolean v14, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v14, :cond_1

    const/4 v14, 0x1

    if-gt v14, v4, :cond_0

    const/16 v14, 0xfe

    if-gt v4, v14, :cond_0

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
    sget-boolean v14, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v14, :cond_4

    const/4 v14, 0x1

    if-eq v4, v14, :cond_2

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-eqz v14, :cond_3

    :cond_2
    const/4 v14, 0x1

    :goto_1
    if-nez v14, :cond_4

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-wide v6, v14, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    const/4 v14, 0x7

    if-gt v4, v14, :cond_8

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/4 v3, 0x1

    :goto_2
    if-ge v3, v4, :cond_5

    mul-int/lit8 v14, v13, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    add-int v13, v14, v15

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/16 v14, 0x4a

    if-ge v13, v14, :cond_6

    add-int/lit8 v14, v13, 0x2

    shl-int/lit8 v14, v14, 0x10

    int-to-long v14, v14

    or-long v10, v6, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v10, v11}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :cond_6
    add-int/lit8 v13, v13, -0x4a

    const/16 v2, 0x4c

    const/16 v14, 0x27b0

    if-ge v13, v14, :cond_7

    div-int/lit16 v14, v13, 0xfe

    add-int/lit8 v14, v14, 0x4c

    shl-int/lit8 v14, v14, 0x10

    int-to-long v14, v14

    or-long/2addr v14, v6

    rem-int/lit16 v0, v13, 0xfe

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x2

    shl-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    or-long v10, v14, v16

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v10, v11}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :cond_7
    add-int/lit16 v13, v13, -0x27b0

    add-int/lit8 v2, v2, 0x28

    const v14, 0xfc040

    if-ge v13, v14, :cond_8

    rem-int/lit16 v14, v13, 0xfe

    add-int/lit8 v14, v14, 0x2

    int-to-long v14, v14

    or-long v10, v6, v14

    div-int/lit16 v13, v13, 0xfe

    rem-int/lit16 v14, v13, 0xfe

    add-int/lit8 v14, v14, 0x2

    shl-int/lit8 v14, v14, 0x8

    int-to-long v14, v14

    or-long/2addr v10, v14

    div-int/lit16 v13, v13, 0xfe

    rem-int/lit16 v14, v13, 0xfe

    add-int/lit8 v14, v14, 0x74

    shl-int/lit8 v14, v14, 0x10

    int-to-long v14, v14

    or-long/2addr v10, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v10, v11}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :cond_8
    sget-boolean v14, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v14, :cond_a

    const/4 v14, 0x7

    if-lt v4, v14, :cond_9

    const/4 v14, 0x1

    :goto_3
    if-nez v14, :cond_a

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_9
    const/4 v14, 0x0

    goto :goto_3

    :cond_a
    add-int/lit8 v14, v4, 0x1

    div-int/lit8 v5, v14, 0x2

    add-int/lit16 v14, v5, 0x80

    shl-int/lit8 v14, v14, 0x10

    int-to-long v14, v14

    or-long v10, v6, v14

    :goto_4
    add-int/lit8 v14, v4, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-nez v14, :cond_b

    add-int/lit8 v14, v4, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-nez v14, :cond_b

    add-int/lit8 v4, v4, -0x2

    goto :goto_4

    :cond_b
    and-int/lit8 v14, v4, 0x1

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/4 v9, 0x1

    :goto_5
    mul-int/lit8 v14, v8, 0x2

    add-int/lit8 v8, v14, 0xb

    const/16 v12, 0x8

    :goto_6
    if-ge v9, v4, :cond_e

    if-nez v12, :cond_d

    int-to-long v14, v8

    or-long/2addr v10, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v10, v11}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    move-wide v10, v6

    const/16 v12, 0x10

    :goto_7
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v15, v9, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    add-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v8, v14, 0xb

    add-int/lit8 v9, v9, 0x2

    goto :goto_6

    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    add-int v8, v14, v15

    const/4 v9, 0x2

    goto :goto_5

    :cond_d
    shl-int v14, v8, v12

    int-to-long v14, v14

    or-long/2addr v10, v14

    add-int/lit8 v12, v12, -0x8

    goto :goto_7

    :cond_e
    add-int/lit8 v14, v8, -0x1

    shl-int/2addr v14, v12

    int-to-long v14, v14

    or-long/2addr v10, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v10, v11}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void
.end method

.method private final backwardNumSkipped(I)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->backwardNumCodePoints(I)I

    move-result p1

    goto :goto_0
.end method

.method private final getCE32FromPrefix(Landroid/icu/impl/coll/CollationData;I)I
    .locals 6

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p2

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    new-instance v4, Landroid/icu/util/CharsTrie;

    iget-object v5, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result v0

    if-gez v0, :cond_1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    return p2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v0}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result p2

    :cond_2
    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0
.end method

.method protected static final isLeadSurrogate(I)Z
    .locals 2

    and-int/lit16 v0, p0, -0x400

    const v1, 0xd800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isSurrogate(I)Z
    .locals 2

    and-int/lit16 v0, p0, -0x800

    const v1, 0xd800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final isTrailSurrogate(I)Z
    .locals 2

    and-int/lit16 v0, p0, -0x400

    const v1, 0xdc00

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final nextCE32FromContraction(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;III)I
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x1

    new-instance v2, Landroid/icu/util/CharsTrie;

    invoke-direct {v2, p3, p4}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v2, p6}, Landroid/icu/util/CharsTrie;->firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v6

    :goto_1
    invoke-virtual {v6}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result p5

    invoke-virtual {v6}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result p6

    if-gez p6, :cond_3

    :cond_1
    return p5

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0, v2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    :goto_2
    const/4 v8, 0x1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, p6}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v6

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0, v2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-eq v6, v0, :cond_7

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result v7

    if-gez v7, :cond_a

    :cond_7
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_b

    and-int/lit16 v0, p2, 0x100

    if-eqz v0, :cond_8

    if-ge v8, v4, :cond_b

    :cond_8
    const/4 v0, 0x1

    if-le v8, v0, :cond_9

    invoke-direct {p0, v8}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result p6

    add-int/lit8 v0, v8, -0x1

    sub-int/2addr v4, v0

    const/4 v8, 0x1

    :cond_9
    invoke-virtual {p1, p6}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_b

    move-object v0, p0

    move-object v1, p1

    move v3, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationIterator;->nextCE32FromDiscontiguousContraction(Landroid/icu/impl/coll/CollationData;Landroid/icu/util/CharsTrie;III)I

    move-result v0

    return v0

    :cond_a
    move p6, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    invoke-direct {p0, v8}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    return p5
.end method

.method private final nextCE32FromDiscontiguousContraction(Landroid/icu/impl/coll/CollationData;Landroid/icu/util/CharsTrie;III)I
    .locals 8

    invoke-virtual {p1, p5}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v0

    sget-boolean v7, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v7, :cond_1

    const/16 v7, 0xff

    if-le v0, v7, :cond_0

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
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result v4

    if-gez v4, :cond_2

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    return p3

    :cond_2
    add-int/lit8 p4, p4, 0x1

    and-int/lit16 v5, v0, 0xff

    invoke-virtual {p1, v4}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v0

    const/16 v7, 0xff

    if-gt v0, v7, :cond_3

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    return p3

    :cond_3
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_4
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-nez v7, :cond_5

    new-instance v7, Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-direct {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;-><init>()V

    iput-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    :cond_5
    invoke-virtual {p2}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    const/4 v7, 0x2

    if-le p4, v7, :cond_7

    invoke-virtual {p0, p4}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/icu/util/CharsTrie;->firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    const/4 v1, 0x3

    :goto_1
    if-ge v1, p4, :cond_6

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    :cond_7
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    :goto_2
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7, p5}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->setFirstSkipped(I)V

    const/4 v6, 0x2

    move p5, v4

    :cond_8
    shr-int/lit8 v7, v0, 0x8

    if-ge v5, v7, :cond_d

    invoke-virtual {p2, p5}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p2}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result p3

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->recordMatch()V

    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v7

    if-nez v7, :cond_c

    :cond_9
    :goto_3
    invoke-direct {p0, v6}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v2

    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->replaceMatch()V

    if-eqz v2, :cond_a

    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_a
    :goto_4
    return p3

    :cond_b
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->resetToTrieState(Landroid/icu/util/CharsTrie;)V

    goto :goto_2

    :cond_c
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Landroid/icu/util/CharsTrie;)V

    :goto_5
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result p5

    if-ltz p5, :cond_9

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, p5}, Landroid/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v0

    const/16 v7, 0xff

    if-gt v0, v7, :cond_8

    goto :goto_3

    :cond_d
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7, p5}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->skip(I)V

    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7, p2}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->resetToTrieState(Landroid/icu/util/CharsTrie;)V

    and-int/lit16 v5, v0, 0xff

    goto :goto_5

    :cond_e
    const/4 p5, -0x1

    :goto_6
    const/4 v7, 0x1

    invoke-virtual {p0, p1, p5, p3, v7}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->hasNext()Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->clear()V

    const/4 p3, 0x1

    goto :goto_4

    :cond_f
    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->next()I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/icu/impl/coll/CollationIterator;->getDataCE32(I)I

    move-result p3

    const/16 v7, 0xc0

    if-ne p3, v7, :cond_10

    iget-object v7, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object p1, v7, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p1, p5}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p3

    goto :goto_6

    :cond_10
    iget-object p1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    goto :goto_6
.end method

.method private final nextCEFromCE32(Landroid/icu/impl/coll/CollationData;II)J
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private final nextSkippedCodePoint()I
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->next()I

    move-result v1

    return v1

    :cond_0
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-nez v1, :cond_1

    const/4 v1, -0x1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    :goto_0
    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-lez v1, :cond_3

    if-ltz v0, :cond_3

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    :cond_3
    return v0

    :cond_4
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->incBeyond()V

    goto :goto_0
.end method

.method private final previousCEUnsafe(ILandroid/icu/impl/coll/UVector32;)J
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result p1

    if-ltz p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-boolean v5, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    invoke-virtual {v4, p1, v5}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    iput v3, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v4, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-nez v4, :cond_2

    move v4, v2

    :goto_0
    if-nez v4, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v1

    :cond_4
    iget v4, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-lez v4, :cond_9

    iget v4, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v4

    const-wide v6, 0x101000100L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    move v4, v2

    :goto_1
    if-nez v4, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_5
    move v4, v3

    goto :goto_1

    :cond_6
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v4, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v4, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v4, :cond_8

    invoke-virtual {p2}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v4

    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ge v4, v5, :cond_7

    move v4, v2

    :goto_2
    if-nez v4, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_7
    move v4, v3

    goto :goto_2

    :cond_8
    invoke-virtual {p2, v1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v1

    :goto_3
    invoke-virtual {p2}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v4

    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ge v4, v5, :cond_4

    invoke-virtual {p2, v1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    goto :goto_3

    :cond_9
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v4, :cond_b

    invoke-virtual {p2}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v4

    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ne v4, v5, :cond_a

    :goto_4
    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_a
    move v2, v3

    goto :goto_4

    :cond_b
    invoke-virtual {p2, v1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    const/4 v2, -0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    iput v3, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v4, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-virtual {v2, v4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method protected final appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V
    .locals 18

    :cond_0
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v4, Landroid/icu/util/ICUException;

    const-string/jumbo v5, "internal program error: should be unreachable"

    invoke-direct {v4, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v5, v5, 0x1

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return-void

    :pswitch_4
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v11

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v4, v14}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int/lit8 v12, v11, 0x1

    aget v5, v5, v11

    invoke-static {v5}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    add-int/lit8 v14, v14, -0x1

    if-lez v14, :cond_1

    move v11, v12

    goto :goto_1

    :cond_1
    return-void

    :pswitch_5
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v11

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v4, v14}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/icu/impl/coll/CollationData;->ces:[J

    add-int/lit8 v12, v11, 0x1

    aget-wide v6, v5, v11

    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    add-int/lit8 v14, v14, -0x1

    if-lez v14, :cond_2

    move v11, v12

    goto :goto_2

    :cond_2
    return-void

    :pswitch_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationIterator;->getCE32FromBuilderData(I)I

    move-result p3

    const/16 v4, 0xc0

    move/from16 v0, p3

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v4, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p3

    goto/16 :goto_0

    :pswitch_7
    if-eqz p4, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationIterator;->getCE32FromPrefix(Landroid/icu/impl/coll/CollationData;I)I

    move-result p3

    if-eqz p4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v9

    if-nez p4, :cond_4

    move/from16 p3, v9

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-gez v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v10

    if-gez v10, :cond_5

    move/from16 p3, v9

    goto/16 :goto_0

    :cond_5
    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_6

    invoke-static {v10}, Landroid/icu/impl/coll/CollationFCD;->mayHaveLccc(I)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v8, v11, 0x2

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-direct/range {v4 .. v10}, Landroid/icu/impl/coll/CollationIterator;->nextCE32FromContraction(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;III)I

    move-result p3

    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_0

    return-void

    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    move/from16 p3, v9

    goto/16 :goto_0

    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result v10

    if-gez v10, :cond_9

    move/from16 p3, v9

    goto/16 :goto_0

    :cond_9
    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_6

    invoke-static {v10}, Landroid/icu/impl/coll/CollationFCD;->mayHaveLccc(I)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    move/from16 p3, v9

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationIterator;->appendNumericCEs(IZ)V

    return-void

    :cond_a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v5

    aget p3, v4, v5

    goto/16 :goto_0

    :pswitch_a
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v4, :cond_c

    if-nez p2, :cond_b

    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_b
    const/4 v4, 0x0

    goto :goto_3

    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    const/4 v5, 0x0

    aget p3, v4, v5

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    const v4, 0xac00

    sub-int p2, p2, v4

    rem-int/lit8 v15, p2, 0x1c

    div-int/lit8 p2, p2, 0x1c

    rem-int/lit8 v17, p2, 0x15

    div-int/lit8 p2, p2, 0x15

    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    if-nez v15, :cond_e

    const/4 v4, 0x2

    :goto_4
    invoke-virtual {v5, v4}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    aget v6, v13, p2

    invoke-static {v6}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v17, 0x13

    aget v6, v13, v6

    invoke-static {v6}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    add-int/lit8 v5, v15, 0x27

    aget v5, v13, v5

    invoke-static {v5}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    :cond_d
    return-void

    :cond_e
    const/4 v4, 0x3

    goto :goto_4

    :cond_f
    aget v4, v13, p2

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v4, v2}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    add-int/lit8 v4, v17, 0x13

    aget v4, v13, v4

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v4, v2}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    if-nez v15, :cond_10

    return-void

    :cond_10
    add-int/lit8 v4, v15, 0x27

    aget p3, v13, v4

    const/16 p2, -0x1

    goto/16 :goto_0

    :pswitch_c
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v4, :cond_11

    if-nez p4, :cond_11

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_11
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v4, :cond_12

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationIterator;->isLeadSurrogate(I)Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->handleGetTrailSurrogate()C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_15

    move/from16 v0, p2

    int-to-char v4, v0

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p2

    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x300

    move/from16 p3, v0

    if-nez p3, :cond_13

    const/16 p3, -0x1

    goto/16 :goto_0

    :cond_13
    const/16 v4, 0x100

    move/from16 v0, p3

    if-eq v0, v4, :cond_14

    invoke-virtual/range {p1 .. p2}, Landroid/icu/impl/coll/CollationData;->getCE32FromSupplementary(I)I

    move-result p3

    const/16 v4, 0xc0

    move/from16 v0, p3

    if-ne v0, v4, :cond_0

    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p2}, Landroid/icu/impl/coll/CollationData;->getCE32FromSupplementary(I)I

    move-result p3

    goto/16 :goto_0

    :cond_15
    const/16 p3, -0x1

    goto/16 :goto_0

    :pswitch_d
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v4, :cond_17

    if-ltz p2, :cond_16

    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_17

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_16
    const/4 v4, 0x0

    goto :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual/range {p1 .. p3}, Landroid/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :pswitch_e
    sget-boolean v4, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v4, :cond_19

    if-ltz p2, :cond_18

    const/4 v4, 0x1

    :goto_6
    if-nez v4, :cond_19

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_18
    const/4 v4, 0x0

    goto :goto_6

    :cond_19
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/CollationIterator;->isSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->forbidSurrogateCodePoints()Z

    move-result v4

    if-eqz v4, :cond_1a

    const p3, -0x2fafb

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected abstract backwardNumCodePoints(I)V
.end method

.method final clearCEs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iput v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    return-void
.end method

.method public final clearCEsIfNoneRemaining()V
    .locals 2

    iget v0, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v1, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->clearCEs()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v6

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/icu/impl/coll/CollationIterator;

    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v2, v2, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iget-object v3, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v3, v3, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    iget v3, v1, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    if-eq v2, v3, :cond_3

    :cond_2
    return v6

    :cond_3
    iget v2, p0, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    iget v3, v1, Landroid/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    iget-boolean v3, v1, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v2, v2, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v2

    iget-object v4, v1, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method public final fetchCEs()I
    .locals 4

    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v0

    const-wide v2, 0x101000100L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return v0
.end method

.method protected forbidSurrogateCodePoints()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract forwardNumCodePoints(I)V
.end method

.method public final getCE(I)J
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getCE32FromBuilderData(I)I
    .locals 2

    new-instance v0, Landroid/icu/util/ICUException;

    const-string/jumbo v1, "internal program error: should be unreachable"

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCEs()[J
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->getCEs()[J

    move-result-object v0

    return-object v0
.end method

.method public final getCEsLength()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return v0
.end method

.method protected getDataCE32(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    return v0
.end method

.method public abstract getOffset()I
.end method

.method protected handleGetTrailSurrogate()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleNextCE32()J
    .locals 4

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v0

    if-gez v0, :cond_0

    const-wide v2, -0xffffff40L

    return-wide v2

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v2

    return-wide v2
.end method

.method protected makeCodePointAndCE32Pair(II)J
    .locals 6

    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final nextCE()J
    .locals 13

    const/16 v12, 0x10

    const/4 v6, 0x0

    const/high16 v11, -0x10000

    const/16 v9, 0xc0

    const/16 v10, 0x20

    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    iget-object v8, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v8, v8, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ge v7, v8, :cond_0

    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    invoke-virtual {v6, v7}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v6

    return-wide v6

    :cond_0
    sget-boolean v7, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v7, :cond_2

    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    iget-object v8, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v8, v8, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ne v7, v8, :cond_1

    const/4 v6, 0x1

    :cond_1
    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_2
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->incLength()V

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->handleNextCE32()J

    move-result-wide v2

    shr-long v6, v2, v10

    long-to-int v0, v6

    long-to-int v1, v2

    and-int/lit16 v5, v1, 0xff

    if-ge v5, v9, :cond_3

    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    and-int v8, v1, v11

    int-to-long v8, v8

    shl-long/2addr v8, v10

    const v10, 0xff00

    and-int/2addr v10, v1

    int-to-long v10, v10

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    shl-int/lit8 v10, v5, 0x8

    int-to-long v10, v10

    or-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v6

    return-wide v6

    :cond_3
    if-ne v5, v9, :cond_5

    if-gez v0, :cond_4

    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    const-wide v8, 0x101000100L

    invoke-virtual {v6, v7, v8, v9}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v6

    return-wide v6

    :cond_4
    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v6, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    and-int/lit16 v5, v1, 0xff

    if-ge v5, v9, :cond_6

    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    and-int v8, v1, v11

    int-to-long v8, v8

    shl-long/2addr v8, v10

    const v10, 0xff00

    and-int/2addr v10, v1

    int-to-long v10, v10

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    shl-int/lit8 v10, v5, 0x8

    int-to-long v10, v10

    or-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v6

    return-wide v6

    :cond_5
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    :cond_6
    const/16 v6, 0xc1

    if-ne v5, v6, :cond_7

    iget-object v6, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v7, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    sub-int v8, v1, v5

    int-to-long v8, v8

    shl-long/2addr v8, v10

    const-wide/32 v10, 0x5000500

    or-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v6

    return-wide v6

    :cond_7
    invoke-direct {p0, v4, v0, v1}, Landroid/icu/impl/coll/CollationIterator;->nextCEFromCE32(Landroid/icu/impl/coll/CollationData;II)J

    move-result-wide v6

    return-wide v6
.end method

.method public abstract nextCodePoint()I
.end method

.method public final previousCE(Landroid/icu/impl/coll/UVector32;)J
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v4, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v6, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-virtual {v4, v6}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v4

    return-wide v4

    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/coll/UVector32;->removeAllElements()V

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v3

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result v0

    if-gez v0, :cond_1

    const-wide v4, 0x101000100L

    return-wide v4

    :cond_1
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-boolean v5, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    invoke-virtual {v4, v0, v5}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/coll/CollationIterator;->previousCEUnsafe(ILandroid/icu/impl/coll/UVector32;)J

    move-result-wide v4

    return-wide v4

    :cond_2
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    const/16 v4, 0xc0

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v4, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    :goto_0
    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->isSimpleOrLongCE32(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v4

    return-wide v4

    :cond_3
    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator;->data:Landroid/icu/impl/coll/CollationData;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2, v0, v1, v6}, Landroid/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Landroid/icu/impl/coll/CollationData;IIZ)V

    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v4, v4, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    :goto_1
    invoke-virtual {p1}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v4

    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v5, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-gt v4, v5, :cond_5

    invoke-virtual {p1, v3}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v5, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v6, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-virtual {v4, v6}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v4

    return-wide v4
.end method

.method public abstract previousCodePoint()I
.end method

.method protected final reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iput v1, v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->skipped:Landroid/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationIterator$SkippedState;->clear()V

    :cond_0
    return-void
.end method

.method protected final reset(Z)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->reset()V

    iput-boolean p1, p0, Landroid/icu/impl/coll/CollationIterator;->isNumeric:Z

    return-void
.end method

.method public abstract resetToOffset(I)V
.end method

.method final setCurrentCE(J)V
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Landroid/icu/impl/coll/CollationIterator;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator;->ceBuffer:Landroid/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    return-void
.end method
