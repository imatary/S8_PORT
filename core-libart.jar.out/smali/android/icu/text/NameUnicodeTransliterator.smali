.class Landroid/icu/text/NameUnicodeTransliterator;
.super Landroid/icu/text/Transliterator;
.source "NameUnicodeTransliterator.java"


# static fields
.field static final CLOSE_DELIM:C = '}'

.field static final OPEN_DELIM:C = '\\'

.field static final OPEN_PAT:Ljava/lang/String; = "\\N~{~"

.field static final SPACE:C = ' '

.field static final _ID:Ljava/lang/String; = "Name-Any"


# direct methods
.method public constructor <init>(Landroid/icu/text/UnicodeFilter;)V
    .locals 1

    const-string/jumbo v0, "Name-Any"

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    return-void
.end method

.method static register()V
    .locals 2

    const-string/jumbo v0, "Name-Any"

    new-instance v1, Landroid/icu/text/NameUnicodeTransliterator$1;

    invoke-direct {v1}, Landroid/icu/text/NameUnicodeTransliterator$1;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 7

    const/16 v6, 0x7d

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    const-string/jumbo v2, "\\N{"

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v6}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/16 v3, 0x30

    const/16 v4, 0x39

    invoke-virtual {v2, v3, v4}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x41

    const/16 v4, 0x46

    invoke-virtual {v2, v3, v4}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x61

    const/16 v4, 0x7a

    invoke-virtual {v2, v3, v4}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    const-string/jumbo v3, "\\N{"

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const v2, 0x10ffff

    invoke-virtual {p3, v5, v2}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 15

    sget-object v13, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    invoke-virtual {v13}, Landroid/icu/impl/UCharacterName;->getMaxCharNameLength()I

    move-result v13

    add-int/lit8 v8, v13, 0x1

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v5, Landroid/icu/text/UnicodeSet;

    invoke-direct {v5}, Landroid/icu/text/UnicodeSet;-><init>()V

    sget-object v13, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;

    invoke-virtual {v13, v5}, Landroid/icu/impl/UCharacterName;->getCharNameCharacters(Landroid/icu/text/UnicodeSet;)V

    move-object/from16 v0, p2

    iget v2, v0, Landroid/icu/text/Transliterator$Position;->start:I

    move-object/from16 v0, p2

    iget v7, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    const/4 v9, 0x0

    const/4 v11, -0x1

    :goto_0
    if-ge v2, v7, :cond_6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v1

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v13

    add-int/2addr v2, v13

    goto :goto_0

    :pswitch_0
    const/16 v13, 0x5c

    if-ne v1, v13, :cond_0

    move v11, v2

    const-string/jumbo v13, "\\N~{~"

    move-object/from16 v0, p1

    invoke-static {v13, v0, v2, v7}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;Landroid/icu/text/Replaceable;II)I

    move-result v4

    if-ltz v4, :cond_0

    if-ge v4, v7, :cond_0

    const/4 v9, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    move v2, v4

    goto :goto_0

    :pswitch_1
    invoke-static {v1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x20

    if-eq v13, v14, :cond_0

    const/16 v13, 0x20

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-le v13, v8, :cond_0

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    const/16 v13, 0x7d

    if-ne v1, v13, :cond_4

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_2

    add-int/lit8 v13, v6, -0x1

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/icu/lang/UCharacter;->getCharFromExtendedName(Ljava/lang/String;)I

    move-result v1

    const/4 v13, -0x1

    if-eq v1, v13, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v2, v12}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    sub-int v13, v2, v11

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    sub-int v3, v13, v14

    sub-int/2addr v2, v3

    sub-int/2addr v7, v3

    :cond_3
    const/4 v9, 0x0

    const/4 v11, -0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v5, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {v10, v1}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lt v13, v8, :cond_0

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v14, v7, v14

    add-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    move-object/from16 v0, p2

    iput v7, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    if-eqz p3, :cond_7

    if-ltz v11, :cond_7

    :goto_2
    move-object/from16 v0, p2

    iput v11, v0, Landroid/icu/text/Transliterator$Position;->start:I

    return-void

    :cond_7
    move v11, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
