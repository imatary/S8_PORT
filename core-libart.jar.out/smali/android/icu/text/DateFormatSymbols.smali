.class public Landroid/icu/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    }
.end annotation


# static fields
.field public static final ABBREVIATED:I = 0x0

.field static final ALTERNATE_TIME_SEPARATOR:Ljava/lang/String; = "."

.field private static final CALENDAR_CLASSES:[[Ljava/lang/String;

.field static final DEFAULT_TIME_SEPARATOR:Ljava/lang/String; = ":"

.field private static DFSCACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateFormatSymbols;",
            ">;"
        }
    .end annotation
.end field

.field public static final DT_CONTEXT_COUNT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final DT_LEAP_MONTH_PATTERN_FORMAT_ABBREV:I = 0x1

.field static final DT_LEAP_MONTH_PATTERN_FORMAT_NARROW:I = 0x2

.field static final DT_LEAP_MONTH_PATTERN_FORMAT_WIDE:I = 0x0

.field static final DT_LEAP_MONTH_PATTERN_NUMERIC:I = 0x6

.field static final DT_LEAP_MONTH_PATTERN_STANDALONE_ABBREV:I = 0x4

.field static final DT_LEAP_MONTH_PATTERN_STANDALONE_NARROW:I = 0x5

.field static final DT_LEAP_MONTH_PATTERN_STANDALONE_WIDE:I = 0x3

.field static final DT_MONTH_PATTERN_COUNT:I = 0x7

.field public static final DT_WIDTH_COUNT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT:I = 0x0

.field public static final NARROW:I = 0x2

.field public static final NUMERIC:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHORT:I = 0x3

.field public static final STANDALONE:I = 0x1

.field public static final WIDE:I = 0x1

.field private static final contextUsageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;",
            ">;"
        }
    .end annotation
.end field

.field static final millisPerHour:I = 0x36ee80

.field static final patternChars:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxr"

.field private static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field private actualLocale:Landroid/icu/util/ULocale;

