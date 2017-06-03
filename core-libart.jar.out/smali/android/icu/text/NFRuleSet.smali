.class final Landroid/icu/text/NFRuleSet;
.super Ljava/lang/Object;
.source "NFRuleSet.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final IMPROPER_FRACTION_RULE_INDEX:I = 0x1

.field static final INFINITY_RULE_INDEX:I = 0x4

.field static final MASTER_RULE_INDEX:I = 0x3

.field static final NAN_RULE_INDEX:I = 0x5

.field static final NEGATIVE_RULE_INDEX:I = 0x0

.field static final PROPER_FRACTION_RULE_INDEX:I = 0x2

.field private static final RECURSION_LIMIT:I = 0x40


# instance fields
.field fractionRules:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/icu/text/NFRule;",
            ">;"
        }
    .end annotation
.end field

.field private isFractionRuleSet:Z

.field private final isParseable:Z

.field private final name:Ljava/lang/String;

.field final nonNumericalRules:[Landroid/icu/text/NFRule;

.field final owner:Landroid/icu/text/RuleBasedNumberFormat;

.field private rules:[Landroid/icu/text/NFRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/NFRuleSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/NFRuleSet;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/RuleBasedNumberFormat;[Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x6

    new-array v5, v5, [Landroid/icu/text/NFRule;

    iput-object v5, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    iput-boolean v4, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    iput-object p1, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    aget-object v0, p2, p3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Empty rule set description"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    if-ne v5, v6, :cond_6

    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Rule set name doesn\'t end in colon"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "@noparse"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    iget-boolean v3, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Empty rule set description"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    const-string/jumbo v4, "%default"

    iput-object v4, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    goto :goto_0

    :cond_7
    return-void
.end method

.method private findFractionRuleSetRule(D)Landroid/icu/text/NFRule;
    .locals 15

    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    const/4 v2, 0x1

    :goto_0
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v10, v10

    if-ge v2, v10, :cond_0

    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Landroid/icu/text/NFRuleSet;->lcm(JJ)J

    move-result-wide v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-double v10, v4

    mul-double v10, v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    const-wide v0, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v10, v10

    if-ge v2, v10, :cond_2

    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    mul-long/2addr v10, v6

    rem-long v8, v10, v4

    sub-long v10, v4, v8

    cmp-long v10, v10, v8

    if-gez v10, :cond_1

    sub-long v8, v4, v8

    :cond_1
    cmp-long v10, v8, v0

    if-gez v10, :cond_5

    move-wide v0, v8

    move v3, v2

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_5

    :cond_2
    add-int/lit8 v10, v3, 0x1

    iget-object v11, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v11, v11

    if-ge v10, v11, :cond_4

    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    add-int/lit8 v11, v3, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    iget-object v12, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v12, v12, v3

    invoke-virtual {v12}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    long-to-double v10, v10

    mul-double v10, v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-ltz v10, :cond_3

    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    long-to-double v10, v10

    mul-double v10, v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    const-wide/16 v12, 0x2

    cmp-long v10, v10, v12

    if-ltz v10, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :cond_4
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v10, v10, v3

    return-object v10

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private findNormalRule(J)Landroid/icu/text/NFRule;
    .locals 9

    const/4 v8, 0x0

    iget-boolean v6, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eqz v6, :cond_0

    long-to-double v6, p1

    invoke-direct {p0, v6, v7}, Landroid/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Landroid/icu/text/NFRule;

    move-result-object v6

    return-object v6

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gez v6, :cond_2

    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v6, v6, v8

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v6, v6, v8

    return-object v6

    :cond_1
    neg-long p1, p1

    :cond_2
    const/4 v1, 0x0

    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v0, v6

    if-lez v0, :cond_9

    :goto_0
    if-ge v1, v0, :cond_5

    add-int v6, v1, v0

    ushr-int/lit8 v2, v6, 0x1

    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v6, v6, v2

    return-object v6

    :cond_3
    cmp-long v6, v4, p1

    if-lez v6, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The rule set "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " cannot format the value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    add-int/lit8 v7, v0, -0x1

    aget-object v3, v6, v7

    long-to-double v6, p1

    invoke-virtual {v3, v6, v7}, Landroid/icu/text/NFRule;->shouldRollBack(D)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    if-ne v0, v6, :cond_7

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The rule set "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " cannot roll back from the rule \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    add-int/lit8 v7, v0, -0x2

    aget-object v3, v6, v7

    :cond_8
    return-object v3

    :cond_9
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    return-object v6
.end method

.method private static lcm(JJ)J
    .locals 14

    move-wide v6, p0

    move-wide/from16 v8, p2

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v10, 0x1

    and-long/2addr v10, v6

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_0

    const-wide/16 v10, 0x1

    and-long/2addr v10, v8

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    shr-long/2addr v6, v3

    const/4 v3, 0x1

    shr-long/2addr v8, v3

    goto :goto_0

    :cond_0
    const-wide/16 v10, 0x1

    and-long/2addr v10, v6

    const-wide/16 v12, 0x1

    cmp-long v3, v10, v12

    if-nez v3, :cond_1

    neg-long v4, v8

    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-eqz v3, :cond_4

    :goto_2
    const-wide/16 v10, 0x1

    and-long/2addr v10, v4

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_2

    const/4 v3, 0x1

    shr-long/2addr v4, v3

    goto :goto_2

    :cond_1
    move-wide v4, v6

    goto :goto_1

    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-lez v3, :cond_3

    move-wide v6, v4

    :goto_3
    sub-long v4, v6, v8

    goto :goto_1

    :cond_3
    neg-long v8, v4

    goto :goto_3

    :cond_4
    shl-long v0, v6, v2

    div-long v10, p0, v0

    mul-long v10, v10, p2

    return-wide v10
.end method

.method private setBestFractionRule(ILandroid/icu/text/NFRule;Z)V
    .locals 4

    if-eqz p3, :cond_1

    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    :cond_0
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v0, v2, p1

    if-nez v0, :cond_3

    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aput-object p2, v2, p1

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v2}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {p2}, Landroid/icu/text/NFRule;->getDecimalPoint()C

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aput-object p2, v2, p1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    instance-of v2, p1, Landroid/icu/text/NFRuleSet;

    if-nez v2, :cond_0

    return v4

    :cond_0
    move-object v1, p1

    nop

    nop

    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v2, v2

    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v3, v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v4

    :cond_2
    iget-boolean v2, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    iget-boolean v3, v1, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v2, v2, v0

    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v2, v2, v0

    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/text/NFRule;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    return v2
.end method

.method findRule(D)Landroid/icu/text/NFRule;
    .locals 9

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Landroid/icu/text/NFRule;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v2, 0x5

    aget-object v0, v1, v2

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultNaNRule()Landroid/icu/text/NFRule;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const-wide/16 v2, 0x0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_4

    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v4

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v4

    return-object v1

    :cond_3
    neg-double p1, p1

    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v2, 0x4

    aget-object v0, v1, v2

    if-nez v0, :cond_5

    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultInfinityRule()Landroid/icu/text/NFRule;

    move-result-object v0

    :cond_5
    return-object v0

    :cond_6
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    if-eqz v1, :cond_8

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v1, p1, v2

    if-eqz v1, :cond_8

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_7

    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v6

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v6

    return-object v1

    :cond_7
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v5

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v5

    return-object v1

    :cond_8
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v7

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v7

    return-object v1

    :cond_9
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/icu/text/NFRuleSet;->findNormalRule(J)Landroid/icu/text/NFRule;

    move-result-object v1

    return-object v1
.end method

.method public format(DLjava/lang/StringBuffer;II)V
    .locals 7

    const/16 v0, 0x40

    if-lt p5, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recursion limit exceeded when applying ruleSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findRule(D)Landroid/icu/text/NFRule;

    move-result-object v1

    add-int/lit8 p5, p5, 0x1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuffer;II)V

    return-void
.end method

.method public format(JLjava/lang/StringBuffer;II)V
    .locals 7

    const/16 v0, 0x40

    if-lt p5, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recursion limit exceeded when applying ruleSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findNormalRule(J)Landroid/icu/text/NFRule;

    move-result-object v1

    add-int/lit8 p5, p5, 0x1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(JLjava/lang/StringBuffer;II)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    sget-boolean v0, Landroid/icu/text/NFRuleSet;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public isFractionSet()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    return v0
.end method

.method public isParseable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    return v0
.end method

.method public isPublic()Z
    .locals 2

    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    const-string/jumbo v1, "%%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public makeIntoFractionRuleSet()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;
    .locals 13

    new-instance v8, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Ljava/text/ParsePosition;-><init>(I)V

    sget-object v10, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v10

    :cond_0
    iget-object v7, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    array-length v12, v7

    move v6, v1

    :goto_0
    if-ge v6, v12, :cond_3

    aget-object v0, v7, v6

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-le v1, v2, :cond_1

    move-object v10, v11

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v1, v1

    add-int/lit8 v9, v1, -0x1

    :goto_1
    if-ltz v9, :cond_6

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-boolean v1, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v2

    long-to-double v2, v2

    cmpl-double v1, v2, p3

    if-ltz v1, :cond_4

    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v2, v1, v9

    iget-boolean v5, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-le v1, v2, :cond_5

    move-object v10, v11

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v10
.end method

.method public parseRules(Ljava/lang/String;)V
    .locals 14

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    :cond_0
    const/16 v11, 0x3b

    invoke-virtual {p1, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-gez v6, :cond_1

    move v6, v4

    :cond_1
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-static {v11, p0, v7, v12, v10}, Landroid/icu/text/NFRule;->makeRules(Ljava/lang/String;Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;Landroid/icu/text/RuleBasedNumberFormat;Ljava/util/List;)V

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/NFRule;

    :cond_2
    add-int/lit8 v5, v6, 0x1

    if-lt v5, v4, :cond_0

    const-wide/16 v2, 0x0

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/text/NFRule;

    invoke-virtual {v8}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    const-wide/16 v12, 0x0

    cmp-long v11, v0, v12

    if-nez v11, :cond_4

    invoke-virtual {v8, v2, v3}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    :goto_1
    iget-boolean v11, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-nez v11, :cond_3

    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    goto :goto_0

    :cond_4
    cmp-long v11, v0, v2

    if-gez v11, :cond_5

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Rules are not in order, base: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " < "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    move-wide v2, v0

    goto :goto_1

    :cond_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/icu/text/NFRule;

    iput-object v11, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    iget-object v11, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v5, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    invoke-virtual {v1, p1}, Landroid/icu/text/NFRule;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :goto_1
    const/4 v4, 0x3

    if-gt v0, v4, :cond_3

    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NFRule;

    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-direct {p0, v0, v1, v3}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    array-length v5, v4

    :goto_3
    if-ge v3, v5, :cond_5

    aget-object v1, v4, v3

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Landroid/icu/text/NFRule;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method setNonNumericalRule(Landroid/icu/text/NFRule;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    invoke-direct {p0, v4, p1, v4}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    const/4 v2, 0x2

    invoke-direct {p0, v2, p1, v4}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    goto :goto_0

    :cond_3
    const-wide/16 v2, -0x4

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    const/4 v2, 0x3

    invoke-direct {p0, v2, p1, v4}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    goto :goto_0

    :cond_4
    const-wide/16 v2, -0x5

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v3, 0x4

    aput-object p1, v2, v3

    goto :goto_0

    :cond_5
    const-wide/16 v2, -0x6

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v3, 0x5

    aput-object p1, v2, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v3, v6, v5

    invoke-virtual {v3}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_5

    aget-object v3, v5, v4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v8

    const-wide/16 v10, -0x2

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v8

    const-wide/16 v10, -0x3

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    :cond_1
    iget-object v7, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NFRule;

    invoke-virtual {v0}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v8

    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    invoke-virtual {v0}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v8

    const-wide/16 v10, -0x4

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
