.class public Landroid/icu/text/DateTimePatternGenerator$FormatParser;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatParser"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final QUOTING_CHARS:Landroid/icu/text/UnicodeSet;

.field private static final SYNTAX_CHARS:Landroid/icu/text/UnicodeSet;


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient tokenizer:Landroid/icu/impl/PatternTokenizer;


# direct methods
.method static synthetic -get0(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[a-zA-Z]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->SYNTAX_CHARS:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[[[:script=Latn:][:script=Cyrl:]]&[[:L:][:M:]]]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->QUOTING_CHARS:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/impl/PatternTokenizer;

    invoke-direct {v0}, Landroid/icu/impl/PatternTokenizer;-><init>()V

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->SYNTAX_CHARS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Landroid/icu/impl/PatternTokenizer;->setSyntaxCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->QUOTING_CHARS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Landroid/icu/impl/PatternTokenizer;->setExtraQuotingCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/impl/PatternTokenizer;->setUsingQuote(Z)Landroid/icu/impl/PatternTokenizer;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    return-void
.end method

.method private addVariable(Ljava/lang/StringBuffer;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    new-instance v1, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/icu/text/DateTimePatternGenerator$VariableField;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    return-object v0
.end method

.method public hasDateAndTimeFields()Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    if-eqz v7, :cond_0

    check-cast v3, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    invoke-virtual {v3}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    move-result v5

    const/4 v7, 0x1

    shl-int/2addr v7, v5

    or-int/2addr v0, v7

    goto :goto_0

    :cond_1
    and-int/lit16 v7, v0, 0x3ff

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    :goto_1
    const v7, 0xfc00

    and-int/2addr v7, v0

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    :goto_2
    if-eqz v1, :cond_4

    :goto_3
    return v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move v2, v6

    goto :goto_3
.end method

.method public quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    invoke-virtual {v0, p1}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;Z)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Z)Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    return-object p0

    :cond_0
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    invoke-virtual {v3, p1}, Landroid/icu/impl/PatternTokenizer;->setPattern(Ljava/lang/String;)Landroid/icu/impl/PatternTokenizer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    invoke-virtual {v3, v0}, Landroid/icu/impl/PatternTokenizer;->next(Ljava/lang/StringBuffer;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v2, v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    return-object p0

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-direct {p0, v2, v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2, v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(II)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    invoke-virtual {v4, v2}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
