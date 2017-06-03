.class public abstract Landroid/icu/text/UCharacterIterator;
.super Ljava/lang/Object;
.source "UCharacterIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/text/UForwardCharacterIterator;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance(Landroid/icu/text/Replaceable;)Landroid/icu/text/UCharacterIterator;
    .locals 1

    new-instance v0, Landroid/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;-><init>(Landroid/icu/text/Replaceable;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;
    .locals 1

    new-instance v0, Landroid/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;
    .locals 1

    new-instance v0, Landroid/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;
    .locals 1

    new-instance v0, Landroid/icu/impl/CharacterIteratorWrapper;

    invoke-direct {v0, p0}, Landroid/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    return-object v0
.end method

.method public static final getInstance([C)Landroid/icu/text/UCharacterIterator;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/icu/text/UCharacterIterator;->getInstance([CII)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance([CII)Landroid/icu/text/UCharacterIterator;
    .locals 1

    new-instance v0, Landroid/icu/impl/UCharArrayIterator;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/UCharArrayIterator;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract current()I
.end method

.method public currentCodePoint()I
    .locals 4

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v2, v0

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v1

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    int-to-char v2, v1

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-char v2, v0

    int-to-char v3, v1

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_0
    return v0
.end method

.method public getCharacterIterator()Ljava/text/CharacterIterator;
    .locals 1

    new-instance v0, Landroid/icu/impl/UCharacterIteratorWrapper;

    invoke-direct {v0, p0}, Landroid/icu/impl/UCharacterIteratorWrapper;-><init>(Landroid/icu/text/UCharacterIterator;)V

    return-object v0
.end method

.method public abstract getIndex()I
.end method

.method public abstract getLength()I
.end method

.method public final getText([C)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/UCharacterIterator;->getText([CI)I

    move-result v0

    return v0
.end method

.method public abstract getText([CI)I
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v1

    new-array v0, v1, [C

    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->getText([C)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public moveCodePointIndex(I)I
    .locals 2

    const/4 v1, -0x1

    if-lez p1, :cond_0

    :goto_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    if-eq v0, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez p1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    if-eq v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method public moveIndex(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    return v0
.end method

.method public abstract next()I
.end method

.method public nextCodePoint()I
    .locals 4

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    int-to-char v2, v0

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v1

    int-to-char v2, v1

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-char v2, v0

    int-to-char v3, v1

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    :cond_1
    return v0
.end method

.method public abstract previous()I
.end method

.method public previousCodePoint()I
    .locals 4

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v0

    int-to-char v2, v0

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v1

    int-to-char v2, v1

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-char v2, v1

    int-to-char v3, v0

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    :cond_1
    return v0
.end method

.method public abstract setIndex(I)V
.end method

.method public setToLimit()V
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    return-void
.end method

.method public setToStart()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    return-void
.end method
