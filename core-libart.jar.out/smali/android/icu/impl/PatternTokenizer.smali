.class public Landroid/icu/impl/PatternTokenizer;
.super Ljava/lang/Object;
.source "PatternTokenizer.java"


# static fields
.field private static final AFTER_QUOTE:I = -0x1

.field public static final BACK_SLASH:C = '\\'

.field public static final BROKEN_ESCAPE:I = 0x4

.field public static final BROKEN_QUOTE:I = 0x3

.field public static final DONE:I = 0x0

.field private static final HEX:I = 0x4

.field private static IN_QUOTE:I = 0x0

.field public static final LITERAL:I = 0x2

.field private static final NONE:I = 0x0

.field private static final NORMAL_QUOTE:I = 0x2

.field private static NO_QUOTE:I = 0x0

.field public static final SINGLE_QUOTE:C = '\''

.field private static final SLASH_START:I = 0x3

.field private static final START_QUOTE:I = 0x1

.field public static final SYNTAX:I = 0x1

.field public static final UNKNOWN:I = 0x5


# instance fields
.field private escapeCharacters:Landroid/icu/text/UnicodeSet;

.field private extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

.field private ignorableCharacters:Landroid/icu/text/UnicodeSet;

.field private limit:I

.field private transient needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

.field private pattern:Ljava/lang/String;

.field private start:I

.field private syntaxCharacters:Landroid/icu/text/UnicodeSet;

.field private usingQuote:Z

