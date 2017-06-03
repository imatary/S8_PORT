.class abstract Landroid/icu/text/NFSubstitution;
.super Ljava/lang/Object;
.source "NFSubstitution.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final numberFormat:Landroid/icu/text/DecimalFormat;

.field final pos:I

.field final ruleSet:Landroid/icu/text/NFRuleSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/NFSubstitution;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/NFSubstitution;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/NFSubstitution;->pos:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iput-object p2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iput-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal substitution syntax"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_3

    iget-object v1, p2, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1, p3}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iput-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_4

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_5

    :cond_4
    iput-object v4, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget-object v1, p2, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormat;

    iput-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p3}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_6

    iput-object p2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iput-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal substitution syntax"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static makeSubstitution(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Landroid/icu/text/NFSubstitution;
    .locals 10

    const-wide/16 v8, -0x1

    const-wide/16 v6, -0x2

    const-wide/16 v4, -0x3

    const-wide/16 v2, -0x4

    const/4 v1, 0x0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal substitution character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "<< not allowed in negative-number rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/icu/text/IntegralPartSubstitution;

    invoke-direct {v0, p0, p3, p5}, Landroid/icu/text/IntegralPartSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    :cond_3
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/icu/text/NumeratorSubstitution;

    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p4}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultRuleSet()Landroid/icu/text/NFRuleSet;

    move-result-object v4

    move v1, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/NumeratorSubstitution;-><init>(IDLandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v0, Landroid/icu/text/MultiplierSubstitution;

    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getDivisor()D

    move-result-wide v2

    move v1, p0

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MultiplierSubstitution;-><init>(IDLandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_5

    new-instance v0, Landroid/icu/text/AbsoluteValueSubstitution;

    invoke-direct {v0, p0, p3, p5}, Landroid/icu/text/AbsoluteValueSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    :cond_5
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    :cond_6
    new-instance v0, Landroid/icu/text/FractionalPartSubstitution;

    invoke-direct {v0, p0, p3, p5}, Landroid/icu/text/FractionalPartSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    :cond_7
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, ">> not allowed in fraction rule set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Landroid/icu/text/ModulusSubstitution;

    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getDivisor()D

    move-result-wide v2

    move v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/ModulusSubstitution;-><init>(IDLandroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/icu/text/SameValueSubstitution;

    invoke-direct {v0, p0, p3, p5}, Landroid/icu/text/SameValueSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract calcUpperBound(D)D
.end method

.method public abstract composeRuleValue(DD)D
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 7

    invoke-virtual {p0, p5, p6}, Landroid/icu/text/NFSubstitution;->calcUpperBound(D)D

    move-result-wide p5

    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {v3, p1, p2, p5, p6}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    move-result-object v2

    if-eqz p7, :cond_0

    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {v3}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/icu/text/NFSubstitution;->composeRuleValue(DD)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v4, v4

    cmpl-double v3, v0, v4

    if-nez v3, :cond_3

    double-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget-object v3, v3, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v3}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v3

    :cond_4
    return-object v2
.end method

.method public doSubstitution(DLjava/lang/StringBuffer;II)V
    .locals 11

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFSubstitution;->transformNumber(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {v0, v4, v5}, Landroid/icu/text/NFRuleSet;->findRule(D)Landroid/icu/text/NFRule;

    move-result-object v1

    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v5, p4, v0

    move-object v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuffer;II)V

    return-void

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_1

    iget-object v5, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    double-to-long v6, v2

    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v9, p4, v0

    move-object v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_2

    iget-object v5, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v9, p4, v0

    move-wide v6, v2

    move-object v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuffer;II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int/2addr v0, p4

    iget-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v4, v2, v3}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public doSubstitution(JLjava/lang/StringBuffer;II)V
    .locals 11

    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFSubstitution;->transformNumber(J)J

    move-result-wide v2

    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v5, p4, v0

    move-object v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    :goto_0
    return-void

    :cond_0
    long-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/NFSubstitution;->transformNumber(D)D

    move-result-wide v8

    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    :cond_1
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int/2addr v0, p4

    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, v8, v9}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_6

    move-object v0, p1

    check-cast v0, Landroid/icu/text/NFSubstitution;

    iget v3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    iget v4, v0, Landroid/icu/text/NFSubstitution;->pos:I

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-nez v3, :cond_5

    :cond_2
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    if-nez v3, :cond_4

    iget-object v3, v0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    iget-object v2, v0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    return v2
.end method

.method public final getPos()I
    .locals 1

    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    sget-boolean v0, Landroid/icu/text/NFSubstitution;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public isModulusSubstitution()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    :cond_0
    return-void
.end method

.method public setDivisor(II)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {v1}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract tokenChar()C
.end method

.method public abstract transformNumber(D)D
.end method

.method public abstract transformNumber(J)J
.end method
