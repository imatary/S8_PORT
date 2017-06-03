.class public final Landroid/icu/impl/coll/CollationRootElements;
.super Ljava/lang/Object;
.source "CollationRootElements.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final IX_COMMON_SEC_AND_TER_CE:I = 0x3

.field static final IX_COUNT:I = 0x5

.field static final IX_FIRST_PRIMARY_INDEX:I = 0x2

.field static final IX_FIRST_SECONDARY_INDEX:I = 0x1

.field public static final IX_FIRST_TERTIARY_INDEX:I = 0x0

.field static final IX_SEC_TER_BOUNDARIES:I = 0x4

.field public static final PRIMARY_SENTINEL:J = 0xffffff00L

.field public static final PRIMARY_STEP_MASK:I = 0x7f

.field public static final SEC_TER_DELTA_FLAG:I = 0x80


# instance fields
.field private elements:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationRootElements;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    return-void
.end method

.method private findP(J)I
    .locals 11

    sget-boolean v6, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    const/16 v6, 0x18

    shr-long v6, p1, v6

    const-wide/16 v8, 0xfe

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    long-to-int v3, v6

    sget-boolean v6, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v6, v6, v3

    cmp-long v6, p1, v6

    if-ltz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    array-length v6, v6

    add-int/lit8 v2, v6, -0x1

    sget-boolean v6, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v6, v6, v2

    const-wide v8, 0xffffff00L

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    sget-boolean v6, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v6, v6, v2

    cmp-long v6, p1, v6

    if-gez v6, :cond_6

    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    const-wide v6, 0xffffff00L

    and-long/2addr v6, v4

    cmp-long v6, p1, v6

    if-gez v6, :cond_e

    move v2, v0

    :cond_8
    :goto_4
    add-int/lit8 v6, v3, 0x1

    if-ge v6, v2, :cond_9

    add-int v6, v3, v2

    div-int/lit8 v0, v6, 0x2

    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v4, v6, v0

    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    add-int/lit8 v1, v0, 0x1

    :goto_5
    if-ne v1, v2, :cond_a

    :goto_6
    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    add-int/lit8 v1, v0, -0x1

    :goto_7
    if-ne v1, v3, :cond_c

    :goto_8
    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    :cond_9
    return v3

    :cond_a
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v4, v6, v1

    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v4, v6, v1

    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_d

    move v0, v1

    goto :goto_8

    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_e
    move v3, v0

    goto :goto_4
.end method

.method private getFirstSecTerForPrimary(I)J
    .locals 8

    const-wide/32 v6, 0x5000500

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v0, v2, p1

    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-wide v6

    :cond_0
    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    return-wide v6

    :cond_1
    return-wide v0
.end method

.method private static isEndOfPrimaryRange(J)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const-wide/16 v2, 0x80

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method findPrimary(J)I
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-boolean v3, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    const-wide/16 v4, 0xff

    and-long/2addr v4, p1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    move v3, v1

    :goto_0
    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findP(J)I

    move-result v0

    sget-boolean v3, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v4, v0, 0x1

    aget-wide v4, v3, v4

    invoke-static {v4, v5}, Landroid/icu/impl/coll/CollationRootElements;->isEndOfPrimaryRange(J)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v4, v3, v0

    const-wide v6, 0xffffff00L

    and-long/2addr v4, v6

    cmp-long v3, p1, v4

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    return v0
.end method

.method firstCEWithPrimaryAtLeast(J)J
    .locals 9

    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-nez v1, :cond_0

    return-wide v6

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findP(J)I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v2, v1, v0

    const-wide v4, 0xffffff00L

    and-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v0, v0, 0x1

    aget-wide p1, v1, v0

    const-wide/16 v2, 0x80

    and-long/2addr v2, p1

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v1, :cond_3

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/16 v1, 0x20

    shl-long v2, p1, v1

    const-wide/32 v4, 0x5000500

    or-long/2addr v2, v4

    return-wide v2
.end method

.method getFirstPrimary()J
    .locals 4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    long-to-int v1, v2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method getFirstPrimaryCE()J
    .locals 2

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getFirstPrimary()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getFirstSecondaryCE()J
    .locals 4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    long-to-int v1, v2

    aget-wide v0, v0, v1

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    return-wide v0
.end method

.method getFirstTertiaryCE()J
    .locals 4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    long-to-int v1, v2

    aget-wide v0, v0, v1

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastCommonSecondary()I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    long-to-int v0, v0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v0, v1

    return v0
.end method

.method getLastSecondaryCE()J
    .locals 4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    long-to-int v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    return-wide v0
.end method

.method getLastTertiaryCE()J
    .locals 4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    long-to-int v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    return-wide v0
.end method

