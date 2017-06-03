.class public final Landroid/icu/impl/coll/CollationSettings;
.super Landroid/icu/impl/coll/SharedObject;
.source "CollationSettings.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final ALTERNATE_MASK:I = 0xc

.field public static final BACKWARD_SECONDARY:I = 0x800

.field public static final CASE_FIRST:I = 0x200

.field public static final CASE_FIRST_AND_UPPER_MASK:I = 0x300

.field public static final CASE_LEVEL:I = 0x400

.field public static final CHECK_FCD:I = 0x1

.field private static final EMPTY_INT_ARRAY:[I

.field static final MAX_VARIABLE_MASK:I = 0x70

.field static final MAX_VARIABLE_SHIFT:I = 0x4

.field static final MAX_VAR_CURRENCY:I = 0x3

.field static final MAX_VAR_PUNCT:I = 0x1

.field static final MAX_VAR_SPACE:I = 0x0

.field static final MAX_VAR_SYMBOL:I = 0x2

.field public static final NUMERIC:I = 0x2

.field static final SHIFTED:I = 0x4

.field static final STRENGTH_MASK:I = 0xf000

.field static final STRENGTH_SHIFT:I = 0xc

.field static final UPPER_FIRST:I = 0x100


# instance fields
.field public fastLatinOptions:I

.field public fastLatinPrimaries:[C

.field minHighNoReorder:J

.field public options:I

.field public reorderCodes:[I

.field reorderRanges:[J

.field public reorderTable:[B

.field public variableTop:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    new-array v0, v1, [I

    sput-object v0, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/coll/SharedObject;-><init>()V

    const/16 v0, 0x2010

    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    sget-object v0, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    const/16 v0, 0x180

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    return-void
.end method

.method static getStrength(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0xc

    return v0
.end method

.method static getTertiaryMask(I)I
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/coll/CollationSettings;->isTertiaryWithCaseBits(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xff3f

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3f3f

    goto :goto_0
.end method

.method static isTertiaryWithCaseBits(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0x600

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reorderEx(J)J
    .locals 11

    sget-boolean v1, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-wide v6, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

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
    iget-wide v6, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    cmp-long v1, p1, v6

    if-ltz v1, :cond_2

    return-wide p1

    :cond_2
    const-wide/32 v6, 0xffff

    or-long v2, p1, v6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    aget-wide v4, v1, v0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    long-to-int v1, v4

    int-to-short v1, v1

    int-to-long v6, v1

    const/16 v1, 0x18

    shl-long/2addr v6, v1

    add-long/2addr v6, p1

    return-wide v6
.end method

.method private static reorderTableHasSplitBytes([B)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v1, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    aget-byte v1, p0, v3

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_3

    aget-byte v1, p0, v0

    if-nez v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v3
.end method

.method private setReorderArrays([I[III[B)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object p1, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    :cond_0
    sget-boolean v2, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    array-length v2, p1

    if-nez v2, :cond_1

    move v3, v0

    :goto_0
    if-nez p5, :cond_2

    move v2, v0

    :goto_1
    if-ne v3, v2, :cond_3

    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iput-object p5, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    iput-object p1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-direct {p0, p2, p3, p4}, Landroid/icu/impl/coll/CollationSettings;->setReorderRanges([III)V

    return-void
.end method

.method private setReorderRanges([III)V
    .locals 8

    if-nez p3, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    :goto_0
    return-void

    :cond_0
    new-array v3, p3, [J

    iput-object v3, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, p2, 0x1

    aget v4, p1, p2

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    aput-wide v4, v3, v0

    if-ge v1, p3, :cond_1

    move v0, v1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v2

    goto :goto_0
.end method

.method static sortsTertiaryUpperCaseFirst(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0x700

    const/16 v1, 0x300

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method aliasReordering(Landroid/icu/impl/coll/CollationData;[II[B)V
    .locals 10

    const/4 v9, 0x0

    const v8, 0xffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    array-length v7, p2

    if-ne p3, v7, :cond_1

    move-object v0, p2

    :goto_0
    move v4, p3

    array-length v3, p2

    sub-int v2, v3, p3

    if-eqz p4, :cond_0

    if-nez v2, :cond_2

    invoke-static {p4}, Landroid/icu/impl/coll/CollationSettings;->reorderTableHasSplitBytes([B)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/coll/CollationSettings;->setReordering(Landroid/icu/impl/coll/CollationData;[I)V

    return-void

    :cond_1
    new-array v0, p3, [I

    invoke-static {p2, v6, v0, v6, p3}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x2

    if-lt v2, v7, :cond_0

    aget v7, p2, p3

    and-int/2addr v7, v8

    if-nez v7, :cond_0

    add-int/lit8 v7, v3, -0x1

    aget v7, p2, v7

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    :cond_3
    iput-object p4, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    move v1, p3

    :goto_1
    if-ge v1, v3, :cond_4

    aget v7, p2, v1

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    if-nez v7, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_7

    sget-boolean v7, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    if-nez v7, :cond_6

    invoke-static {p4}, Landroid/icu/impl/coll/CollationSettings;->reorderTableHasSplitBytes([B)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_2
    if-nez v6, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_5
    move v6, v5

    goto :goto_2

    :cond_6
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    iput-object v9, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    :goto_3
    return-void

    :cond_7
    sget-boolean v7, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    if-nez v7, :cond_9

    aget v7, p2, v1

    ushr-int/lit8 v7, v7, 0x18

    aget-byte v7, p4, v7

    if-nez v7, :cond_8

    :goto_4
    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_8
    move v5, v6

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v3, -0x1

    aget v5, p2, v5

    int-to-long v6, v5

    const-wide v8, 0xffff0000L

    and-long/2addr v6, v8

    iput-wide v6, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    sub-int v5, v3, v1

    invoke-direct {p0, p2, v1, v5}, Landroid/icu/impl/coll/CollationSettings;->setReorderRanges([III)V

    goto :goto_3
.end method

.method public clone()Landroid/icu/impl/coll/CollationSettings;
    .locals 2

    invoke-super {p0}, Landroid/icu/impl/coll/SharedObject;->clone()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget-object v1, p0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/icu/impl/coll/SharedObject;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->clone()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    return-object v0
.end method

.method public copyReorderingFrom(Landroid/icu/impl/coll/CollationSettings;)V
    .locals 2

    invoke-virtual {p1}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    return-void

    :cond_0
    iget-wide v0, p1, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    iput-wide v0, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    iget-object v0, p1, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    iget-object v0, p1, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    iget-object v0, p1, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    return-void
.end method

.method public dontCheckFCD()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v6

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    if-eq v1, v2, :cond_2

    return v6

    :cond_2
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_3

    iget-wide v2, p0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    iget-wide v4, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    return v6

    :cond_3
    iget-object v1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    iget-object v2, v0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_4

    return v6

    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public getAlternateHandling()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getCaseFirst()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, 0x300

    return v0
.end method

.method public getFlag(I)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getMaxVariable()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x70

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getStrength()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-static {v0}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v0

    return v0
.end method

.method hasBackwardSecondary()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasReordering()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    iget v2, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    shl-int/lit8 v0, v2, 0x8

    iget v2, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_0

    int-to-long v2, v0

    iget-wide v4, p0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    xor-long/2addr v2, v4

    long-to-int v0, v2

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v2, v2

    xor-int/2addr v0, v2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    aget v2, v2, v1

    shl-int/2addr v2, v1

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isNumeric()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public reorder(J)J
    .locals 7

    iget-object v1, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    long-to-int v2, p1

    ushr-int/lit8 v2, v2, 0x18

    aget-byte v0, v1, v2

    if-nez v0, :cond_0

    const-wide/16 v2, 0x1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    :cond_0
    int-to-long v2, v0

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v1, 0x18

    shl-long/2addr v2, v1

    const-wide/32 v4, 0xffffff

    and-long/2addr v4, p1

    or-long/2addr v2, v4

    return-wide v2

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationSettings;->reorderEx(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public resetReordering()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderTable:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    iput-object v2, p0, Landroid/icu/impl/coll/CollationSettings;->reorderRanges:[J

    sget-object v0, Landroid/icu/impl/coll/CollationSettings;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    return-void
.end method

.method public setAlternateHandlingDefault(I)V
    .locals 2

    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v1, -0xd

    and-int/lit8 v1, p1, 0xc

    or-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method

.method public setAlternateHandlingShifted(Z)V
    .locals 2

    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v1, -0xd

    if-eqz p1, :cond_0

    or-int/lit8 v1, v0, 0x4

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    goto :goto_0
.end method

.method public setCaseFirst(I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_0

    const/16 v3, 0x200

    if-ne p1, v3, :cond_1

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    const/16 v3, 0x300

    if-eq p1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v1, -0x301

    or-int v1, v0, p1

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method

.method public setCaseFirstDefault(I)V
    .locals 2

    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v1, -0x301

    and-int/lit16 v1, p1, 0x300

    or-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method

.method public setFlag(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    goto :goto_0
.end method

.method public setFlagDefault(II)V
    .locals 2

    iget v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    not-int v1, p1

    and-int/2addr v0, v1

    and-int v1, p2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method

.method public setMaxVariable(II)V
    .locals 4

    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v1, -0x71

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal maxVariable value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    shl-int/lit8 v1, p1, 0x4

    or-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    :goto_0
    return-void

    :pswitch_1
    and-int/lit8 v1, p2, 0x70

    or-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setReordering(Landroid/icu/impl/coll/CollationData;[I)V
    .locals 16

    move-object/from16 v0, p2

    array-length v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget v2, p2, v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    return-void

    :cond_1
    new-instance v13, Landroid/icu/impl/coll/UVector32;

    invoke-direct {v13}, Landroid/icu/impl/coll/UVector32;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Landroid/icu/impl/coll/CollationData;->makeReorderRanges([ILandroid/icu/impl/coll/UVector32;)V

    invoke-virtual {v13}, Landroid/icu/impl/coll/UVector32;->size()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    return-void

    :cond_2
    invoke-virtual {v13}, Landroid/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v4

    sget-boolean v2, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    const/4 v2, 0x2

    if-lt v6, v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    sget-boolean v2, Landroid/icu/impl/coll/CollationSettings;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    aget v2, v4, v2

    const v3, 0xffff

    and-int/2addr v2, v3

    if-nez v2, :cond_5

    add-int/lit8 v2, v6, -0x1

    aget v2, v4, v2

    const v3, 0xffff

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v6, -0x1

    aget v2, v4, v2

    int-to-long v2, v2

    const-wide v14, 0xffff0000L

    and-long/2addr v2, v14

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/icu/impl/coll/CollationSettings;->minHighNoReorder:J

    const/16 v2, 0x100

    new-array v7, v2, [B

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v6, :cond_9

    aget v12, v4, v10

    ushr-int/lit8 v11, v12, 0x18

    :goto_3
    if-ge v8, v11, :cond_7

    add-int v2, v8, v12

    int-to-byte v2, v2

    aput-byte v2, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    const/high16 v2, 0xff0000

    and-int/2addr v2, v12

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    aput-byte v2, v7, v11

    add-int/lit8 v8, v11, 0x1

    if-gez v9, :cond_8

    move v9, v10

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    const/16 v2, 0xff

    if-gt v8, v2, :cond_a

    int-to-byte v2, v8

    aput-byte v2, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    if-gez v9, :cond_b

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/coll/CollationSettings;->setReorderArrays([I[III[B)V

    return-void

    :cond_b
    move v5, v9

    sub-int/2addr v6, v9

    goto :goto_5
.end method

.method public setStrength(I)V
    .locals 4

    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    const v2, -0xf001

    and-int v0, v1, v2

    sparse-switch p1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal strength value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    shl-int/lit8 v1, p1, 0xc

    or-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public setStrengthDefault(I)V
    .locals 3

    iget v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    const v2, -0xf001

    and-int v0, v1, v2

    const v1, 0xf000

    and-int/2addr v1, p1

    or-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/coll/CollationSettings;->options:I

    return-void
.end method
