.class public final Llibcore/icu/DateIntervalFormat;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# static fields
.field private static final CACHED_FORMATTERS:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    sput-object v0, Llibcore/icu/DateIntervalFormat;->CACHED_FORMATTERS:Llibcore/util/BasicLruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateRange(JJILjava/lang/String;)Ljava/lang/String;
    .locals 8

    and-int/lit16 v2, p4, 0x2000

    if-eqz v2, :cond_0

    const-string/jumbo p5, "UTC"

    :cond_0
    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    :goto_0
    invoke-static {v7}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v0 .. v6}, Llibcore/icu/DateIntervalFormat;->formatDateRange(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJI)Ljava/lang/String;
    .locals 12

    invoke-static {p1, p0, p2, p3}, Llibcore/icu/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v6

    cmp-long v7, p2, p4

    if-nez v7, :cond_2

    move-object v2, v6

    :goto_0
    invoke-static {v2}, Llibcore/icu/DateIntervalFormat;->isMidnight(Landroid/icu/util/Calendar;)Z

    move-result v3

    cmp-long v7, p2, p4

    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    and-int/lit8 v7, p6, 0x1

    if-eqz v7, :cond_0

    invoke-static {v6, v2}, Llibcore/icu/DateUtilsBridge;->dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    :cond_0
    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Landroid/icu/util/Calendar;->add(II)V

    :cond_1
    move/from16 v0, p6

    invoke-static {v6, v2, v0}, Llibcore/icu/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Llibcore/icu/DateIntervalFormat;->CACHED_FORMATTERS:Llibcore/util/BasicLruCache;

    monitor-enter v8

    :try_start_0
    invoke-static {v5, p0, p1}, Llibcore/icu/DateIntervalFormat;->getFormatter(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/text/FieldPosition;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v4, v6, v2, v7, v9}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    monitor-exit v8

    return-object v7

    :cond_2
    move-wide/from16 v0, p4

    invoke-static {p1, p0, v0, v1}, Llibcore/icu/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private static getFormatter(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;)Landroid/icu/text/DateIntervalFormat;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Llibcore/icu/DateIntervalFormat;->CACHED_FORMATTERS:Llibcore/util/BasicLruCache;

    invoke-virtual {v2, v1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateIntervalFormat;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/text/DateIntervalFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    sget-object v2, Llibcore/icu/DateIntervalFormat;->CACHED_FORMATTERS:Llibcore/util/BasicLruCache;

    invoke-virtual {v2, v1, v0}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static isMidnight(Landroid/icu/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
