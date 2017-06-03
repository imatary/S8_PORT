.class Landroid/icu/text/TransliteratorParser$ParseData;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"

# interfaces
.implements Landroid/icu/text/SymbolTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseData"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/TransliteratorParser;


# direct methods
.method private constructor <init>(Landroid/icu/text/TransliteratorParser;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/TransliteratorParser;Landroid/icu/text/TransliteratorParser$ParseData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/text/TransliteratorParser$ParseData;-><init>(Landroid/icu/text/TransliteratorParser;)V

    return-void
.end method


# virtual methods
.method public isMatcher(I)Z
    .locals 2

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v1

    iget-char v1, v1, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/icu/text/UnicodeMatcher;

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isReplacer(I)Z
    .locals 2

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v1

    iget-char v1, v1, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/icu/text/UnicodeReplacer;

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public lookup(Ljava/lang/String;)[C
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v0}, Landroid/icu/text/TransliteratorParser;->-get5(Landroid/icu/text/TransliteratorParser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .locals 2

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v1

    iget-char v1, v1, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser$ParseData;->this$0:Landroid/icu/text/TransliteratorParser;

    invoke-static {v1}, Landroid/icu/text/TransliteratorParser;->-get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UnicodeMatcher;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move v1, v2

    :goto_0
    if-ge v1, p3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    const/4 v3, 0x0

    return-object v3

    :cond_2
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
