.class Landroid/icu/text/ReplaceableContextIterator;
.super Ljava/lang/Object;
.source "ReplaceableContextIterator.java"

# interfaces
.implements Landroid/icu/impl/UCaseProps$ContextIterator;


# instance fields
.field protected contextLimit:I

.field protected contextStart:I

.field protected cpLimit:I

.field protected cpStart:I

.field protected dir:I

.field protected index:I

.field protected limit:I

.field protected reachedLimit:Z

.field protected rep:Landroid/icu/text/Replaceable;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method


# virtual methods
.method public didReachLimit()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return v0
.end method

.method public getCaseMapCPStart()I
    .locals 1

    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    return v0
.end method

.method public next()I
    .locals 3

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    if-lez v1, :cond_2

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    invoke-interface {v1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    return v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    :cond_1
    const/4 v1, -0x1

    return v1

    :cond_2
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    if-gez v1, :cond_1

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    return v0
.end method

.method public nextCaseMapCP()I
    .locals 3

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    invoke-interface {v1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    return v0

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public replace(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iget v3, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    iget v3, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    invoke-interface {v1, v2, v3, p1}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    return v0
.end method

.method public reset(I)V
    .locals 2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    :goto_0
    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    goto :goto_0

    :cond_1
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    goto :goto_0
.end method

.method public setContextLimits(II)V
    .locals 2

    const/4 v1, 0x0

    if-gez p1, :cond_0

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    :goto_0
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    if-ge p2, v0, :cond_2

    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    :goto_1
    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-gt p1, v0, :cond_1

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    iput p2, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    goto :goto_1
.end method

.method public setIndex(I)V
    .locals 1

    const/4 v0, 0x0

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    iput-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method

.method public setLimit(I)V
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    :goto_0
    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    goto :goto_0
.end method

.method public setText(Landroid/icu/text/Replaceable;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method
