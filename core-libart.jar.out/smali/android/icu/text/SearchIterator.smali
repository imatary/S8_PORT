.class public abstract Landroid/icu/text/SearchIterator;
.super Ljava/lang/Object;
.source "SearchIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SearchIterator$ElementComparisonType;,
        Landroid/icu/text/SearchIterator$Search;
    }
.end annotation


# static fields
.field public static final DONE:I = -0x1


# instance fields
.field protected breakIterator:Landroid/icu/text/BreakIterator;

.field protected matchLength:I

.field search_:Landroid/icu/text/SearchIterator$Search;

.field protected targetText:Ljava/text/CharacterIterator;


# direct methods
.method protected constructor <init>(Ljava/text/CharacterIterator;Landroid/icu/text/BreakIterator;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/text/SearchIterator$Search;

    invoke-direct {v0, p0}, Landroid/icu/text/SearchIterator$Search;-><init>(Landroid/icu/text/SearchIterator;)V

    iput-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal argument target.  Argument can not be null or of length 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setTarget(Ljava/text/CharacterIterator;)V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p2}, Landroid/icu/text/SearchIterator$Search;->setBreakIter(Landroid/icu/text/BreakIterator;)V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    invoke-virtual {v1, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    :cond_2
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    iput-object v1, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v3, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v3, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, v2}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    return-void
.end method


# virtual methods
.method public final first()I
    .locals 2

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handleNext(I)I

    move-result v1

    return v1
.end method

.method public final following(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->handleNext(I)I

    move-result v0

    return v0
.end method

.method public getBreakIterator()Landroid/icu/text/BreakIterator;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public getElementComparisonType()Landroid/icu/text/SearchIterator$ElementComparisonType;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    return-object v0
.end method

.method public abstract getIndex()I
.end method

.method public getMatchLength()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v0

    return v0
.end method

.method public getMatchStart()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    return v0
.end method

.method public getMatchedText()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v3, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v4}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v4

    add-int v1, v3, v4

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v0

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v3, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-interface {v0, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    :goto_0
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    if-ge v3, v1, :cond_0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v3, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-interface {v0, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getTarget()Ljava/text/CharacterIterator;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract handleNext(I)I
.end method

.method protected abstract handlePrevious(I)I
.end method

.method public isOverlapping()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    return v0
.end method

.method public final last()I
    .locals 2

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    move-result v1

    return v1
.end method

.method public next()I
    .locals 7

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->getIndex()I

    move-result v1

    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v2, v4, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v4}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v3

    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v5, v4, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v4, v4, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v4}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    if-eq v1, v0, :cond_0

    if-ne v2, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    return v6

    :cond_1
    if-eq v2, v6, :cond_2

    add-int v4, v2, v3

    if-ge v4, v0, :cond_0

    :cond_2
    if-lez v3, :cond_3

    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v4, v4, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    if-eqz v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroid/icu/text/SearchIterator;->handleNext(I)I

    move-result v4

    return v4

    :cond_4
    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v4, v4, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    if-eq v4, v6, :cond_2

    return v2

    :cond_5
    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public final preceding(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    move-result v0

    return v0
.end method

.method public previous()I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v3, v3, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v5, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v5, v3, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    :goto_0
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v3, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v5, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    if-eq v1, v4, :cond_3

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->getIndex()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v2

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    return v4

    :cond_3
    if-eq v1, v4, :cond_5

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v3, v3, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    add-int/2addr v1, v3

    :cond_4
    invoke-virtual {p0, v1}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    move-result v3

    return v3

    :cond_5
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    move-result v3

    return v3
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    iput-object v1, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    return-void
.end method

.method public setBreakIterator(Landroid/icu/text/BreakIterator;)V
    .locals 2

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setBreakIter(Landroid/icu/text/BreakIterator;)V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v1

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    invoke-virtual {v1, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    :cond_0
    return-void
.end method

.method public setElementComparisonType(Landroid/icu/text/SearchIterator$ElementComparisonType;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-object p1, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    return-void
.end method

.method public setIndex(I)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIndex(int) expected position to be between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    return-void
.end method

.method protected setMatchLength(I)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    return-void
.end method

.method protected setMatchNotFound()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    return-void
.end method

.method public setOverlapping(Z)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean p1, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    return-void
.end method

.method public setTarget(Ljava/text/CharacterIterator;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null or empty text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setTarget(Ljava/text/CharacterIterator;)V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    invoke-virtual {v1, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    :cond_2
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v1, v0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    invoke-virtual {v1, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    :cond_3
    return-void
.end method
