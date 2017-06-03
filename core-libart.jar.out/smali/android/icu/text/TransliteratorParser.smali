.class Landroid/icu/text/TransliteratorParser;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TransliteratorParser$ParseData;,
        Landroid/icu/text/TransliteratorParser$RuleArray;,
        Landroid/icu/text/TransliteratorParser$RuleBody;,
        Landroid/icu/text/TransliteratorParser$RuleHalf;
    }
.end annotation


# static fields
.field private static final ALT_FORWARD_RULE_OP:C = '\u2192'

.field private static final ALT_FUNCTION:C = '\u2206'

.field private static final ALT_FWDREV_RULE_OP:C = '\u2194'

.field private static final ALT_REVERSE_RULE_OP:C = '\u2190'

.field private static final ANCHOR_START:C = '^'

.field private static final CONTEXT_ANTE:C = '{'

.field private static final CONTEXT_POST:C = '}'

.field private static final CURSOR_OFFSET:C = '@'

.field private static final CURSOR_POS:C = '|'

.field private static final DOT:C = '.'

.field private static final DOT_SET:Ljava/lang/String; = "[^[:Zp:][:Zl:]\\r\\n$]"

.field private static final END_OF_RULE:C = ';'

.field private static final ESCAPE:C = '\\'

.field private static final FORWARD_RULE_OP:C = '>'

.field private static final FUNCTION:C = '&'

.field private static final FWDREV_RULE_OP:C = '~'

.field private static final HALF_ENDERS:Ljava/lang/String; = "=><\u2190\u2192\u2194;"

.field private static final ID_TOKEN:Ljava/lang/String; = "::"

.field private static final ID_TOKEN_LEN:I = 0x2

.field private static ILLEGAL_FUNC:Landroid/icu/text/UnicodeSet; = null

.field private static ILLEGAL_SEG:Landroid/icu/text/UnicodeSet; = null

.field private static ILLEGAL_TOP:Landroid/icu/text/UnicodeSet; = null

.field private static final KLEENE_STAR:C = '*'

.field private static final ONE_OR_MORE:C = '+'

.field private static final OPERATORS:Ljava/lang/String; = "=><\u2190\u2192\u2194"

.field private static final QUOTE:C = '\''

.field private static final REVERSE_RULE_OP:C = '<'

.field private static final RULE_COMMENT_CHAR:C = '#'

.field private static final SEGMENT_CLOSE:C = ')'

.field private static final SEGMENT_OPEN:C = '('

.field private static final VARIABLE_DEF_OP:C = '='

.field private static final ZERO_OR_ONE:C = '?'


# instance fields
.field public compoundFilter:Landroid/icu/text/UnicodeSet;

.field private curData:Landroid/icu/text/RuleBasedTransliterator$Data;

.field public dataVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RuleBasedTransliterator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private direction:I

.field private dotStandIn:I

.field public idBlockVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseData:Landroid/icu/text/TransliteratorParser$ParseData;

.field private segmentObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/StringMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private segmentStandins:Ljava/lang/StringBuffer;

.field private undefinedVariableName:Ljava/lang/String;

.field private variableLimit:C

.field private variableNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field private variableNext:C

