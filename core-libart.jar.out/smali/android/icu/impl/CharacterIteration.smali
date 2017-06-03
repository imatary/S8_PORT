.class public final Landroid/icu/impl/CharacterIteration;
.super Ljava/lang/Object;
.source "CharacterIteration.java"


# static fields
.field public static final DONE32:I = 0x7fffffff


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static current32(Ljava/text/CharacterIterator;)I
    .locals 5

    const v4, 0xd800

    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    move v1, v0

    if-ge v1, v4, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    int-to-char v3, v2

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    sub-int v3, v0, v4

    shl-int/lit8 v3, v3, 0xa

    const v4, 0xdc00

    sub-int v4, v2, v4

    add-int/2addr v3, v4

    const/high16 v4, 0x10000

    add-int v1, v3, v4

    :cond_1
    :goto_0
    return v1

    :cond_2
    const v3, 0xffff

    if-ne v0, v3, :cond_1

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v4

    if-lt v3, v4, :cond_1

    const v1, 0x7fffffff

    goto :goto_0
.end method

.method public static next32(Ljava/text/CharacterIterator;)I
    .locals 3

    const v2, 0xd800

    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    if-lt v0, v2, :cond_1

    const v1, 0xdbff

    if-gt v0, v1, :cond_1

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    const v1, 0xdc00

    if-lt v0, v1, :cond_0

    const v1, 0xdfff

    if-le v0, v1, :cond_1

    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    :cond_1
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    if-lt v0, v2, :cond_2

    invoke-static {p0, v0}, Landroid/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v0

    :cond_2
    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_3

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    :cond_3
    return v0
.end method

.method public static nextTrail32(Ljava/text/CharacterIterator;I)I
    .locals 4

    const v2, 0xffff

    if-ne p1, v2, :cond_0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v3

    if-lt v2, v3, :cond_0

    const v2, 0x7fffffff

    return v2

    :cond_0
    move v1, p1

    const v2, 0xdbff

    if-gt p1, v2, :cond_1

    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0xd800

    sub-int v2, p1, v2

    shl-int/lit8 v2, v2, 0xa

    const v3, 0xdc00

    sub-int v3, v0, v3

    add-int/2addr v2, v3

    const/high16 v3, 0x10000

    add-int v1, v2, v3

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    goto :goto_0
.end method

.method public static previous32(Ljava/text/CharacterIterator;)I
    .locals 5

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v4

    if-gt v3, v4, :cond_0

    const v3, 0x7fffffff

    return v3

    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v2

    move v1, v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0xd800

    sub-int v3, v0, v3

    shl-int/lit8 v3, v3, 0xa

    const v4, 0xdc00

    sub-int v4, v2, v4

    add-int/2addr v3, v4

    const/high16 v4, 0x10000

    add-int v1, v3, v4

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    goto :goto_0
.end method
