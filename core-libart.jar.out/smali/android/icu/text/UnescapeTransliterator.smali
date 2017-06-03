.class Landroid/icu/text/UnescapeTransliterator;
.super Landroid/icu/text/Transliterator;
.source "UnescapeTransliterator.java"


# static fields
.field private static final END:C = '\uffff'


# instance fields
.field private spec:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    iput-object p2, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    return-void
.end method

.method static register()V
    .locals 2

    const-string/jumbo v0, "Hex-Any/Unicode"

    new-instance v1, Landroid/icu/text/UnescapeTransliterator$1;

    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$1;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Hex-Any/Java"

    new-instance v1, Landroid/icu/text/UnescapeTransliterator$2;

    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$2;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Hex-Any/C"

    new-instance v1, Landroid/icu/text/UnescapeTransliterator$3;

    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$3;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Hex-Any/XML"

    new-instance v1, Landroid/icu/text/UnescapeTransliterator$4;

    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$4;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Hex-Any/XML10"

    new-instance v1, Landroid/icu/text/UnescapeTransliterator$5;

    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$5;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Hex-Any/Perl"

    new-instance v1, Landroid/icu/text/UnescapeTransliterator$6;

    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$6;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const-string/jumbo v0, "Hex-Any"

    new-instance v1, Landroid/icu/text/UnescapeTransliterator$7;

    invoke-direct {v1}, Landroid/icu/text/UnescapeTransliterator$7;-><init>()V

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    new-instance v3, Landroid/icu/text/UnicodeSet;

    invoke-direct {v3}, Landroid/icu/text/UnicodeSet;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    aget-char v7, v7, v2

    const v8, 0xffff

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    aget-char v7, v7, v2

    add-int/2addr v7, v2

    iget-object v8, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    add-int/lit8 v9, v2, 0x1

    aget-char v8, v8, v9

    add-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x5

    iget-object v7, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    add-int/lit8 v8, v2, 0x2

    aget-char v6, v7, v8

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    invoke-static {v0, v4, v6, v10}, Landroid/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v2, 0x5

    :goto_2
    if-ge v4, v1, :cond_1

    iget-object v7, p0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    aget-char v7, v7, v4

    invoke-virtual {v3, v7}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v5}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {p2, v3}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const v7, 0x10ffff

    invoke-virtual {p3, v10, v7}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    :cond_3
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 25

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v11, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    :cond_0
    :goto_0
    move/from16 v0, v19

    if-ge v0, v11, :cond_1

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    move-object/from16 v23, v0

    aget-char v23, v23, v9

    const v24, 0xffff

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    move-object/from16 v23, v0

    add-int/lit8 v10, v9, 0x1

    aget-char v15, v23, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    move-object/from16 v23, v0

    add-int/lit8 v9, v10, 0x1

    aget-char v21, v23, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    move-object/from16 v23, v0

    add-int/lit8 v10, v9, 0x1

    aget-char v16, v23, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    move-object/from16 v23, v0

    add-int/lit8 v9, v10, 0x1

    aget-char v14, v23, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    move-object/from16 v23, v0

    add-int/lit8 v10, v9, 0x1

    aget-char v13, v23, v9

    move/from16 v17, v19

    const/4 v12, 0x1

    const/4 v8, 0x0

    move/from16 v18, v17

    :goto_2
    if-ge v8, v15, :cond_f

    move/from16 v0, v18

    if-lt v0, v11, :cond_7

    if-lez v8, :cond_7

    if-eqz p3, :cond_2

    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v24, v0

    sub-int v24, v11, v24

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    move-object/from16 v0, p2

    iput v11, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/icu/text/Transliterator$Position;->start:I

    return-void

    :cond_2
    const/4 v12, 0x0

    move/from16 v17, v18

    :goto_3
    if-eqz v12, :cond_d

    const/16 v22, 0x0

    const/4 v7, 0x0

    :cond_3
    move/from16 v0, v17

    if-lt v0, v11, :cond_9

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    if-nez p3, :cond_1

    :cond_4
    :goto_4
    if-lt v7, v14, :cond_a

    const/4 v12, 0x1

    :goto_5
    if-eqz v12, :cond_d

    const/4 v8, 0x0

    move/from16 v18, v17

    :goto_6
    move/from16 v0, v21

    if-ge v8, v0, :cond_e

    move/from16 v0, v18

    if-lt v0, v11, :cond_b

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    if-nez p3, :cond_1

    :cond_5
    const/4 v12, 0x0

    move/from16 v17, v18

    :goto_7
    if-eqz v12, :cond_d

    invoke-static/range {v22 .. v22}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v17

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    sub-int v23, v17, v19

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    sub-int v23, v23, v24

    sub-int v11, v11, v23

    move v9, v10

    :cond_6
    move/from16 v0, v19

    if-ge v0, v11, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v23

    add-int v19, v19, v23

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v17, v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    move-object/from16 v23, v0

    add-int v24, v10, v8

    aget-char v23, v23, v24

    move/from16 v0, v23

    if-eq v4, v0, :cond_8

    const/4 v12, 0x0

    goto :goto_3

    :cond_8
    add-int/lit8 v8, v8, 0x1

    move/from16 v18, v17

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v5

    move/from16 v0, v16

    invoke-static {v5, v0}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v6

    if-ltz v6, :cond_4

    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v23

    add-int v17, v17, v23

    mul-int v23, v22, v16

    add-int v22, v23, v6

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v13, :cond_3

    goto/16 :goto_4

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_b
    add-int/lit8 v17, v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/UnescapeTransliterator;->spec:[C

    move-object/from16 v23, v0

    add-int v24, v10, v15

    add-int v24, v24, v8

    aget-char v23, v23, v24

    move/from16 v0, v23

    if-eq v4, v0, :cond_c

    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v8, v8, 0x1

    move/from16 v18, v17

    goto/16 :goto_6

    :cond_d
    add-int v23, v15, v21

    add-int v9, v10, v23

    goto/16 :goto_1

    :cond_e
    move/from16 v17, v18

    goto/16 :goto_7

    :cond_f
    move/from16 v17, v18

    goto/16 :goto_3
.end method