.field private variablesVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Landroid/icu/text/UnicodeSet;
    .locals 1

    sget-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_FUNC:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic -get1()Landroid/icu/text/UnicodeSet;
    .locals 1

    sget-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_SEG:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic -get2()Landroid/icu/text/UnicodeSet;
    .locals 1

    sget-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_TOP:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic -get3(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    return-object v0
.end method

.method static synthetic -get4(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->parseData:Landroid/icu/text/TransliteratorParser$ParseData;

    return-object v0
.end method

.method static synthetic -get5(Landroid/icu/text/TransliteratorParser;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get6(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/text/ParsePosition;)C
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/TransliteratorParser;->parseSet(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/text/TransliteratorParser;->appendVariableDef(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorParser;->checkVariableRange(ILjava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[\\)]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_TOP:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[\\{\\}\\|\\@]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_SEG:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[\\^\\(\\.\\*\\+\\?\\{\\}\\|\\@]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_FUNC:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    return-void
.end method

.method private appendVariableDef(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    if-nez v1, :cond_1

    iput-object p1, p0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    iget-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Private use variables exhausted"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    iput-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Undefined variable $"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private checkVariableRange(ILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-char v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    if-lt p1, v0, :cond_0

    iget-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-ge p1, v0, :cond_0

    const-string/jumbo v0, "Variable range character in rule"

    invoke-static {v0, p2, p3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private parsePragma(Ljava/lang/String;II)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [I

    add-int/lit8 p2, p2, 0x4

    const-string/jumbo v2, "~variable range # #~;"

    invoke-static {p1, p2, p3, v2, v0}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    if-ltz v1, :cond_0

    aget v2, v0, v3

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v2, v3}, Landroid/icu/text/TransliteratorParser;->setVariableRange(II)V

    return v1

    :cond_0
    const-string/jumbo v2, "~maximum backup #~;"

    invoke-static {p1, p2, p3, v2, v0}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    if-ltz v1, :cond_1

    aget v2, v0, v3

    invoke-direct {p0, v2}, Landroid/icu/text/TransliteratorParser;->pragmaMaximumBackup(I)V

    return v1

    :cond_1
    const-string/jumbo v2, "~nfd rules~;"

    invoke-static {p1, p2, p3, v2, v4}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    if-ltz v1, :cond_2

    sget-object v2, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    invoke-direct {p0, v2}, Landroid/icu/text/TransliteratorParser;->pragmaNormalizeRules(Landroid/icu/text/Normalizer$Mode;)V

    return v1

    :cond_2
    const-string/jumbo v2, "~nfc rules~;"

    invoke-static {p1, p2, p3, v2, v4}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    if-ltz v1, :cond_3

    sget-object v2, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    invoke-direct {p0, v2}, Landroid/icu/text/TransliteratorParser;->pragmaNormalizeRules(Landroid/icu/text/Normalizer$Mode;)V

    return v1

    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method private parseRule(Ljava/lang/String;II)I
    .locals 26

    move/from16 v22, p2

    const/16 v20, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    new-instance v17, Landroid/icu/text/TransliteratorParser$RuleHalf;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/icu/text/TransliteratorParser$RuleHalf;-><init>(Landroid/icu/text/TransliteratorParser$RuleHalf;)V

    new-instance v21, Landroid/icu/text/TransliteratorParser$RuleHalf;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/icu/text/TransliteratorParser$RuleHalf;-><init>(Landroid/icu/text/TransliteratorParser$RuleHalf;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parse(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;)I

    move-result p2

    move/from16 v0, p2

    move/from16 v1, p3

    if-eq v0, v1, :cond_0

    const-string/jumbo v5, "=><\u2190\u2192\u2194"

    add-int/lit8 p2, p2, -0x1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No operator pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    const/16 v5, 0x3c

    move/from16 v0, v20

    if-ne v0, v5, :cond_2

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_2

    add-int/lit8 p2, p2, 0x1

    const/16 v20, 0x7e

    :cond_2
    packed-switch v20, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parse(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;)I

    move-result p2

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    add-int/lit8 p2, p2, -0x1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_9

    add-int/lit8 p2, p2, 0x1

    :cond_3
    :goto_1
    const/16 v5, 0x3d

    move/from16 v0, v20

    if-ne v0, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string/jumbo v5, "Missing \'$\' or duplicate definition"

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object/from16 v0, p0

    iget-char v6, v0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-eq v5, v6, :cond_6

    :cond_5
    const-string/jumbo v5, "Malformed LHS"

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    move-object/from16 v0, v17

    iget-boolean v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v5, :cond_7

    move-object/from16 v0, v17

    iget-boolean v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-nez v5, :cond_7

    move-object/from16 v0, v21

    iget-boolean v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v5, :cond_7

    move-object/from16 v0, v21

    iget-boolean v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-eqz v5, :cond_8

    :cond_7
    const-string/jumbo v5, "Malformed variable def"

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [C

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v5, v6, v0, v1, v7}, Ljava/lang/String;->getChars(II[CI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-char v5, v0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    add-int/lit8 v5, v5, 0x1

    int-to-char v5, v5

    move-object/from16 v0, p0

    iput-char v5, v0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    return p2

    :pswitch_1
    const/16 v20, 0x3e

    goto/16 :goto_0

    :pswitch_2
    const/16 v20, 0x3c

    goto/16 :goto_0

    :pswitch_3
    const/16 v20, 0x7e

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v5, "Unquoted operator"

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Undefined variable $"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v5, v6, :cond_c

    const-string/jumbo v5, "Undefined segment reference"

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_c
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move/from16 v0, v16

    if-ge v0, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-nez v5, :cond_d

    const-string/jumbo v5, "Internal error"

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_d
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_e
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v16

    if-ge v0, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_f

    const-string/jumbo v5, "Internal error"

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_10
    const/16 v5, 0x7e

    move/from16 v0, v20

    if-eq v0, v5, :cond_13

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v5, :cond_11

    const/4 v5, 0x1

    move v6, v5

    :goto_4
    const/16 v5, 0x3e

    move/from16 v0, v20

    if-ne v0, v5, :cond_12

    const/4 v5, 0x1

    :goto_5
    if-eq v6, v5, :cond_13

    return p2

    :cond_11
    const/4 v5, 0x0

    move v6, v5

    goto :goto_4

    :cond_12
    const/4 v5, 0x0

    goto :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    move-object/from16 v23, v17

    move-object/from16 v18, v21

    move-object/from16 v21, v17

    move-object/from16 v17, v18

    :cond_14
    const/16 v5, 0x7e

    move/from16 v0, v20

    if-ne v0, v5, :cond_15

    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/TransliteratorParser$RuleHalf;->removeContext()V

    const/4 v5, -0x1

    move-object/from16 v0, v17

    iput v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    const/4 v5, 0x0

    move-object/from16 v0, v17

    iput v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    :cond_15
    move-object/from16 v0, v17

    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    if-gez v5, :cond_16

    const/4 v5, 0x0

    move-object/from16 v0, v17

    iput v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    :cond_16
    move-object/from16 v0, v17

    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-gez v5, :cond_17

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v17

    iput v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    :cond_17
    move-object/from16 v0, v21

    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    if-gez v5, :cond_18

    move-object/from16 v0, v21

    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-ltz v5, :cond_1b

    :cond_18
    :goto_6
    const-string/jumbo v5, "Malformed rule"

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_19
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v12, v5, [Landroid/icu/text/UnicodeMatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v0, v5, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    move-object/from16 v25, v0

    new-instance v5, Landroid/icu/text/TransliterationRule;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v7, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    move-object/from16 v0, v17

    iget v8, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    move-object/from16 v0, v21

    iget-object v9, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v10, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    move-object/from16 v0, v21

    iget v11, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    move-object/from16 v0, v17

    iget-boolean v13, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    move-object/from16 v0, v17

    iget-boolean v14, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct/range {v5 .. v15}, Landroid/icu/text/TransliterationRule;-><init>(Ljava/lang/String;IILjava/lang/String;II[Landroid/icu/text/UnicodeMatcher;ZZLandroid/icu/text/RuleBasedTransliterator$Data;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/icu/text/TransliterationRuleSet;->addRule(Landroid/icu/text/TransliterationRule;)V

    return p2

    :cond_1b
    move-object/from16 v0, v17

    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-gez v5, :cond_18

    move-object/from16 v0, v21

    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    if-eqz v5, :cond_1c

    move-object/from16 v0, v21

    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-ltz v5, :cond_18

    :cond_1c
    move-object/from16 v0, v21

    iget-boolean v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v5, :cond_18

    move-object/from16 v0, v21

    iget-boolean v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-nez v5, :cond_18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/icu/text/TransliteratorParser$RuleHalf;->isValidInput(Landroid/icu/text/TransliteratorParser;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/icu/text/TransliteratorParser$RuleHalf;->isValidOutput(Landroid/icu/text/TransliteratorParser;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, v17

    iget v5, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-le v5, v6, :cond_19

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x2190
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final parseSet(Ljava/lang/String;Ljava/text/ParsePosition;)C
    .locals 3

    new-instance v0, Landroid/icu/text/UnicodeSet;

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->parseData:Landroid/icu/text/TransliteratorParser$ParseData;

    invoke-direct {v0, p1, p2, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V

    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    iget-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Private use variables exhausted"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result v1

    return v1
.end method

.method private pragmaMaximumBackup(I)V
    .locals 2

    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string/jumbo v1, "use maximum backup pragma not implemented yet"

    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pragmaNormalizeRules(Landroid/icu/text/Normalizer$Mode;)V
    .locals 2

    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string/jumbo v1, "use normalize rules pragma not implemented yet"

    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static resemblesPragma(Ljava/lang/String;II)Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "use "

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static final ruleEnd(Ljava/lang/String;II)I
    .locals 2

    const-string/jumbo v1, ";"

    invoke-static {p0, p1, p2, v1}, Landroid/icu/impl/Utility;->quotedIndexOf(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    move v0, p2

    :cond_0
    return v0
.end method

.method private setVariableRange(II)V
    .locals 3

    if-gt p1, p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid variable range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v0, 0xffff

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    int-to-char v1, p1

    iput-char v1, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    int-to-char v0, p1

    iput-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    add-int/lit8 v0, p2, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    :cond_2
    return-void
.end method

.method static final syntaxError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, p2, v1}, Landroid/icu/text/TransliteratorParser;->ruleEnd(Ljava/lang/String;II)I

    move-result v0

    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method generateStandInFor(Ljava/lang/Object;)C
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-char v1, v1, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    add-int/2addr v1, v0

    int-to-char v1, v1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    iget-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-lt v1, v2, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Variable range exhausted"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    add-int/lit8 v2, v1, 0x1

    int-to-char v2, v2

    iput-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    int-to-char v1, v1

    return v1
.end method

.method getDotStandIn()C
    .locals 2

    iget v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[^[:Zp:][:Zl:]\\r\\n$]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result v0

    iput v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    :cond_0
    iget v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    int-to-char v0, v0

    return v0
.end method

.method public getSegmentStandin(I)C
    .locals 3

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-nez v0, :cond_2

    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    iget-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-lt v1, v2, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Variable range exhausted"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    add-int/lit8 v2, v1, 0x1

    int-to-char v2, v2

    iput-char v2, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    int-to-char v0, v1

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_2
    return v0
.end method

.method public parse(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/icu/text/TransliteratorParser$RuleArray;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorParser$RuleArray;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Landroid/icu/text/TransliteratorParser;->parseRules(Landroid/icu/text/TransliteratorParser$RuleBody;I)V

    return-void
.end method

.method parseRules(Landroid/icu/text/TransliteratorParser$RuleBody;I)V
    .locals 29

    const/16 v18, 0x1

    const/16 v24, 0x0

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    new-instance v26, Landroid/icu/text/TransliteratorParser$ParseData;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TransliteratorParser$ParseData;-><init>(Landroid/icu/text/TransliteratorParser;Landroid/icu/text/TransliteratorParser$ParseData;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->parseData:Landroid/icu/text/TransliteratorParser$ParseData;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TransliteratorParser$RuleBody;->reset()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    const/4 v6, -0x1

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TransliteratorParser$RuleBody;->nextLine()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_2

    :goto_1
    if-eqz v18, :cond_18

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    if-lez v26, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    move/from16 v26, v0

    if-nez v26, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/RuleBasedTransliterator$Data;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput-object v0, v7, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    move-object/from16 v26, v0

    iget-object v0, v7, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v26

    iput-object v0, v7, Landroid/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    iget-object v0, v7, Landroid/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    const/16 v19, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v20, v19

    :goto_4
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_23

    add-int/lit8 v19, v20, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v26

    if-eqz v26, :cond_3

    move/from16 v20, v19

    goto :goto_4

    :cond_3
    const/16 v26, 0x23

    move/from16 v0, v26

    if-ne v5, v0, :cond_4

    const-string/jumbo v26, "\n"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v26

    add-int/lit8 v19, v26, 0x1

    if-eqz v19, :cond_0

    move/from16 v20, v19

    goto :goto_4

    :cond_4
    const/16 v26, 0x3b

    move/from16 v0, v26

    if-ne v5, v0, :cond_5

    move/from16 v20, v19

    goto :goto_4

    :cond_5
    add-int/lit8 v24, v24, 0x1

    add-int/lit8 v19, v19, -0x1

    add-int/lit8 v26, v19, 0x2

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v16

    if-gt v0, v1, :cond_11

    :try_start_0
    const-string/jumbo v26, "::"

    const/16 v27, 0x0

    const/16 v28, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v19

    move-object/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v26

    if-eqz v26, :cond_11

    add-int/lit8 v19, v19, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_5
    invoke-static {v5}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v26

    if-eqz v26, :cond_6

    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_5

    :cond_6
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v26, 0x0

    aput v19, v17, v26

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    move/from16 v26, v0

    if-nez v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    :cond_7
    const/16 v18, 0x1

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorIDParser;->parseSingleID(Ljava/lang/String;[II)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v14

    const/16 v26, 0x0

    aget v26, v17, v26

    move/from16 v0, v26

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    const/16 v26, 0x3b

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v26

    if-eqz v26, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    move/from16 v26, v0

    if-nez v26, :cond_b

    iget-object v0, v14, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x3b

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    :goto_7
    const/16 v26, 0x0

    aget v19, v17, v26

    :goto_8
    move/from16 v20, v19

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v8

    const/16 v26, 0x1e

    move/from16 v0, v26

    if-ne v9, v0, :cond_16

    new-instance v13, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string/jumbo v26, "\nMore than 30 errors; further messages squelched"

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Landroid/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    :try_start_1
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v14, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x3b

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_c
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v26, -0x1

    const/16 v27, 0x0

    aput v26, v25, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    move/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v26

    move-object/from16 v3, v25

    move-object/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Landroid/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;

    move-result-object v11

    if-eqz v11, :cond_10

    const/16 v26, 0x3b

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v26

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    move/from16 v26, v0

    if-nez v26, :cond_e

    const/16 v26, 0x1

    move/from16 v27, v26

    :goto_9
    const/16 v26, 0x0

    aget v26, v25, v26

    if-nez v26, :cond_f

    const/16 v26, 0x1

    :goto_a
    move/from16 v0, v27

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    const-string/jumbo v26, "Multiple global filters"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_d
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    move/from16 v6, v24

    goto/16 :goto_7

    :cond_e
    const/16 v26, 0x0

    move/from16 v27, v26

    goto :goto_9

    :cond_f
    const/16 v26, 0x0

    goto :goto_a

    :cond_10
    const-string/jumbo v26, "Invalid ::ID"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_7

    :cond_11
    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    move/from16 v26, v0

    if-nez v26, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    new-instance v26, Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct/range {v26 .. v26}, Landroid/icu/text/RuleBasedTransliterator$Data;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    const v26, 0xf000

    const v27, 0xf8ff

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->setVariableRange(II)V

    :cond_12
    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->resemblesPragma(Ljava/lang/String;II)Z

    move-result v26

    if-eqz v26, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TransliteratorParser;->parsePragma(Ljava/lang/String;II)I

    move-result v21

    if-gez v21, :cond_13

    const-string/jumbo v26, "Unrecognized pragma"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_13
    move/from16 v19, v21

    goto/16 :goto_8

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_b

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TransliteratorParser;->parseRule(Ljava/lang/String;II)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    goto/16 :goto_8

    :cond_16
    invoke-virtual {v8}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/icu/text/TransliteratorParser;->ruleEnd(Ljava/lang/String;II)I

    move-result v26

    add-int/lit8 v19, v26, 0x1

    goto/16 :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_18
    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    move/from16 v26, v0

    if-nez v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_1a
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    move/from16 v26, v0

    if-nez v26, :cond_1d

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v6, v0, :cond_1d

    :cond_1b
    new-instance v26, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string/jumbo v27, "Compound filters misplaced"

    invoke-direct/range {v26 .. v27}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v26

    if-eqz v26, :cond_22

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v26

    add-int/lit8 v12, v26, -0x1

    :goto_d
    if-lez v12, :cond_21

    add-int/lit8 v26, v12, -0x1

    move/from16 v0, v26

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/RuntimeException;

    :goto_e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v26

    if-eqz v26, :cond_20

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v22

    check-cast v22, Ljava/lang/RuntimeException;

    goto :goto_e

    :cond_1d
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    move/from16 v0, v24

    if-ne v6, v0, :cond_1b

    :cond_1e
    const/4 v12, 0x0

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v0, v7, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/icu/text/TransliterationRuleSet;->freeze()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_c

    :cond_20
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Throwable;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_d

    :cond_21
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/RuntimeException;

    throw v26

    :cond_22
    return-void

    :cond_23
    move/from16 v19, v20

    goto/16 :goto_0
.end method

.method public setSegmentObject(ILandroid/icu/text/StringMatcher;)V
    .locals 3

    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p1, :cond_0

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    move-result v1

    iget-object v2, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-char v2, v2, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int v0, v1, v2

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :cond_2
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
