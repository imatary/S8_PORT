.class Landroid/icu/text/StringMatcher;
.super Ljava/lang/Object;
.source "StringMatcher.java"

# interfaces
.implements Landroid/icu/text/UnicodeMatcher;
.implements Landroid/icu/text/UnicodeReplacer;


# instance fields
.field private final data:Landroid/icu/text/RuleBasedTransliterator$Data;

.field private matchLimit:I

.field private matchStart:I

.field private pattern:Ljava/lang/String;

.field private segmentNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILandroid/icu/text/RuleBasedTransliterator$Data;)V
    .locals 1

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    iput-object p1, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    iput v0, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    iput v0, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    iput p2, p0, Landroid/icu/text/StringMatcher;->segmentNumber:I

    return-void
.end method


# virtual methods
.method public addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v3, v0}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :goto_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2, p1}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 0

    return-void
.end method

.method public matches(Landroid/icu/text/Replaceable;[IIZ)I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    new-array v0, v8, [I

    aget v5, p2, v6

    aput v5, v0, v6

    aget v5, v0, v6

    if-ge p3, v5, :cond_5

    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v5, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v5, v2}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v4

    if-nez v4, :cond_2

    aget v5, v0, v6

    if-le v5, p3, :cond_1

    aget v5, v0, v6

    invoke-interface {p1, v5}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v5

    if-ne v2, v5, :cond_1

    aget v5, v0, v6

    add-int/lit8 v5, v5, -0x1

    aput v5, v0, v6

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v6

    :cond_2
    invoke-interface {v4, p1, v0, p3, p4}, Landroid/icu/text/UnicodeMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v3

    if-eq v3, v7, :cond_0

    return v3

    :cond_3
    iget v5, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    if-gez v5, :cond_4

    aget v5, v0, v6

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    aget v5, p2, v6

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    :cond_4
    :goto_1
    aget v5, v0, v6

    aput v5, p2, v6

    return v7

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_a

    if-eqz p4, :cond_6

    aget v5, v0, v6

    if-ne v5, p3, :cond_6

    return v8

    :cond_6
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v5, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v5, v2}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v4

    if-nez v4, :cond_9

    aget v5, v0, v6

    if-ge v5, p3, :cond_8

    aget v5, v0, v6

    invoke-interface {p1, v5}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v5

    if-ne v2, v5, :cond_8

    aget v5, v0, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v0, v6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    return v6

    :cond_9
    invoke-interface {v4, p1, v0, p3, p4}, Landroid/icu/text/UnicodeMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v3

    if-eq v3, v7, :cond_7

    return v3

    :cond_a
    aget v5, p2, v6

    iput v5, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    aget v5, v0, v6

    iput v5, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    goto :goto_1
.end method

.method public matchesIndexValue(I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    iget-object v4, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v4, v0}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v1

    if-nez v1, :cond_2

    and-int/lit16 v4, v0, 0xff

    if-ne v4, p1, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-interface {v1, p1}, Landroid/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    move-result v2

    goto :goto_0
.end method

.method public replace(Landroid/icu/text/Replaceable;II[I)I
    .locals 4

    const/4 v1, 0x0

    move v0, p3

    iget v2, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    iget v3, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    iget v3, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    invoke-interface {p1, v2, v3, p3}, Landroid/icu/text/Replaceable;->copy(III)V

    iget v2, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    iget v3, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    sub-int v1, v2, v3

    :cond_0
    const-string/jumbo v2, ""

    invoke-interface {p1, p2, p3, v2}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    return v1
.end method

.method public resetMatch()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/StringMatcher;->matchLimit:I

    iput v0, p0, Landroid/icu/text/StringMatcher;->matchStart:I

    return-void
.end method

.method public toPattern(Z)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget v5, p0, Landroid/icu/text/StringMatcher;->segmentNumber:I

    if-lez v5, :cond_0

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Landroid/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v5, p0, Landroid/icu/text/StringMatcher;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v5, v1}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v4, v1, v6, p1, v3}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7, p1, v3}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    goto :goto_1

    :cond_2
    iget v5, p0, Landroid/icu/text/StringMatcher;->segmentNumber:I

    if-lez v5, :cond_3

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    const/4 v5, -0x1

    invoke-static {v4, v5, v7, p1, v3}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public toReplacerPattern(Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/icu/text/StringMatcher;->segmentNumber:I

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
