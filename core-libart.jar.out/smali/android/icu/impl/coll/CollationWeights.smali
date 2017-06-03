.class public final Landroid/icu/impl/coll/CollationWeights;
.super Ljava/lang/Object;
.source "CollationWeights.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationWeights$WeightRange;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private maxBytes:[I

.field private middleLength:I

.field private minBytes:[I

.field private rangeCount:I

.field private rangeIndex:I

.field private ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationWeights;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    return-void
.end method

.method private allocWeightsInMinLengthRanges(II)Z
    .locals 16

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-ge v8, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v12, v12, v8

    iget v12, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    move/from16 v0, p2

    if-ne v12, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v12, v12, v8

    iget v12, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    add-int/2addr v2, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v12, p2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    move-result v9

    mul-int v12, v2, v9

    move/from16 v0, p1

    if-le v0, v12, :cond_1

    const/4 v12, 0x0

    return v12

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget-wide v10, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget-wide v6, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    const/4 v5, 0x1

    :goto_1
    if-ge v5, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v12, v12, v5

    iget-wide v12, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    cmp-long v12, v12, v10

    if-gez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v12, v12, v5

    iget-wide v10, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v12, v12, v5

    iget-wide v12, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    cmp-long v12, v12, v6

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v12, v12, v5

    iget-wide v6, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    sub-int v12, p1, v2

    add-int/lit8 v13, v9, -0x1

    div-int v4, v12, v13

    sub-int v3, v2, v4

    if-eqz v4, :cond_5

    mul-int v12, v4, v9

    add-int/2addr v12, v3

    move/from16 v0, p1

    if-ge v12, v0, :cond_7

    :cond_5
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x1

    sget-boolean v12, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    if-nez v12, :cond_7

    mul-int v12, v4, v9

    add-int/2addr v12, v3

    move/from16 v0, p1

    if-lt v12, v0, :cond_6

    const/4 v12, 0x1

    :goto_2
    if-nez v12, :cond_7

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iput-wide v10, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iput-wide v6, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iput v2, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    :goto_3
    const/4 v12, 0x1

    return v12

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    add-int/lit8 v13, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v10, v11, v1, v13}, Landroid/icu/impl/coll/CollationWeights;->incWeightByOffset(JII)J

    move-result-wide v14

    iput-wide v14, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iput v3, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    new-instance v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    const/4 v14, 0x1

    aput-object v13, v12, v14

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-wide v14, v13, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    move-result-wide v14

    iput-wide v14, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iput-wide v6, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move/from16 v0, p2

    iput v0, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iput v4, v12, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    goto :goto_3
.end method

.method private allocWeightsInShortRanges(II)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    add-int/lit8 v2, p2, 0x1

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-gt p1, v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    if-le v1, p2, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v1, v1, v0

    iput p1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-le v1, v4, :cond_1

    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    iget v2, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    :cond_1
    return v4

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    sub-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private countBytes(I)I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v0, v0, p1

    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static decWeightTrail(JI)J
    .locals 4

    rsub-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x8

    const-wide/16 v2, 0x1

    shl-long v0, v2, v0

    sub-long v0, p0, v0

    return-wide v0
.end method

.method private static getWeightByte(JI)I
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v0

    return v0
.end method