.method getPrimaryAfter(JIZ)J
    .locals 9

    sget-boolean v3, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v4, v3, p3

    const-wide v6, 0xffffff00L

    and-long/2addr v4, v6

    cmp-long v3, p1, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v4, p3, 0x1

    aget-wide v4, v3, v4

    invoke-static {v4, v5}, Landroid/icu/impl/coll/CollationRootElements;->isEndOfPrimaryRange(J)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 p3, p3, 0x1

    aget-wide v0, v3, p3

    const-wide/16 v4, 0x80

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    long-to-int v3, v0

    and-int/lit8 v2, v3, 0x7f

    if-eqz v2, :cond_3

    const-wide/32 v4, 0xffff

    and-long/2addr v4, p1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    invoke-static {p1, p2, p4, v2}, Landroid/icu/impl/coll/Collation;->incTwoBytePrimaryByOffset(JZI)J

    move-result-wide v4

    return-wide v4

    :cond_2
    invoke-static {p1, p2, p4, v2}, Landroid/icu/impl/coll/Collation;->incThreeBytePrimaryByOffset(JZI)J

    move-result-wide v4

    return-wide v4

    :cond_3
    :goto_1
    const-wide/16 v4, 0x80

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 p3, p3, 0x1

    aget-wide v0, v3, p3

    goto :goto_1

    :cond_4
    sget-boolean v3, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v3, :cond_6

    const-wide/16 v4, 0x7f

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    return-wide v0
.end method

.method getPrimaryBefore(JZ)J
    .locals 17

    const-wide v14, 0xffffff00L

    const-wide/16 v12, 0x0

    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v8, v10, v4

    and-long v10, v8, v14

    cmp-long v10, p1, v10

    if-nez v10, :cond_1

    long-to-int v10, v8

    and-int/lit8 v5, v10, 0x7f

    if-nez v5, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v4, v4, -0x1

    aget-wide p1, v10, v4

    const-wide/16 v10, 0x80

    and-long v10, v10, p1

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    and-long v10, p1, v14

    return-wide v10

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v11, v4, 0x1

    aget-wide v6, v10, v11

    sget-boolean v10, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v10, :cond_2

    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationRootElements;->isEndOfPrimaryRange(J)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    :cond_2
    long-to-int v10, v6

    and-int/lit8 v5, v10, 0x7f

    :cond_3
    const-wide/32 v10, 0xffff

    and-long v10, v10, p1

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v5}, Landroid/icu/impl/coll/Collation;->decTwoBytePrimaryByOneStep(JZI)J

    move-result-wide v10

    return-wide v10

    :cond_4
    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v5}, Landroid/icu/impl/coll/Collation;->decThreeBytePrimaryByOneStep(JZI)J

    move-result-wide v10

    return-wide v10
.end method

.method getSecondaryAfter(II)I
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_3

    sget-boolean v6, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v6, :cond_1

    if-eqz p2, :cond_0

    move v5, v4

    :cond_0
    if-nez v5, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v4, v5, v4

    long-to-int p1, v4

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v2, v4, p1

    const/high16 v1, 0x10000

    :cond_2
    :goto_0
    const/16 v4, 0x10

    shr-long v4, v2, v4

    long-to-int v0, v4

    if-le v0, p2, :cond_6

    return v0

    :cond_3
    sget-boolean v6, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    long-to-int v6, v6

    if-lt p1, v6, :cond_4

    :goto_1
    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBoundary()I

    move-result v1

    goto :goto_0

    :cond_6
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 p1, p1, 0x1

    aget-wide v2, v4, p1

    const-wide/16 v4, 0x80

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    return v1
.end method

.method getSecondaryBefore(JI)I
    .locals 9

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    long-to-int v0, v4

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v4, v4, v0

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v3, v4

    :goto_0
    sget-boolean v4, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v4, :cond_7

    if-lt p3, v3, :cond_1

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    const/16 v2, 0x100

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    move-result-wide v4

    long-to-int v4, v4

    ushr-int/lit8 v3, v4, 0x10

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v0, v1, 0x1

    aget-wide v4, v4, v1

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v3, v4

    move v1, v0

    :goto_2
    if-le p3, v3, :cond_4

    move v2, v3

    sget-boolean v4, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v4, v4, v1

    const-wide/16 v6, 0x80

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    sget-boolean v4, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v4, :cond_6

    if-ne v3, p3, :cond_5

    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    return v2

    :cond_7
    move v1, v0

    goto :goto_2
.end method

.method public getSecondaryBoundary()I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    long-to-int v0, v0

    shr-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    return v0
.end method

