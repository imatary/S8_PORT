.class Landroid/icu/text/FractionalPartSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field private final byDigits:Z

.field private final useSpaces:Z


# direct methods
.method constructor <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    const-string/jumbo v2, ">>"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ">>>"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-ne p2, v2, :cond_2

    :cond_0
    iput-boolean v1, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    const-string/jumbo v2, ">>>"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    iput-boolean v1, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->makeIntoFractionRuleSet()V

    goto :goto_1
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3

    add-double v0, p1, p3

    return-wide v0
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    if-nez v7, :cond_0

    const-wide/16 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move/from16 v14, p7

    invoke-super/range {v7 .. v14}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object v7

    return-object v7

    :cond_0
    move-object/from16 v20, p1

    new-instance v17, Ljava/text/ParsePosition;

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/text/ParsePosition;-><init>(I)V

    new-instance v15, Landroid/icu/text/DigitList;

    invoke-direct {v15}, Landroid/icu/text/DigitList;-><init>()V

    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1, v8, v9}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-eqz p7, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget-object v7, v7, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v7}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object v7

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v6

    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v7, v6, 0x30

    invoke-virtual {v15, v7}, Landroid/icu/text/DigitList;->append(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    add-int/2addr v7, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    :cond_3
    iget v7, v15, Landroid/icu/text/DigitList;->count:I

    if-nez v7, :cond_4

    const-wide/16 v18, 0x0

    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/text/FractionalPartSubstitution;->composeRuleValue(DD)D

    move-result-wide v18

    new-instance v7, Ljava/lang/Double;

    move-wide/from16 v0, v18

    invoke-direct {v7, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v7

    :cond_4
    invoke-virtual {v15}, Landroid/icu/text/DigitList;->getDouble()D

    move-result-wide v18

    goto :goto_1
.end method

.method public doSubstitution(DLjava/lang/StringBuffer;II)V
    .locals 11

    const/16 v9, 0x20

    const/4 v8, 0x0

    iget-boolean v1, p0, Landroid/icu/text/FractionalPartSubstitution;->byDigits:Z

    if-nez v1, :cond_1

    invoke-super/range {p0 .. p5}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;II)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/icu/text/DigitList;

    invoke-direct {v0}, Landroid/icu/text/DigitList;-><init>()V

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/icu/text/DigitList;->set(DIZ)V

    const/4 v7, 0x0

    :goto_0
    iget v1, v0, Landroid/icu/text/DigitList;->count:I

    iget v2, v0, Landroid/icu/text/DigitList;->decimalAt:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v1, v2, :cond_3

    if-eqz v7, :cond_2

    iget-boolean v1, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int/2addr v1, p4

    invoke-virtual {p3, v1, v9}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget-object v2, v0, Landroid/icu/text/DigitList;->digits:[B

    iget v3, v0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/icu/text/DigitList;->count:I

    aget-byte v2, v2, v3

    add-int/lit8 v2, v2, -0x30

    int-to-long v2, v2

    iget v4, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v5, p4, v4

    move-object v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget v1, v0, Landroid/icu/text/DigitList;->decimalAt:I

    if-gez v1, :cond_0

    if-eqz v7, :cond_4

    iget-boolean v1, p0, Landroid/icu/text/FractionalPartSubstitution;->useSpaces:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int/2addr v1, p4

    invoke-virtual {p3, v1, v9}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    const-wide/16 v2, 0x0

    iget v4, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v5, p4, v4

    move-object v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    iget v1, v0, Landroid/icu/text/DigitList;->decimalAt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/text/DigitList;->decimalAt:I

    goto :goto_2

    :cond_4
    const/4 v7, 0x1

    goto :goto_3
.end method

.method tokenChar()C
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public transformNumber(D)D
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double v0, p1, v0

    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