.method private getWeightRanges(JJ)Z
    .locals 23

    sget-boolean v18, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    if-nez v18, :cond_1

    const-wide/16 v18, 0x0

    cmp-long v18, p1, v18

    if-eqz v18, :cond_0

    const/16 v18, 0x1

    :goto_0
    if-nez v18, :cond_1

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v18, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    if-nez v18, :cond_3

    const-wide/16 v18, 0x0

    cmp-long v18, p3, v18

    if-eqz v18, :cond_2

    const/16 v18, 0x1

    :goto_1
    if-nez v18, :cond_3

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p2}, Landroid/icu/impl/coll/CollationWeights;->lengthOfWeight(J)I

    move-result v8

    invoke-static/range {p3 .. p4}, Landroid/icu/impl/coll/CollationWeights;->lengthOfWeight(J)I

    move-result v13

    sget-boolean v18, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v8, v0, :cond_4

    const/16 v18, 0x1

    :goto_2
    if-nez v18, :cond_5

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    :cond_5
    cmp-long v18, p1, p3

    if-ltz v18, :cond_6

    const/16 v18, 0x0

    return v18

    :cond_6
    if-ge v8, v13, :cond_7

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    move-result-wide v18

    cmp-long v18, p1, v18

    if-nez v18, :cond_7

    const/16 v18, 0x0

    return v18

    :cond_7
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v5, v0, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    new-instance v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v12, v0, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    move-wide/from16 v16, p1

    move v4, v8

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v4, v0, :cond_9

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    move/from16 v0, v18

    if-ge v11, v0, :cond_8

    new-instance v18, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    aput-object v18, v5, v4

    aget-object v18, v5, v4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4}, Landroid/icu/impl/coll/CollationWeights;->incWeightTrail(JI)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    aget-object v18, v5, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    move-object/from16 v19, v0

    aget v19, v19, v4

    move-wide/from16 v0, v16

    move/from16 v2, v19

    invoke-static {v0, v1, v4, v2}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    aget-object v18, v5, v4

    move-object/from16 v0, v18

    iput v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    aget-object v18, v5, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    move-object/from16 v19, v0

    aget v19, v19, v4

    sub-int v19, v19, v11

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    :cond_8
    add-int/lit8 v18, v4, -0x1

    invoke-static/range {v16 .. v18}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    move-result-wide v16

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_9
    const-wide v18, 0xff000000L

    cmp-long v18, v16, v18

    if-gez v18, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/icu/impl/coll/CollationWeights;->incWeightTrail(JI)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    :goto_4
    move-wide/from16 v16, p3

    move v4, v13

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v4, v0, :cond_c

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    move/from16 v0, v18

    if-le v11, v0, :cond_a

    new-instance v18, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    aput-object v18, v12, v4

    aget-object v18, v12, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    move-object/from16 v19, v0

    aget v19, v19, v4

    move-wide/from16 v0, v16

    move/from16 v2, v19

    invoke-static {v0, v1, v4, v2}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    aget-object v18, v12, v4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4}, Landroid/icu/impl/coll/CollationWeights;->decWeightTrail(JI)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    aget-object v18, v12, v4

    move-object/from16 v0, v18

    iput v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    aget-object v18, v12, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    move-object/from16 v19, v0

    aget v19, v19, v4

    sub-int v19, v11, v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    :cond_a
    add-int/lit8 v18, v4, -0x1

    invoke-static/range {v16 .. v18}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    move-result-wide v16

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_b
    const-wide v18, 0xffffffffL

    move-wide/from16 v0, v18

    iput-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/icu/impl/coll/CollationWeights;->decWeightTrail(JI)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    iget-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    move-wide/from16 v18, v0

    iget-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_11

    iget-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    move-wide/from16 v18, v0

    iget-wide v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    move/from16 v20, v0

    rsub-int/lit8 v20, v20, 0x4

    mul-int/lit8 v20, v20, 0x8

    shr-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    :cond_d
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    iget v0, v10, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    move/from16 v18, v0

    if-lez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    move/from16 v18, v0

    add-int/lit8 v4, v18, 0x1

    :goto_6
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v4, v0, :cond_19

    aget-object v18, v12, v4

    if-eqz v18, :cond_f

    aget-object v18, v12, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    move/from16 v18, v0

    if-lez v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    aget-object v20, v12, v4

    aput-object v20, v18, v19

    :cond_f
    aget-object v18, v5, v4

    if-eqz v18, :cond_10

    aget-object v18, v5, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    move/from16 v18, v0

    if-lez v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    aget-object v20, v5, v4

    aput-object v20, v18, v19

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_11
    const/4 v4, 0x4

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v4, v0, :cond_d

    aget-object v18, v5, v4

    if-eqz v18, :cond_18

    aget-object v18, v12, v4

    if-eqz v18, :cond_18

    aget-object v18, v5, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    move/from16 v18, v0

    if-lez v18, :cond_18

    aget-object v18, v12, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    move/from16 v18, v0

    if-lez v18, :cond_18

    aget-object v18, v5, v4

    move-object/from16 v0, v18

    iget-wide v6, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    aget-object v18, v12, v4

    move-object/from16 v0, v18

    iget-wide v14, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    const/4 v9, 0x0

    cmp-long v18, v6, v14

    if-lez v18, :cond_15

    sget-boolean v18, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    if-nez v18, :cond_13

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    invoke-static {v6, v7, v0}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    move-result-wide v18

    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    invoke-static {v14, v15, v0}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_12

    const/16 v18, 0x1

    :goto_8
    if-nez v18, :cond_13

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_12
    const/16 v18, 0x0

    goto :goto_8

    :cond_13
    aget-object v18, v5, v4

    aget-object v19, v12, v4

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    aget-object v18, v5, v4

    aget-object v19, v5, v4

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v4}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v19

    aget-object v20, v5, v4

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v4}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v20

    sub-int v19, v19, v20

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    const/4 v9, 0x1

    :cond_14
    :goto_9
    if-eqz v9, :cond_18

    aget-object v18, v12, v4

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    :goto_a
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v4, v0, :cond_d

    const/16 v18, 0x0

    aput-object v18, v12, v4

    const/16 v18, 0x0

    aput-object v18, v5, v4

    goto :goto_a

    :cond_15
    cmp-long v18, v6, v14

    if-nez v18, :cond_17

    sget-boolean v18, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    if-nez v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    move-object/from16 v18, v0

    aget v18, v18, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    move-object/from16 v19, v0

    aget v19, v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_16

    const/16 v18, 0x1

    :goto_b
    if-nez v18, :cond_14

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_16
    const/16 v18, 0x0

    goto :goto_b

    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v4}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    move-result-wide v18

    cmp-long v18, v18, v14

    if-nez v18, :cond_14

    aget-object v18, v5, v4

    aget-object v19, v12, v4

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    aget-object v18, v5, v4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    move/from16 v19, v0

    aget-object v20, v12, v4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    const/4 v9, 0x1

    goto :goto_9

    :cond_18
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_7

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    move/from16 v18, v0

    if-lez v18, :cond_1a

    const/16 v18, 0x1

    :goto_c
    return v18

    :cond_1a
    const/16 v18, 0x0

    goto :goto_c
