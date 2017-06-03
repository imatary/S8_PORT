.class Landroid/icu/text/EscapeTransliterator;
.super Landroid/icu/text/Transliterator;
.source "EscapeTransliterator.java"


# instance fields
.field private grokSupplementals:Z

.field private minDigits:I

.field private prefix:Ljava/lang/String;

.field private radix:I

.field private suffix:Ljava/lang/String;

.field private supplementalHandler:Landroid/icu/text/EscapeTransliterator;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/icu/text/EscapeTransliterator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    iput-object p2, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    iput p4, p0, Landroid/icu/text/EscapeTransliterator;->radix:I

    iput p5, p0, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    iput-boolean p6, p0, Landroid/icu/text/EscapeTransliterator;->grokSupplementals:Z

    iput-object p7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    return-void
.end method

.method static register()V
    .locals 2

    const-string/jumbo v0, "Any-Hex/Unicode"

    new-instance v1, Landroid/icu/text/EscapeTransliterator$1;

    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$1;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Any-Hex/Java"

    new-instance v1, Landroid/icu/text/EscapeTransliterator$2;

    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$2;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Any-Hex/C"

    new-instance v1, Landroid/icu/text/EscapeTransliterator$3;

    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$3;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Any-Hex/XML"

    new-instance v1, Landroid/icu/text/EscapeTransliterator$4;

    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$4;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Any-Hex/XML10"

    new-instance v1, Landroid/icu/text/EscapeTransliterator$5;

    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$5;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Any-Hex/Perl"

    new-instance v1, Landroid/icu/text/EscapeTransliterator$6;

    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$6;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Any-Hex/Plain"

    new-instance v1, Landroid/icu/text/EscapeTransliterator$7;

    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$7;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Any-Hex"

    new-instance v1, Landroid/icu/text/EscapeTransliterator$8;

    invoke-direct {v1}, Landroid/icu/text/EscapeTransliterator$8;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 5

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    iget-object v3, v2, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    iget v3, v2, Landroid/icu/text/EscapeTransliterator;->radix:I

    if-ge v1, v3, :cond_0

    iget v3, v2, Landroid/icu/text/EscapeTransliterator;->radix:I

    iget v4, v2, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    invoke-static {v0, v1, v3, v4}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    :cond_1
    iget-object v2, v2, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 10

    const/4 v9, 0x0

    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v6, v3, :cond_4

    iget-boolean v7, p0, Landroid/icu/text/EscapeTransliterator;->grokSupplementals:Z

    if-eqz v7, :cond_0

    invoke-interface {p1, v6}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v1

    :goto_1
    iget-boolean v7, p0, Landroid/icu/text/EscapeTransliterator;->grokSupplementals:Z

    if-eqz v7, :cond_1

    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    :goto_2
    const/high16 v7, -0x10000

    and-int/2addr v7, v1

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    if-eqz v7, :cond_2

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    iget-object v7, v7, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    iget v7, v7, Landroid/icu/text/EscapeTransliterator;->radix:I

    iget-object v8, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    iget v8, v8, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    invoke-static {v0, v1, v7, v8}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->supplementalHandler:Landroid/icu/text/EscapeTransliterator;

    iget-object v7, v7, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :goto_3
    add-int v7, v6, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v6, v7, v8}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v2

    add-int/2addr v3, v7

    goto :goto_0

    :cond_0
    invoke-interface {p1, v6}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_4
    iget v7, p0, Landroid/icu/text/EscapeTransliterator;->radix:I

    iget v8, p0, Landroid/icu/text/EscapeTransliterator;->minDigits:I

    invoke-static {v0, v1, v7, v8}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    iget-object v7, p0, Landroid/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_4

    :cond_4
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v8, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v8, v3, v8

    add-int/2addr v7, v8

    iput v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iput v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    return-void
.end method
