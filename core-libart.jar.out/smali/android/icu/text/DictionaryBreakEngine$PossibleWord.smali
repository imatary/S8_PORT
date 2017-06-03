.class Landroid/icu/text/DictionaryBreakEngine$PossibleWord;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DictionaryBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PossibleWord"
.end annotation


# static fields
.field private static final POSSIBLE_WORD_LIST_MAX:I = 0x14


# instance fields
.field private count:[I

.field private current:I

.field private lengths:[I

.field private mark:I

.field private offset:I

.field private prefix:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    return-void
.end method


# virtual methods
.method public acceptMarked(Ljava/text/CharacterIterator;)I
    .locals 3

    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget v2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    aget v0, v0, v1

    return v0
.end method

.method public backUp(Ljava/text/CharacterIterator;)Z
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget v2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I
    .locals 8

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v6

    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    if-eq v6, v0, :cond_0

    iput v6, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    sub-int v2, p3, v6

    iget-object v3, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget-object v4, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    array-length v5, v0

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II)I

    move-result v0

    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->prefix:I

    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    aget v0, v0, v7

    if-gtz v0, :cond_0

    invoke-interface {p1, v6}, Ljava/text/CharacterIterator;->setIndex(I)C

    :cond_0
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    aget v0, v0, v7

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    aget v1, v1, v7

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-int/2addr v0, v6

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    :cond_1
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    aget v0, v0, v7

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    aget v0, v0, v7

    return v0
.end method

.method public longestPrefix()I
    .locals 1

    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->prefix:I

    return v0
.end method

.method public markCurrent()V
    .locals 1

    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    return-void
.end method
