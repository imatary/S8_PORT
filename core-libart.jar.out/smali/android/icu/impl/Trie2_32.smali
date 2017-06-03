.class public Landroid/icu/impl/Trie2_32;
.super Landroid/icu/impl/Trie2;
.source "Trie2_32.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/Trie2;-><init>()V

    return-void
.end method

.method public static createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_32;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2_32;

    return-object v0
.end method


# virtual methods
.method public final get(I)I
    .locals 5

    const v4, 0xffff

    const v3, 0xd800

    if-ltz p1, :cond_4

    if-lt p1, v3, :cond_0

    const v2, 0xdbff

    if-le p1, v2, :cond_1

    if-gt p1, v4, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v3, p1, 0x5

    aget-char v0, v2, v3

    shl-int/lit8 v2, v0, 0x2

    and-int/lit8 v3, p1, 0x1f

    add-int v0, v2, v3

    iget-object v2, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v1, v2, v0

    return v1

    :cond_1
    if-gt p1, v4, :cond_2

    iget-object v2, p0, Landroid/icu/impl/Trie2_32;->index:[C

    sub-int v3, p1, v3

    shr-int/lit8 v3, v3, 0x5

    add-int/lit16 v3, v3, 0x800

    aget-char v0, v2, v3

    shl-int/lit8 v2, v0, 0x2

    and-int/lit8 v3, p1, 0x1f

    add-int v0, v2, v3

    iget-object v2, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v1, v2, v0

    return v1

    :cond_2
    iget v2, p0, Landroid/icu/impl/Trie2_32;->highStart:I

    if-ge p1, v2, :cond_3

    shr-int/lit8 v2, p1, 0xb

    add-int/lit16 v0, v2, 0x820

    iget-object v2, p0, Landroid/icu/impl/Trie2_32;->index:[C

    aget-char v0, v2, v0

    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v2, v2, 0x3f

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/icu/impl/Trie2_32;->index:[C

    aget-char v0, v2, v0

    shl-int/lit8 v2, v0, 0x2

    and-int/lit8 v3, p1, 0x1f

    add-int v0, v2, v3

    iget-object v2, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v1, v2, v0

    return v1

    :cond_3
    const v2, 0x10ffff

    if-gt p1, v2, :cond_4

    iget-object v2, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    iget v3, p0, Landroid/icu/impl/Trie2_32;->highValueIndex:I

    aget v1, v2, v3

    return v1

    :cond_4
    iget v2, p0, Landroid/icu/impl/Trie2_32;->errorValue:I

    return v2
.end method

.method public getFromU16SingleLead(C)I
    .locals 4

    iget-object v2, p0, Landroid/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v3, p1, 0x5

    aget-char v0, v2, v3

    shl-int/lit8 v2, v0, 0x2

    and-int/lit8 v3, p1, 0x1f

    add-int v0, v2, v3

    iget-object v2, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v1, v2, v0

    return v1
.end method

.method public getSerializedLength()I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v0, v0, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x10

    iget v1, p0, Landroid/icu/impl/Trie2_32;->dataLength:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method rangeEnd(III)I
    .locals 10

    const v9, 0xffff

    const v8, 0xd800

    move v1, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v1, p2, :cond_2

    :cond_0
    :goto_1
    if-le v1, p2, :cond_1

    move v1, p2

    :cond_1
    add-int/lit8 v6, v1, -0x1

    return v6

    :cond_2
    if-lt v1, v8, :cond_3

    const v6, 0xdbff

    if-le v1, v6, :cond_4

    if-gt v1, v9, :cond_4

    :cond_3
    const/4 v2, 0x0

    iget-object v6, p0, Landroid/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v7, v1, 0x5

    aget-char v6, v6, v7

    shl-int/lit8 v0, v6, 0x2

    :goto_2
    iget v6, p0, Landroid/icu/impl/Trie2_32;->index2NullOffset:I

    if-ne v2, v6, :cond_7

    iget v6, p0, Landroid/icu/impl/Trie2_32;->initialValue:I

    if-ne p3, v6, :cond_0

    add-int/lit16 v1, v1, 0x800

    goto :goto_0

    :cond_4
    if-ge v1, v9, :cond_5

    const/16 v2, 0x800

    iget-object v6, p0, Landroid/icu/impl/Trie2_32;->index:[C

    sub-int v7, v1, v8

    shr-int/lit8 v7, v7, 0x5

    add-int/lit16 v7, v7, 0x800

    aget-char v6, v6, v7

    shl-int/lit8 v0, v6, 0x2

    goto :goto_2

    :cond_5
    iget v6, p0, Landroid/icu/impl/Trie2_32;->highStart:I

    if-ge v1, v6, :cond_6

    shr-int/lit8 v6, v1, 0xb

    add-int/lit16 v3, v6, 0x820

    iget-object v6, p0, Landroid/icu/impl/Trie2_32;->index:[C

    aget-char v2, v6, v3

    iget-object v6, p0, Landroid/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v7, v1, 0x5

    and-int/lit8 v7, v7, 0x3f

    add-int/2addr v7, v2

    aget-char v6, v6, v7

    shl-int/lit8 v0, v6, 0x2

    goto :goto_2

    :cond_6
    iget-object v6, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    iget v7, p0, Landroid/icu/impl/Trie2_32;->highValueIndex:I

    aget v6, v6, v7

    if-ne p3, v6, :cond_0

    move v1, p2

    goto :goto_1

    :cond_7
    iget v6, p0, Landroid/icu/impl/Trie2_32;->dataNullOffset:I

    if-ne v0, v6, :cond_8

    iget v6, p0, Landroid/icu/impl/Trie2_32;->initialValue:I

    if-ne p3, v6, :cond_0

    add-int/lit8 v1, v1, 0x20

    goto :goto_0

    :cond_8
    and-int/lit8 v6, v1, 0x1f

    add-int v5, v0, v6

    add-int/lit8 v4, v0, 0x20

    move v3, v5

    :goto_3
    if-ge v3, v4, :cond_a

    iget-object v6, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v6, v6, v3

    if-eq v6, p3, :cond_9

    sub-int v6, v3, v5

    add-int/2addr v1, v6

    goto :goto_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    sub-int v6, v4, v5

    add-int/2addr v1, v6

    goto :goto_0
.end method

.method public serialize(Ljava/io/OutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Landroid/icu/impl/Trie2_32;->serializeHeader(Ljava/io/DataOutputStream;)I

    move-result v3

    add-int/lit8 v0, v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroid/icu/impl/Trie2_32;->dataLength:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/icu/impl/Trie2_32;->dataLength:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    return v0
.end method
