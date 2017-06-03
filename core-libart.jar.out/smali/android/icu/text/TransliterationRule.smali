.class Landroid/icu/text/TransliterationRule;
.super Ljava/lang/Object;
.source "TransliterationRule.java"


# static fields
.field static final ANCHOR_END:I = 0x2

.field static final ANCHOR_START:I = 0x1


# instance fields
.field private anteContext:Landroid/icu/text/StringMatcher;

.field private anteContextLength:I

.field private final data:Landroid/icu/text/RuleBasedTransliterator$Data;

.field flags:B

.field private key:Landroid/icu/text/StringMatcher;

.field private keyLength:I

.field private output:Landroid/icu/text/UnicodeReplacer;

.field private pattern:Ljava/lang/String;

.field private postContext:Landroid/icu/text/StringMatcher;

.field segments:[Landroid/icu/text/UnicodeMatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;II[Landroid/icu/text/UnicodeMatcher;ZZLandroid/icu/text/RuleBasedTransliterator$Data;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p10

    iput-object v0, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    if-gez p2, :cond_6

    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    :goto_0
    if-gez p3, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    :goto_1
    if-gez p5, :cond_b

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    :cond_0
    iput-object p7, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    iput-object p1, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    const/4 v2, 0x0

    iput-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    if-eqz p8, :cond_1

    iget-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    :cond_1
    if-eqz p9, :cond_2

    iget-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    iget v2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    if-lez v2, :cond_3

    new-instance v2, Landroid/icu/text/StringMatcher;

    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget v4, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    iget v2, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    if-lez v2, :cond_4

    new-instance v2, Landroid/icu/text/StringMatcher;

    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget v4, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget v5, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget v6, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    :cond_4
    iget-object v2, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    sub-int v1, v2, v3

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    if-lez v1, :cond_5

    new-instance v2, Landroid/icu/text/StringMatcher;

    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget v4, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget v5, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    :cond_5
    new-instance v2, Landroid/icu/text/StringReplacer;

    add-int v3, p5, p6

    iget-object v4, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {v2, p4, v3, v4}, Landroid/icu/text/StringReplacer;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    iput-object v2, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    return-void

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le p2, v2, :cond_7

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid ante context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    iput p2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    if-lt p3, v2, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le p3, v2, :cond_a

    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid post context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    iget v2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    sub-int v2, p3, v2

    iput v2, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-le p5, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid cursor position"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static final posAfter(Landroid/icu/text/Replaceable;I)I
    .locals 1

    if-ltz p1, :cond_0

    invoke-interface {p0}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method static final posBefore(Landroid/icu/text/Replaceable;I)I
    .locals 1

    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method


# virtual methods
.method addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 10

    iget v8, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget v9, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    add-int v4, v8, v9

    new-instance v7, Landroid/icu/text/UnicodeSet;

    invoke-direct {v7}, Landroid/icu/text/UnicodeSet;-><init>()V

    new-instance v6, Landroid/icu/text/UnicodeSet;

    invoke-direct {v6}, Landroid/icu/text/UnicodeSet;-><init>()V

    iget v3, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    :goto_0
    if-ge v3, v4, :cond_4

    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v8, v1}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-virtual {v7, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_1
    :try_start_0
    move-object v0, v5

    check-cast v0, Landroid/icu/text/UnicodeSet;

    move-object v8, v0

    invoke-virtual {p1, v8}, Landroid/icu/text/UnicodeSet;->containsSome(Landroid/icu/text/UnicodeSet;)Z

    move-result v8

    if-nez v8, :cond_2

    return-void

    :cond_2
    invoke-interface {v5, v7}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v6}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    invoke-interface {v5, v6}, Landroid/icu/text/UnicodeMatcher;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {p1, v6}, Landroid/icu/text/UnicodeSet;->containsSome(Landroid/icu/text/UnicodeSet;)Z

    move-result v8

    if-nez v8, :cond_3

    return-void

    :cond_3
    invoke-virtual {v7, v6}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v7}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    invoke-interface {v8, p3}, Landroid/icu/text/UnicodeReplacer;->addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V

    return-void
.end method

.method public getAnteContextLength()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget-byte v2, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method final getIndexValue()I
    .locals 4

    const/4 v1, -0x1

    iget v2, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget v3, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    invoke-static {v2, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Landroid/icu/text/TransliterationRule;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v2, v0}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v2

    if-nez v2, :cond_1

    and-int/lit16 v1, v0, 0xff

    :cond_1
    return v1
.end method

