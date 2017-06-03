.class public final Llibcore/icu/RelativeDateTimeFormatter;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;
    }
.end annotation


# static fields
.field private static final CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final DAY_IN_MS:I = 0x5265c00

.field private static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    invoke-direct {v0}, Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;-><init>()V

    sput-object v0, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dayDistance(Landroid/icu/util/TimeZone;JJ)I
    .locals 3

    invoke-static {p0, p3, p4}, Llibcore/icu/RelativeDateTimeFormatter;->julianDay(Landroid/icu/util/TimeZone;J)I

    move-result v0

    invoke-static {p0, p1, p2}, Llibcore/icu/RelativeDateTimeFormatter;->julianDay(Landroid/icu/util/TimeZone;J)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    sget-object v2, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    invoke-virtual {v2, v1}, Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter;

    if-nez v0, :cond_0

    invoke-static {p0, v4, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    sget-object v2, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    invoke-virtual {v2, v1, v0}, Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getRelativeDateTimeString(Ljava/util/Locale;Ljava/util/TimeZone;JJJJI)Ljava/lang/String;
    .locals 22

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "locale == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "tz == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v3

    sub-long v4, p4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    const-wide/32 v4, 0x240c8400

    cmp-long v4, p8, v4

    if-lez v4, :cond_2

    const-wide/32 p8, 0x240c8400

    :cond_2
    const/high16 v4, 0xc0000

    and-int v4, v4, p10

    if-eqz v4, :cond_4

    sget-object v18, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    :goto_0
    move-wide/from16 v0, p2

    invoke-static {v3, v2, v0, v1}, Llibcore/icu/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v19

    move-wide/from16 v0, p4

    invoke-static {v3, v2, v0, v1}, Llibcore/icu/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v15

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Llibcore/icu/DateUtilsBridge;->dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    cmp-long v4, v16, p8

    if-gez v4, :cond_5

    if-lez v14, :cond_3

    const-wide/32 v4, 0x5265c00

    cmp-long v4, p6, v4

    if-gez v4, :cond_3

    const-wide/32 p6, 0x5265c00

    :cond_3
    sget-object v11, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p10

    invoke-static/range {v2 .. v11}, Llibcore/icu/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v13

    :goto_1
    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-static {v2, v0, v5, v4}, Llibcore/icu/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v20

    sget-object v12, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    sget-object v5, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, v18

    invoke-static {v2, v0, v12}, Llibcore/icu/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v13, v0}, Landroid/icu/text/RelativeDateTimeFormatter;->combineDateAndTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    :cond_4
    sget-object v18, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_6

    const p10, 0x20014

    :goto_2
    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    move-object/from16 v0, v19

    move/from16 v1, p10

    invoke-static {v2, v0, v1, v4}, Llibcore/icu/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_6
    const p10, 0x10018

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .locals 22

    sub-long v18, p4, p2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v17, p4, p2

    if-ltz v17, :cond_1

    const/4 v11, 0x1

    :goto_0
    const/high16 v17, 0xc0000

    and-int v17, v17, p8

    if-eqz v17, :cond_2

    sget-object v14, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    :goto_1
    if-eqz v11, :cond_3

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    :goto_2
    const/4 v12, 0x1

    const/4 v4, 0x0

    const-wide/32 v18, 0xea60

    cmp-long v17, v8, v18

    if-gez v17, :cond_4

    const-wide/32 v18, 0xea60

    cmp-long v17, p6, v18

    if-gez v17, :cond_4

    const-wide/16 v18, 0x3e8

    div-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    :cond_0
    :goto_3
    sget-object v18, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v18

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-static {v0, v14, v1}, Llibcore/icu/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v7

    if-eqz v12, :cond_e

    int-to-double v0, v5

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    invoke-virtual {v7, v0, v1, v6, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v17

    monitor-exit v18

    return-object v17

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    sget-object v14, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    goto :goto_1

    :cond_3
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    goto :goto_2

    :cond_4
    const-wide/32 v18, 0x36ee80

    cmp-long v17, v8, v18

    if-gez v17, :cond_5

    const-wide/32 v18, 0x36ee80

    cmp-long v17, p6, v18

    if-gez v17, :cond_5

    const-wide/32 v18, 0xea60

    div-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_3

    :cond_5
    const-wide/32 v18, 0x5265c00

    cmp-long v17, v8, v18

    if-gez v17, :cond_6

    const-wide/32 v18, 0x5265c00

    cmp-long v17, p6, v18

    if-gez v17, :cond_6

    const-wide/32 v18, 0x36ee80

    div-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_3

    :cond_6
    const-wide/32 v18, 0x240c8400

    cmp-long v17, v8, v18

    if-gez v17, :cond_a

    const-wide/32 v18, 0x240c8400

    cmp-long v17, p6, v18

    if-gez v17, :cond_a

    invoke-static/range {p1 .. p5}, Llibcore/icu/RelativeDateTimeFormatter;->dayDistance(Landroid/icu/util/TimeZone;JJ)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v5, v0, :cond_8

    if-eqz v11, :cond_7

    sget-object v18, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v18

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-static {v0, v14, v1}, Llibcore/icu/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v17

    sget-object v19, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v20, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    :goto_4
    monitor-exit v18

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    return-object v13

    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    :cond_7
    sget-object v18, Llibcore/icu/RelativeDateTimeFormatter;->CACHED_FORMATTERS:Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;

    monitor-enter v18

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-static {v0, v14, v1}, Llibcore/icu/RelativeDateTimeFormatter;->getFormatter(Landroid/icu/util/ULocale;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v17

    sget-object v19, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    sget-object v20, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v13

    goto :goto_4

    :catchall_1
    move-exception v17

    monitor-exit v18

    throw v17

    :cond_8
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_9
    if-nez v5, :cond_0

    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_a
    const-wide/32 v18, 0x240c8400

    cmp-long v17, p6, v18

    if-nez v17, :cond_b

    const-wide/32 v18, 0x240c8400

    div-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    sget-object v16, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Llibcore/icu/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v15

    and-int/lit8 v17, p8, 0xc

    if-nez v17, :cond_c

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Llibcore/icu/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v10

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    or-int/lit8 p8, p8, 0x4

    :cond_c
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, p8

    move-object/from16 v2, p9

    invoke-static {v0, v15, v1, v2}, Llibcore/icu/DateTimeFormat;->format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_d
    or-int/lit8 p8, p8, 0x8

    goto :goto_5

    :cond_e
    :try_start_3
    invoke-virtual {v7, v6, v4}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v17

    monitor-exit v18

    return-object v17

    :catchall_2
    move-exception v17

    monitor-exit v18

    throw v17
.end method

.method public static getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJI)Ljava/lang/String;
    .locals 10

    sget-object v9, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Llibcore/icu/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "locale == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "tz == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p1}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Llibcore/icu/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJJILandroid/icu/text/DisplayContext;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static julianDay(Landroid/icu/util/TimeZone;J)I
    .locals 5

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    add-long v0, p1, v2

    const-wide/32 v2, 0x5265c00

    div-long v2, v0, v2

    long-to-int v2, v2

    const v3, 0x253d8c    # 3.419992E-39f

    add-int/2addr v2, v3

    return v2
.end method