.method getTertiaryAfter(III)I
    .locals 10

    if-nez p1, :cond_3

    if-nez p2, :cond_2

    sget-boolean v5, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    if-eqz p3, :cond_0

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    long-to-int p1, v6

    const/16 v4, 0x4000

    :goto_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v6, v5, p1

    const-wide/16 v8, -0x81

    and-long v0, v6, v8

    :goto_2
    int-to-long v6, p2

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v5, 0x10

    shl-long/2addr v6, v5

    int-to-long v8, p3

    or-long v2, v6, v8

    :goto_3
    cmp-long v5, v0, v2

    if-lez v5, :cond_8

    sget-boolean v5, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v5, :cond_7

    const/16 v5, 0x10

    shr-long v6, v0, v5

    int-to-long v8, p2

    cmp-long v5, v6, v8

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_4
    if-nez v5, :cond_7

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_2
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v6, 0x1

    aget-wide v6, v5, v6

    long-to-int p1, v6

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    move-result v4

    goto :goto_1

    :cond_3
    sget-boolean v5, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v6, 0x2

    aget-wide v6, v5, v6

    long-to-int v5, v6

    if-lt p1, v5, :cond_4

    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    move-result v4

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    long-to-int v5, v0

    const v6, 0xffff

    and-int/2addr v5, v6

    return v5

    :cond_8
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 p1, p1, 0x1

    aget-wide v0, v5, p1

    const-wide/16 v6, 0x80

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_9

    const/16 v5, 0x10

    shr-long v6, v0, v5

    int-to-long v8, p2

    cmp-long v5, v6, v8

    if-lez v5, :cond_a

    :cond_9
    return v4

    :cond_a
    const-wide/16 v6, -0x81

    and-long/2addr v0, v6

    goto :goto_3
.end method

.method getTertiaryBefore(JII)I
    .locals 15

    sget-boolean v5, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    move/from16 v0, p4

    and-int/lit16 v5, v0, -0x3f40

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v5, p1, v10

    if-nez v5, :cond_4

    if-nez p3, :cond_3

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v10, 0x0

    aget-wide v10, v5, v10

    long-to-int v2, v10

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v10, v5, v2

    const-wide/16 v12, -0x81

    and-long v6, v10, v12

    :goto_2
    move/from16 v0, p3

    int-to-long v10, v0

    const/16 v5, 0x10

    shl-long/2addr v10, v5

    move/from16 v0, p4

    int-to-long v12, v0

    or-long v8, v10, v12

    move v3, v2

    :goto_3
    cmp-long v5, v8, v6

    if-lez v5, :cond_7

    const/16 v5, 0x10

    shr-long v10, v6, v5

    long-to-int v5, v10

    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    long-to-int v4, v6

    :cond_2
    sget-boolean v5, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v10, v5, v3

    const-wide/16 v12, 0x80

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_4
    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_3
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v10, 0x1

    aget-wide v10, v5, v10

    long-to-int v2, v10

    const/16 v4, 0x100

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    const/16 v4, 0x100

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    move-result-wide v6

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v2, v3, 0x1

    aget-wide v10, v5, v3

    const-wide/16 v12, -0x81

    and-long v6, v10, v12

    move v3, v2

    goto :goto_3

    :cond_7
    sget-boolean v5, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v5, :cond_9

    cmp-long v5, v6, v8

    if-nez v5, :cond_8

    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    const v5, 0xffff

    and-int/2addr v5, v4

    return v5
.end method

.method public getTertiaryBoundary()I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    long-to-int v0, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    return v0
.end method

.method lastCEWithPrimaryBefore(J)J
    .locals 11

    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-nez v1, :cond_0

    const-wide/16 v6, 0x0

    return-wide v6

    :cond_0
    sget-boolean v1, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    iget-object v6, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    long-to-int v6, v6

    aget-wide v6, v1, v6

    cmp-long v1, p1, v6

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findP(J)I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v2, v1, v0

    const-wide v6, 0xffffff00L

    and-long/2addr v6, v2

    cmp-long v1, p1, v6

    if-nez v1, :cond_8

    sget-boolean v1, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v1, :cond_4

    const-wide/16 v6, 0x7f

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v6, v0, -0x1

    aget-wide v4, v1, v6

    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_6

    const-wide v6, 0xffffff00L

    and-long p1, v4, v6

    const-wide/32 v4, 0x5000500

    :cond_5
    :goto_2
    const/16 v1, 0x20

    shl-long v6, p1, v1

    const-wide/16 v8, -0x81

    and-long/2addr v8, v4

    or-long/2addr v6, v8

    return-wide v6

    :cond_6
    add-int/lit8 v0, v0, -0x2

    :goto_3
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide p1, v1, v0

    const-wide/16 v6, 0x80

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_7

    const-wide v6, 0xffffff00L

    and-long/2addr p1, v6

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_8
    const-wide v6, 0xffffff00L

    and-long p1, v2, v6

    const-wide/32 v4, 0x5000500

    :goto_4
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v0, v0, 0x1

    aget-wide v2, v1, v0

    const-wide/16 v6, 0x80

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_a

    sget-boolean v1, Landroid/icu/impl/coll/CollationRootElements;->-assertionsDisabled:Z

    if-nez v1, :cond_5

    const-wide/16 v6, 0x7f

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    :cond_a
    move-wide v4, v2

    goto :goto_4
.end method
