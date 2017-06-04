.class public Lcom/sec/samsung/gallery/util/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# instance fields
.field private day:I

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->year:I

    iput v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->month:I

    iput v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->day:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->year:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->month:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->day:I

    return-void
.end method

.method private endOfBeforeYear(Z)J
    .locals 7

    const/16 v5, 0x3b

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->year:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0x17

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/util/TimeUtil;->floor3digits(Ljava/lang/Long;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method private endOfToday(Z)J
    .locals 7

    const/16 v5, 0x3b

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->year:I

    iget v2, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->month:I

    iget v3, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->day:I

    const/16 v4, 0x17

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/util/TimeUtil;->floor3digits(Ljava/lang/Long;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method private floor3digits(Ljava/lang/Long;)J
    .locals 4

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private startOf2DaysAgo(Z)J
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->year:I

    iget v2, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->month:I

    iget v3, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->day:I

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/4 v1, 0x7

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/util/TimeUtil;->floor3digits(Ljava/lang/Long;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method private startOf30DaysAgo(Z)J
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->year:I

    iget v2, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->month:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->day:I

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/util/TimeUtil;->floor3digits(Ljava/lang/Long;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method private startOf7DaysAgo(Z)J
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->year:I

    iget v2, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->month:I

    iget v3, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->day:I

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/util/TimeUtil;->floor3digits(Ljava/lang/Long;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method private startOfBeforeYear(Z)J
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x7b2

    const/4 v3, 0x1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/util/TimeUtil;->floor3digits(Ljava/lang/Long;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method private startOfPastMonths(IZ)J
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->year:I

    iget v2, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->month:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/util/TimeUtil;->floor3digits(Ljava/lang/Long;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method


# virtual methods
.method public endOfBeforeYear()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->endOfBeforeYear(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public endOfToday()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->endOfToday(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastYear()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->year:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public startOf2DaysAgo()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOf2DaysAgo(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public startOf30DaysAgo()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOf30DaysAgo(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public startOf7DaysAgo()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOf7DaysAgo(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public startOfBeforeYear()J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOfBeforeYear(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public startOfPastMonths(I)J
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/util/TimeUtil;->startOfPastMonths(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public startOfToday(Z)J
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->year:I

    iget v2, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->month:I

    iget v3, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->day:I

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/util/TimeUtil;->floor3digits(Ljava/lang/Long;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method public today()J
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->year:I

    iget v2, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->month:I

    iget v3, p0, Lcom/sec/samsung/gallery/util/TimeUtil;->day:I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method
