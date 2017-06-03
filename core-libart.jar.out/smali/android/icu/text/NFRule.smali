.class final Landroid/icu/text/NFRule;
.super Ljava/lang/Object;
.source "NFRule.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final IMPROPER_FRACTION_RULE:I = -0x2

.field static final INFINITY_RULE:I = -0x5

.field static final MASTER_RULE:I = -0x4

.field static final NAN_RULE:I = -0x6

.field static final NEGATIVE_NUMBER_RULE:I = -0x1

.field static final PROPER_FRACTION_RULE:I = -0x3

.field private static final RULE_PREFIXES:[Ljava/lang/String;

.field static final ZERO:Ljava/lang/Long;


# instance fields
.field private baseValue:J

.field private decimalPoint:C

.field private exponent:S

.field private final formatter:Landroid/icu/text/RuleBasedNumberFormat;

.field private radix:I

.field private rulePatternFormat:Landroid/icu/text/PluralFormat;

.field private ruleText:Ljava/lang/String;

.field private sub1:Landroid/icu/text/NFSubstitution;

.field private sub2:Landroid/icu/text/NFSubstitution;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Landroid/icu/text/NFRule;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/text/NFRule;->-assertionsDisabled:Z

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "<<"

    aput-object v3, v0, v1

    const-string/jumbo v1, "<%"

    aput-object v1, v0, v2

    const-string/jumbo v1, "<#"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "<0"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, ">>"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, ">%"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, ">#"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, ">0"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "=%"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "=#"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "=0"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xa

    iput v1, p0, Landroid/icu/text/NFRule;->radix:I

    iput-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    iput-char v2, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    iput-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    iput-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    iput-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    iput-object p1, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    if-nez p2, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    return-void

    :cond_0
    invoke-direct {p0, p2}, Landroid/icu/text/NFRule;->parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private allIgnorable(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v2, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v2}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/icu/text/RbnfLenientScanner;->allIgnorable(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private expectedExponent()S
    .locals 7

    const/4 v6, 0x0

    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    if-eqz v1, :cond_0

    iget-wide v2, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    :cond_0
    return v6

    :cond_1
    iget-wide v2, p0, Landroid/icu/text/NFRule;->baseValue:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int v1, v2

    int-to-short v0, v1

    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-double v2, v1

    add-int/lit8 v1, v0, 0x1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    long-to-double v4, v4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    return v1

    :cond_2
    return v0
.end method

.method private extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;
    .locals 9

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-static {v1}, Landroid/icu/text/NFRule;->indexOfAnyRulePrefix(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    return-object v4

    :cond_0
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v2, ">>>"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v8, v0, 0x2

    :cond_1
    :goto_0
    if-ne v8, v3, :cond_3

    return-object v4

    :cond_2
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const/16 v1, 0x3c

    if-ne v6, v1, :cond_1

    if-eq v8, v3, :cond_1

    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v8, v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/icu/text/NFSubstitution;->makeSubstitution(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Landroid/icu/text/NFSubstitution;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    return-object v7
.end method

.method private extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V
    .locals 8

    const/4 v6, 0x0

    iput-object p2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Landroid/icu/text/NFRule;->extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    iget-object v5, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-nez v5, :cond_0

    iput-object v6, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    :goto_0
    iget-object p2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v5, "$("

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    const-string/jumbo v5, ")$"

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :goto_1
    if-ltz v1, :cond_3

    const/16 v5, 0x2c

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Rule \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\" does not have a defined type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/icu/text/NFRule;->extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "cardinal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v3, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    :goto_2
    iget-object v5, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/icu/text/RuleBasedNumberFormat;->createPluralFormat(Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)Landroid/icu/text/PluralFormat;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v5, "ordinal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v3, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is an unknown type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private findText(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/PluralFormat;I)[I
    .locals 11

    iget-object v8, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v8}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    move-result-object v5

    if-eqz p3, :cond_1

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v3, p4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p3, p1, v5, v3}, Landroid/icu/text/PluralFormat;->parseType(Ljava/lang/String;Landroid/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v6

    if-ltz v6, :cond_0

    iget-object v8, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v9, "$("

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v8, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v9, ")$"

    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    add-int/lit8 v2, v8, 0x2

    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v8

    sub-int v0, v8, v6

    iget-object v8, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v4, v10, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int v8, v6, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v7, v10, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v9, v6, v9

    const/4 v10, 0x0

    aput v9, v8, v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x1

    aput v9, v8, v10

    return-object v8

    :cond_0
    const/4 v8, -0x1

    const/4 v9, 0x0

    filled-new-array {v8, v9}, [I

    move-result-object v8

    return-object v8

    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {v5, p1, p2, p4}, Landroid/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v8

    return-object v8

    :cond_2
    const/4 v8, 0x2

    new-array v8, v8, [I

    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x0

    aput v9, v8, v10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    aput v9, v8, v10

    return-object v8
.end method

.method private static indexOfAnyRulePrefix(Ljava/lang/String;)I
    .locals 7

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    sget-object v4, Landroid/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v4, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_1

    if-eq v1, v6, :cond_0

    if-ge v0, v1, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static makeRules(Ljava/lang/String;Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;Landroid/icu/text/RuleBasedNumberFormat;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/NFRuleSet;",
            "Landroid/icu/text/NFRule;",
            "Landroid/icu/text/RuleBasedNumberFormat;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/NFRule;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Landroid/icu/text/NFRule;

    move-object/from16 v0, p3

    invoke-direct {v4, v0, p0}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    iget-object p0, v4, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/16 v7, 0x5b

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    const/4 v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    if-le v2, v3, :cond_3

    :cond_0
    move-object/from16 v0, p2

    invoke-direct {v4, p1, p0, v0}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    :cond_1
    :goto_1
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_d

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void

    :cond_2
    const/16 v7, 0x5d

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    goto :goto_0

    :cond_3
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, -0x3

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, -0x5

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, -0x6

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_9

    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    long-to-double v8, v8

    iget v7, v4, Landroid/icu/text/NFRule;->radix:I

    int-to-double v10, v7

    iget-short v7, v4, Landroid/icu/text/NFRule;->exponent:S

    int-to-double v12, v7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    rem-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-nez v7, :cond_9

    :cond_4
    :goto_3
    new-instance v5, Landroid/icu/text/NFRule;

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-direct {v5, v0, v7}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_a

    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    iput-wide v8, v5, Landroid/icu/text/NFRule;->baseValue:J

    invoke-virtual {p1}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v7

    if-nez v7, :cond_5

    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    :cond_5
    :goto_4
    iget v7, v4, Landroid/icu/text/NFRule;->radix:I

    iput v7, v5, Landroid/icu/text/NFRule;->radix:I

    iget-short v7, v4, Landroid/icu/text/NFRule;->exponent:S

    iput-short v7, v5, Landroid/icu/text/NFRule;->exponent:S

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-direct {v5, p1, v7, v0}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    :cond_7
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-direct {v4, p1, v7, v0}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    if-eqz v5, :cond_1

    iget-wide v8, v5, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_c

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, -0x2

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, -0x4

    cmp-long v7, v8, v10

    if-nez v7, :cond_7

    goto/16 :goto_3

    :cond_a
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, -0x2

    cmp-long v7, v8, v10

    if-nez v7, :cond_b

    const-wide/16 v8, -0x3

    iput-wide v8, v5, Landroid/icu/text/NFRule;->baseValue:J

    goto/16 :goto_4

    :cond_b
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v10, -0x4

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    iput-wide v8, v5, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x2

    iput-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p1, v5}, Landroid/icu/text/NFRuleSet;->setNonNumericalRule(Landroid/icu/text/NFRule;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p1, v4}, Landroid/icu/text/NFRuleSet;->setNonNumericalRule(Landroid/icu/text/NFRule;)V

    goto/16 :goto_2
.end method

.method private matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;D)Ljava/lang/Number;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Landroid/icu/text/NFRule;->allIgnorable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v9, Ljava/text/ParsePosition;

    const/4 v7, 0x0

    invoke-direct {v9, v7}, Ljava/text/ParsePosition;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/PluralFormat;I)[I

    move-result-object v21

    const/4 v7, 0x0

    aget v19, v21, v7

    const/4 v7, 0x1

    aget v6, v21, v7

    :goto_0
    if-ltz v19, :cond_1

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v7}, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    move-result v14

    move-object/from16 v7, p8

    move-wide/from16 v10, p3

    move-wide/from16 v12, p9

    invoke-virtual/range {v7 .. v14}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object v22

    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    move/from16 v0, v19

    if-ne v7, v0, :cond_0

    add-int v7, v19, v6

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v22

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v9, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int v7, v19, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/PluralFormat;I)[I

    move-result-object v21

    const/4 v7, 0x0

    aget v19, v21, v7

    const/4 v7, 0x1

    aget v6, v21, v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    sget-object v7, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    return-object v7

    :cond_2
    if-nez p8, :cond_3

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    return-object v7

    :cond_3
    new-instance v9, Ljava/text/ParsePosition;

    const/4 v7, 0x0

    invoke-direct {v9, v7}, Ljava/text/ParsePosition;-><init>(I)V

    sget-object v20, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v7}, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    move-result v18

    move-object/from16 v11, p8

    move-object/from16 v12, p1

    move-object v13, v9

    move-wide/from16 v14, p3

    move-wide/from16 v16, p9

    invoke-virtual/range {v11 .. v18}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object v22

    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz v22, :cond_4

    move-object/from16 v20, v22

    :cond_4
    return-object v20
.end method

.method private parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string/jumbo v8, ":"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_d

    const/4 v8, 0x0

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x30

    if-lt v3, v8, :cond_c

    const/16 v8, 0x39

    if-gt v3, v8, :cond_c

    const/16 v8, 0x78

    if-eq v4, v8, :cond_c

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    if-lt v0, v8, :cond_2

    const/16 v8, 0x39

    if-gt v0, v8, :cond_2

    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v10, v0, -0x30

    int-to-long v10, v10

    add-long v6, v8, v10

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/16 v8, 0x2f

    if-eq v0, v8, :cond_3

    const/16 v8, 0x3e

    if-ne v0, v8, :cond_5

    :cond_3
    invoke-virtual {p0, v6, v7}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    const/16 v8, 0x2f

    if-ne v0, v8, :cond_a

    const-wide/16 v6, 0x0

    add-int/lit8 v5, v5, 0x1

    :goto_2
    if-ge v5, v2, :cond_7

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x30

    if-lt v0, v8, :cond_6

    const/16 v8, 0x39

    if-gt v0, v8, :cond_6

    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v10, v0, -0x30

    int-to-long v10, v10

    add-long v6, v8, v10

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v8

    if-nez v8, :cond_1

    const/16 v8, 0x2c

    if-eq v0, v8, :cond_1

    const/16 v8, 0x2e

    if-eq v0, v8, :cond_1

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal character "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in rule descriptor"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_8

    :cond_7
    long-to-int v8, v6

    iput v8, p0, Landroid/icu/text/NFRule;->radix:I

    iget v8, p0, Landroid/icu/text/NFRule;->radix:I

    if-nez v8, :cond_9

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Rule can\'t have radix of 0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v8

    if-nez v8, :cond_4

    const/16 v8, 0x2c

    if-eq v0, v8, :cond_4

    const/16 v8, 0x2e

    if-eq v0, v8, :cond_4

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal character "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in rule descriptor"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9
    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    move-result v8

    iput-short v8, p0, Landroid/icu/text/NFRule;->exponent:S

    :cond_a
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_d

    :goto_3
    if-ge v5, v2, :cond_d

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x3e

    if-ne v0, v8, :cond_b

    iget-short v8, p0, Landroid/icu/text/NFRule;->exponent:S

    if-lez v8, :cond_b

    iget-short v8, p0, Landroid/icu/text/NFRule;->exponent:S

    add-int/lit8 v8, v8, -0x1

    int-to-short v8, v8

    iput-short v8, p0, Landroid/icu/text/NFRule;->exponent:S

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Illegal character in rule descriptor"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_c
    const-string/jumbo v8, "-x"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-wide/16 v8, -0x1

    invoke-virtual {p0, v8, v9}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    :cond_d
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_e

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_e

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_e
    return-object p1

    :cond_f
    const/4 v8, 0x3

    if-ne v2, v8, :cond_d

    const/16 v8, 0x30

    if-ne v3, v8, :cond_10

    const/16 v8, 0x78

    if-ne v4, v8, :cond_10

    const-wide/16 v8, -0x3

    invoke-virtual {p0, v8, v9}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    goto :goto_4

    :cond_10
    const/16 v8, 0x78

    if-ne v3, v8, :cond_11

    const/16 v8, 0x78

    if-ne v4, v8, :cond_11

    const-wide/16 v8, -0x2

    invoke-virtual {p0, v8, v9}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    goto :goto_4

    :cond_11
    const/16 v8, 0x78

    if-ne v3, v8, :cond_12

    const/16 v8, 0x30

    if-ne v4, v8, :cond_12

    const-wide/16 v8, -0x4

    invoke-virtual {p0, v8, v9}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iput-char v8, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    goto :goto_4

    :cond_12
    const-string/jumbo v8, "NaN"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const-wide/16 v8, -0x6

    invoke-virtual {p0, v8, v9}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    goto :goto_4

    :cond_13
    const-string/jumbo v8, "Inf"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-wide/16 v8, -0x5

    invoke-virtual {p0, v8, v9}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    goto :goto_4
.end method

.method private prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/icu/text/RbnfLenientScanner;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    :cond_2
    return v2
.end method

.method private stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRule;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public doFormat(DLjava/lang/StringBuffer;II)V
    .locals 15

    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v9, 0x0

    iget-object v3, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v3, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    iget-object v4, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v4

    if-le v4, v11, :cond_6

    move v4, v9

    :goto_1
    sub-int v7, p4, v4

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;II)V

    :cond_0
    iget-object v3, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v4

    if-le v4, v11, :cond_7

    :goto_2
    sub-int v7, p4, v9

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;II)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v4, "$("

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v4, ")$"

    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v10, v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v4, v10, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    move-wide/from16 v12, p1

    const-wide/16 v4, 0x0

    cmpg-double v3, v4, p1

    if-gtz v3, :cond_5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_5

    iget v3, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-double v4, v3

    iget-short v3, p0, Landroid/icu/text/NFRule;->exponent:S

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v12, v4

    :goto_3
    iget-object v3, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    double-to-long v4, v12

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    if-lez v11, :cond_4

    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v9, v3, v4

    goto/16 :goto_0

    :cond_5
    iget v3, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-double v4, v3

    iget-short v3, p0, Landroid/icu/text/NFRule;->exponent:S

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double v12, p1, v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_2
.end method

