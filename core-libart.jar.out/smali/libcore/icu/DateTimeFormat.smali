.class public Llibcore/icu/DateTimeFormat;
.super Ljava/lang/Object;
.source "DateTimeFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/DateTimeFormat$FormatterCache;
    }
.end annotation


# static fields
.field private static final CACHED_FORMATTERS:Llibcore/icu/DateTimeFormat$FormatterCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llibcore/icu/DateTimeFormat$FormatterCache;

    invoke-direct {v0}, Llibcore/icu/DateTimeFormat$FormatterCache;-><init>()V

    sput-object v0, Llibcore/icu/DateTimeFormat;->CACHED_FORMATTERS:Llibcore/icu/DateTimeFormat$FormatterCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .locals 6

    invoke-static {p1, p2}, Llibcore/icu/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Llibcore/icu/DateTimeFormat;->CACHED_FORMATTERS:Llibcore/icu/DateTimeFormat$FormatterCache;

    monitor-enter v5

    :try_start_0
    sget-object v4, Llibcore/icu/DateTimeFormat;->CACHED_FORMATTERS:Llibcore/icu/DateTimeFormat$FormatterCache;

    invoke-virtual {v4, v2}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v1

    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v3}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, p0}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    sget-object v4, Llibcore/icu/DateTimeFormat;->CACHED_FORMATTERS:Llibcore/icu/DateTimeFormat$FormatterCache;

    invoke-virtual {v4, v2, v0}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p3}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
