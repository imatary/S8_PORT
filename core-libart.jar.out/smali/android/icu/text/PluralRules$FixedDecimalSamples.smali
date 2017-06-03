.class public Landroid/icu/text/PluralRules$FixedDecimalSamples;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedDecimalSamples"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final bounded:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final sampleType:Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final samples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimalRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/icu/text/PluralRules$SampleType;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PluralRules$SampleType;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimalRange;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    iput-object p2, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    iput-boolean p3, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    return-void
.end method

.method private static checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/text/PluralRules$FixedDecimal;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    if-ne p0, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$FixedDecimal;->getVisibleDecimalDigitCount()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed number range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method static parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 14

    const/4 v10, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    const-string/jumbo v9, "integer"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v6, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    :goto_0
    const/4 v9, 0x7

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v9, Landroid/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    move v9, v10

    :goto_1
    if-ge v9, v12, :cond_5

    aget-object v3, v11, v9

    const-string/jumbo v13, "\u2026"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "..."

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v9, "decimal"

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v6, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Samples must start with \'integer\' or \'decimal\'"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    if-eqz v2, :cond_4

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can only have \u2026 at the end of samples: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_4
    sget-object v13, Landroid/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    array-length v13, v4

    packed-switch v13, :pswitch_data_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Ill-formed number range: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_0
    new-instance v5, Landroid/icu/text/PluralRules$FixedDecimal;

    aget-object v13, v4, v10

    invoke-direct {v5, v13}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/text/PluralRules$FixedDecimal;)V

    new-instance v13, Landroid/icu/text/PluralRules$FixedDecimalRange;

    invoke-direct {v13, v5, v5}, Landroid/icu/text/PluralRules$FixedDecimalRange;-><init>(Landroid/icu/text/PluralRules$FixedDecimal;Landroid/icu/text/PluralRules$FixedDecimal;)V

    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    new-instance v8, Landroid/icu/text/PluralRules$FixedDecimal;

    aget-object v13, v4, v10

    invoke-direct {v8, v13}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/text/PluralRules$FixedDecimal;

    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-direct {v1, v13}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v8}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/text/PluralRules$FixedDecimal;)V

    invoke-static {v6, v1}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/text/PluralRules$FixedDecimal;)V

    new-instance v13, Landroid/icu/text/PluralRules$FixedDecimalRange;

    invoke-direct {v13, v8, v1}, Landroid/icu/text/PluralRules$FixedDecimalRange;-><init>(Landroid/icu/text/PluralRules$FixedDecimal;Landroid/icu/text/PluralRules$FixedDecimal;)V

    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    new-instance v9, Landroid/icu/text/PluralRules$FixedDecimalSamples;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v6, v10, v0}, Landroid/icu/text/PluralRules$FixedDecimalSamples;-><init>(Landroid/icu/text/PluralRules$SampleType;Ljava/util/Set;Z)V

    return-object v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addSamples(Ljava/util/Set;)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v8, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/PluralRules$FixedDecimalRange;

    iget-object v8, v4, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {v8}, Landroid/icu/text/PluralRules$FixedDecimal;->getShiftedValue()J

    move-result-wide v6

    iget-object v8, v4, Landroid/icu/text/PluralRules$FixedDecimalRange;->end:Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {v8}, Landroid/icu/text/PluralRules$FixedDecimal;->getShiftedValue()J

    move-result-wide v2

    move-wide v0, v6

    :goto_0
    cmp-long v8, v0, v2

    if-gtz v8, :cond_0

    long-to-double v8, v0

    iget-object v10, v4, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-static {v10}, Landroid/icu/text/PluralRules$FixedDecimal;->-get0(Landroid/icu/text/PluralRules$FixedDecimal;)I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getSamples()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimalRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    return-object v0
.end method

.method public getStartEndSamples(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v2, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$FixedDecimalRange;

    iget-object v2, v0, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroid/icu/text/PluralRules$FixedDecimalRange;->end:Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {v5}, Landroid/icu/text/PluralRules$SampleType;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v4, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PluralRules$FixedDecimalRange;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-boolean v4, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    if-nez v4, :cond_2

    const-string/jumbo v4, ", \u2026"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