.method public doFormat(JLjava/lang/StringBuffer;II)V
    .locals 15

    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v9, 0x0

    iget-object v3, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v3, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    iget-object v4, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v4

    if-le v4, v11, :cond_5

    move v4, v9

    :goto_1
    sub-int v7, p4, v4

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuffer;II)V

    :cond_0
    iget-object v3, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v4

    if-le v4, v11, :cond_6

    :goto_2
    sub-int v7, p4, v9

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuffer;II)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v4, "$("

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v4, ")$"

    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v10, v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v4, v10, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v3, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    move-wide/from16 v0, p1

    long-to-double v4, v0

    iget v6, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-double v6, v6

    iget-short v8, p0, Landroid/icu/text/NFRule;->exponent:S

    int-to-double v12, v8

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-long v4, v4

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    if-lez v11, :cond_4

    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v9, v3, v4

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;
    .locals 28

    new-instance v10, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v10, v3}, Ljava/text/ParsePosition;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v3}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v23

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v3}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v26

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/4 v8, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v10}, Landroid/icu/text/NFRule;->stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v22, v3, v8

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v23, :cond_2

    sget-object v3, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v26

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v16, -0x5

    cmp-long v3, v8, v16

    if-nez v3, :cond_3

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3

    :cond_3
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v16, -0x6

    cmp-long v3, v8, v16

    if-nez v3, :cond_4

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3

    :cond_4
    const/4 v2, 0x0

    const-wide/16 v24, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/text/NFRule;->baseValue:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    long-to-double v6, v8

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    move/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    move-object/from16 v3, p0

    move-wide/from16 v12, p4

    invoke-direct/range {v3 .. v13}, Landroid/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;D)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-nez v3, :cond_8

    :cond_6
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    new-instance v18, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    move-object/from16 v19, v0

    const/4 v13, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v20, p4

    invoke-direct/range {v11 .. v21}, Landroid/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;D)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-nez v3, :cond_8

    :cond_7
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int v3, v3, v22

    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    add-int/2addr v3, v8

    if-le v3, v2, :cond_8

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int v3, v3, v22

    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    add-int v2, v3, v8

    move-wide/from16 v24, v14

    :cond_8
    move/from16 v0, v23

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_9

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-ne v3, v5, :cond_5

    :cond_9
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz p3, :cond_a

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-nez v3, :cond_a

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v24, v8, v24

    :cond_a
    move-wide/from16 v0, v24

    double-to-long v8, v0

    long-to-double v8, v8

    cmpl-double v3, v24, v8

    if-nez v3, :cond_b

    move-wide/from16 v0, v24

    double-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    :cond_b
    new-instance v3, Ljava/lang/Double;

    move-wide/from16 v0, v24

    invoke-direct {v3, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/icu/text/NFRule;

    if-eqz v2, :cond_1

    move-object v0, p1

    nop

    nop

    iget-wide v2, p0, Landroid/icu/text/NFRule;->baseValue:J

    iget-wide v4, v0, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Landroid/icu/text/NFRule;->radix:I

    iget v3, v0, Landroid/icu/text/NFRule;->radix:I

    if-ne v2, v3, :cond_0

    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    iget-short v3, v0, Landroid/icu/text/NFRule;->exponent:S

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    iget-object v2, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public final getBaseValue()J
    .locals 2

    iget-wide v0, p0, Landroid/icu/text/NFRule;->baseValue:J

    return-wide v0
.end method

.method public final getDecimalPoint()C
    .locals 1

    iget-char v0, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    return v0
.end method

.method public getDivisor()D
    .locals 4

    iget v0, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-double v0, v0

    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    sget-boolean v0, Landroid/icu/text/NFRule;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method final setBaseValue(J)V
    .locals 5

    iput-wide p1, p0, Landroid/icu/text/NFRule;->baseValue:J

    const/16 v0, 0xa

    iput v0, p0, Landroid/icu/text/NFRule;->radix:I

    iget-wide v0, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    move-result v0

    iput-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NFSubstitution;->setDivisor(II)V

    :cond_0
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NFSubstitution;->setDivisor(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    goto :goto_0
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v0, p1}, Landroid/icu/text/NFSubstitution;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    :cond_0
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v0, p1}, Landroid/icu/text/NFSubstitution;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    :cond_1
    return-void
