.class abstract Landroid/icu/text/DictionaryBreakEngine;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"

# interfaces
.implements Landroid/icu/text/LanguageBreakEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DictionaryBreakEngine$DequeI;,
        Landroid/icu/text/DictionaryBreakEngine$PossibleWord;
    }
.end annotation


# instance fields
.field fSet:Landroid/icu/text/UnicodeSet;

.field private fTypes:Ljava/util/BitSet;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Integer;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Landroid/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    iget-object v3, p0, Landroid/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method abstract divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
.end method

.method public findBreaks(Ljava/text/CharacterIterator;IIZILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 8

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v6

    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v0

    if-eqz p4, :cond_3

    iget-object v7, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v7, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    :goto_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-le v1, p2, :cond_0

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v0

    iget-object v7, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v7, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    goto :goto_0

    :cond_0
    if-ge v1, p2, :cond_1

    move v4, p2

    :goto_1
    add-int/lit8 v3, v6, 0x1

    :goto_2
    invoke-virtual {p0, p1, v4, v3, p6}, Landroid/icu/text/DictionaryBreakEngine;->divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I

    move-result v5

    invoke-interface {p1, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    return v5

    :cond_1
    if-eqz v2, :cond_2

    const/4 v7, 0x0

    :goto_3
    add-int v4, v1, v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-ge v1, p3, :cond_4

    iget-object v7, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v7, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v0

    goto :goto_4

    :cond_4
    move v4, v6

    move v3, v1

    goto :goto_2
.end method

.method public handles(II)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCharacters(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    return-void
.end method
