.class Landroid/icu/text/UnicodeNameTransliterator;
.super Landroid/icu/text/Transliterator;
.source "UnicodeNameTransliterator.java"


# static fields
.field static final CLOSE_DELIM:C = '}'

.field static final OPEN_DELIM:Ljava/lang/String; = "\\N{"

.field static final OPEN_DELIM_LEN:I = 0x3

.field static final _ID:Ljava/lang/String; = "Any-Name"


# direct methods
.method public constructor <init>(Landroid/icu/text/UnicodeFilter;)V
    .locals 1

    const-string/jumbo v0, "Any-Name"

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    return-void
.end method

.method static register()V
    .locals 2

    const-string/jumbo v0, "Any-Name"

    new-instance v1, Landroid/icu/text/UnicodeNameTransliterator$1;

    invoke-direct {v1}, Landroid/icu/text/UnicodeNameTransliterator$1;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {p3, v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x41

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const-string/jumbo v2, "\\N{"

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x61

    const/16 v3, 0x7a

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_0
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 9

    iget v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\\N{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-interface {p1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getExtendedName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x7d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int v7, v2, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v2, v7, v8}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v7, v3, v1

    add-int/2addr v4, v7

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v8, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v8, v4, v8

    add-int/2addr v7, v8

    iput v7, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iput v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v2, p2, Landroid/icu/text/Transliterator$Position;->start:I

    return-void
.end method
