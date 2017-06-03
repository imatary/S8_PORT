.class public Landroid/icu/text/RuleBasedTransliterator;
.super Landroid/icu/text/Transliterator;
.source "RuleBasedTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RuleBasedTransliterator$Data;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private data:Landroid/icu/text/RuleBasedTransliterator$Data;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    iput-object p2, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v0, p2, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    invoke-virtual {v0}, Landroid/icu/text/TransliterationRuleSet;->getMaximumContextLength()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/Transliterator;->setMaximumContextLength(I)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/TransliterationRuleSet;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v3, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_0
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    sub-int/2addr v2, v4

    shl-int/lit8 v1, v2, 0x4

    if-gez v1, :cond_0

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ge v2, v4, :cond_1

    if-gt v0, v1, :cond_1

    iget-object v2, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v2, v2, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/text/TransliterationRuleSet;->transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public safeClone()Landroid/icu/text/Transliterator;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/icu/text/UnicodeSet;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/icu/text/UnicodeSet;

    nop

    nop

    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Landroid/icu/text/RuleBasedTransliterator;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {v2, v3, v4, v0}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    return-object v2
.end method

.method public toRules(Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/RuleBasedTransliterator;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/TransliterationRuleSet;->toRules(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
