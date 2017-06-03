.class Landroid/icu/text/TransliterationRuleSet;
.super Ljava/lang/Object;
.source "TransliterationRuleSet.java"


# instance fields
.field private index:[I

.field private maxContextLength:I

.field private ruleVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/TransliterationRule;",
            ">;"
        }
    .end annotation
.end field

.field private rules:[Landroid/icu/text/TransliterationRule;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    return-void
.end method


# virtual methods
.method public addRule(Landroid/icu/text/TransliterationRule;)V
    .locals 2

    iget-object v1, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/icu/text/TransliterationRule;->getAnteContextLength()I

    move-result v0

    iget v1, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    if-le v0, v1, :cond_0

    iput v0, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    return-void
.end method

.method addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 6

    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, p1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    new-instance v4, Landroid/icu/text/UnicodeSet;

    invoke-direct {v4}, Landroid/icu/text/UnicodeSet;-><init>()V

    iget-object v5, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v5, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/TransliterationRule;

    invoke-virtual {v4}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    move-result-object v5

    invoke-virtual {v3, v1, p2, p3, v5}, Landroid/icu/text/TransliterationRule;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v1, v4}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public freeze()V
    .locals 13

    const/16 v12, 0x100

    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    const/16 v10, 0x101

    new-array v10, v10, [I

    iput-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    new-instance v8, Ljava/util/ArrayList;

    mul-int/lit8 v10, v4, 0x2

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    new-array v1, v4, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/TransliterationRule;

    invoke-virtual {v5}, Landroid/icu/text/TransliterationRule;->getIndexValue()I

    move-result v10

    aput v10, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v12, :cond_4

    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    aput v11, v10, v9

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_3

    aget v10, v1, v2

    if-ltz v10, :cond_2

    aget v10, v1, v2

    if-ne v10, v9, :cond_1

    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/text/TransliterationRule;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/TransliterationRule;

    invoke-virtual {v5, v9}, Landroid/icu/text/TransliterationRule;->matchesIndexValue(I)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    aput v11, v10, v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/icu/text/TransliterationRule;

    iput-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    invoke-interface {v8, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v12, :cond_9

    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    aget v2, v10, v9

    :goto_5
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    add-int/lit8 v11, v9, 0x1

    aget v10, v10, v11

    add-int/lit8 v10, v10, -0x1

    if-ge v2, v10, :cond_8

    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    aget-object v6, v10, v2

    add-int/lit8 v3, v2, 0x1

    :goto_6
    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    add-int/lit8 v11, v9, 0x1

    aget v10, v10, v11

    if-ge v3, v10, :cond_7

    iget-object v10, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    aget-object v7, v10, v3

    invoke-virtual {v6, v7}, Landroid/icu/text/TransliterationRule;->masks(Landroid/icu/text/TransliterationRule;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    const-string/jumbo v10, "Rule "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " masks "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    const-string/jumbo v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_a
    return-void
.end method

.method public getMaximumContextLength()I
    .locals 1

    iget v0, p0, Landroid/icu/text/TransliterationRuleSet;->maxContextLength:I

    return v0
.end method

.method toRules(Z)Ljava/lang/String;
    .locals 5

    iget-object v4, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz v1, :cond_0

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, p0, Landroid/icu/text/TransliterationRuleSet;->ruleVector:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/TransliterationRule;

    invoke-virtual {v2, p1}, Landroid/icu/text/TransliterationRule;->toRule(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)Z
    .locals 6

    const/4 v5, 0x1

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-interface {p1, v3}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v3

    and-int/lit16 v1, v3, 0xff

    iget-object v3, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    aget v0, v3, v1

    :goto_0
    iget-object v3, p0, Landroid/icu/text/TransliterationRuleSet;->index:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/TransliterationRuleSet;->rules:[Landroid/icu/text/TransliterationRule;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/text/TransliterationRule;->matchAndReplace(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    return v5

    :pswitch_1
    const/4 v3, 0x0

    return v3

    :cond_0
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-interface {p1, v4}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
