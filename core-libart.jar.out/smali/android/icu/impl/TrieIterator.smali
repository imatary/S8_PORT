.class public Landroid/icu/impl/TrieIterator;
.super Ljava/lang/Object;
.source "TrieIterator.java"

# interfaces
.implements Landroid/icu/util/RangeValueIterator;


# static fields
.field private static final BMP_INDEX_LENGTH_:I = 0x800

.field private static final DATA_BLOCK_LENGTH_:I = 0x20

.field private static final LEAD_SURROGATE_MIN_VALUE_:I = 0xd800

.field private static final TRAIL_SURROGATE_COUNT_:I = 0x400

.field private static final TRAIL_SURROGATE_INDEX_BLOCK_LENGTH_:I = 0x20

.field private static final TRAIL_SURROGATE_MIN_VALUE_:I = 0xdc00


# instance fields
.field private m_currentCodepoint_:I

.field private m_initialValue_:I

.field private m_nextBlockIndex_:I

.field private m_nextBlock_:I

.field private m_nextCodepoint_:I

.field private m_nextIndex_:I

.field private m_nextTrailIndexOffset_:I

.field private m_nextValue_:I

.field private m_trie_:Landroid/icu/impl/Trie;


# direct methods
.method public constructor <init>(Landroid/icu/impl/Trie;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument trie cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v0, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    invoke-virtual {v0}, Landroid/icu/impl/Trie;->getInitialValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/TrieIterator;->extract(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    invoke-virtual {p0}, Landroid/icu/impl/TrieIterator;->reset()V

    return-void
.end method

.method private final calculateNextBMPElement(Landroid/icu/util/RangeValueIterator$Element;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkBlockDetail(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    return v4

    :cond_0
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_3

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const v2, 0xd800

    if-ne v1, v2, :cond_1

    const/16 v1, 0x800

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    :goto_0
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkBlock(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    return v4

    :cond_1
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const v2, 0xdc00

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    shr-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    return v3
.end method

.method private final calculateNextSupplementaryElement(Landroid/icu/util/RangeValueIterator$Element;)V
    .locals 8

    const v7, 0xdc00

    const/4 v6, 0x0

    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-static {v3}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v3

    if-eq v3, v7, :cond_2

    invoke-direct {p0}, Landroid/icu/impl/TrieIterator;->checkNullNextTrailIndex()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkBlockDetail(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkTrailBlock(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v3, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    return-void

    :cond_1
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v3, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    return-void

    :cond_2
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-static {v3}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v2

    :goto_0
    if-ge v2, v7, :cond_9

    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v3, v3, Landroid/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v4, v2, 0x5

    aget-char v3, v3, v4

    shl-int/lit8 v1, v3, 0x2

    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v3, v3, Landroid/icu/impl/Trie;->m_dataOffset_:I

    if-ne v1, v3, :cond_4

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    if-eq v0, v3, :cond_3

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iput v6, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v3, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x20

    int-to-char v3, v2

    invoke-static {v3, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v3, v3, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "The field DataManipulate in this Trie is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v3, v3, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    iget-object v4, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    and-int/lit8 v5, v2, 0x1f

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/icu/impl/Trie;->getValue(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v3

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    if-gtz v3, :cond_8

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    if-eq v0, v3, :cond_6

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v3, v3, Landroid/icu/impl/Trie;->m_dataOffset_:I

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iput v6, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v3, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    return-void

    :cond_6
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    iput v6, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkTrailBlock(I)Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v3, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    return-void

    :cond_9
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    const/high16 v4, 0x110000

    invoke-direct {p0, p1, v3, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    return-void
.end method

.method private final checkBlock(I)Z
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v1, v1, Landroid/icu/impl/Trie;->m_index_:[C

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    aget-char v1, v1, v2

    shl-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    sub-int/2addr v1, v2

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v2, v2, Landroid/icu/impl/Trie;->m_dataOffset_:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    if-eq p1, v1, :cond_2

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    return v3

    :cond_2
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->checkBlockDetail(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v3
.end method

.method private final checkBlockDetail(I)Z
    .locals 3

    :goto_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/icu/impl/Trie;->getValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/TrieIterator;->extract(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final checkNullNextTrailIndex()Z
    .locals 5

    const/4 v3, 0x0

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    if-gtz v2, :cond_1

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit16 v2, v2, 0x3ff

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-static {v2}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v1

    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v2, v2, Landroid/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v3, v1, 0x5

    aget-char v2, v2, v3

    shl-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v2, v2, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "The field DataManipulate in this Trie is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v2, v2, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    and-int/lit8 v4, v1, 0x1f

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/icu/impl/Trie;->getValue(I)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    const/16 v2, 0x20

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    const/4 v2, 0x1

    return v2

    :cond_1
    return v3
.end method

.method private final checkTrailBlock(I)Z
    .locals 3

    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->checkBlock(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final setResult(Landroid/icu/util/RangeValueIterator$Element;III)V
    .locals 0

    iput p2, p1, Landroid/icu/util/RangeValueIterator$Element;->start:I

    iput p3, p1, Landroid/icu/util/RangeValueIterator$Element;->limit:I

    iput p4, p1, Landroid/icu/util/RangeValueIterator$Element;->value:I

    return-void
.end method


# virtual methods
.method protected extract(I)I
    .locals 0

    return p1
.end method

.method public final next(Landroid/icu/util/RangeValueIterator$Element;)Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const v1, 0x10ffff

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->calculateNextBMPElement(Landroid/icu/util/RangeValueIterator$Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->calculateNextSupplementaryElement(Landroid/icu/util/RangeValueIterator$Element;)V

    return v2
.end method

.method public final reset()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    iget-object v0, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v0, v0, Landroid/icu/impl/Trie;->m_index_:[C

    aget-char v0, v0, v2

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v1, v1, Landroid/icu/impl/Trie;->m_dataOffset_:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    :goto_0
    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    const/16 v0, 0x20

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/Trie;->getValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/TrieIterator;->extract(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    goto :goto_0
.end method