.field ampms:[Ljava/lang/String;

.field ampmsNarrow:[Ljava/lang/String;

.field capitalization:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;",
            "[Z>;"
        }
    .end annotation
.end field

.field eraNames:[Ljava/lang/String;

.field eras:[Ljava/lang/String;

.field leapMonthPatterns:[Ljava/lang/String;

.field localPatternChars:Ljava/lang/String;

.field months:[Ljava/lang/String;

.field narrowEras:[Ljava/lang/String;

.field narrowMonths:[Ljava/lang/String;

.field narrowWeekdays:[Ljava/lang/String;

.field quarters:[Ljava/lang/String;

.field private requestedLocale:Landroid/icu/util/ULocale;

.field shortMonths:[Ljava/lang/String;

.field shortQuarters:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field shortYearNames:[Ljava/lang/String;

.field shortZodiacNames:[Ljava/lang/String;

.field shorterWeekdays:[Ljava/lang/String;

.field standaloneMonths:[Ljava/lang/String;

.field standaloneNarrowMonths:[Ljava/lang/String;

.field standaloneNarrowWeekdays:[Ljava/lang/String;

.field standaloneQuarters:[Ljava/lang/String;

.field standaloneShortMonths:[Ljava/lang/String;

.field standaloneShortQuarters:[Ljava/lang/String;

.field standaloneShortWeekdays:[Ljava/lang/String;

.field standaloneShorterWeekdays:[Ljava/lang/String;

.field standaloneWeekdays:[Ljava/lang/String;

.field private timeSeparator:Ljava/lang/String;

.field private validLocale:Landroid/icu/util/ULocale;

.field weekdays:[Ljava/lang/String;

.field private zoneStrings:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "GregorianCalendar"

    aput-object v2, v1, v3

    const-string/jumbo v2, "gregorian"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "JapaneseCalendar"

    aput-object v2, v1, v3

    const-string/jumbo v2, "japanese"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "BuddhistCalendar"

    aput-object v2, v1, v3

    const-string/jumbo v2, "buddhist"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TaiwanCalendar"

    aput-object v2, v1, v3

    const-string/jumbo v2, "roc"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "PersianCalendar"

    aput-object v2, v1, v3

    const-string/jumbo v2, "persian"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "IslamicCalendar"

    aput-object v2, v1, v3

    const-string/jumbo v2, "islamic"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "HebrewCalendar"

    aput-object v2, v1, v3

    const-string/jumbo v2, "hebrew"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ChineseCalendar"

    aput-object v2, v1, v3

    const-string/jumbo v2, "chinese"

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "IndianCalendar"

    aput-object v2, v1, v3

    const-string/jumbo v2, "indian"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "CopticCalendar"

    aput-object v2, v1, v3

    const-string/jumbo v2, "coptic"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "EthiopicCalendar"

    aput-object v2, v1, v3

    const-string/jumbo v2, "ethiopic"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/DateFormatSymbols;->CALENDAR_CLASSES:[[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "month-format-except-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "month-standalone-except-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "month-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "day-format-except-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "day-standalone-except-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "day-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "era-name"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "era-abbr"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "era-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "zone-long"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "zone-short"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "metazone-long"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "metazone-short"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/DateFormatSymbols;->DFSCACHE:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Ljava/util/Locale;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-static {p1}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Landroid/icu/util/ULocale;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    sget-object v7, Landroid/icu/text/DateFormatSymbols;->CALENDAR_CLASSES:[[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v0, v7, v5

    aget-object v9, v0, v6

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v5, 0x1

    aget-object v1, v0, v5

    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v5, "Calendar"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, p2, v1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Landroid/icu/util/ULocale;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    new-instance v0, Landroid/icu/impl/CalendarData;

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    invoke-static {p2}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/CalendarData;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    .locals 1

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/ResourceBundle;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private static final arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v4

    :cond_2
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final duplicate([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final duplicate([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 3

    array-length v2, p1

    new-array v0, v2, [[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormatBundle(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Ljava/util/ResourceBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDateFormatBundle(Landroid/icu/util/Calendar;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDateFormatBundle(Ljava/lang/Class;Landroid/icu/util/ULocale;)Ljava/util/ResourceBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDateFormatBundle(Ljava/lang/Class;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Landroid/icu/text/DateFormatSymbols;
    .locals 1

    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v0}, Landroid/icu/text/DateFormatSymbols;-><init>()V

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormatSymbols;
    .locals 1

    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .locals 1

    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormatSymbols;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/DateFormatSymbols;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/icu/text/DateFormatSymbols;

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/text/DateFormatSymbols;->arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object v2, v0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEraNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeapMonthPattern(II)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bad context or width argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    :cond_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    goto :goto_0
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonths(II)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bad context or width argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public getQuarters(II)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bad context or width argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_4
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeSeparatorString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekdays()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeekdays(II)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bad context or width argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public getYearNames(II)[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getZodiacNames(II)[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .locals 13

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v12, 0x0

    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/icu/text/DateFormatSymbols;->duplicate([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v9

    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    invoke-static {v6}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames;->loadAllDisplayNames()V

    const/4 v6, 0x4

    new-array v3, v6, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v6, v3, v12

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v6, v3, v7

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v6, v3, v11

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v10, 0x3

    aput-object v6, v3, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-class v6, Ljava/lang/String;

    new-array v10, v11, [I

    array-length v11, v9

    aput v11, v10, v12

    const/4 v11, 0x5

    aput v11, v10, v7

    invoke-static {v6, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    const/4 v8, 0x0

    :goto_0
    array-length v6, v9

    if-ge v8, v6, :cond_2

    aget-object v6, v9, v8

    invoke-static {v6}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    aget-object v2, v9, v8

    :cond_1
    aget-object v6, v0, v8

    aget-object v10, v9, v8

    aput-object v10, v6, v12

    aget-object v6, v0, v8

    invoke-virtual/range {v1 .. v7}, Landroid/icu/text/TimeZoneNames;->getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    return-object v6
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method initializeData(Landroid/icu/text/DateFormatSymbols;)V
    .locals 1

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    return-void
.end method

.method protected initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/CalendarData;)V
    .locals 35
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v31, "abbreviated"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->getEras(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const-string/jumbo v31, "wide"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->getEras(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    const-string/jumbo v31, "narrow"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->getEras(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    const-string/jumbo v31, "monthNames"

    const-string/jumbo v32, "wide"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    const-string/jumbo v31, "monthNames"

    const-string/jumbo v32, "abbreviated"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    const-string/jumbo v31, "monthNames"

    const-string/jumbo v32, "narrow"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    const-string/jumbo v31, "monthNames"

    const-string/jumbo v32, "stand-alone"

    const-string/jumbo v33, "wide"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    const-string/jumbo v31, "monthNames"

    const-string/jumbo v32, "stand-alone"

    const-string/jumbo v33, "abbreviated"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    const-string/jumbo v31, "monthNames"

    const-string/jumbo v32, "stand-alone"

    const-string/jumbo v33, "narrow"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    const-string/jumbo v31, "dayNames"

    const-string/jumbo v32, "wide"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, ""

    const/16 v33, 0x0

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    array-length v0, v14

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v31

    move/from16 v2, v34

    move/from16 v3, v32

    invoke-static {v14, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string/jumbo v31, "dayNames"

    const-string/jumbo v32, "abbreviated"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, ""

    const/16 v33, 0x0

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    array-length v0, v5

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v31

    move/from16 v2, v34

    move/from16 v3, v32

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string/jumbo v31, "dayNames"

    const-string/jumbo v32, "short"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, ""

    const/16 v33, 0x0

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v33

    move-object/from16 v2, v31

    move/from16 v3, v34

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v16, 0x0

    :try_start_0
    const-string/jumbo v31, "dayNames"

    const-string/jumbo v32, "narrow"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    :goto_0
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, ""

    const/16 v33, 0x0

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v33

    move-object/from16 v2, v31

    move/from16 v3, v34

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v25, 0x0

    const-string/jumbo v31, "dayNames"

    const-string/jumbo v32, "stand-alone"

    const-string/jumbo v33, "wide"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, ""

    const/16 v33, 0x0

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v33

    move-object/from16 v2, v31

    move/from16 v3, v34

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v22, 0x0

    const-string/jumbo v31, "dayNames"

    const-string/jumbo v32, "stand-alone"

    const-string/jumbo v33, "abbreviated"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, ""

    const/16 v33, 0x0

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v33

    move-object/from16 v2, v31

    move/from16 v3, v34

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v24, 0x0

    const-string/jumbo v31, "dayNames"

    const-string/jumbo v32, "stand-alone"

    const-string/jumbo v33, "short"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, ""

    const/16 v33, 0x0

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v33

    move-object/from16 v2, v31

    move/from16 v3, v34

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v23, 0x0

    const-string/jumbo v31, "dayNames"

    const-string/jumbo v32, "stand-alone"

    const-string/jumbo v33, "narrow"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, ""

    const/16 v33, 0x0

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v33

    move-object/from16 v2, v31

    move/from16 v3, v34

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string/jumbo v31, "AmPmMarkers"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const-string/jumbo v31, "AmPmMarkersNarrow"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    const-string/jumbo v31, "quarters"

    const-string/jumbo v32, "wide"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    const-string/jumbo v31, "quarters"

    const-string/jumbo v32, "abbreviated"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    const-string/jumbo v31, "quarters"

    const-string/jumbo v32, "stand-alone"

    const-string/jumbo v33, "wide"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    const-string/jumbo v31, "quarters"

    const-string/jumbo v32, "stand-alone"

    const-string/jumbo v33, "abbreviated"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    const/4 v15, 0x0

    :try_start_1
    const-string/jumbo v31, "monthPatterns"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v15

    :goto_1
    if-eqz v15, :cond_0

    const/16 v31, 0x7

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, "monthPatterns"

    const-string/jumbo v33, "wide"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v32

    const-string/jumbo v33, "leap"

    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, "monthPatterns"

    const-string/jumbo v33, "abbreviated"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v32

    const-string/jumbo v33, "leap"

    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, "monthPatterns"

    const-string/jumbo v33, "narrow"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v32

    const-string/jumbo v33, "leap"

    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x2

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, "monthPatterns"

    const-string/jumbo v33, "stand-alone"

    const-string/jumbo v34, "wide"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v32

    const-string/jumbo v33, "leap"

    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x3

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, "monthPatterns"

    const-string/jumbo v33, "stand-alone"

    const-string/jumbo v34, "abbreviated"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v32

    const-string/jumbo v33, "leap"

    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x4

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, "monthPatterns"

    const-string/jumbo v33, "stand-alone"

    const-string/jumbo v34, "narrow"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v32

    const-string/jumbo v33, "leap"

    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x5

    aput-object v32, v31, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    move-object/from16 v31, v0

    const-string/jumbo v32, "monthPatterns"

    const-string/jumbo v33, "numeric"

    const-string/jumbo v34, "all"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v32

    const-string/jumbo v33, "leap"

    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x6

    aput-object v32, v31, v33

    :cond_0
    const/4 v10, 0x0

    :try_start_2
    const-string/jumbo v31, "cyclicNameSets"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v10

    :goto_2
    if-eqz v10, :cond_1

    const-string/jumbo v31, "cyclicNameSets"

    const-string/jumbo v32, "years"

    const-string/jumbo v33, "format"

    const-string/jumbo v34, "abbreviated"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    const-string/jumbo v31, "cyclicNameSets"

    const-string/jumbo v32, "zodiacs"

    const-string/jumbo v33, "format"

    const-string/jumbo v34, "abbreviated"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    const-string/jumbo v31, "android/icu/impl/data/icudt56b"

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v20

    check-cast v20, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v31, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxr"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DateFormatSymbols;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    aput-boolean v31, v17, v32

    const/16 v31, 0x0

    const/16 v32, 0x1

    aput-boolean v31, v17, v32

    invoke-static {}, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->values()[Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-result-object v6

    const/16 v31, 0x0

    array-length v0, v6

    move/from16 v32, v0

    :goto_3
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_2

    aget-object v29, v6, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v31, v31, 0x1

    goto :goto_3

    :catch_0
    move-exception v11

    :try_start_3
    const-string/jumbo v31, "dayNames"

    const-string/jumbo v32, "stand-alone"

    const-string/jumbo v33, "narrow"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v16

    goto/16 :goto_0

    :catch_1
    move-exception v12

    const-string/jumbo v31, "dayNames"

    const-string/jumbo v32, "abbreviated"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    :catch_2
    move-exception v11

    const/4 v15, 0x0

    goto/16 :goto_1

    :catch_3
    move-exception v11

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_2
    const/4 v8, 0x0

    :try_start_4
    const-string/jumbo v31, "contextTransforms"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v9

    :cond_3
    :goto_5
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_6

    invoke-virtual {v9}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v13

    array-length v0, v13

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_3

    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v30

    sget-object v31, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    if-eqz v29, :cond_3

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Z

    move-object/from16 v26, v0

    const/16 v31, 0x0

    aget v31, v13, v31

    if-eqz v31, :cond_4

    const/16 v31, 0x1

    :goto_6
    const/16 v32, 0x0

    aput-boolean v31, v26, v32

    const/16 v31, 0x1

    aget v31, v13, v31

    if-eqz v31, :cond_5

    const/16 v31, 0x1

    :goto_7
    const/16 v32, 0x1

    aput-boolean v31, v26, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catch_4
    move-exception v11

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    const/16 v31, 0x0

    goto :goto_6

    :cond_5
    const/16 v31, 0x0

    goto :goto_7

    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v18

    if-nez v18, :cond_7

    const-string/jumbo v19, "latn"

    :goto_8
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "NumberElements/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "/symbols/timeSeparator"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    :try_start_5
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormatSymbols;->setTimeSeparatorString(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_9
    return-void

    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v19

    goto :goto_8

    :catch_5
    move-exception v11

    const-string/jumbo v31, ":"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormatSymbols;->setTimeSeparatorString(Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "numbers"

    invoke-virtual {p1, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    sget-object v4, Landroid/icu/text/DateFormatSymbols;->DFSCACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v4, v2}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormatSymbols;

    if-nez v1, :cond_2

    new-instance v0, Landroid/icu/impl/CalendarData;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/CalendarData;)V

    invoke-virtual {p0}, Landroid/icu/text/DateFormatSymbols;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.icu.text.DateFormatSymbols"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormatSymbols;

    sget-object v4, Landroid/icu/text/DateFormatSymbols;->DFSCACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v4, v2, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/text/DateFormatSymbols;)V

    goto :goto_0
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    return-void
.end method

.method public setEraNames([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    return-void
.end method

.method public setLeapMonthPattern(Ljava/lang/String;II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aput-object p1, v1, v0

    :cond_0
    return-void

    :pswitch_0
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    packed-switch p3, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-void
.end method

.method final setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    iput-object p2, p0, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    return-void
.end method

.method public setMonths([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    return-void
.end method

.method public setMonths([Ljava/lang/String;II)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    packed-switch p3, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setQuarters([Ljava/lang/String;II)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    packed-switch p3, :pswitch_data_2

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    return-void
.end method

.method public setTimeSeparatorString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    return-void
.end method

.method public setWeekdays([Ljava/lang/String;II)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    packed-switch p3, :pswitch_data_2

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public setYearNames([Ljava/lang/String;II)V
    .locals 1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setZodiacNames([Ljava/lang/String;II)V
    .locals 1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    return-void
.end method
