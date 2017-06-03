.class Landroid/icu/text/PluralRules$RuleList;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuleList"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private hasExplicitBoundingInfo:Z

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/PluralRules$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/icu/text/PluralRules$RuleList;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    return v0
.end method

.method static synthetic -set0(Landroid/icu/text/PluralRules$RuleList;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    return p1
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/PluralRules$RuleList;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/PluralRules$RuleList;-><init>()V

    return-void
.end method

.method private selectRule(Landroid/icu/text/PluralRules$FixedDecimal;)Landroid/icu/text/PluralRules$Rule;
    .locals 3

    iget-object v2, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$Rule;

    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules$Rule;->appliesTo(Landroid/icu/text/PluralRules$FixedDecimal;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public addRule(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$RuleList;
    .locals 6

    invoke-virtual {p1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Duplicate keyword: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p2}, Landroid/icu/text/PluralRules$Rule;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    return v3

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public finish()Landroid/icu/text/PluralRules$RuleList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PluralRules$Rule;

    const-string/jumbo v3, "other"

    invoke-virtual {v2}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v3, "other:"

    invoke-static {v3}, Landroid/icu/text/PluralRules;->-wrap0(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;

    move-result-object v1

    :cond_2
    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 3

    iget-object v2, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$Rule;

    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    if-ne p2, v2, :cond_1

    invoke-static {v0}, Landroid/icu/text/PluralRules$Rule;->-get1(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    invoke-static {v0}, Landroid/icu/text/PluralRules$Rule;->-get0(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$Rule;

    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getConstraint()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 2

    iget-boolean v1, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v1

    return v1
.end method

.method public select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;
    .locals 4

    iget-wide v2, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "other"

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/text/PluralRules$RuleList;->selectRule(Landroid/icu/text/PluralRules$FixedDecimal;)Landroid/icu/text/PluralRules$Rule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public select(Landroid/icu/text/PluralRules$FixedDecimal;Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$Rule;

    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules$Rule;->appliesTo(Landroid/icu/text/PluralRules$FixedDecimal;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ";  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
