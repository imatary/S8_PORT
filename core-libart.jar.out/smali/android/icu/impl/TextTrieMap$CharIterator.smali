.class public Landroid/icu/impl/TextTrieMap$CharIterator;
.super Ljava/lang/Object;
.source "TextTrieMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TextTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private _ignoreCase:Z

.field private _nextIdx:I

.field private _remainingChar:Ljava/lang/Character;

.field private _startIdx:I

.field private _text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_startIdx:I

    iput p2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    iput-boolean p3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_ignoreCase:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    iget-object v1, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Character;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    if-nez v3, :cond_0

    return-object v5

    :cond_0
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    if-eqz v3, :cond_2

    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    iput-object v5, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-boolean v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_ignoreCase:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    invoke-static {v3, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3, v6}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result v1

    iget v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    const/4 v3, 0x0

    aget-char v3, v0, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    aget-char v3, v0, v6

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    iget v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    return v0
.end method

.method public processedLength()I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "In the middle of surrogate pair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    iget v1, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_startIdx:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove() not supproted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
