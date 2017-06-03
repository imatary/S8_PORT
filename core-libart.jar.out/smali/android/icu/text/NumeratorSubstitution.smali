.class Landroid/icu/text/NumeratorSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field private final denominator:D

.field private final withZeros:Z


# direct methods
.method constructor <init>(IDLandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 2

    invoke-static {p5}, Landroid/icu/text/NumeratorSubstitution;->fixdesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    iput-wide p2, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    const-string/jumbo v0, "<<"

    invoke-virtual {p5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    return-void
.end method

.method static fixdesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "<<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2

    iget-wide v0, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3

    div-double v0, p1, p3

    return-wide v0
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 19

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v3, :cond_2

    move-object/from16 v16, p1

    new-instance v11, Ljava/text/ParsePosition;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Ljava/text/ParsePosition;-><init>(I)V

    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v11}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v11, v4, v5}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    invoke-virtual {v11}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v3, :cond_4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :goto_0
    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v8, p5

    invoke-super/range {v3 .. v10}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    const-wide/16 v12, 0x1

    :goto_1
    cmp-long v3, v12, v14

    if-gtz v3, :cond_5

    const-wide/16 v4, 0xa

    mul-long/2addr v12, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v11}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v11}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_2

    :cond_4
    move-wide/from16 v6, p3

    goto :goto_0

    :cond_5
    :goto_3
    if-lez v17, :cond_6

    const-wide/16 v4, 0xa

    mul-long/2addr v12, v4

    add-int/lit8 v17, v17, -0x1

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/Double;

    long-to-double v4, v14

    long-to-double v6, v12

    div-double/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    :cond_7
    return-object v2
.end method

.method public doSubstitution(DLjava/lang/StringBuffer;II)V
    .locals 15

    invoke-virtual/range {p0 .. p2}, Landroid/icu/text/NumeratorSubstitution;->transformNumber(D)D

    move-result-wide v12

    iget-boolean v3, p0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v3, :cond_1

    double-to-long v10, v12

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    :goto_0
    const-wide/16 v4, 0xa

    mul-long/2addr v10, v4

    long-to-double v4, v10

    iget-wide v6, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    iget v3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v3, v3, p4

    const/16 v4, 0x20

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    const-wide/16 v4, 0x0

    iget v6, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v7, p4, v6

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v2

    add-int p4, p4, v3

    :cond_1
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v3, v12, v4

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    double-to-long v4, v12

    iget v6, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v7, p4, v6

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget v4, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v7, p4, v4

    move-wide v4, v12

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuffer;II)V

    goto :goto_1

    :cond_3
    iget v3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v3, v3, p4

    iget-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v4, v12, v13}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/icu/text/NumeratorSubstitution;

    iget-wide v2, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    iget-wide v4, v0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    iget-boolean v3, v0, Landroid/icu/text/NumeratorSubstitution;->withZeros:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method tokenChar()C
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public transformNumber(D)D
    .locals 3

    iget-wide v0, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 5

    long-to-double v0, p1

    iget-wide v2, p0, Landroid/icu/text/NumeratorSubstitution;->denominator:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method