.field private usingSlash:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Landroid/icu/impl/PatternTokenizer;->NO_QUOTE:I

    const/4 v0, -0x2

    sput v0, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->escapeCharacters:Landroid/icu/text/UnicodeSet;

    iput-boolean v1, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    iput-boolean v1, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method private appendEscaped(Ljava/lang/StringBuffer;I)V
    .locals 4

    const v0, 0xffff

    if-gt p2, v0, :cond_0

    const-string/jumbo v0, "\\u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    int-to-long v2, p2

    const/4 v1, 0x4

    invoke-static {v2, v3, v1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "\\U"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    int-to-long v2, p2

    const/16 v1, 0x8

    invoke-static {v2, v3, v1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public getEscapeCharacters()Landroid/icu/text/UnicodeSet;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->escapeCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public getExtraQuotingCharacters()Landroid/icu/text/UnicodeSet;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public getIgnorableCharacters()Landroid/icu/text/UnicodeSet;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    return v0
.end method

.method public getSyntaxCharacters()Landroid/icu/text/UnicodeSet;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public isUsingQuote()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    return v0
.end method

.method public isUsingSlash()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    return v0
.end method

.method public next(Ljava/lang/StringBuffer;)I
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x5c

    iget v7, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    iget v8, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    if-lt v7, v8, :cond_0

    return v10

    :cond_0
    const/4 v6, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    :goto_0
    iget v7, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    if-ge v3, v7, :cond_b

    iget-object v7, p0, Landroid/icu/impl/PatternTokenizer;->pattern:Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v5, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v7, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v7, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_1
    :goto_2
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_0

    :pswitch_1
    sparse-switch v0, :sswitch_data_0

    iget-boolean v7, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v7, :cond_2

    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_0
    const/4 v5, 0x4

    const/4 v1, 0x4

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_1
    const/4 v5, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    goto :goto_1

    :pswitch_2
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    sparse-switch v0, :sswitch_data_1

    iput v3, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    const/4 v7, 0x4

    return v7

    :sswitch_2
    add-int/lit8 v2, v2, -0x30

    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    const/4 v5, 0x0

    invoke-static {p1, v2}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_2

    :sswitch_3
    add-int/lit8 v2, v2, -0x57

    goto :goto_3

    :sswitch_4
    add-int/lit8 v2, v2, -0x37

    goto :goto_3

    :pswitch_3
    if-ne v0, v4, :cond_3

    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    const/4 v5, 0x2

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :pswitch_4
    if-ne v0, v4, :cond_4

    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    const/4 v5, 0x2

    goto :goto_2

    :pswitch_5
    if-ne v0, v4, :cond_5

    const/4 v5, -0x1

    goto :goto_2

    :cond_5
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    iget-object v7, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v7, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int/2addr v7, v3

    iput v7, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    const/4 v7, 0x1

    return v7

    :cond_7
    iput v3, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    return v6

    :cond_8
    const/4 v6, 0x2

    if-ne v0, v9, :cond_9

    const/4 v5, 0x3

    goto :goto_2

    :cond_9
    iget-boolean v7, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v7, :cond_a

    const/16 v7, 0x27

    if-ne v0, v7, :cond_a

    move v4, v0

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_a
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_b
    iget v7, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    iput v7, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    packed-switch v5, :pswitch_data_1

    :goto_4
    return v6

    :pswitch_6
    const/4 v6, 0x4

    goto :goto_4

    :pswitch_7
    iget-boolean v7, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v7, :cond_c

    const/4 v6, 0x4

    goto :goto_4

    :cond_c
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :pswitch_8
    const/4 v6, 0x3

    goto :goto_4

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x36 -> :sswitch_2
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x39 -> :sswitch_2
        0x41 -> :sswitch_4
        0x42 -> :sswitch_4
        0x43 -> :sswitch_4
        0x44 -> :sswitch_4
        0x45 -> :sswitch_4
        0x46 -> :sswitch_4
        0x61 -> :sswitch_3
        0x62 -> :sswitch_3
        0x63 -> :sswitch_3
        0x64 -> :sswitch_3
        0x65 -> :sswitch_3
        0x66 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public normalize()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget v1, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p0, v0}, Landroid/icu/impl/PatternTokenizer;->next(Ljava/lang/StringBuffer;)I

    move-result v3

    if-nez v3, :cond_0

    iput v1, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public quoteLiteral(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public quoteLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x5c

    const/16 v6, 0x27

    iget-object v4, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    if-nez v4, :cond_1

    new-instance v4, Landroid/icu/text/UnicodeSet;

    invoke-direct {v4}, Landroid/icu/text/UnicodeSet;-><init>()V

    iget-object v5, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v5}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v5}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/impl/PatternTokenizer;->extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v5}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    iget-boolean v4, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_0
    iget-boolean v4, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget v2, Landroid/icu/impl/PatternTokenizer;->NO_QUOTE:I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_b

    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Landroid/icu/impl/PatternTokenizer;->escapeCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_4

    sget v4, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v2, v4, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget v2, Landroid/icu/impl/PatternTokenizer;->NO_QUOTE:I

    :cond_2
    invoke-direct {p0, v3, v0}, Landroid/icu/impl/PatternTokenizer;->appendEscaped(Ljava/lang/StringBuffer;I)V

    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_9

    sget v4, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v2, v4, :cond_5

    invoke-static {v3, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    iget-boolean v4, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v4, :cond_3

    if-ne v0, v6, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    iget-boolean v4, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v4, :cond_6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v3, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    iget-boolean v4, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v4, :cond_8

    if-ne v0, v6, :cond_7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v3, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    sget v2, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    goto :goto_1

    :cond_8
    invoke-direct {p0, v3, v0}, Landroid/icu/impl/PatternTokenizer;->appendEscaped(Ljava/lang/StringBuffer;I)V

    goto :goto_1

    :cond_9
    sget v4, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v2, v4, :cond_a

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget v2, Landroid/icu/impl/PatternTokenizer;->NO_QUOTE:I

    :cond_a
    invoke-static {v3, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_b
    sget v4, Landroid/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v2, v4, :cond_c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public setEscapeCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;
    .locals 1

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->escapeCharacters:Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setExtraQuotingCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;
    .locals 1

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->extraQuotingCharacters:Landroid/icu/text/UnicodeSet;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setIgnorableCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;
    .locals 1

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->ignorableCharacters:Landroid/icu/text/UnicodeSet;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setLimit(I)Landroid/icu/impl/PatternTokenizer;
    .locals 0

    iput p1, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    return-object p0
.end method

.method public setPattern(Ljava/lang/CharSequence;)Landroid/icu/impl/PatternTokenizer;
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/PatternTokenizer;->setPattern(Ljava/lang/String;)Landroid/icu/impl/PatternTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setPattern(Ljava/lang/String;)Landroid/icu/impl/PatternTokenizer;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Inconsistent arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/PatternTokenizer;->limit:I

    iput-object p1, p0, Landroid/icu/impl/PatternTokenizer;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public setStart(I)Landroid/icu/impl/PatternTokenizer;
    .locals 0

    iput p1, p0, Landroid/icu/impl/PatternTokenizer;->start:I

    return-object p0
.end method

.method public setSyntaxCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;
    .locals 1

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->syntaxCharacters:Landroid/icu/text/UnicodeSet;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setUsingQuote(Z)Landroid/icu/impl/PatternTokenizer;
    .locals 1

    iput-boolean p1, p0, Landroid/icu/impl/PatternTokenizer;->usingQuote:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setUsingSlash(Z)Landroid/icu/impl/PatternTokenizer;
    .locals 1

    iput-boolean p1, p0, Landroid/icu/impl/PatternTokenizer;->usingSlash:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/PatternTokenizer;->needingQuoteCharacters:Landroid/icu/text/UnicodeSet;

    return-object p0
.end method
