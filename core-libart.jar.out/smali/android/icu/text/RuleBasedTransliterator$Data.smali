.class Landroid/icu/text/RuleBasedTransliterator$Data;
.super Ljava/lang/Object;
.source "RuleBasedTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Data"
.end annotation


# instance fields
.field public ruleSet:Landroid/icu/text/TransliterationRuleSet;

.field variableNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field variables:[Ljava/lang/Object;

.field variablesBase:C


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    new-instance v0, Landroid/icu/text/TransliterationRuleSet;

    invoke-direct {v0}, Landroid/icu/text/TransliterationRuleSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    return-void
.end method


# virtual methods
.method public lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .locals 2

    iget-char v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Landroid/icu/text/UnicodeMatcher;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;
    .locals 2

    iget-char v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Landroid/icu/text/UnicodeReplacer;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
