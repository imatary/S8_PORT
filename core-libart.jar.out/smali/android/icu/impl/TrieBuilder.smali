.class public Landroid/icu/impl/TrieBuilder;
.super Ljava/lang/Object;
.source "TrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TrieBuilder$DataManipulate;
    }
.end annotation


# static fields
.field protected static final BMP_INDEX_LENGTH_:I = 0x800

.field public static final DATA_BLOCK_LENGTH:I = 0x20

.field protected static final DATA_GRANULARITY_:I = 0x4

.field protected static final INDEX_SHIFT_:I = 0x2

.field protected static final MASK_:I = 0x1f

.field private static final MAX_BUILD_TIME_DATA_LENGTH_:I = 0x110420

.field protected static final MAX_DATA_LENGTH_:I = 0x40000

.field protected static final MAX_INDEX_LENGTH_:I = 0x8800

.field protected static final OPTIONS_DATA_IS_32_BIT_:I = 0x100

.field protected static final OPTIONS_INDEX_SHIFT_:I = 0x4

.field protected static final OPTIONS_LATIN1_IS_LINEAR_:I = 0x200

.field protected static final SHIFT_:I = 0x5

.field protected static final SURROGATE_BLOCK_COUNT_:I = 0x20


# instance fields
.field protected m_dataCapacity_:I

.field protected m_dataLength_:I

.field protected m_indexLength_:I

.field protected m_index_:[I

.field protected m_isCompacted_:Z

.field protected m_isLatin1Linear_:Z

.field protected m_map_:[I


# direct methods
.method protected constructor <init>()V
    .locals 3

    const v2, 0x8800

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    iput-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    const v0, 0x8821

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    iput-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    iput-boolean v1, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    iput v2, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/TrieBuilder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8800

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    iget v0, p1, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    iget-object v0, p1, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    iget v2, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iget v0, p1, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataCapacity_:I

    iget v0, p1, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    iput v0, p0, Landroid/icu/impl/TrieBuilder;->m_dataLength_:I

    iget-object v0, p1, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    iget-object v0, p1, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    iget-object v2, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iget-boolean v0, p1, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    iput-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isLatin1Linear_:Z

    iget-boolean v0, p1, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    iput-boolean v0, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    return-void
.end method

.method protected static final equal_int([IIII)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-lez p3, :cond_0

    aget v1, p0, p1

    aget v2, p0, p2

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected static final findSameIndexBlock([III)I
    .locals 2

    const/16 v0, 0x800

    :goto_0
    if-ge v0, p1, :cond_1

    const/16 v1, 0x20

    invoke-static {p0, v0, p2, v1}, Landroid/icu/impl/TrieBuilder;->equal_int([IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_1
    return p1
.end method


# virtual methods
.method protected findUnusedBlocks()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    const/16 v2, 0xff

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/icu/impl/TrieBuilder;->m_indexLength_:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    iget-object v2, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    shr-int/lit8 v2, v2, 0x5

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/TrieBuilder;->m_map_:[I

    aput v3, v1, v3

    return-void
.end method

.method public isInZeroBlock(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/icu/impl/TrieBuilder;->m_isCompacted_:Z

    if-nez v2, :cond_0

    const v2, 0x10ffff

    if-le p1, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    if-ltz p1, :cond_0

    iget-object v2, p0, Landroid/icu/impl/TrieBuilder;->m_index_:[I

    shr-int/lit8 v3, p1, 0x5

    aget v2, v2, v3

    if-nez v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
