.class public Landroid/icu/impl/CharacterIteratorWrapper;
.super Landroid/icu/text/UCharacterIterator;
.source "CharacterIteratorWrapper.java"


# instance fields
.field private iterator:Ljava/text/CharacterIterator;


# direct methods
.method public constructor <init>(Ljava/text/CharacterIterator;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/CharacterIteratorWrapper;

    iget-object v2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/CharacterIterator;

    iput-object v2, v1, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public current()I
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    return v0
.end method

.method public getCharacterIterator()Ljava/text/CharacterIterator;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getText([CI)I
    .locals 6

    iget-object v4, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v4}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v4

    iget-object v5, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v5}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v5

    sub-int v2, v4, v5

    iget-object v4, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v4}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-ltz p2, :cond_0

    add-int v4, p2, v2

    array-length v5, p1

    if-le v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v4}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    move v3, p2

    :goto_0
    const v4, 0xffff

    if-eq v0, v4, :cond_2

    add-int/lit8 p2, v3, 0x1

    aput-char v0, p1, v3

    iget-object v4, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v4}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    move v3, p2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v4, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    return v2
.end method

.method public moveIndex(I)I
    .locals 4

    iget-object v2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v2

    iget-object v3, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v3}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v3

    sub-int v1, v2, v3

    iget-object v2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    add-int v0, v2, p1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v2, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    return v2

    :cond_1
    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public next()I
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    return v0
.end method

.method public previous()I
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    return v0
.end method

.method public setIndex(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1, p1}, Ljava/text/CharacterIterator;->setIndex(I)C
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public setToLimit()V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    return-void
.end method