.end method

.method public shouldRollBack(D)Z
    .locals 11

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    iget-object v1, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->isModulusSubstitution()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->isModulusSubstitution()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-double v2, v1

    iget-short v1, p0, Landroid/icu/text/NFRule;->exponent:S

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    rem-double v2, p1, v2

    cmpl-double v1, v2, v8

    if-nez v1, :cond_2

    iget-wide v2, p0, Landroid/icu/text/NFRule;->baseValue:J

    long-to-double v2, v2

    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-double v4, v1

    iget-short v1, p0, Landroid/icu/text/NFRule;->exponent:S

    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    rem-double/2addr v2, v4

    cmpl-double v1, v2, v8

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    const/16 v10, 0x78

    const/16 v4, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    const-string/jumbo v4, "-x: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/16 v4, 0x27

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v4

    iget-object v5, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v5}, Landroid/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v4

    iget-object v5, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v5}, Landroid/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_4
    iget-wide v6, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x2

    cmp-long v5, v6, v8

    if-nez v5, :cond_6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    if-nez v6, :cond_5

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    iget-char v4, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    goto :goto_1

    :cond_6
    iget-wide v6, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x3

    cmp-long v5, v6, v8

    if-nez v5, :cond_8

    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    if-nez v6, :cond_7

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    iget-char v4, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    goto :goto_2

    :cond_8
    iget-wide v6, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x4

    cmp-long v5, v6, v8

    if-nez v5, :cond_a

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    if-nez v6, :cond_9

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    iget-char v4, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    goto :goto_3

    :cond_a
    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v6, -0x5

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    const-string/jumbo v4, "Inf: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_b
    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v6, -0x6

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    const-string/jumbo v4, "NaN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_c
    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/icu/text/NFRule;->radix:I

    const/16 v5, 0xa

    if-eq v4, v5, :cond_d

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/icu/text/NFRule;->radix:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_d
    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    move-result v4

    iget-short v5, p0, Landroid/icu/text/NFRule;->exponent:S

    sub-int v1, v4, v5

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_e

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    const-string/jumbo v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