.method public masks(Landroid/icu/text/TransliterationRule;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    iget v0, p0, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget v1, p1, Landroid/icu/text/TransliterationRule;->anteContextLength:I

    iget-object v7, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v3, v7, v0

    iget-object v7, p1, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v4, v7, v1

    if-ne v0, v1, :cond_3

    if-ne v3, v4, :cond_3

    iget v7, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    iget v8, p1, Landroid/icu/text/TransliterationRule;->keyLength:I

    if-gt v7, v8, :cond_3

    iget-object v7, p1, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v7, v6, v8, v6, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-byte v7, p0, Landroid/icu/text/TransliterationRule;->flags:B

    iget-byte v8, p1, Landroid/icu/text/TransliterationRule;->flags:B

    if-eq v7, v8, :cond_0

    iget-byte v7, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_1

    iget-byte v7, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-byte v7, p1, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    iget-byte v7, p1, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_0

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    if-gt v0, v1, :cond_5

    if-lt v3, v4, :cond_4

    if-ne v3, v4, :cond_5

    iget v5, p0, Landroid/icu/text/TransliterationRule;->keyLength:I

    iget v7, p1, Landroid/icu/text/TransliterationRule;->keyLength:I

    if-gt v5, v7, :cond_5

    :cond_4
    iget-object v5, p1, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    sub-int v7, v1, v0

    iget-object v8, p0, Landroid/icu/text/TransliterationRule;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v6, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    :cond_5
    return v6
.end method

.method public matchAndReplace(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)I
    .locals 12

    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    if-eqz v10, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    array-length v10, v10

    if-ge v1, v10, :cond_0

    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->segments:[Landroid/icu/text/UnicodeMatcher;

    aget-object v10, v10, v1

    check-cast v10, Landroid/icu/text/StringMatcher;

    invoke-virtual {v10}, Landroid/icu/text/StringMatcher;->resetMatch()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x1

    new-array v2, v10, [I

    iget v10, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-static {p1, v10}, Landroid/icu/text/TransliterationRule;->posBefore(Landroid/icu/text/Replaceable;I)I

    move-result v0

    iget v10, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-static {p1, v10}, Landroid/icu/text/TransliterationRule;->posBefore(Landroid/icu/text/Replaceable;I)I

    move-result v10

    const/4 v11, 0x0

    aput v10, v2, v11

    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v2, v0, v11}, Landroid/icu/text/StringMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v5

    const/4 v10, 0x2

    if-eq v5, v10, :cond_1

    const/4 v10, 0x0

    return v10

    :cond_1
    const/4 v10, 0x0

    aget v9, v2, v10

    invoke-static {p1, v9}, Landroid/icu/text/TransliterationRule;->posAfter(Landroid/icu/text/Replaceable;I)I

    move-result v6

    iget-byte v10, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    if-eq v9, v0, :cond_2

    const/4 v10, 0x0

    return v10

    :cond_2
    iget v10, p2, Landroid/icu/text/Transliterator$Position;->start:I

    const/4 v11, 0x0

    aput v10, v2, v11

    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    iget v11, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v10, p1, v2, v11, p3}, Landroid/icu/text/StringMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v5

    const/4 v10, 0x2

    if-eq v5, v10, :cond_3

    return v5

    :cond_3
    const/4 v10, 0x0

    aget v3, v2, v10

    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    if-eqz v10, :cond_5

    if-eqz p3, :cond_4

    iget v10, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne v3, v10, :cond_4

    const/4 v10, 0x1

    return v10

    :cond_4
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    iget v11, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v10, p1, v2, v11, p3}, Landroid/icu/text/StringMatcher;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v5

    const/4 v10, 0x2

    if-eq v5, v10, :cond_5

    return v5

    :cond_5
    const/4 v10, 0x0

    aget v9, v2, v10

    iget-byte v10, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_7

    iget v10, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    if-eq v9, v10, :cond_6

    const/4 v10, 0x0

    return v10

    :cond_6
    if-eqz p3, :cond_7

    const/4 v10, 0x1

    return v10

    :cond_7
    iget-object v10, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    iget v11, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-interface {v10, p1, v11, v3, v2}, Landroid/icu/text/UnicodeReplacer;->replace(Landroid/icu/text/Replaceable;II[I)I

    move-result v7

    iget v10, p2, Landroid/icu/text/Transliterator$Position;->start:I

    sub-int v10, v3, v10

    sub-int v4, v7, v10

    const/4 v10, 0x0

    aget v8, v2, v10

    add-int/2addr v9, v4

    iget v10, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/2addr v10, v4

    iput v10, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v10, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    add-int/2addr v10, v4

    iput v10, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v10, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p2, Landroid/icu/text/Transliterator$Position;->start:I

    const/4 v10, 0x2

    return v10
.end method

.method final matchesIndexValue(I)Z
    .locals 2

    iget-object v1, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    iget-object v0, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public toRule(Z)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    if-eqz v3, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-byte v3, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/16 v3, 0x5e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->anteContext:Landroid/icu/text/StringMatcher;

    invoke-static {v2, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    if-eqz v0, :cond_2

    const/16 v3, 0x7b

    invoke-static {v2, v3, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    :cond_2
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->key:Landroid/icu/text/StringMatcher;

    invoke-static {v2, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    if-eqz v0, :cond_3

    const/16 v3, 0x7d

    invoke-static {v2, v3, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    :cond_3
    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->postContext:Landroid/icu/text/StringMatcher;

    invoke-static {v2, v3, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V

    iget-byte v3, p0, Landroid/icu/text/TransliterationRule;->flags:B

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    const-string/jumbo v3, " > "

    invoke-static {v2, v3, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    iget-object v3, p0, Landroid/icu/text/TransliterationRule;->output:Landroid/icu/text/UnicodeReplacer;

    invoke-interface {v3, p1}, Landroid/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    const/16 v3, 0x3b

    invoke-static {v2, v3, v4, p1, v1}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/text/TransliterationRule;->toRule(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
