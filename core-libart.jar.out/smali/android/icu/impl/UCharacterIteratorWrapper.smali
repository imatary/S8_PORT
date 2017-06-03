.class public Landroid/icu/impl/UCharacterIteratorWrapper;
.super Ljava/lang/Object;
.source "UCharacterIteratorWrapper.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private iterator:Landroid/icu/text/UCharacterIterator;


# direct methods
.method public constructor <init>(Landroid/icu/text/UCharacterIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/UCharacterIteratorWrapper;

    iget-object v2, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/UCharacterIterator;

    iput-object v2, v1, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public current()C
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public first()C
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public getBeginIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method public last()C
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToLimit()V

    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public next()C
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public previous()C
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public setIndex(I)C
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method
