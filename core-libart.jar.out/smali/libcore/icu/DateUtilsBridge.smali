.class public final Llibcore/icu/DateUtilsBridge;
.super Ljava/lang/Object;
.source "DateUtilsBridge.java"


# static fields
.field public static final FORMAT_12HOUR:I = 0x40

.field public static final FORMAT_24HOUR:I = 0x80

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;
    .locals 2

    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    invoke-virtual {v0, p2, p3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public static dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I
    .locals 2

    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static fallInSameMonth(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fallInSameYear(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fallOnDifferentDates(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;
    .locals 2

    new-instance v0, Landroid/icu/impl/JavaTimeZone;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/JavaTimeZone;-><init>(Ljava/util/TimeZone;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/JavaTimeZone;->freeze()Landroid/icu/util/TimeZone;

    return-object v0
.end method

.method private static isThisYear(Landroid/icu/util/Calendar;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static onTheHour(Landroid/icu/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static toSkeleton(Landroid/icu/util/Calendar;I)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p0, p1}, Llibcore/icu/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/high16 v5, 0x80000

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    const v5, 0x1c000

    or-int/2addr p2, v5

    :cond_0
    const-string/jumbo v1, "MMMM"

    const/high16 v5, 0x20000

    and-int/2addr v5, p2

    if-eqz v5, :cond_e

    const-string/jumbo v1, "M"

    :cond_1
    :goto_0
    const-string/jumbo v3, "EEEE"

    const v5, 0x8000

    and-int/2addr v5, p2

    if-eqz v5, :cond_2

    const-string/jumbo v3, "EEE"

    :cond_2
    const-string/jumbo v2, "j"

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_f

    const-string/jumbo v2, "H"

    :cond_3
    :goto_1
    and-int/lit16 v5, p2, 0x4000

    if-eqz v5, :cond_4

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_10

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-static {p0, p1}, Llibcore/icu/DateUtilsBridge;->fallOnDifferentDates(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_6

    or-int/lit8 p2, p2, 0x10

    :cond_6
    invoke-static {p0, p1}, Llibcore/icu/DateUtilsBridge;->fallInSameMonth(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_7

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_7

    and-int/lit8 p2, p2, -0x3

    and-int/lit8 p2, p2, -0x2

    :cond_7
    and-int/lit8 v4, p2, 0x13

    if-nez v4, :cond_8

    or-int/lit8 p2, p2, 0x10

    :cond_8
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_9

    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_12

    :cond_9
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v4, p2, 0x30

    if-eqz v4, :cond_b

    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "y"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, p2, 0x20

    if-nez v4, :cond_b

    const-string/jumbo v4, "d"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_e
    const/high16 v5, 0x10000

    and-int/2addr v5, p2

    if-eqz v5, :cond_1

    const-string/jumbo v1, "MMM"

    goto/16 :goto_0

    :cond_f
    and-int/lit8 v5, p2, 0x40

    if-eqz v5, :cond_3

    const-string/jumbo v2, "h"

    goto/16 :goto_1

    :cond_10
    invoke-static {p0}, Llibcore/icu/DateUtilsBridge;->onTheHour(Landroid/icu/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {p1}, Llibcore/icu/DateUtilsBridge;->onTheHour(Landroid/icu/util/Calendar;)Z

    move-result v4

    :cond_11
    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_12
    and-int/lit8 v4, p2, 0x8

    if-nez v4, :cond_9

    invoke-static {p0, p1}, Llibcore/icu/DateUtilsBridge;->fallInSameYear(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {p0}, Llibcore/icu/DateUtilsBridge;->isThisYear(Landroid/icu/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_13
    or-int/lit8 p2, p2, 0x4

    goto :goto_3
.end method
