.class Landroid/icu/text/PluralRules$Rule;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final constraint:Landroid/icu/text/PluralRules$Constraint;

.field private final decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

.field private final integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

.field private final keyword:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    iput-object p3, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    iput-object p4, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    return-void
.end method


# virtual methods
.method public and(Landroid/icu/text/PluralRules$Constraint;)Landroid/icu/text/PluralRules$Rule;
    .locals 5

    new-instance v0, Landroid/icu/text/PluralRules$Rule;

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    new-instance v2, Landroid/icu/text/PluralRules$AndConstraint;

    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-direct {v2, v3, p1}, Landroid/icu/text/PluralRules$AndConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    iget-object v4, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V

    return-object v0
.end method

.method public appliesTo(Landroid/icu/text/PluralRules$FixedDecimal;)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isFulfilled(Landroid/icu/text/PluralRules$FixedDecimal;)Z

    move-result v0

    return v0
.end method

.method public getConstraint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    return v0
.end method

.method public or(Landroid/icu/text/PluralRules$Constraint;)Landroid/icu/text/PluralRules$Rule;
    .locals 5

    new-instance v0, Landroid/icu/text/PluralRules$Rule;

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    new-instance v2, Landroid/icu/text/PluralRules$OrConstraint;

    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-direct {v2, v3, p1}, Landroid/icu/text/PluralRules$OrConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    iget-object v4, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    invoke-virtual {v2}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    invoke-virtual {v2}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
