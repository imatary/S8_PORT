.class public Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;
.super Landroid/icu/text/BreakIterator;
.source "SimpleFilteredSentenceBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;
    }
.end annotation


# instance fields
.field private backwardsTrie:Landroid/icu/util/CharsTrie;

.field private delegate:Landroid/icu/text/BreakIterator;

.field private forwardsPartialTrie:Landroid/icu/util/CharsTrie;

.field private text:Landroid/icu/text/UCharacterIterator;


# direct methods
.method public constructor <init>(Landroid/icu/text/BreakIterator;Landroid/icu/util/CharsTrie;Landroid/icu/util/CharsTrie;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/BreakIterator;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    iput-object p2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    iput-object p3, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;

    return-object v0
.end method

.method public current()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->current()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;

    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    iget-object v3, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    iget-object v3, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    iget-object v3, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    iget-object v2, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public first()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->first()I

    move-result v0

    return v0
.end method

.method public following(I)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "following(int) is not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x27

    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public last()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->last()I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 8

    const/4 v7, -0x1

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v6}, Landroid/icu/text/BreakIterator;->next()I

    move-result v2

    if-eq v2, v7, :cond_0

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    if-nez v6, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v6}, Landroid/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/CharacterIterator;

    invoke-static {v6}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object v6

    iput-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    :cond_2
    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6, v2}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v6}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_4

    :goto_0
    sget-object v3, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    const/4 v0, -0x1

    const/4 v1, -0x1

    :cond_3
    :goto_1
    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v5

    if-eq v5, v7, :cond_5

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v6, v5}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v6}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result v1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v5

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->matches()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v6}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result v1

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    :cond_6
    if-ltz v0, :cond_c

    const/4 v6, 0x2

    if-ne v1, v6, :cond_7

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v6}, Landroid/icu/text/BreakIterator;->next()I

    move-result v2

    if-ne v2, v7, :cond_d

    return v2

    :cond_7
    const/4 v6, 0x1

    if-ne v1, v6, :cond_b

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v6}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    sget-object v4, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    :cond_8
    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v5

    if-eq v5, v7, :cond_9

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v6, v5}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_9
    invoke-virtual {v4}, Landroid/icu/util/BytesTrie$Result;->matches()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v6}, Landroid/icu/text/BreakIterator;->next()I

    move-result v2

    if-ne v2, v7, :cond_d

    return v2

    :cond_a
    return v2

    :cond_b
    return v2

    :cond_c
    return v2

    :cond_d
    if-ne v2, v7, :cond_2

    return v2
.end method

.method public next(I)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "next(int) is not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public preceding(I)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "preceding(int) is not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previous()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "previous() is not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method
