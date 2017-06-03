.class Landroid/icu/text/StringReplacer;
.super Ljava/lang/Object;
.source "StringReplacer.java"

# interfaces
.implements Landroid/icu/text/UnicodeReplacer;


# instance fields
.field private cursorPos:I

.field private final data:Landroid/icu/text/RuleBasedTransliterator$Data;

.field private hasCursor:Z

.field private isComplex:Z

.field private output:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    iput p2, p0, Landroid/icu/text/StringReplacer;->cursorPos:I

    iput-boolean v0, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    iput-object p3, p0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    iput-boolean v0, p0, Landroid/icu/text/StringReplacer;->isComplex:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    iput v0, p0, Landroid/icu/text/StringReplacer;->cursorPos:I

    iput-boolean v0, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    iput-object p2, p0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/StringReplacer;->isComplex:Z

    return-void
.end method


# virtual methods
.method public addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v3, v0}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :goto_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2, p1}, Landroid/icu/text/UnicodeReplacer;->addReplacementSetTo(Landroid/icu/text/UnicodeSet;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public replace(Landroid/icu/text/Replaceable;II[I)I
    .locals 20

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/StringReplacer;->isComplex:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p0

    iget v10, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    move/from16 v17, v0

    if-gez v17, :cond_b

    move/from16 v10, p2

    move-object/from16 v0, p0

    iget v9, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    :goto_1
    if-gez v9, :cond_9

    if-lez v10, :cond_9

    add-int/lit8 v17, v10, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v17

    sub-int v10, v10, v17

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/icu/text/StringReplacer;->isComplex:Z

    invoke-interface/range {p1 .. p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v16

    move/from16 v7, v16

    if-lez p2, :cond_3

    add-int/lit8 v17, p2, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v8

    sub-int v17, p2, v8

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Landroid/icu/text/Replaceable;->copy(III)V

    add-int v7, v16, v8

    :goto_2
    move v6, v7

    const/4 v15, 0x0

    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v12, v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    add-int v17, v17, v6

    sub-int v10, v17, v7

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v12}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v17

    add-int v11, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ne v11, v0, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v15

    add-int v17, p3, v15

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, v17

    invoke-interface {v0, v1, v2, v6}, Landroid/icu/text/Replaceable;->copy(III)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;

    move-result-object v14

    if-nez v14, :cond_4

    invoke-static {v4, v5}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    :goto_4
    move v12, v11

    goto :goto_3

    :cond_3
    const-string/jumbo v17, "\uffff"

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    add-int/lit8 v7, v16, 0x1

    goto :goto_2

    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/icu/text/StringReplacer;->isComplex:Z

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-lez v17, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v6, v6, v1}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    add-int v6, v6, v17

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v14, v0, v6, v6, v1}, Landroid/icu/text/UnicodeReplacer;->replace(Landroid/icu/text/Replaceable;II[I)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    if-lez v17, :cond_7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v6, v6, v1}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    add-int v6, v6, v17

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v12, v0, :cond_8

    sub-int v10, v6, v7

    :cond_8
    sub-int v13, v6, v7

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v7, v6, v1}, Landroid/icu/text/Replaceable;->copy(III)V

    add-int v17, v16, v13

    add-int v18, v6, v15

    add-int v18, v18, v13

    const-string/jumbo v19, ""

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    add-int v17, p2, v13

    add-int v18, p3, v13

    const-string/jumbo v19, ""

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    add-int/2addr v10, v9

    :goto_5
    const/16 v17, 0x0

    aput v10, p4, v17

    :cond_a
    return v13

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    add-int v10, p2, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/StringReplacer;->cursorPos:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v9, v17, v18

    :goto_6
    if-lez v9, :cond_c

    invoke-interface/range {p1 .. p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_c

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v17

    add-int v10, v10, v17

    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    :cond_c
    add-int/2addr v10, v9

    goto :goto_5

    :cond_d
    add-int v10, v10, p2

    goto :goto_5
.end method

.method public toReplacerPattern(Z)Ljava/lang/String;
    .locals 13

    const/16 v12, 0x7c

    const/16 v11, 0x40

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Landroid/icu/text/StringReplacer;->cursorPos:I

    iget-boolean v8, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    if-eqz v8, :cond_0

    if-gez v2, :cond_0

    move v3, v2

    :goto_0
    add-int/lit8 v2, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {v7, v11, v9, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_3

    iget-boolean v8, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    if-eqz v8, :cond_1

    if-ne v4, v2, :cond_1

    invoke-static {v7, v12, v9, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    :cond_1
    iget-object v8, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v8, p0, Landroid/icu/text/StringReplacer;->data:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v8, v1}, Landroid/icu/text/RuleBasedTransliterator$Data;->lookupReplacer(I)Landroid/icu/text/UnicodeReplacer;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {v7, v1, v10, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v8, " "

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, p1}, Landroid/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v8, 0x20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v9, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    goto :goto_2

    :cond_3
    iget-boolean v8, p0, Landroid/icu/text/StringReplacer;->hasCursor:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v2, v8, :cond_5

    iget-object v8, p0, Landroid/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v2, v8

    move v3, v2

    :goto_3
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_4

    invoke-static {v7, v11, v9, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    move v3, v2

    goto :goto_3

    :cond_4
    invoke-static {v7, v12, v9, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    :cond_5
    const/4 v8, -0x1

    invoke-static {v7, v8, v9, p1, v5}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
