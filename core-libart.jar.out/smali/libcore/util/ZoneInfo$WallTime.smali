.class public Llibcore/util/ZoneInfo$WallTime;
.super Ljava/lang/Object;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallTime"
.end annotation


# instance fields
.field private final calendar:Ljava/util/GregorianCalendar;

.field private gmtOffsetSeconds:I

.field private hour:I

.field private isDst:I

.field private minute:I

.field private month:I

.field private monthDay:I

.field private second:I

.field private weekDay:I

.field private year:I

.field private yearDay:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/GregorianCalendar;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    iput-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private copyFieldsFromCalendar()V
    .locals 2

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->weekDay:I

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->yearDay:I

    return-void
.end method

.method private copyFieldsToCalendar()V
    .locals 3

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    iget v1, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    iget v1, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    iget v1, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    iget v1, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    iget v1, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    iget v1, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    return-void
.end method

.method private doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    const v8, 0x15180

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :cond_0
    add-int/lit8 v2, v12, 0x1

    div-int/lit8 v16, v2, 0x2

    rem-int/lit8 v2, v12, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    mul-int/lit8 v16, v16, -0x1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    if-lez v16, :cond_2

    if-nez v10, :cond_3

    :cond_2
    if-gez v16, :cond_4

    if-eqz v9, :cond_4

    :cond_3
    :goto_0
    if-eqz v10, :cond_e

    move v2, v9

    :goto_1
    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_4
    add-int v6, p2, v16

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Llibcore/util/ZoneInfo$OffsetInterval;->create(Llibcore/util/ZoneInfo;I)Llibcore/util/ZoneInfo$OffsetInterval;

    move-result-object v5

    if-nez v5, :cond_7

    if-lez v16, :cond_5

    const/4 v2, 0x1

    :goto_2
    or-int/2addr v10, v2

    if-gez v16, :cond_6

    const/4 v2, 0x1

    :goto_3
    or-int/2addr v9, v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    if-eqz p4, :cond_9

    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v5, v2, v3}, Llibcore/util/ZoneInfo$OffsetInterval;->containsWallTime(J)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-ne v2, v3, :cond_a

    :cond_8
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getTotalOffsetSeconds()I

    move-result v15

    move/from16 v0, p3

    invoke-static {v0, v15}, Llibcore/util/ZoneInfo;->-wrap1(II)I

    move-result v13

    invoke-direct/range {p0 .. p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    move-object/from16 v0, p0

    iput v15, v0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    move-result v3

    if-eq v2, v3, :cond_a

    move-object/from16 v0, p0

    iget v7, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Llibcore/util/ZoneInfo$WallTime;->tryOffsetAdjustments(Llibcore/util/ZoneInfo;ILlibcore/util/ZoneInfo$OffsetInterval;II)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_a

    return-object v14

    :cond_a
    if-lez v16, :cond_c

    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getEndWallTimeSeconds()J

    move-result-wide v2

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v2, v2, v18

    const-wide/32 v18, 0x15180

    cmp-long v2, v2, v18

    if-lez v2, :cond_b

    const/4 v11, 0x1

    :goto_4
    if-eqz v11, :cond_3

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v11, 0x0

    goto :goto_4

    :cond_c
    if-gez v16, :cond_3

    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getStartWallTimeSeconds()J

    move-result-wide v18

    sub-long v2, v2, v18

    const-wide/32 v18, 0x15180

    cmp-long v2, v2, v18

    if-ltz v2, :cond_d

    const/4 v11, 0x1

    :goto_5
    if-eqz v11, :cond_3

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v11, 0x0

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private static getOffsetsOfType(Llibcore/util/ZoneInfo;II)[I
    .locals 13

    const/4 v12, -0x1

    const/4 v11, 0x0

    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get1(Llibcore/util/ZoneInfo;)[I

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    new-array v5, v10, [I

    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get1(Llibcore/util/ZoneInfo;)[I

    move-result-object v10

    array-length v10, v10

    new-array v6, v10, [Z

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v3

    :goto_0
    mul-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int v8, p1, v2

    if-gez v2, :cond_1

    if-ge v8, v12, :cond_1

    const/4 v0, 0x1

    move v3, v4

    :goto_1
    if-eqz v1, :cond_4

    move v10, v0

    :goto_2
    if-nez v10, :cond_5

    move v4, v3

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get4(Llibcore/util/ZoneInfo;)[B

    move-result-object v10

    array-length v10, v10

    if-lt v8, v10, :cond_2

    const/4 v1, 0x1

    move v3, v4

    goto :goto_1

    :cond_2
    if-ne v8, v12, :cond_3

    if-nez p2, :cond_7

    add-int/lit8 v3, v4, 0x1

    aput v11, v5, v4

    goto :goto_1

    :cond_3
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get4(Llibcore/util/ZoneInfo;)[B

    move-result-object v10

    aget-byte v10, v10, v8

    and-int/lit16 v9, v10, 0xff

    aget-boolean v10, v6, v9

    if-nez v10, :cond_7

    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get0(Llibcore/util/ZoneInfo;)[B

    move-result-object v10

    aget-byte v10, v10, v9

    if-ne v10, p2, :cond_6

    add-int/lit8 v3, v4, 0x1

    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get1(Llibcore/util/ZoneInfo;)[I

    move-result-object v10

    aget v10, v10, v9

    aput v10, v5, v4

    :goto_3
    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    goto :goto_1

    :cond_4
    move v10, v11

    goto :goto_2

    :cond_5
    new-array v7, v3, [I

    invoke-static {v5, v11, v7, v11, v3}, Ljava/lang/System;->arraycopy([II[III)V

    return-object v7

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_1
.end method

.method private tryOffsetAdjustments(Llibcore/util/ZoneInfo;ILlibcore/util/ZoneInfo$OffsetInterval;II)Ljava/lang/Integer;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Llibcore/util/ZoneInfo$WallTime;->getOffsetsOfType(Llibcore/util/ZoneInfo;II)[I

    move-result-object v8

    const/4 v6, 0x0

    :goto_0
    array-length v12, v8

    if-ge v6, v12, :cond_1

    invoke-static/range {p1 .. p1}, Llibcore/util/ZoneInfo;->-get2(Llibcore/util/ZoneInfo;)I

    move-result v12

    div-int/lit16 v9, v12, 0x3e8

    aget v12, v8, v6

    add-int v7, v9, v12

    invoke-virtual/range {p3 .. p3}, Llibcore/util/ZoneInfo$OffsetInterval;->getTotalOffsetSeconds()I

    move-result v11

    sub-int v5, v11, v7

    move/from16 v0, p2

    int-to-long v12, v0

    invoke-static {v12, v13, v5}, Llibcore/util/ZoneInfo;->-wrap0(JI)I

    move-result v4

    int-to-long v12, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Llibcore/util/ZoneInfo$OffsetInterval;->containsWallTime(J)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v4, v11}, Llibcore/util/ZoneInfo;->-wrap1(II)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    int-to-long v14, v4

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-direct/range {p0 .. p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    invoke-virtual/range {p3 .. p3}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    move-object/from16 v0, p0

    iput v11, v0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    return-object v12

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    return-object v12
.end method


# virtual methods
.method public getGmtOffset()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    return v0
.end method

.method public getHour()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    return v0
.end method

.method public getIsDst()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    return v0
.end method

.method public getMonthDay()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    return v0
.end method

.method public getSecond()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    return v0
.end method

.method public getWeekDay()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->weekDay:I

    return v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    return v0
.end method

.method public getYearDay()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->yearDay:I

    return v0
.end method

.method public localtime(ILlibcore/util/ZoneInfo;)V
    .locals 10

    :try_start_0
    invoke-static {p2}, Llibcore/util/ZoneInfo;->-get2(Llibcore/util/ZoneInfo;)I

    move-result v5

    div-int/lit16 v3, v5, 0x3e8

    invoke-static {p2}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    int-to-long v6, p1

    invoke-static {v6, v7, v3}, Llibcore/util/ZoneInfo;->-wrap0(JI)I

    move-result v4

    iget-object v5, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    int-to-long v6, v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    iput v1, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    iput v3, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    :goto_1
    return-void

    :cond_0
    int-to-long v6, p1

    invoke-virtual {p2, v6, v7}, Llibcore/util/ZoneInfo;->findOffsetIndexForTimeInSeconds(J)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Llibcore/util/ZoneInfo;->-get1(Llibcore/util/ZoneInfo;)[I

    move-result-object v5

    aget v5, v5, v2

    add-int/2addr v3, v5

    invoke-static {p2}, Llibcore/util/ZoneInfo;->-get0(Llibcore/util/ZoneInfo;)[B

    move-result-object v5

    aget-byte v1, v5, v2
    :try_end_0
    .catch Llibcore/util/ZoneInfo$CheckedArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public mktime(Llibcore/util/ZoneInfo;)I
    .locals 14

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    iget v11, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-lez v11, :cond_1

    iput v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    :goto_0
    iput v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    invoke-direct {p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsToCalendar()V

    iget-object v8, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v2, v10, v12

    const-wide/32 v10, -0x80000000

    cmp-long v8, v10, v2

    if-gtz v8, :cond_0

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v2, v10

    if-lez v8, :cond_3

    :cond_0
    return v9

    :cond_1
    iget v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-gez v8, :cond_2

    iput v9, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    move v8, v9

    goto :goto_0

    :cond_2
    move v8, v10

    goto :goto_0

    :cond_3
    long-to-int v7, v2

    :try_start_0
    invoke-static {p1}, Llibcore/util/ZoneInfo;->-get2(Llibcore/util/ZoneInfo;)I

    move-result v8

    div-int/lit16 v4, v8, 0x3e8

    invoke-static {v7, v4}, Llibcore/util/ZoneInfo;->-wrap1(II)I

    move-result v5

    invoke-static {p1}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_5

    iget v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-lez v8, :cond_4

    return v9

    :cond_4
    invoke-direct {p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    const/4 v8, 0x0

    iput v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    iput v4, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    return v5

    :cond_5
    int-to-long v10, v5

    invoke-virtual {p1, v10, v11}, Llibcore/util/ZoneInfo;->findTransitionIndex(J)I

    move-result v1

    iget v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-gez v8, :cond_7

    const/4 v8, 0x1

    invoke-direct {p0, p1, v1, v7, v8}, Llibcore/util/ZoneInfo$WallTime;->doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_6

    :goto_1
    return v9

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1

    :cond_7
    const/4 v8, 0x1

    invoke-direct {p0, p1, v1, v7, v8}, Llibcore/util/ZoneInfo$WallTime;->doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_8

    const/4 v8, 0x0

    invoke-direct {p0, p1, v1, v7, v8}, Llibcore/util/ZoneInfo$WallTime;->doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;

    move-result-object v6

    :cond_8
    if-nez v6, :cond_9

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Llibcore/util/ZoneInfo$CheckedArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    return v8

    :catch_0
    move-exception v0

    return v9
.end method

.method public setGmtOffset(I)V
    .locals 0

    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    return-void
.end method

.method public setHour(I)V
    .locals 0

    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    return-void
.end method

.method public setIsDst(I)V
    .locals 0

    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    return-void
.end method

.method public setMinute(I)V
    .locals 0

    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    return-void
.end method

.method public setMonth(I)V
    .locals 0

    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    return-void
.end method

.method public setMonthDay(I)V
    .locals 0

    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    return-void
.end method

.method public setSecond(I)V
    .locals 0

    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    return-void
.end method

.method public setWeekDay(I)V
    .locals 0

    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->weekDay:I

    return-void
.end method

.method public setYear(I)V
    .locals 0

    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    return-void
.end method

.method public setYearDay(I)V
    .locals 0

    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->yearDay:I

    return-void
.end method
