.class public Landroid/icu/util/TimeArrayTimeZoneRule;
.super Landroid/icu/util/TimeZoneRule;
.source "TimeArrayTimeZoneRule.java"


# static fields
.field private static final serialVersionUID:J = -0xf80c4d5c99c274dL


# instance fields
.field private final startTimes:[J

.field private final timeType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II[JI)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    if-eqz p4, :cond_0

    array-length v0, p4

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No start times are specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    iget-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    iput p5, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    return-void
.end method

.method private getUTC(JII)J
    .locals 3

    iget v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    int-to-long v0, p3

    sub-long/2addr p1, v0

    :cond_0
    iget v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    if-nez v0, :cond_1

    int-to-long v0, p4

    sub-long/2addr p1, v0

    :cond_1
    return-wide p1
.end method


# virtual methods
.method public getFinalStart(II)Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    iget-object v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    invoke-direct {p0, v2, v3, p1, p2}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getFirstStart(II)Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-direct {p0, v2, v3, p1, p2}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNextStart(JIIZ)Ljava/util/Date;
    .locals 7

    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v4, v1, v0

    invoke-direct {p0, v4, v5, p3, p4}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-ltz v1, :cond_0

    if-nez p5, :cond_1

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/Date;

    iget-object v4, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    invoke-direct {p0, v4, v5, p3, p4}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public getPreviousStart(JIIZ)Ljava/util/Date;
    .locals 7

    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v4, v1, v0

    invoke-direct {p0, v4, v5, p3, p4}, Landroid/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-ltz v1, :cond_0

    if-eqz p5, :cond_1

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStartTimes()[J
    .locals 1

    iget-object v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public getTimeType()I
    .locals 1

    iget v0, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    return v0
.end method

.method public isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/icu/util/TimeArrayTimeZoneRule;

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    move-object v0, p1

    nop

    nop

    iget v0, v0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    move-object v0, p1

    nop

    nop

    iget-object v0, v0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method public isTransitionRule()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/icu/util/TimeZoneRule;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", timeType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->timeType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ", startTimes=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Landroid/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
