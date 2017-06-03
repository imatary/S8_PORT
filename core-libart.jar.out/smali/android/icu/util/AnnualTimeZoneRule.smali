.class public Landroid/icu/util/AnnualTimeZoneRule;
.super Landroid/icu/util/TimeZoneRule;
.source "AnnualTimeZoneRule.java"


# static fields
.field public static final MAX_YEAR:I = 0x7fffffff

.field private static final serialVersionUID:J = -0x7b1af05f36c7b6e0L


# instance fields
.field private final dateTimeRule:Landroid/icu/util/DateTimeRule;

.field private final endYear:I

.field private final startYear:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object p4, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    iput p5, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    if-le p6, v0, :cond_0

    move p6, v0

    :cond_0
    iput p6, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    return-void
.end method


# virtual methods
.method public getEndYear()I
    .locals 1

    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    return v0
.end method

.method public getFinalStart(II)Ljava/util/Date;
    .locals 2

    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFirstStart(II)Ljava/util/Date;
    .locals 1

    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNextStart(JIIZ)Ljava/util/Date;
    .locals 7

    const/4 v3, 0x0

    invoke-static {p1, p2, v3}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v1

    const/4 v3, 0x0

    aget v2, v1, v3

    iget v3, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {p0, v2, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-ltz v3, :cond_1

    if-nez p5, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getPreviousStart(JIIZ)Ljava/util/Date;
    .locals 7

    const/4 v3, 0x0

    invoke-static {p1, p2, v3}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v1

    const/4 v3, 0x0

    aget v2, v1, v3

    iget v3, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    if-le v2, v3, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getFinalStart(II)Ljava/util/Date;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {p0, v2, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-gtz v3, :cond_1

    if-nez p5, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3, p3, p4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getRule()Landroid/icu/util/DateTimeRule;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    return-object v0
.end method

.method public getStartInYear(III)Ljava/util/Date;
    .locals 18

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    move/from16 v0, p1

    if-lt v0, v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    move/from16 v0, p1

    if-le v0, v13, :cond_1

    :cond_0
    const/4 v13, 0x0

    return-object v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v7

    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v14}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v14

    move/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v8

    :goto_0
    const-wide/32 v14, 0x5265c00

    mul-long/2addr v14, v8

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v10, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_2

    move/from16 v0, p2

    int-to-long v14, v0

    sub-long/2addr v10, v14

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v13

    if-nez v13, :cond_3

    move/from16 v0, p3

    int-to-long v14, v0

    sub-long/2addr v10, v14

    :cond_3
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v10, v11}, Ljava/util/Date;-><init>(J)V

    return-object v13

    :cond_4
    const/4 v2, 0x1

    const/4 v13, 0x1

    if-ne v7, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v12

    if-lez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v13

    const/4 v14, 0x1

    move/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v8

    add-int/lit8 v13, v12, -0x1

    mul-int/lit8 v13, v13, 0x7

    int-to-long v14, v13

    add-long/2addr v8, v14

    :goto_1
    invoke-static {v8, v9}, Landroid/icu/impl/Grego;->dayOfWeek(J)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v13

    sub-int v3, v13, v5

    if-eqz v2, :cond_a

    if-gez v3, :cond_5

    add-int/lit8 v3, v3, 0x7

    :cond_5
    :goto_2
    int-to-long v14, v3

    add-long/2addr v8, v14

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v14}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v14

    move/from16 v0, p1

    invoke-static {v0, v14}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v14

    move/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v8

    add-int/lit8 v13, v12, 0x1

    mul-int/lit8 v13, v13, 0x7

    int-to-long v14, v13

    add-long/2addr v8, v14

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v13}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v4

    const/4 v13, 0x3

    if-ne v7, v13, :cond_8

    const/4 v2, 0x0

    const/4 v13, 0x1

    if-ne v6, v13, :cond_8

    const/16 v13, 0x1d

    if-ne v4, v13, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/icu/impl/Grego;->isLeapYear(I)Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_8
    :goto_3
    move/from16 v0, p1

    invoke-static {v0, v6, v4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v8

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_a
    if-lez v3, :cond_5

    add-int/lit8 v3, v3, -0x7

    goto :goto_2
.end method

.method public getStartYear()I
    .locals 1

    iget v0, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    return v0
.end method

.method public isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .locals 4

    const/4 v3, 0x0

    instance-of v1, p1, Landroid/icu/util/AnnualTimeZoneRule;

    if-nez v1, :cond_0

    return v3

    :cond_0
    move-object v0, p1

    nop

    nop

    iget v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    iget v2, v0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    iget v2, v0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    iget-object v2, v0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v1

    return v1

    :cond_1
    return v3
.end method

.method public isTransitionRule()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/icu/util/TimeZoneRule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", rule={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->dateTimeRule:Landroid/icu/util/DateTimeRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", startYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/util/AnnualTimeZoneRule;->startYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", endYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "max"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget v1, p0, Landroid/icu/util/AnnualTimeZoneRule;->endYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
