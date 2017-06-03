.class Landroid/icu/text/PluralRules$RangeConstraint;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Landroid/icu/text/PluralRules$Constraint;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeConstraint"
.end annotation


# static fields
.field private static final synthetic -android-icu-text-PluralRules$SampleTypeSwitchesValues:[I = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final inRange:Z

.field private final integersOnly:Z

.field private final lowerBound:D

.field private final mod:I

.field private final operand:Landroid/icu/text/PluralRules$Operand;

.field private final range_list:[J

.field private final upperBound:D


# direct methods
.method private static synthetic -getandroid-icu-text-PluralRules$SampleTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/text/PluralRules$RangeConstraint;->-android-icu-text-PluralRules$SampleTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/PluralRules$RangeConstraint;->-android-icu-text-PluralRules$SampleTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/PluralRules$SampleType;->values()[Landroid/icu/text/PluralRules$SampleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Landroid/icu/text/PluralRules$RangeConstraint;->-android-icu-text-PluralRules$SampleTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(IZLandroid/icu/text/PluralRules$Operand;ZDD[J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    iput-boolean p2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    iput-boolean p4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    iput-wide p5, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iput-wide p7, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    iput-object p9, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    iput-object p3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    return-void
.end method


# virtual methods
.method public isFulfilled(Landroid/icu/text/PluralRules$FixedDecimal;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {p1, v6}, Landroid/icu/text/PluralRules$FixedDecimal;->get(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v2

    iget-boolean v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    if-eqz v6, :cond_1

    double-to-long v6, v2

    long-to-double v6, v6

    sub-double v6, v2, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_1

    :cond_0
    iget-boolean v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v6, :cond_4

    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v7, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    if-ne v6, v7, :cond_2

    iget v6, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-nez v6, :cond_0

    :cond_2
    iget v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    if-eqz v6, :cond_3

    iget v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    int-to-double v6, v6

    rem-double/2addr v2, v6

    :cond_3
    iget-wide v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    cmpl-double v6, v2, v6

    if-ltz v6, :cond_5

    iget-wide v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_5

    move v1, v5

    :goto_1
    if-eqz v1, :cond_7

    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    if-eqz v6, :cond_7

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    if-nez v1, :cond_7

    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    array-length v6, v6

    if-ge v0, v6, :cond_7

    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    aget-wide v6, v6, v0

    long-to-double v6, v6

    cmpl-double v6, v2, v6

    if-ltz v6, :cond_6

    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    add-int/lit8 v7, v0, 0x1

    aget-wide v6, v6, v7

    long-to-double v6, v6

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_6

    const/4 v1, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    iget-boolean v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-ne v6, v1, :cond_8

    :goto_4
    return v5

    :cond_8
    move v5, v4

    goto :goto_4
.end method

.method public isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 8

    const/4 v2, 0x0

    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_1

    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    if-ne v3, v4, :cond_2

    :cond_0
    iget-boolean v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eq v3, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Landroid/icu/text/PluralRules$RangeConstraint;->-getandroid-icu-text-PluralRules$SampleTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    if-eq v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    if-nez v0, :cond_6

    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    if-ne v3, v4, :cond_7

    :cond_4
    :goto_2
    iget v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    if-nez v3, :cond_5

    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    :cond_5
    :goto_3
    return v2

    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    if-ne v3, v4, :cond_5

    goto :goto_2

    :pswitch_1
    if-eqz v0, :cond_8

    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    if-ne v3, v4, :cond_b

    :cond_8
    :goto_4
    iget-boolean v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    if-nez v3, :cond_9

    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_a

    :cond_9
    iget v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    if-nez v3, :cond_a

    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    :cond_a
    return v2

    :cond_b
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    if-ne v3, v4, :cond_a

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    if-eqz v2, :cond_0

    const-string/jumbo v2, " % "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    move v7, v8

    :goto_0
    if-nez v7, :cond_3

    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, " = "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    if-eqz v2, :cond_8

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    array-length v2, v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    aget-wide v2, v2, v0

    long-to-double v2, v2

    iget-object v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    long-to-double v4, v4

    if-eqz v0, :cond_7

    move v6, v8

    :goto_3
    invoke-static/range {v1 .. v6}, Landroid/icu/text/PluralRules;->-wrap1(Ljava/lang/StringBuilder;DDZ)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_1
    move v7, v9

    goto :goto_0

    :cond_2
    const-string/jumbo v2, " != "

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, " = "

    goto :goto_1

    :cond_4
    const-string/jumbo v2, " != "

    goto :goto_1

    :cond_5
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, " within "

    goto :goto_1

    :cond_6
    const-string/jumbo v2, " not within "

    goto :goto_1

    :cond_7
    move v6, v9

    goto :goto_3

    :cond_8
    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    move v6, v9

    invoke-static/range {v1 .. v6}, Landroid/icu/text/PluralRules;->-wrap1(Ljava/lang/StringBuilder;DDZ)V

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
