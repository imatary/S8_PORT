.class public Landroid/icu/impl/coll/IterCollationIterator;
.super Landroid/icu/impl/coll/CollationIterator;
.source "IterCollationIterator.java"


# instance fields
.field protected iter:Landroid/icu/text/UCharacterIterator;


# direct methods
.method public constructor <init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;Z)V

    iput-object p3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    return-void
.end method

.method protected forwardNumCodePoints(I)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    return-void
.end method

.method public getOffset()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method protected handleGetTrailSurrogate()C
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/coll/IterCollationIterator;->isTrailSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->previous()I

    :cond_0
    int-to-char v1, v0

    return v1
.end method

.method protected handleNextCE32()J
    .locals 4

    iget-object v1, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    if-gez v0, :cond_0

    const-wide v2, -0xffffff40L

    return-wide v2

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v2

    return-wide v2
.end method

.method public nextCodePoint()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    return v0
.end method

.method public previousCodePoint()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    return v0
.end method

.method public resetToOffset(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->reset()V

    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    return-void
.end method
