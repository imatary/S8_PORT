.class public Landroid/icu/impl/IntTrieBuilder;
.super Landroid/icu/impl/TrieBuilder;
.source "IntTrieBuilder.java"


# instance fields
.field protected m_data_:[I

.field protected m_initialValue_:I

.field private m_leadUnitValue_:I


# direct methods
.method public constructor <init>(Landroid/icu/impl/IntTrieBuilder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/icu/impl/TrieBuilder;-><init>(Landroid/icu/impl/TrieBuilder;)V

    iget v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget-object v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget v2, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iget v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    iput v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    iget v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    iput v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    return-void
.end method

.method public constructor <init>([IIIIZ)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/icu/impl/TrieBuilder;-><init>()V

    const/16 v3, 0x20

    if-lt p2, v3, :cond_0

    if-eqz p5, :cond_1

    const/16 v3, 0x400

    if-ge p2, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Argument maxdatalength is too small"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-eqz p1, :cond_2

    iput-object p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    :goto_0
    const/16 v2, 0x20

    if-eqz p5, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    add-int/lit8 v1, v0, 0x1

    aput v2, v3, v0

    add-int/lit8 v2, v2, 0x20

    const/16 v3, 0x8

    if-ge v1, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_2
    new-array v3, p2, [I

    iput-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    goto :goto_0

    :cond_3
    iput v2, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    iget-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget v4, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    invoke-static {v3, v5, v4, p3}, Ljava/util/Arrays;->fill([IIII)V

    iput p3, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    iput p4, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    iput p2, p0, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    iput-boolean p5, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    iput-boolean v5, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    return-void
.end method

.method private allocDataBlock()I
    .locals 3

    iget v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    add-int/lit8 v1, v0, 0x20

    iget v2, p0, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    if-le v1, v2, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    iput v1, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    return v0
.end method

.method private compact(Z)V
    .locals 9

    iget-boolean v6, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    if-eqz v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/TrieBuilder;->findUnusedBlocks()V

    const/16 v3, 0x20

    iget-boolean v6, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    if-eqz v6, :cond_1

    const/16 v3, 0x120

    :cond_1
    const/16 v1, 0x20

    const/16 v4, 0x20

    :goto_0
    iget v6, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    if-ge v4, v6, :cond_a

    iget-object v6, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    ushr-int/lit8 v7, v4, 0x5

    aget v6, v6, v7

    if-gez v6, :cond_2

    add-int/lit8 v4, v4, 0x20

    goto :goto_0

    :cond_2
    if-lt v4, v3, :cond_4

    iget-object v7, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    if-eqz p1, :cond_3

    const/4 v6, 0x4

    :goto_1
    invoke-static {v7, v1, v4, v6}, Landroid/icu/impl/IntTrieBuilder;->findSameDataBlock([IIII)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v6, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    ushr-int/lit8 v7, v4, 0x5

    aput v0, v6, v7

    add-int/lit8 v4, v4, 0x20

    goto :goto_0

    :cond_3
    const/16 v6, 0x20

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_7

    if-lt v4, v3, :cond_7

    const/16 v0, 0x1c

    :goto_2
    if-lez v0, :cond_5

    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    sub-int v7, v1, v0

    invoke-static {v6, v7, v4, v0}, Landroid/icu/impl/IntTrieBuilder;->equal_int([IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    :goto_3
    if-lez v0, :cond_8

    iget-object v6, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    ushr-int/lit8 v7, v4, 0x5

    sub-int v8, v1, v0

    aput v8, v6, v7

    add-int/2addr v4, v0

    rsub-int/lit8 v0, v0, 0x20

    move v5, v4

    move v2, v1

    :goto_4
    if-lez v0, :cond_c

    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v1, v2, 0x1

    iget-object v7, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v4, v5, 0x1

    aget v7, v7, v5

    aput v7, v6, v2

    add-int/lit8 v0, v0, -0x1

    move v5, v4

    move v2, v1

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, -0x4

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    if-ge v1, v4, :cond_9

    iget-object v6, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    ushr-int/lit8 v7, v4, 0x5

    aput v1, v6, v7

    const/16 v0, 0x20

    move v5, v4

    move v2, v1

    :goto_5
    if-lez v0, :cond_c

    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v1, v2, 0x1

    iget-object v7, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v4, v5, 0x1

    aget v7, v7, v5

    aput v7, v6, v2

    add-int/lit8 v0, v0, -0x1

    move v5, v4

    move v2, v1

    goto :goto_5

    :cond_9
    iget-object v6, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    ushr-int/lit8 v7, v4, 0x5

    aput v4, v6, v7

    add-int/lit8 v1, v1, 0x20

    move v4, v1

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_6
    iget v6, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    if-ge v0, v6, :cond_b

    iget-object v6, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    iget-object v7, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    iget-object v8, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    ushr-int/lit8 v8, v8, 0x5

    aget v7, v7, v8

    aput v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    iput v1, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    return-void

    :cond_c
    move v4, v5

    move v1, v2

    goto/16 :goto_0
.end method

.method private fillBlock(IIIIZ)V
    .locals 3

    add-int/2addr p3, p1

    add-int/2addr p1, p2

    if-eqz p5, :cond_0

    :goto_0
    move v0, p1

    if-ge v0, p3, :cond_2

    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 p1, v0, 0x1

    aput p4, v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p3, :cond_3

    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    aget v1, v1, p1

    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    aput p4, v1, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v0

    :cond_3
    return-void
.end method

.method private static final findSameDataBlock([IIII)I
    .locals 2

    add-int/lit8 p1, p1, -0x20

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    const/16 v1, 0x20

    invoke-static {p0, v0, p2, v1}, Landroid/icu/impl/IntTrieBuilder;->equal_int([IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/2addr v0, p3

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private final fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V
    .locals 12

    const/16 v11, 0x800

    const/16 v3, 0x20

    const/4 v2, 0x0

    new-array v9, v3, [I

    iget-object v7, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    const/16 v0, 0x6c0

    invoke-static {v7, v0, v9, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    const/4 v1, 0x0

    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    iget v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    if-ne v0, v4, :cond_0

    :goto_0
    const/16 v6, 0x6c0

    :goto_1
    const/16 v0, 0x6e0

    if-ge v6, v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    aput v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/IntTrieBuilder;->allocDataBlock()I

    move-result v1

    if-gez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Internal error: Out of memory space"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    neg-int v1, v1

    goto :goto_0

    :cond_2
    const/16 v8, 0x800

    const/high16 v6, 0x10000

    :goto_2
    const/high16 v0, 0x110000

    if-ge v6, v0, :cond_6

    shr-int/lit8 v0, v6, 0x5

    aget v0, v7, v0

    if-eqz v0, :cond_5

    and-int/lit16 v6, v6, -0x400

    shr-int/lit8 v0, v6, 0x5

    invoke-static {v7, v8, v0}, Landroid/icu/impl/IntTrieBuilder;->findSameIndexBlock([III)I

    move-result v1

    add-int/lit8 v0, v1, 0x20

    invoke-interface {p1, v6, v0}, Landroid/icu/impl/TrieBuilder$DataManipulate;->getFoldedValue(II)I

    move-result v10

    invoke-static {v6}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/IntTrieBuilder;->getValue(I)I

    move-result v0

    if-eq v10, v0, :cond_4

    invoke-static {v6}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0, v10}, Landroid/icu/impl/IntTrieBuilder;->setValue(II)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v2, "Data table overflow"

    invoke-direct {v0, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ne v1, v8, :cond_4

    shr-int/lit8 v0, v6, 0x5

    invoke-static {v7, v0, v7, v8, v3}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v8, v8, 0x20

    :cond_4
    add-int/lit16 v6, v6, 0x400

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x20

    goto :goto_2

    :cond_6
    const v0, 0x8800

    if-lt v8, v0, :cond_7

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v2, "Index table overflow"

    invoke-direct {v0, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    add-int/lit16 v0, v8, -0x800

    const/16 v4, 0x820

    invoke-static {v7, v11, v7, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    invoke-static {v9, v2, v7, v11, v3}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v8, v8, 0x20

    iput v8, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    return-void
.end method

.method private getDataBlock(I)I
    .locals 6

    shr-int/lit8 p1, p1, 0x5

    iget-object v2, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    aget v0, v2, p1

    if-lez v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/IntTrieBuilder;->allocDataBlock()I

    move-result v1

    if-gez v1, :cond_1

    const/4 v2, -0x1

    return v2

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    aput v1, v2, p1

    iget-object v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    const/16 v5, 0x80

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy([II[III)V

    return v1
.end method


# virtual methods
.method public getValue(I)I
    .locals 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    if-nez v1, :cond_0

    const v1, 0x10ffff

    if-le p1, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    shr-int/lit8 v2, p1, 0x5

    aget v0, v1, v2

    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    and-int/lit8 v3, p1, 0x1f

    add-int/2addr v2, v3

    aget v1, v1, v2

    return v1
.end method

.method public getValue(I[Z)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    if-nez v3, :cond_0

    const v3, 0x10ffff

    if-le p1, v3, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    aput-boolean v1, p2, v2

    :cond_1
    return v2

    :cond_2
    if-ltz p1, :cond_0

    iget-object v3, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    shr-int/lit8 v4, p1, 0x5

    aget v0, v3, v4

    if-eqz p2, :cond_3

    if-nez v0, :cond_4

    :goto_0
    aput-boolean v1, p2, v2

    :cond_3
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    and-int/lit8 v3, p1, 0x1f

    add-int/2addr v2, v3

    aget v1, v1, v2

    return v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public serialize(Ljava/io/OutputStream;ZLandroid/icu/impl/TrieBuilder$DataManipulate;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    if-nez p3, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Parameters can not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-boolean v5, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    if-nez v5, :cond_1

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    invoke-direct {p0, p3}, Landroid/icu/impl/IntTrieBuilder;->fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V

    invoke-direct {p0, v6}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    iput-boolean v6, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    :cond_1
    if-eqz p2, :cond_2

    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    iget v6, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    add-int v2, v5, v6

    :goto_0
    const/high16 v5, 0x40000

    if-lt v2, v5, :cond_3

    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v6, "Data length too small"

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget v2, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    goto :goto_0

    :cond_3
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v2, v5, 0x10

    if-eqz p2, :cond_4

    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    :goto_1
    if-nez p1, :cond_5

    return v2

    :cond_4
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v2, v5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const v5, 0x54726965

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v3, 0x25

    if-nez p2, :cond_6

    const/16 v3, 0x125

    :cond_6
    iget-boolean v5, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    if-eqz v5, :cond_7

    or-int/lit16 v3, v3, 0x200

    :cond_7
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz p2, :cond_9

    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    if-ge v1, v5, :cond_8

    iget-object v5, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    aget v5, v5, v1

    iget v6, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    add-int/2addr v5, v6

    ushr-int/lit8 v4, v5, 0x2

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_3
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    if-ge v1, v5, :cond_b

    iget-object v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    aget v5, v5, v1

    const v6, 0xffff

    and-int v4, v5, v6

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    if-ge v1, v5, :cond_a

    iget-object v5, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    aget v5, v5, v1

    ushr-int/lit8 v4, v5, 0x2

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_5
    iget v5, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    if-ge v1, v5, :cond_b

    iget-object v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    aget v5, v5, v1

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    return v2
.end method

.method public serialize(Landroid/icu/impl/TrieBuilder$DataManipulate;Landroid/icu/impl/Trie$DataManipulate;)Landroid/icu/impl/IntTrie;
    .locals 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Parameters can not be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v5}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V

    invoke-direct {p0, v3}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    iput-boolean v3, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    :cond_1
    iget v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    const/high16 v3, 0x40000

    if-lt v0, v3, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v3, "Data length too small"

    invoke-direct {v0, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    new-array v1, v0, [C

    iget v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    new-array v2, v0, [I

    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    if-ge v6, v0, :cond_3

    iget-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    aget v0, v0, v6

    ushr-int/lit8 v0, v0, 0x2

    int-to-char v0, v0

    aput-char v0, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget v3, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([II[III)V

    const/16 v4, 0x125

    iget-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    if-eqz v0, :cond_4

    or-int/lit16 v4, v4, 0x200

    :cond_4
    new-instance v0, Landroid/icu/impl/IntTrie;

    iget v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrie;-><init>([C[IIILandroid/icu/impl/Trie$DataManipulate;)V

    return-object v0
.end method

.method public setRange(IIIZ)Z
    .locals 14

    iget-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    if-nez v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const v1, 0x10ffff

    if-gt p1, v1, :cond_0

    if-ltz p2, :cond_0

    const/high16 v1, 0x110000

    move/from16 v0, p2

    if-gt v0, v1, :cond_0

    move/from16 v0, p2

    if-gt p1, v0, :cond_0

    move/from16 v0, p2

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    and-int/lit8 v1, p1, 0x1f

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v2

    if-gez v2, :cond_3

    const/4 v1, 0x0

    return v1

    :cond_3
    add-int/lit8 v1, p1, 0x20

    and-int/lit8 v11, v1, -0x20

    move/from16 v0, p2

    if-gt v11, v0, :cond_5

    and-int/lit8 v3, p1, 0x1f

    const/16 v4, 0x20

    move-object v1, p0

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    move p1, v11

    :cond_4
    and-int/lit8 v13, p2, 0x1f

    and-int/lit8 p2, p2, -0x20

    const/4 v4, 0x0

    iget v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    move/from16 v0, p3

    if-ne v0, v1, :cond_6

    move v12, v4

    :goto_0
    move/from16 v0, p2

    if-ge p1, v0, :cond_c

    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    shr-int/lit8 v3, p1, 0x5

    aget v2, v1, v3

    if-lez v2, :cond_7

    const/4 v3, 0x0

    const/16 v4, 0x20

    move-object v1, p0

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    move v4, v12

    :goto_1
    add-int/lit8 p1, p1, 0x20

    move v12, v4

    goto :goto_0

    :cond_5
    and-int/lit8 v3, p1, 0x1f

    and-int/lit8 v4, p2, 0x1f

    move-object v1, p0

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    const/4 v1, 0x1

    return v1

    :cond_6
    const/4 v4, -0x1

    move v12, v4

    goto :goto_0

    :cond_7
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    neg-int v3, v2

    aget v1, v1, v3

    move/from16 v0, p3

    if-eq v1, v0, :cond_9

    if-eqz v2, :cond_8

    if-eqz p4, :cond_f

    :cond_8
    if-ltz v12, :cond_a

    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    shr-int/lit8 v3, p1, 0x5

    neg-int v5, v12

    aput v5, v1, v3

    move v4, v12

    goto :goto_1

    :cond_9
    move v4, v12

    goto :goto_1

    :cond_a
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v4

    if-gez v4, :cond_b

    const/4 v1, 0x0

    return v1

    :cond_b
    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    shr-int/lit8 v3, p1, 0x5

    neg-int v5, v4

    aput v5, v1, v3

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/4 v8, 0x1

    move-object v3, p0

    move/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    goto :goto_1

    :cond_c
    if-lez v13, :cond_e

    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v2

    if-gez v2, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    const/4 v7, 0x0

    move-object v5, p0

    move v6, v2

    move v8, v13

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    :cond_e
    const/4 v1, 0x1

    return v1

    :cond_f
    move v4, v12

    goto :goto_1
.end method

.method public setValue(II)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    if-nez v1, :cond_0

    const v1, 0x10ffff

    if-le p1, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v0

    if-gez v0, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v2, v0

    aput p2, v1, v2

    const/4 v1, 0x1

    return v1
.end method
