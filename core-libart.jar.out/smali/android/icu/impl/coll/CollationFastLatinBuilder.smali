.class final Landroid/icu/impl/coll/CollationFastLatinBuilder;
.super Ljava/lang/Object;
.source "CollationFastLatinBuilder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CONTRACTION_FLAG:J = 0x80000000L

.field private static final NUM_SPECIAL_GROUPS:I = 0x4


# instance fields
.field private ce0:J

.field private ce1:J

.field private charCEs:[[J

.field private contractionCEs:Landroid/icu/impl/coll/UVector64;

.field private firstDigitPrimary:J

.field private firstLatinPrimary:J

.field private firstShortPrimary:J

.field private headerLength:I

.field private lastLatinPrimary:J

.field lastSpecialPrimaries:[J

.field private miniCEs:[C

.field private result:Ljava/lang/StringBuilder;

.field private shortPrimaryOverflow:Z

.field private uniqueCEs:Landroid/icu/impl/coll/UVector64;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v1, 0x1c0

    const/4 v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    new-instance v0, Landroid/icu/impl/coll/UVector64;

    invoke-direct {v0}, Landroid/icu/impl/coll/UVector64;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    new-instance v0, Landroid/icu/impl/coll/UVector64;

    invoke-direct {v0}, Landroid/icu/impl/coll/UVector64;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    iput-boolean v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    iput v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    return-void
.end method

.method private addContractionEntry(IJJ)V
    .locals 4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0, p2, p3}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0, p4, p5}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    invoke-direct {p0, p2, p3}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    invoke-direct {p0, p4, p5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    return-void
.end method

.method private addUniqueCE(J)V
    .locals 7

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-wide/32 v2, -0xc001

    and-long/2addr p1, v2

    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v2

    invoke-static {v1, v2, p1, p2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->binarySearch([JIJ)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    not-int v2, v0

    invoke-virtual {v1, p1, p2, v2}, Landroid/icu/impl/coll/UVector64;->insertElementAt(JI)V

    :cond_2
    return-void
.end method

.method private static final binarySearch([JIJ)I
    .locals 6

    if-nez p1, :cond_0

    const/4 v3, -0x1

    return v3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int v3, v2, p1

    div-int/lit8 v1, v3, 0x2

    aget-wide v4, p0, v1

    invoke-static {p2, p3, v4, v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->compareInt64AsUnsigned(JJ)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-gez v0, :cond_3

    if-ne v1, v2, :cond_2

    not-int v3, v2

    return v3

    :cond_2
    move p1, v1

    goto :goto_0

    :cond_3
    if-ne v1, v2, :cond_4

    add-int/lit8 v3, v2, 0x1

    not-int v3, v3

    return v3

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method private static final compareInt64AsUnsigned(JJ)I
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    add-long/2addr p0, v0

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private encodeCharCEs()V
    .locals 12

    const/16 v11, 0x1c0

    const/4 v10, 0x0

    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v11, :cond_0

    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_4

    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v7, v7, v3

    aget-wide v0, v7, v10

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v7, v7, v3

    const/4 v8, 0x1

    aget-wide v8, v7, v8

    invoke-direct {p0, v0, v1, v8, v9}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeTwoCEs(JJ)I

    move-result v5

    ushr-int/lit8 v7, v5, 0x10

    if-lez v7, :cond_2

    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int v2, v7, v4

    const/16 v7, 0x3ff

    if-le v2, v7, :cond_3

    const/4 v5, 0x1

    :cond_2
    :goto_3
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    add-int v8, v6, v3

    int-to-char v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_3
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    shr-int/lit8 v8, v5, 0x10

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-char v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    or-int/lit16 v5, v2, 0x800

    goto :goto_3

    :cond_4
    return-void
.end method

.method private encodeContractions()V
    .locals 20

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    add-int/lit16 v13, v15, 0x1c0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    const/16 v15, 0x1c0

    if-ge v11, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v15, v15, v11

    const/16 v18, 0x0

    aget-wide v6, v15, v18

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    move-result v15

    if-nez v15, :cond_0

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    sub-int v8, v15, v13

    const/16 v15, 0x3ff

    if-le v8, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    move/from16 v18, v0

    add-int v18, v18, v11

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_1
    const/4 v10, 0x1

    long-to-int v15, v6

    const v18, 0x7fffffff

    and-int v12, v15, v18

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v15, v12}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v16

    const-wide/16 v18, 0x1ff

    cmp-long v15, v16, v18

    if-nez v15, :cond_2

    if-eqz v10, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    add-int/lit8 v18, v12, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    add-int/lit8 v18, v12, 0x2

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeTwoCEs(JJ)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v18, 0x200

    or-long v18, v18, v16

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v10, 0x0

    add-int/lit8 v12, v12, 0x3

    goto :goto_2

    :cond_3
    ushr-int/lit8 v15, v14, 0x10

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v18, 0x400

    or-long v18, v18, v16

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    int-to-char v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v18, 0x600

    or-long v18, v18, v16

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    shr-int/lit8 v18, v14, 0x10

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    int-to-char v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    move/from16 v18, v0

    add-int v18, v18, v11

    or-int/lit16 v0, v8, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-le v15, v9, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const/16 v18, 0x1ff

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    return-void
.end method

.method private encodeTwoCEs(JJ)I
    .locals 11

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    return v6

    :cond_0
    const-wide v6, 0x101000100L

    cmp-long v6, p1, v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    return v6

    :cond_1
    sget-boolean v6, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    if-nez v6, :cond_3

    const/16 v6, 0x20

    ushr-long v6, p1, v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getMiniCE(J)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_4

    return v2

    :cond_4
    const/16 v6, 0x1000

    if-lt v2, v6, :cond_5

    long-to-int v6, p1

    const v7, 0xc000

    and-int/2addr v6, v7

    shr-int/lit8 v0, v6, 0xb

    add-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-nez v6, :cond_6

    return v2

    :cond_6
    invoke-direct {p0, p3, p4}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getMiniCE(J)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    return v3

    :cond_7
    long-to-int v6, p3

    const v7, 0xc000

    and-int v1, v6, v7

    const/16 v6, 0x1000

    if-lt v2, v6, :cond_8

    and-int/lit16 v6, v2, 0x3e0

    const/16 v7, 0xa0

    if-ne v6, v7, :cond_8

    and-int/lit16 v4, v3, 0x3e0

    and-int/lit8 v5, v3, 0x7

    const/16 v6, 0x180

    if-lt v4, v6, :cond_8

    if-nez v1, :cond_8

    if-nez v5, :cond_8

    and-int/lit16 v6, v2, -0x3e1

    or-int/2addr v6, v4

    return v6

    :cond_8
    const/16 v6, 0x3e0

    if-le v3, v6, :cond_9

    const/16 v6, 0x1000

    if-gt v6, v3, :cond_a

    :cond_9
    shr-int/lit8 v6, v1, 0xb

    add-int/lit8 v1, v6, 0x8

    or-int/2addr v3, v1

    :cond_a
    shl-int/lit8 v6, v2, 0x10

    or-int/2addr v6, v3

    return v6
.end method

.method private encodeUniqueCEs()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    move-object/from16 v19, v0

    aget-wide v6, v19, v4

    sget-boolean v19, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    ushr-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_0

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
    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v2

    const/16 v19, 0x20

    ushr-long v10, v2, v19

    cmp-long v19, v10, v12

    if-eqz v19, :cond_6

    :goto_2
    cmp-long v19, v10, v6

    if-lez v19, :cond_5

    sget-boolean v19, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    if-nez v19, :cond_3

    const/16 v19, 0xff8

    move/from16 v0, v19

    if-gt v14, v0, :cond_2

    const/16 v19, 0x1

    :goto_3
    if-nez v19, :cond_3

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    :cond_2
    const/16 v19, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    add-int/lit8 v20, v4, 0x1

    int-to-char v0, v14

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v4, v4, 0x1

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ge v4, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    move-object/from16 v19, v0

    aget-wide v6, v19, v4

    goto :goto_2

    :cond_4
    const-wide v6, 0xffffffffL

    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    move-wide/from16 v20, v0

    cmp-long v19, v10, v20

    if-gez v19, :cond_a

    if-nez v14, :cond_8

    const/16 v14, 0xc00

    :goto_4
    move-wide v12, v10

    const/16 v9, 0x500

    const/16 v16, 0xa0

    const/16 v18, 0x0

    :cond_6
    long-to-int v8, v2

    ushr-int/lit8 v15, v8, 0x10

    if-eq v15, v9, :cond_7

    if-nez v14, :cond_f

    if-nez v16, :cond_d

    const/16 v16, 0x180

    :goto_5
    move v9, v15

    const/16 v18, 0x0

    :goto_6
    move v9, v15

    const/16 v18, 0x0

    :cond_7
    sget-boolean v19, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    if-nez v19, :cond_17

    const v19, 0xc000

    and-int v19, v19, v8

    if-nez v19, :cond_16

    const/16 v19, 0x1

    :goto_7
    if-nez v19, :cond_17

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    :cond_8
    const/16 v19, 0xff8

    move/from16 v0, v19

    if-ge v14, v0, :cond_9

    add-int/lit8 v14, v14, 0x8

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-char v20, v19, v5

    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_a
    const/16 v19, 0x1000

    move/from16 v0, v19

    if-ge v14, v0, :cond_b

    const/16 v14, 0x1000

    goto :goto_4

    :cond_b
    const v19, 0xf800

    move/from16 v0, v19

    if-ge v14, v0, :cond_c

    add-int/lit16 v14, v14, 0x400

    goto :goto_4

    :cond_c
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-char v20, v19, v5

    goto :goto_8

    :cond_d
    const/16 v19, 0x3e0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    add-int/lit8 v16, v16, 0x20

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-char v20, v19, v5

    goto :goto_8

    :cond_f
    const/16 v19, 0x500

    move/from16 v0, v19

    if-ge v15, v0, :cond_12

    const/16 v19, 0xa0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/16 v16, 0x0

    goto :goto_6

    :cond_10
    const/16 v19, 0x80

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    add-int/lit8 v16, v16, 0x20

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-char v20, v19, v5

    goto :goto_8

    :cond_12
    const/16 v19, 0x500

    move/from16 v0, v19

    if-ne v15, v0, :cond_13

    const/16 v16, 0xa0

    goto/16 :goto_6

    :cond_13
    const/16 v19, 0xc0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    const/16 v16, 0xc0

    goto/16 :goto_6

    :cond_14
    const/16 v19, 0x160

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_15

    add-int/lit8 v16, v16, 0x20

    goto/16 :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-char v20, v19, v5

    goto/16 :goto_8

    :cond_16
    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_17
    and-int/lit16 v0, v8, 0x3f3f

    move/from16 v17, v0

    const/16 v19, 0x500

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_18

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_19

    add-int/lit8 v18, v18, 0x1

    :cond_18
    const/16 v19, 0xc00

    move/from16 v0, v19

    if-gt v0, v14, :cond_1c

    const/16 v19, 0xff8

    move/from16 v0, v19

    if-gt v14, v0, :cond_1c

    sget-boolean v19, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    if-nez v19, :cond_1b

    const/16 v19, 0xa0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    const/16 v19, 0x1

    :goto_9
    if-nez v19, :cond_1b

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-char v20, v19, v5

    goto/16 :goto_8

    :cond_1a
    const/16 v19, 0x0

    goto :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    move-object/from16 v19, v0

    or-int v20, v14, v18

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    aput-char v20, v19, v5

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    move-object/from16 v19, v0

    or-int v20, v14, v16

    or-int v20, v20, v18

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    aput-char v20, v19, v5

    goto/16 :goto_8

    :cond_1d
    return-void
.end method

.method private getCEs(Landroid/icu/impl/coll/CollationData;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x180

    if-ne v6, v0, :cond_2

    const/16 v6, 0x2000

    :cond_0
    invoke-virtual {p1, v6}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v7

    const/16 v0, 0xc0

    if-ne v7, v0, :cond_3

    iget-object v8, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v8, v6}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v7

    :goto_1
    invoke-direct {p0, v8, v6, v7}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v0, v0, v9

    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v0, v0, v9

    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    iget-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    iget-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    :goto_2
    if-nez v6, :cond_1

    iget-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    invoke-static {v0, v1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    :goto_3
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v0, v6, 0x1

    int-to-char v6, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x2040

    if-ne v6, v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    const-wide/16 v2, 0x1ff

    invoke-virtual {v0, v2, v3}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    return-void

    :cond_3
    move-object v8, p1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v0, v0, v9

    const-wide v2, 0x101000100L

    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    const-wide v2, 0x101000100L

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v0, v0, v9

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    goto :goto_2

    :cond_5
    sget-boolean v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    const/16 v1, 0x1ff

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-wide v2, 0x180000000L

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    goto :goto_3
.end method

.method private getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p3

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isSimpleOrLongCE32(I)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_8

    const/4 v14, 0x1

    :goto_1
    return v14

    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    const/4 v14, 0x0

    return v14

    :pswitch_1
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    goto :goto_0

    :pswitch_2
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v4

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v5

    const/4 v14, 0x2

    if-gt v5, v14, :cond_2

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    aget v14, v14, v4

    invoke-static {v14}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    const/4 v14, 0x2

    if-ne v5, v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int/lit8 v15, v4, 0x1

    aget v14, v14, v15

    invoke-static {v14}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    return v14

    :pswitch_3
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v4

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v5

    const/4 v14, 0x2

    if-gt v5, v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/icu/impl/coll/CollationData;->ces:[J

    aget-wide v14, v14, v4

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    const/4 v14, 0x2

    if-ne v5, v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/icu/impl/coll/CollationData;->ces:[J

    add-int/lit8 v15, v4, 0x1

    aget-wide v14, v14, v15

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    goto/16 :goto_0

    :cond_3
    const/4 v14, 0x0

    return v14

    :pswitch_4
    sget-boolean v14, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    if-nez v14, :cond_5

    if-ltz p2, :cond_4

    const/4 v14, 0x1

    :goto_2
    if-nez v14, :cond_5

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromContractionCE32(Landroid/icu/impl/coll/CollationData;I)Z

    move-result v14

    return v14

    :pswitch_5
    sget-boolean v14, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    if-nez v14, :cond_7

    if-ltz p2, :cond_6

    const/4 v14, 0x1

    :goto_3
    if-nez v14, :cond_7

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p3}, Landroid/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    goto/16 :goto_0

    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    const/16 v16, 0x20

    ushr-long v8, v14, v16

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_a

    const/4 v14, 0x0

    return v14

    :cond_a
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    cmp-long v14, v8, v14

    if-lez v14, :cond_b

    const/4 v14, 0x0

    return v14

    :cond_b
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    long-to-int v6, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_c

    and-int/lit16 v12, v6, -0x4000

    const/high16 v14, 0x5000000

    if-eq v12, v14, :cond_c

    const/4 v14, 0x0

    return v14

    :cond_c
    and-int/lit16 v14, v6, 0x3f3f

    const/16 v15, 0x500

    if-ge v14, v15, :cond_d

    const/4 v14, 0x0

    return v14

    :cond_d
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    const/16 v16, 0x20

    ushr-long v10, v14, v16

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_f

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_10

    :cond_e
    const/4 v14, 0x0

    return v14

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->inSameGroup(JJ)Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_10
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    long-to-int v7, v14

    ushr-int/lit8 v14, v7, 0x10

    if-nez v14, :cond_11

    const/4 v14, 0x0

    return v14

    :cond_11
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v14, v10, v14

    if-gez v14, :cond_12

    and-int/lit16 v13, v7, -0x4000

    const/high16 v14, 0x5000000

    if-eq v13, v14, :cond_12

    const/4 v14, 0x0

    return v14

    :cond_12
    and-int/lit16 v14, v6, 0x3f3f

    const/16 v15, 0x500

    if-ge v14, v15, :cond_13

    const/4 v14, 0x0

    return v14

    :cond_13
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move-wide/from16 v16, v0

    or-long v14, v14, v16

    const-wide/16 v16, 0xc0

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_14

    const/4 v14, 0x0

    return v14

    :cond_14
    const/4 v14, 0x1

    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getCEsFromContractionCE32(Landroid/icu/impl/coll/CollationData;I)Z
    .locals 19

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p2

    sget-boolean v4, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v4}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v13

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v4, v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    const/16 v5, 0x1ff

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    :goto_1
    const/4 v15, -0x1

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v6, v18, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v17

    :cond_2
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v14

    iget-object v0, v14, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/impl/coll/CollationFastLatin;->getCharIndex(C)I

    move-result v5

    if-ltz v5, :cond_2

    if-ne v5, v15, :cond_4

    if-eqz v12, :cond_2

    const-wide/16 v8, 0x0

    const-wide v6, 0x101000100L

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v8, 0x0

    const/16 v5, 0x1ff

    const-wide v6, 0x101000100L

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    goto :goto_1

    :cond_4
    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move-object/from16 v6, p0

    move v7, v15

    invoke-direct/range {v6 .. v11}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    :cond_5
    iget v0, v14, Landroid/icu/util/CharsTrie$Entry;->value:I

    move/from16 p2, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v4, v2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v12, 0x1

    :goto_3
    move v15, v5

    goto :goto_2

    :cond_6
    const-wide/16 v8, 0x0

    const-wide v6, 0x101000100L

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    const/4 v12, 0x0

    goto :goto_3

    :cond_7
    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move-object/from16 v6, p0

    move v7, v15

    invoke-direct/range {v6 .. v11}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    :cond_8
    int-to-long v6, v13

    const-wide v8, 0x180000000L

    or-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    const/4 v4, 0x1

    return v4
.end method

.method private getMiniCE(J)I
    .locals 5

    const/4 v1, 0x0

    const-wide/32 v2, -0xc001

    and-long/2addr p1, v2

    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v2}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v3}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v3

    invoke-static {v2, v3, p1, p2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->binarySearch([JIJ)I

    move-result v0

    sget-boolean v2, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    aget-char v1, v1, v0

    return v1
.end method

.method private inSameGroup(JJ)Z
    .locals 9

    iget-wide v6, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v1, p1, v6

    if-ltz v1, :cond_1

    iget-wide v6, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v1, p3, v6

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-wide v6, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v1, p3, v6

    if-ltz v1, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    const/4 v6, 0x3

    aget-wide v4, v1, v6

    cmp-long v1, p1, v4

    if-lez v1, :cond_4

    cmp-long v1, p3, v4

    if-lez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    cmp-long v1, p3, v4

    if-lez v1, :cond_5

    const/4 v1, 0x0

    return v1

    :cond_5
    sget-boolean v1, Landroid/icu/impl/coll/CollationFastLatinBuilder;->-assertionsDisabled:Z

    if-nez v1, :cond_7

    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-eqz v1, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v1, p3, v6

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    aget-wide v2, v1, v0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_9

    cmp-long v1, p3, v2

    if-gtz v1, :cond_8

    const/4 v1, 0x1

    :goto_4
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    cmp-long v1, p3, v2

    if-gtz v1, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static isContractionCharCE(J)Z
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x20

    ushr-long v2, p0, v1

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide v2, 0x101000100L

    cmp-long v1, p0, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadGroups(Landroid/icu/impl/coll/CollationData;)Z
    .locals 10

    const/16 v7, 0x19

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x5

    iput v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    iget v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    or-int/lit16 v1, v2, 0x200

    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    add-int/lit16 v3, v0, 0x1000

    invoke-virtual {p1, v3}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v4

    aput-wide v4, v2, v0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    return v6

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x1004

    invoke-virtual {p1, v2}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    invoke-virtual {p1, v7}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    invoke-virtual {p1, v7}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_3

    :cond_2
    return v6

    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private resetCEs()V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method


# virtual methods
.method forData(Landroid/icu/impl/coll/CollationData;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "attempt to reuse a CollationFastLatinBuilder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->loadGroups(Landroid/icu/impl/coll/CollationData;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEs(Landroid/icu/impl/coll/CollationData;)V

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeUniqueCEs()V

    iget-boolean v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    if-eqz v1, :cond_2

    iget-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    iput-wide v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->resetCEs()V

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEs(Landroid/icu/impl/coll/CollationData;)V

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeUniqueCEs()V

    :cond_2
    iget-boolean v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    if-eqz v1, :cond_4

    :goto_0
    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeCharCEs()V

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeContractions()V

    :cond_3
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getHeader()[C
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    new-array v0, v1, [C

    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-object v0
.end method

.method getTable()[C
    .locals 5

    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    sub-int/2addr v1, v2

    new-array v0, v1, [C

    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    iget-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-object v0
.end method
