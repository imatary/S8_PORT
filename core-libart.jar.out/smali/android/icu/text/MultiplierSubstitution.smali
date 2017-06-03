.class Landroid/icu/text/MultiplierSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field divisor:D


# direct methods
.method constructor <init>(IDLandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p4, p5}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    iput-wide p2, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Substitution with divisor 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2

    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3

    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    check-cast p1, Landroid/icu/text/MultiplierSubstitution;

    iget-wide v4, p1, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setDivisor(II)V
    .locals 4

    int-to-double v0, p1

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Substitution with divisor 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method tokenChar()C
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public transformNumber(D)D
    .locals 3

    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    div-double v0, p1, v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    div-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 5

    long-to-double v0, p1

    iget-wide v2, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method
