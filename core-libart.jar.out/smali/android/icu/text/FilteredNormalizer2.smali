.class public Landroid/icu/text/FilteredNormalizer2;
.super Landroid/icu/text/Normalizer2;
.source "FilteredNormalizer2.java"


# instance fields
.field private norm2:Landroid/icu/text/Normalizer2;

.field private set:Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor <init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/UnicodeSet;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/Normalizer2;-><init>()V

    iput-object p1, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    iput-object p2, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method private normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5, p1, v1, p3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v3

    sub-int v2, v3, v1

    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v5, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {p2, p1, v1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    :cond_0
    sget-object p3, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2
    sget-object p3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v5, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v5, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_3
    return-object p2
.end method

.method private normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .locals 9

    const v8, 0x7fffffff

    const/4 v7, 0x0

    if-ne p1, p2, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2, p1}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v5

    return-object v5

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    return-object v5

    :cond_2
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    sget-object v6, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v5, p2, v7, v6}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2, v7, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    sget-object v6, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v5, p1, v8, v6}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v4

    if-nez v4, :cond_6

    if-eqz p3, :cond_5

    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, p1, v1}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {p2, v2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz p3, :cond_8

    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-direct {p0, v3, p1, v5}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    :cond_4
    :goto_1
    return-object p1

    :cond_5
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, p1, v1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_7

    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v0, v1}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p1, v4, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v0, v1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public composePair(II)I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/Normalizer2;->composePair(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCombiningClass(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRawDecomposition(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->getRawDecomposition(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBoundaryAfter(I)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasBoundaryBefore(I)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInert(I)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 5

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, p1, v0, v1}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne v1, v3, :cond_0

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    return v3

    :cond_1
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1

    if-ne p2, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    if-ne p2, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    return-object p2
.end method

.method public normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 7

    sget-object v2, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5, p1, v0, v3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v4

    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne v3, v5, :cond_0

    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v1

    sget-object v5, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-ne v1, v5, :cond_1

    return-object v1

    :cond_1
    sget-object v5, Landroid/icu/text/Normalizer;->MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-ne v1, v5, :cond_2

    move-object v2, v1

    :cond_2
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 6

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, p1, v0, v1}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    sget-object v4, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne v1, v4, :cond_0

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v4

    add-int v3, v0, v4

    if-ge v3, v2, :cond_1

    return v3

    :cond_1
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    return v4
.end method
