.class Landroid/icu/text/TransliteratorParser$RuleHalf;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuleHalf"
.end annotation


# instance fields
.field public anchorEnd:Z

.field public anchorStart:Z

.field public ante:I

.field public cursor:I

.field public cursorOffset:I

.field private cursorOffsetPos:I

.field private nextSegmentNumber:I

.field public post:I

.field public text:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    iput v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    iput v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    iput-boolean v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    iput-boolean v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->nextSegmentNumber:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/TransliteratorParser$RuleHalf;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/TransliteratorParser$RuleHalf;-><init>()V

    return-void
.end method

.method private parseSection(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeSet;Z)I
    .locals 37

    move/from16 v33, p2

    const/16 v25, 0x0

    const/16 v28, -0x1

    const/16 v27, -0x1

    const/16 v36, -0x1

    const/16 v35, -0x1

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v17, v0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    move/from16 v23, p2

    :goto_0
    move/from16 v0, v23

    move/from16 v1, p3

    if-ge v0, v1, :cond_2b

    add-int/lit8 p2, v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move/from16 v23, p2

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "=><\u2190\u2192\u2194;"

    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    if-eqz p7, :cond_1

    const-string/jumbo v4, "Unclosed segment"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_1
    :sswitch_0
    return p2

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "Malformed variable reference"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    add-int/lit8 v4, p2, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v25, :cond_4

    new-instance v25, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/text/ParsePosition;-><init>(I)V

    :cond_4
    add-int/lit8 v4, p2, -0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->-wrap0(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual/range {v25 .. v25}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    move/from16 v23, p2

    goto :goto_0

    :cond_5
    const/16 v4, 0x5c

    if-ne v13, v4, :cond_8

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    const-string/jumbo v4, "Trailing backslash"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    const/4 v4, 0x0

    aput p2, v17, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v15

    const/4 v4, 0x0

    aget p2, v17, v4

    const/4 v4, -0x1

    if-ne v15, v4, :cond_7

    const-string/jumbo v4, "Malformed escape"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-static {v0, v15, v1, v2}, Landroid/icu/text/TransliteratorParser;->-wrap2(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V

    move-object/from16 v0, p5

    invoke-static {v0, v15}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    move/from16 v23, p2

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0x27

    if-ne v13, v4, :cond_d

    const/16 v4, 0x27

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    :cond_9
    move/from16 v23, p2

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v28

    :goto_2
    if-gez v16, :cond_b

    const-string/jumbo v4, "Unterminated quote"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, v16, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_c

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x27

    if-ne v4, v7, :cond_c

    const/16 v4, 0x27

    add-int/lit8 v7, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    goto :goto_2

    :cond_c
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v27

    move/from16 v16, v28

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-static {v0, v4, v1, v2}, Landroid/icu/text/TransliteratorParser;->-wrap2(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_d
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-static {v0, v13, v1, v2}, Landroid/icu/text/TransliteratorParser;->-wrap2(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal character \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x27

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_e
    sparse-switch v13, :sswitch_data_0

    const/16 v4, 0x21

    if-lt v13, v4, :cond_12

    const/16 v4, 0x7e

    if-gt v13, v4, :cond_12

    const/16 v4, 0x30

    if-lt v13, v4, :cond_f

    const/16 v4, 0x39

    if-le v13, v4, :cond_12

    :cond_f
    const/16 v4, 0x41

    if-lt v13, v4, :cond_10

    const/16 v4, 0x5a

    if-le v13, v4, :cond_12

    :cond_10
    const/16 v4, 0x61

    if-lt v13, v4, :cond_11

    const/16 v4, 0x7a

    if-le v13, v4, :cond_12

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unquoted "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_12
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    move/from16 v23, p2

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-eqz v4, :cond_14

    :cond_13
    const-string/jumbo v4, "Misplaced anchor start"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_14
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    goto :goto_4

    :sswitch_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->nextSegmentNumber:I

    move/from16 v31, v0

    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->nextSegmentNumber:I

    invoke-static {}, Landroid/icu/text/TransliteratorParser;->-get1()Landroid/icu/text/UnicodeSet;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v10}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parseSection(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeSet;Z)I

    move-result p2

    new-instance v18, Landroid/icu/text/StringMatcher;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Landroid/icu/text/TransliteratorParser;->-get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v7

    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-direct {v0, v4, v1, v7}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILandroid/icu/text/RuleBasedTransliterator$Data;)V

    move-object/from16 v0, p4

    move/from16 v1, v31

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->setSegmentObject(ILandroid/icu/text/StringMatcher;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object/from16 v0, p4

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    move-result v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :sswitch_3
    const/4 v4, 0x0

    aput p2, v17, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v32

    if-eqz v32, :cond_16

    const/16 v4, 0x28

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v4

    if-eqz v4, :cond_16

    :goto_5
    invoke-virtual/range {v32 .. v32}, Landroid/icu/text/TransliteratorIDParser$SingleID;->getInstance()Landroid/icu/text/Transliterator;

    move-result-object v34

    if-nez v34, :cond_15

    const-string/jumbo v4, "Invalid function ID"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_15
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/4 v4, 0x0

    aget v5, v17, v4

    invoke-static {}, Landroid/icu/text/TransliteratorParser;->-get0()Landroid/icu/text/UnicodeSet;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v10}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parseSection(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeSet;Z)I

    move-result p2

    new-instance v30, Landroid/icu/text/FunctionReplacer;

    new-instance v4, Landroid/icu/text/StringReplacer;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p4 .. p4}, Landroid/icu/text/TransliteratorParser;->-get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/icu/text/StringReplacer;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v4}, Landroid/icu/text/FunctionReplacer;-><init>(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeReplacer;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :cond_16
    const-string/jumbo v4, "Invalid function"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :sswitch_4
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_17

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    goto/16 :goto_4

    :cond_17
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v4, 0xa

    invoke-static {v13, v4}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v29

    const/4 v4, 0x1

    move/from16 v0, v29

    if-lt v0, v4, :cond_19

    const/16 v4, 0x9

    move/from16 v0, v29

    if-gt v0, v4, :cond_19

    const/4 v4, 0x0

    aput p2, v17, v4

    const/16 v4, 0xa

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/icu/impl/Utility;->parseNumber(Ljava/lang/String;[II)I

    move-result v29

    if-gez v29, :cond_18

    const-string/jumbo v4, "Undefined segment reference"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_18
    const/4 v4, 0x0

    aget p2, v17, v4

    move-object/from16 v0, p4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    move-result v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :cond_19
    if-nez v25, :cond_1a

    new-instance v25, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/text/ParsePosition;-><init>(I)V

    :cond_1a
    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-static/range {p4 .. p4}, Landroid/icu/text/TransliteratorParser;->-get4(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Landroid/icu/text/TransliteratorParser$ParseData;->parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;

    move-result-object v22

    if-nez v22, :cond_1b

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    goto/16 :goto_4

    :cond_1b
    invoke-virtual/range {v25 .. v25}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v36

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->-wrap1(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v35

    goto/16 :goto_4

    :sswitch_5
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/TransliteratorParser;->getDotStandIn()C

    move-result v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :sswitch_6
    if-eqz p7, :cond_1c

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ne v4, v12, :cond_1c

    const-string/jumbo v4, "Misplaced quantifier"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_1c
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move/from16 v0, v27

    if-ne v4, v0, :cond_1d

    move/from16 v5, v28

    move/from16 v6, v27

    :goto_6
    :try_start_0
    new-instance v3, Landroid/icu/text/StringMatcher;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Landroid/icu/text/TransliteratorParser;->-get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;

    move-result-object v8

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/icu/text/StringMatcher;-><init>(Ljava/lang/String;IIILandroid/icu/text/RuleBasedTransliterator$Data;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v21, 0x0

    const v20, 0x7fffffff

    sparse-switch v13, :sswitch_data_1

    :goto_7
    new-instance v19, Landroid/icu/text/Quantifier;

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/Quantifier;-><init>(Landroid/icu/text/UnicodeMatcher;II)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :cond_1d
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move/from16 v0, v35

    if-ne v4, v0, :cond_1e

    move/from16 v5, v36

    move/from16 v6, v35

    goto :goto_6

    :cond_1e
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    add-int/lit8 v6, v5, 0x1

    goto :goto_6

    :catch_0
    move-exception v14

    const/16 v4, 0x32

    move/from16 v0, p2

    if-ge v0, v4, :cond_1f

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    :goto_8
    sub-int v4, p3, p2

    const/16 v7, 0x32

    if-gt v4, v7, :cond_20

    invoke-virtual/range {p1 .. p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    :goto_9
    new-instance v4, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failure in rule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "$$$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Landroid/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;

    move-result-object v4

    throw v4

    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v7, p2, -0x32

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_8

    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, p2, 0x32

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_9

    :sswitch_7
    const/16 v21, 0x1

    goto/16 :goto_7

    :sswitch_8
    const/16 v21, 0x0

    const/16 v20, 0x1

    goto/16 :goto_7

    :sswitch_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    if-ltz v4, :cond_21

    const-string/jumbo v4, "Multiple ante contexts"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_21
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    goto/16 :goto_4

    :sswitch_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-ltz v4, :cond_22

    const-string/jumbo v4, "Multiple post contexts"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_22
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    goto/16 :goto_4

    :sswitch_b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-ltz v4, :cond_23

    const-string/jumbo v4, "Multiple cursors"

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_23
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    goto/16 :goto_4

    :sswitch_c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    if-gez v4, :cond_25

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Misplaced "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    goto/16 :goto_4

    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    if-lez v4, :cond_28

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    if-ne v4, v7, :cond_26

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-ltz v4, :cond_27

    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Misplaced "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    goto/16 :goto_4

    :cond_28
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-nez v4, :cond_29

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_29

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    goto/16 :goto_4

    :cond_29
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-gez v4, :cond_2a

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    goto/16 :goto_4

    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Misplaced "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v4, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_2b
    move/from16 p2, v23

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_4
        0x26 -> :sswitch_3
        0x28 -> :sswitch_2
        0x29 -> :sswitch_0
        0x2a -> :sswitch_6
        0x2b -> :sswitch_6
        0x2e -> :sswitch_5
        0x3f -> :sswitch_6
        0x40 -> :sswitch_c
        0x5e -> :sswitch_1
        0x7b -> :sswitch_9
        0x7c -> :sswitch_b
        0x7d -> :sswitch_a
        0x2206 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2b -> :sswitch_7
        0x3f -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public isValidInput(Landroid/icu/text/TransliteratorParser;)Z
    .locals 3

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1}, Landroid/icu/text/TransliteratorParser;->-get4(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/icu/text/TransliteratorParser$ParseData;->isMatcher(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public isValidOutput(Landroid/icu/text/TransliteratorParser;)Z
    .locals 3

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1}, Landroid/icu/text/TransliteratorParser;->-get4(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/icu/text/TransliteratorParser$ParseData;->isReplacer(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public parse(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;)I
    .locals 9

    const/4 v7, 0x0

    move v8, p2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Landroid/icu/text/TransliteratorParser;->-get2()Landroid/icu/text/UnicodeSet;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parseSection(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeSet;Z)I

    move-result p2

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    iget v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    iget v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "Misplaced |"

    invoke-static {v0, p1, v8}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return p2
.end method

.method removeContext()V
    .locals 5

    const/4 v4, -0x1

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    iget v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    iget v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-gez v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    iput v4, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    iput v4, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    iput-boolean v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    iput-boolean v1, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    return-void

    :cond_0
    iget v0, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    goto :goto_1
.end method
