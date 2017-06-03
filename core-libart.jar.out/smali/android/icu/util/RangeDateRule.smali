.class public Landroid/icu/util/RangeDateRule;
.super Ljava/lang/Object;
.source "RangeDateRule.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# instance fields
.field ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    return-void
.end method

.method private rangeAt(I)Landroid/icu/util/Range;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Range;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startIndex(Ljava/util/Date;)I
    .locals 4

    iget-object v3, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Range;

    iget-object v3, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    invoke-virtual {p1, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v1

    :cond_1
    move v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/icu/util/DateRule;)V
    .locals 4

    new-instance v0, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/RangeDateRule;->add(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method public add(Ljava/util/Date;Landroid/icu/util/DateRule;)V
    .locals 2

    iget-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    new-instance v1, Landroid/icu/util/Range;

    invoke-direct {v1, p1, p2}, Landroid/icu/util/Range;-><init>(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    invoke-direct {p0, p1}, Landroid/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    move-result v1

    iget-object v4, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v1}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v0

    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_2

    iget-object v4, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    iget-object v5, v0, Landroid/icu/util/Range;->start:Ljava/util/Date;

    invoke-interface {v4, p1, v5}, Landroid/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    iget-object v4, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v4, p1}, Landroid/icu/util/DateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    goto :goto_0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/util/RangeDateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    return-object v5

    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    move-result v1

    const/4 v4, 0x0

    invoke-direct {p0, v1}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v2

    :cond_1
    :goto_0
    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    iget-object v5, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    invoke-virtual {v5, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    return-object v4

    :cond_3
    move-object v3, v2

    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v5}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v2

    iget-object v5, v3, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_4

    iget-object v5, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    invoke-virtual {v5, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move-object v0, p2

    :goto_1
    iget-object v5, v3, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v5, p1, v0}, Landroid/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    goto :goto_0

    :cond_5
    iget-object v0, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    goto :goto_1
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/RangeDateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 2

    invoke-direct {p0, p1}, Landroid/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v1, p1}, Landroid/icu/util/DateRule;->isOn(Ljava/util/Date;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
