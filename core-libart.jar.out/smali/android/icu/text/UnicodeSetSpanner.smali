.class public Landroid/icu/text/UnicodeSetSpanner;
.super Ljava/lang/Object;
.source "UnicodeSetSpanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/UnicodeSetSpanner$CountMethod;,
        Landroid/icu/text/UnicodeSetSpanner$TrimOption;
    }
.end annotation


# instance fields
.field private final unicodeSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    return-void
.end method


# virtual methods
.method public countIn(Ljava/lang/CharSequence;)I
    .locals 2

    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    return v0
.end method

.method public countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;)I
    .locals 1

    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSetSpanner;->countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    return v0
.end method

.method public countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v6, :cond_1

    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-eq v5, v2, :cond_0

    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v5, v3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    if-ne v1, v2, :cond_2

    :cond_0
    return v0

    :cond_1
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_0

    :cond_2
    sget-object v6, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    if-ne p2, v6, :cond_3

    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v1, p3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    new-instance v4, Landroid/icu/util/OutputInt;

    invoke-direct {v4}, Landroid/icu/util/OutputInt;-><init>()V

    :cond_4
    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v1, p3, v4}, Landroid/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v5

    iget v6, v4, Landroid/icu/util/OutputInt;->value:I

    add-int/2addr v0, v6

    goto :goto_1
.end method

.method public deleteFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v2, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteFrom(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/icu/text/UnicodeSetSpanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    nop

    nop

    iget-object v1, p1, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnicodeSet()Landroid/icu/text/UnicodeSet;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;
    .locals 9

    sget-object v8, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p4, v8, :cond_2

    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v5, 0x1

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_2
    if-eq v1, v4, :cond_1

    sget-object v8, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    if-ne p3, v8, :cond_4

    iget-object v8, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v8, p1, v1, p4}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    :goto_3
    if-nez v5, :cond_0

    if-nez v2, :cond_6

    :cond_0
    :goto_4
    if-ne v2, v4, :cond_8

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_2
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    new-instance v7, Landroid/icu/util/OutputInt;

    invoke-direct {v7}, Landroid/icu/util/OutputInt;-><init>()V

    :cond_5
    iget-object v8, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v8, p1, v1, p4, v7}, Landroid/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v2

    goto :goto_3

    :cond_6
    sget-object v8, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    if-ne p3, v8, :cond_7

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    iget v3, v7, Landroid/icu/util/OutputInt;->value:I

    :goto_5
    if-lez v3, :cond_0

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_8
    iget-object v8, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v8, p1, v2, v0}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;)Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sget-object v3, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    if-eq p2, v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, p1, p3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    const/4 v0, 0x0

    :cond_1
    sget-object v3, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    if-eq p2, v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, p1, p3}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    :goto_0
    if-nez v0, :cond_3

    if-ne v2, v1, :cond_3

    :goto_1
    return-object p1

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1
.end method
