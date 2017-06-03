.class Landroid/icu/text/ModulusSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field divisor:D

.field private final ruleToUse:Landroid/icu/text/NFRule;


# direct methods
.method constructor <init>(IDLandroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p5, p6}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    iput-wide p2, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Substitution with bad divisor ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, ">>>"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p4, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    goto :goto_0
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2

    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3

    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    rem-double v0, p3, v0

    sub-double v0, p3, v0

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 9

    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p7}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    move-result-object v8

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p0, v6, v7, p3, p4}, Landroid/icu/text/ModulusSubstitution;->composeRuleValue(DD)D

    move-result-wide v6

    double-to-long v0, v6

    long-to-double v0, v0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_1

    double-to-long v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v6, v7}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    :cond_2
    return-object v8
.end method

.method public doSubstitution(DLjava/lang/StringBuffer;II)V
    .locals 7

    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/ModulusSubstitution;->transformNumber(D)D

    move-result-wide v2

    iget-object v1, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v5, p4, v0

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuffer;II)V

    goto :goto_0
.end method

.method public doSubstitution(JLjava/lang/StringBuffer;II)V
    .locals 7

    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuffer;II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/ModulusSubstitution;->transformNumber(J)J

    move-result-wide v2

    iget-object v1, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v5, p4, v0

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(JLjava/lang/StringBuffer;II)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/icu/text/ModulusSubstitution;

    iget-wide v2, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    iget-wide v4, v0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isModulusSubstitution()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDivisor(II)V
    .locals 4

    int-to-double v0, p1

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Substitution with bad divisor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method tokenChar()C
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public transformNumber(D)D
    .locals 3

    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    rem-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 5

    long-to-double v0, p1

    iget-wide v2, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method