.end method

.method private static getWeightTrail(JI)I
    .locals 2

    rsub-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private incWeight(JI)J
    .locals 5

    const/4 v2, 0x0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/icu/impl/coll/CollationWeights;->getWeightByte(JI)I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v1, v1, p3

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-static {p1, p2, p3, v1}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    move-result-wide v2

    return-wide v2

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v1, v1, p3

    invoke-static {p1, p2, p3, v1}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    move-result-wide p1

    add-int/lit8 p3, p3, -0x1

    sget-boolean v1, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    if-lez p3, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private incWeightByOffset(JII)J
    .locals 3

    const/4 v1, 0x0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/icu/impl/coll/CollationWeights;->getWeightByte(JI)I

    move-result v0

    add-int/2addr p4, v0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v0, v0, p3

    if-gt p4, v0, :cond_1

    invoke-static {p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v0, v0, p3

    sub-int/2addr p4, v0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v0, v0, p3

    invoke-direct {p0, p3}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    move-result v2

    rem-int v2, p4, v2

    add-int/2addr v0, v2

    invoke-static {p1, p2, p3, v0}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    move-result-wide p1

    invoke-direct {p0, p3}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    move-result v0

    div-int/2addr p4, v0

    add-int/lit8 p3, p3, -0x1

    sget-boolean v0, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    if-lez p3, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static incWeightTrail(JI)J
    .locals 4

    rsub-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x8

    const-wide/16 v2, 0x1

    shl-long v0, v2, v0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static lengthOfWeight(J)I
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/32 v0, 0xffffff

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/32 v0, 0xffff

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method private lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V
    .locals 4

    iget v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    add-int/lit8 v0, v1, 0x1

    iget-wide v2, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v1, v1, v0

    invoke-static {v2, v3, v0, v1}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    iget-wide v2, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v1, v1, v0

    invoke-static {v2, v3, v0, v1}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    iget v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    iput v0, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    return-void
.end method

.method private static setWeightByte(JII)J
    .locals 6

    mul-int/lit8 p2, p2, 0x8

    const/16 v2, 0x20

    if-ge p2, v2, :cond_0

    const-wide v2, 0xffffffffL

    shr-long v0, v2, p2

    :goto_0
    rsub-int/lit8 p2, p2, 0x20

    const-wide v2, 0xffffff00L

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    and-long v2, p0, v0

    int-to-long v4, p3

    shl-long/2addr v4, p2

    or-long/2addr v2, v4

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static setWeightTrail(JII)J
    .locals 4

    rsub-int/lit8 v0, p2, 0x4

    mul-int/lit8 p2, v0, 0x8

    const-wide v0, 0xffffff00L

    shl-long/2addr v0, p2

    and-long/2addr v0, p0

    int-to-long v2, p3

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static truncateWeight(JI)J
    .locals 4

    rsub-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x8

    const-wide v2, 0xffffffffL

    shl-long v0, v2, v0

    and-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public allocWeights(JJI)Z
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationWeights;->getWeightRanges(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v2, v2, v3

    iget v1, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    invoke-direct {p0, p5, v1}, Landroid/icu/impl/coll/CollationWeights;->allocWeightsInShortRanges(II)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iput v3, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    iget v2, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    iget-object v3, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    iget v3, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    :cond_2
    const/4 v2, 0x1

    return v2

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    return v3

    :cond_4
    invoke-direct {p0, p5, v1}, Landroid/icu/impl/coll/CollationWeights;->allocWeightsInMinLengthRanges(II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initForPrimary(Z)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x2

    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v4, v0, v1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v0, v1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v5, v0, v2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    const/16 v1, 0xfe

    aput v1, v0, v2

    :goto_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v2, v0, v4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v0, v4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v2, v0, v5

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v0, v5

    return-void

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v2, v0, v2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, v0, v2

    goto :goto_0
.end method

.method public initForSecondary()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    iput v3, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v1, v0, v4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v1, v0, v4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v1, v0, v2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v1, v0, v2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v2, v0, v3

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    const/16 v1, 0xff

    aput v1, v0, v3

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v2, v0, v5

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    const/16 v1, 0xff

    aput v1, v0, v5

    return-void
.end method

.method public initForTertiary()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    iput v3, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v1, v0, v4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v1, v0, v4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v1, v0, v2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v1, v0, v2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v2, v0, v3

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    const/16 v1, 0x3f

    aput v1, v0, v3

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v2, v0, v5

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    const/16 v1, 0x3f

    aput v1, v0, v5

    return-void
.end method

.method public nextWeight()J
    .locals 8

    const/4 v1, 0x0

    iget v4, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    iget v5, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-lt v4, v5, :cond_0

    const-wide v4, 0xffffffffL

    return-wide v4

    :cond_0
    iget-object v4, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    iget v5, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    aget-object v0, v4, v5

    iget-wide v2, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    iget v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-nez v4, :cond_2

    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    :cond_1
    return-wide v2

    :cond_2
    iget v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    invoke-direct {p0, v2, v3, v4}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    sget-boolean v4, Landroid/icu/impl/coll/CollationWeights;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-wide v4, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    iget-wide v6, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
