.class abstract Landroid/icu/util/CECalendar;
.super Landroid/icu/util/Calendar;
.source "CECalendar.java"


# static fields
.field private static final LIMITS:[[I

.field private static final serialVersionUID:J = -0xddf1b4470f5acbfL


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const v6, -0x4c4b40

    const v5, 0x4c4b40

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x16

    new-array v0, v0, [[I

    filled-new-array {v3, v3, v4, v4}, [I

    move-result-object v1

    aput-object v1, v0, v3

    filled-new-array {v4, v4, v5, v5}, [I

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0xc

    const/16 v2, 0xc

    filled-new-array {v3, v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x34

    const/16 v2, 0x35

    filled-new-array {v4, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x1e

    filled-new-array {v4, v4, v7, v1}, [I

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0x16d

    const/16 v2, 0x16e

    filled-new-array {v4, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/4 v1, -0x1

    const/4 v2, -0x1

    filled-new-array {v1, v2, v4, v7}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x10

    aput-object v1, v0, v2

    filled-new-array {v6, v6, v5, v5}, [I

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x12

    aput-object v1, v0, v2

    filled-new-array {v6, v6, v5, v5}, [I

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v3, [I

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/CECalendar;->LIMITS:[[I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/Calendar;->set(III)V

    return-void
.end method

.method protected constructor <init>(IIIIII)V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    invoke-virtual/range {p0 .. p6}, Landroid/icu/util/Calendar;->set(IIIIII)V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;)V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public static ceToJD(JIII)I
    .locals 4

    if-ltz p2, :cond_0

    div-int/lit8 v0, p2, 0xd

    int-to-long v0, v0

    add-long/2addr p0, v0

    rem-int/lit8 p2, p2, 0xd

    :goto_0
    int-to-long v0, p4

    const-wide/16 v2, 0x16d

    mul-long/2addr v2, p0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    invoke-static {p0, p1, v2, v3}, Landroid/icu/util/CECalendar;->floorDivide(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    mul-int/lit8 v2, p2, 0x1e

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    div-int/lit8 v0, p2, 0xd

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr p0, v0

    rem-int/lit8 v0, p2, 0xd

    add-int/lit8 p2, v0, 0xc

    goto :goto_0
.end method

.method public static jdToCE(II[I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v2, v7, [I

    sub-int v3, p0, p1

    const/16 v4, 0x5b5

    invoke-static {v3, v4, v2}, Landroid/icu/util/CECalendar;->floorDivide(II[I)I

    move-result v0

    mul-int/lit8 v3, v0, 0x4

    aget v4, v2, v6

    div-int/lit16 v4, v4, 0x16d

    aget v5, v2, v6

    div-int/lit16 v5, v5, 0x5b4

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    aput v3, p2, v6

    aget v3, v2, v6

    const/16 v4, 0x5b4

    if-ne v3, v4, :cond_0

    const/16 v1, 0x16d

    :goto_0
    div-int/lit8 v3, v1, 0x1e

    aput v3, p2, v7

    rem-int/lit8 v3, v1, 0x1e

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    aput v3, p2, v4

    return-void

    :cond_0
    aget v3, v2, v6

    rem-int/lit16 v1, v3, 0x16d

    goto :goto_0
.end method


# virtual methods
.method protected abstract getJDEpochOffset()I
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 4

    int-to-long v0, p1

    invoke-virtual {p0}, Landroid/icu/util/CECalendar;->getJDEpochOffset()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, p2, v3, v2}, Landroid/icu/util/CECalendar;->ceToJD(JIII)I

    move-result v0

    return v0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    sget-object v0, Landroid/icu/util/CECalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 1

    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0xd

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    return v0

    :cond_0
    rem-int/lit8 v0, p1, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x5

    return v0
.end method
