.class public Landroid/icu/util/PersianCalendar;
.super Landroid/icu/util/Calendar;
.source "PersianCalendar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LIMITS:[[I

.field private static final MONTH_COUNT:[[I

.field private static final PERSIAN_EPOCH:I = 0x1dbaa0

.field private static final serialVersionUID:J = -0x5d5c320ee73c81dbL


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v7, -0x4c4b40

    const/4 v6, 0x1

    const/16 v4, 0x1e

    const/16 v3, 0x1f

    const/4 v5, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [[I

    filled-new-array {v3, v3, v5}, [I

    move-result-object v1

    aput-object v1, v0, v5

    filled-new-array {v3, v3, v3}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x3e

    filled-new-array {v3, v3, v1}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x5d

    filled-new-array {v3, v3, v1}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x7c

    filled-new-array {v3, v3, v1}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x9b

    filled-new-array {v3, v3, v1}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0xba

    filled-new-array {v4, v4, v1}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0xd8

    filled-new-array {v4, v4, v1}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0xf6

    filled-new-array {v4, v4, v1}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x114

    filled-new-array {v4, v4, v1}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0x132

    filled-new-array {v4, v4, v1}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x1d

    const/16 v2, 0x150

    filled-new-array {v1, v4, v2}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    const/16 v0, 0x16

    new-array v0, v0, [[I

    filled-new-array {v5, v5, v5, v5}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x4c4b40

    const v2, 0x4c4b40

    filled-new-array {v7, v7, v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0xb

    const/16 v2, 0xb

    filled-new-array {v5, v5, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x34

    const/16 v2, 0x35

    filled-new-array {v6, v6, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x1d

    filled-new-array {v6, v6, v1, v3}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x16d

    const/16 v2, 0x16e

    filled-new-array {v6, v6, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x5

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const v1, 0x4c4b40

    const v2, 0x4c4b40

    filled-new-array {v7, v7, v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const v1, 0x4c4b40

    const v2, 0x4c4b40

    filled-new-array {v7, v7, v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v5, [I

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/PersianCalendar;->LIMITS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method private static final isLeapYear(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [I

    mul-int/lit8 v3, p0, 0x19

    add-int/lit8 v3, v3, 0xb

    const/16 v4, 0x21

    invoke-static {v3, v4, v0}, Landroid/icu/util/PersianCalendar;->floorDivide(II[I)I

    aget v3, v0, v2

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "persian"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v8, 0x1dbaa0

    sub-int v8, p1, v8

    int-to-long v2, v8

    const-wide/16 v8, 0x21

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    const-wide/16 v10, 0x2f15

    invoke-static {v8, v9, v10, v11}, Landroid/icu/util/PersianCalendar;->floorDivide(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    add-int/lit8 v7, v8, 0x1

    add-int/lit8 v8, v7, -0x1

    mul-int/lit16 v8, v8, 0x16d

    mul-int/lit8 v9, v7, 0x8

    add-int/lit8 v9, v9, 0x15

    const/16 v10, 0x21

    invoke-static {v9, v10}, Landroid/icu/util/PersianCalendar;->floorDivide(II)I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v4, v8

    sub-long v8, v2, v4

    long-to-int v1, v8

    const/16 v8, 0xd8

    if-ge v1, v8, :cond_0

    div-int/lit8 v6, v1, 0x1f

    :goto_0
    sget-object v8, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object v8, v8, v6

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-int v8, v1, v8

    add-int/lit8 v0, v8, 0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v8, 0x1

    invoke-virtual {p0, v8, v7}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/16 v8, 0x13

    invoke-virtual {p0, v8, v7}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v8, 0x2

    invoke-virtual {p0, v8, v6}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v8, 0x5

    invoke-virtual {p0, v8, v0}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v8, 0x6

    invoke-virtual {p0, v8, v1}, Landroid/icu/util/Calendar;->internalSet(II)V

    return-void

    :cond_0
    add-int/lit8 v8, v1, -0x6

    div-int/lit8 v6, v8, 0x1e

    goto :goto_0
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    if-ltz p2, :cond_0

    const/16 v2, 0xb

    if-le p2, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [I

    const/16 v2, 0xc

    invoke-static {p2, v2, v1}, Landroid/icu/util/PersianCalendar;->floorDivide(II[I)I

    move-result v2

    add-int/2addr p1, v2

    aget p2, v1, v3

    :cond_1
    add-int/lit8 v2, p1, -0x1

    mul-int/lit16 v2, v2, 0x16d

    const v3, 0x1dba9f

    add-int/2addr v2, v3

    mul-int/lit8 v3, p1, 0x8

    add-int/lit8 v3, v3, 0x15

    const/16 v4, 0x21

    invoke-static {v3, v4}, Landroid/icu/util/PersianCalendar;->floorDivide(II)I

    move-result v3

    add-int v0, v2, v3

    if-eqz p2, :cond_2

    sget-object v2, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object v2, v2, p2

    const/4 v3, 0x2

    aget v2, v2, v3

    add-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method protected handleGetExtendedYear()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v3, 0x13

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->newerField(II)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/icu/util/PersianCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p2, :cond_0

    const/16 v3, 0xb

    if-le p2, v3, :cond_1

    :cond_0
    new-array v0, v1, [I

    const/16 v3, 0xc

    invoke-static {p2, v3, v0}, Landroid/icu/util/PersianCalendar;->floorDivide(II[I)I

    move-result v3

    add-int/2addr p1, v3

    aget p2, v0, v2

    :cond_1
    sget-object v3, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object v3, v3, p2

    invoke-static {p1}, Landroid/icu/util/PersianCalendar;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    aget v1, v3, v1

    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method protected handleGetYearLength(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/icu/util/PersianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method
