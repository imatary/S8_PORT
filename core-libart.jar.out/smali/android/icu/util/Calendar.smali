.class public abstract Landroid/icu/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/Calendar$CalType;,
        Landroid/icu/util/Calendar$FormatConfiguration;,
        Landroid/icu/util/Calendar$PatternData;,
        Landroid/icu/util/Calendar$WeekData;,
        Landroid/icu/util/Calendar$WeekDataCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-util-Calendar$CalTypeSwitchesValues:[I = null

.field static final synthetic -assertionsDisabled:Z

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x9

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field protected static final BASE_FIELD_COUNT:I = 0x17

.field public static final DATE:I = 0x5

.field static final DATE_PRECEDENCE:[[[I

.field public static final DAY_OF_MONTH:I = 0x5

.field public static final DAY_OF_WEEK:I = 0x7

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8

.field public static final DAY_OF_YEAR:I = 0x6

.field public static final DECEMBER:I = 0xb

.field private static final DEFAULT_PATTERNS:[Ljava/lang/String;

.field public static final DOW_LOCAL:I = 0x12

.field static final DOW_PRECEDENCE:[[[I

.field public static final DST_OFFSET:I = 0x10

.field protected static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final ERA:I = 0x0

.field public static final EXTENDED_YEAR:I = 0x13

.field public static final FEBRUARY:I = 0x1

.field private static final FIELD_DIFF_MAX_INT:I = 0x7fffffff

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FIND_ZONE_TRANSITION_TIME_UNITS:[I

.field public static final FRIDAY:I = 0x6

.field protected static final GREATEST_MINIMUM:I = 0x1

.field private static final GREGORIAN_MONTH_COUNT:[[I

.field public static final HOUR:I = 0xa

.field public static final HOUR_OF_DAY:I = 0xb

.field protected static final INTERNALLY_SET:I = 0x1

.field public static final IS_LEAP_MONTH:I = 0x16

.field public static final JANUARY:I = 0x0

.field protected static final JAN_1_1_JULIAN_DAY:I = 0x1a4452

.field public static final JULIAN_DAY:I = 0x14

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field protected static final LEAST_MAXIMUM:I = 0x2

.field private static final LIMITS:[[I

.field public static final MARCH:I = 0x2

.field protected static final MAXIMUM:I = 0x3

.field protected static final MAX_DATE:Ljava/util/Date;

.field protected static final MAX_FIELD_COUNT:I = 0x20

.field protected static final MAX_JULIAN:I = 0x7f000000

.field protected static final MAX_MILLIS:J = 0x28d47dbbf19b000L

.field public static final MAY:I = 0x4

.field public static final MILLISECOND:I = 0xe

.field public static final MILLISECONDS_IN_DAY:I = 0x15

.field protected static final MINIMUM:I = 0x0

.field protected static final MINIMUM_USER_STAMP:I = 0x2

.field public static final MINUTE:I = 0xc

.field protected static final MIN_DATE:Ljava/util/Date;

.field protected static final MIN_JULIAN:I = -0x7f000000

.field protected static final MIN_MILLIS:J = -0x28ec76c40e65000L

.field public static final MONDAY:I = 0x2

.field public static final MONTH:I = 0x2

.field public static final NOVEMBER:I = 0xa

.field public static final OCTOBER:I = 0x9

.field protected static final ONE_DAY:J = 0x5265c00L

.field protected static final ONE_HOUR:I = 0x36ee80

.field protected static final ONE_MINUTE:I = 0xea60

.field protected static final ONE_SECOND:I = 0x3e8

.field protected static final ONE_WEEK:J = 0x240c8400L

.field private static final PATTERN_CACHE:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Calendar$PatternData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PM:I = 0x1

.field private static final QUOTE:C = '\''

.field protected static final RESOLVE_REMAP:I = 0x20

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0xd

.field public static final SEPTEMBER:I = 0x8

.field private static STAMP_MAX:I = 0x0

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final UNDECIMBER:I = 0xc

.field protected static final UNSET:I = 0x0

.field public static final WALLTIME_FIRST:I = 0x1

.field public static final WALLTIME_LAST:I = 0x0

.field public static final WALLTIME_NEXT_VALID:I = 0x2

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEKDAY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKEND:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKEND_CEASE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKEND_ONSET:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

.field public static final WEEK_OF_MONTH:I = 0x4

.field public static final WEEK_OF_YEAR:I = 0x3

.field public static final YEAR:I = 0x1

.field public static final YEAR_WOY:I = 0x11

.field public static final ZONE_OFFSET:I = 0xf

.field private static final serialVersionUID:J = 0x565b47a9d4dd4fcdL


# instance fields
.field private actualLocale:Landroid/icu/util/ULocale;

.field private transient areAllFieldsSet:Z

.field private transient areFieldsSet:Z

.field private transient areFieldsVirtuallySet:Z

.field private transient fields:[I

.field private firstDayOfWeek:I

.field private transient gregorianDayOfMonth:I

.field private transient gregorianDayOfYear:I

.field private transient gregorianMonth:I

.field private transient gregorianYear:I

.field private transient internalSetMask:I

.field private transient isTimeSet:Z

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field private transient nextStamp:I

.field private repeatedWallTime:I

.field private skippedWallTime:I

.field private transient stamp:[I

.field private time:J

.field private validLocale:Landroid/icu/util/ULocale;

.field private weekendCease:I

.field private weekendCeaseMillis:I

.field private weekendOnset:I

.field private weekendOnsetMillis:I

.field private zone:Landroid/icu/util/TimeZone;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Landroid/icu/impl/ICUCache;
    .locals 1

    sget-object v0, Landroid/icu/util/Calendar;->PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    return-object v0
.end method

.method private static synthetic -getandroid-icu-util-Calendar$CalTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/util/Calendar;->-android-icu-util-Calendar$CalTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/util/Calendar;->-android-icu-util-Calendar$CalTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/util/Calendar$CalType;->BUDDHIST:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/Calendar$CalType;->CHINESE:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/util/Calendar$CalType;->COPTIC:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/util/Calendar$CalType;->DANGI:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ETHIOPIC:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ETHIOPIC_AMETE_ALEM:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    :goto_6
    :try_start_7
    sget-object v1, Landroid/icu/util/Calendar$CalType;->HEBREW:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    :goto_7
    :try_start_8
    sget-object v1, Landroid/icu/util/Calendar$CalType;->INDIAN:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    :goto_8
    :try_start_9
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_CIVIL:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    :goto_a
    :try_start_b
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_RGSA:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    :goto_b
    :try_start_c
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_TBLA:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    :goto_c
    :try_start_d
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_UMALQURA:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    :goto_d
    :try_start_e
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISO8601:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    :goto_e
    :try_start_f
    sget-object v1, Landroid/icu/util/Calendar$CalType;->JAPANESE:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    :goto_f
    :try_start_10
    sget-object v1, Landroid/icu/util/Calendar$CalType;->PERSIAN:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    :goto_10
    :try_start_11
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ROC:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    :goto_11
    :try_start_12
    sget-object v1, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    :goto_12
    sput-object v0, Landroid/icu/util/Calendar;->-android-icu-util-Calendar$CalTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_12

    :catch_1
    move-exception v1

    goto :goto_11

    :catch_2
    move-exception v1

    goto :goto_10

    :catch_3
    move-exception v1

    goto :goto_f

    :catch_4
    move-exception v1

    goto :goto_e

    :catch_5
    move-exception v1

    goto :goto_d

    :catch_6
    move-exception v1

    goto :goto_c

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_8

    :catch_b
    move-exception v1

    goto/16 :goto_7

    :catch_c
    move-exception v1

    goto/16 :goto_6

    :catch_d
    move-exception v1

    goto/16 :goto_5

    :catch_e
    move-exception v1

    goto/16 :goto_4

    :catch_f
    move-exception v1

    goto/16 :goto_3

    :catch_10
    move-exception v1

    goto/16 :goto_2

    :catch_11
    move-exception v1

    goto/16 :goto_1

    :catch_12
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/Calendar;->getWeekDataForRegionInternal(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x7

    const/16 v7, 0x1f

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/util/Calendar;->-assertionsDisabled:Z

    new-instance v0, Ljava/util/Date;

    const-wide v4, -0x28ec76c40e65000L

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/icu/util/Calendar;->MIN_DATE:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    const-wide v4, 0x28d47dbbf19b000L

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/icu/util/Calendar;->MAX_DATE:Ljava/util/Date;

    const/16 v0, 0x2710

    sput v0, Landroid/icu/util/Calendar;->STAMP_MAX:I

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/util/Calendar;->PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "HH:mm:ss z"

    aput-object v3, v0, v1

    const-string/jumbo v3, "HH:mm:ss z"

    aput-object v3, v0, v2

    const-string/jumbo v3, "HH:mm:ss"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string/jumbo v3, "HH:mm"

    aput-object v3, v0, v9

    const-string/jumbo v3, "EEEE, yyyy MMMM dd"

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const-string/jumbo v3, "yyyy MMMM d"

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const-string/jumbo v3, "yyyy MMM d"

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const-string/jumbo v3, "yy/MM/dd"

    aput-object v3, v0, v8

    const-string/jumbo v3, "{1} {0}"

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const-string/jumbo v3, "{1} {0}"

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const-string/jumbo v3, "{1} {0}"

    const/16 v4, 0xa

    aput-object v3, v0, v4

    const-string/jumbo v3, "{1} {0}"

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const-string/jumbo v3, "{1} {0}"

    const/16 v4, 0xc

    aput-object v3, v0, v4

    sput-object v0, Landroid/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [[I

    new-array v3, v1, [I

    aput-object v3, v0, v1

    new-array v3, v1, [I

    aput-object v3, v0, v2

    new-array v3, v1, [I

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-array v3, v1, [I

    aput-object v3, v0, v9

    new-array v3, v1, [I

    const/4 v4, 0x4

    aput-object v3, v0, v4

    new-array v3, v1, [I

    const/4 v4, 0x5

    aput-object v3, v0, v4

    new-array v3, v1, [I

    const/4 v4, 0x6

    aput-object v3, v0, v4

    filled-new-array {v2, v2, v8, v8}, [I

    move-result-object v3

    aput-object v3, v0, v8

    new-array v3, v1, [I

    const/16 v4, 0x8

    aput-object v3, v0, v4

    filled-new-array {v1, v1, v2, v2}, [I

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const/16 v3, 0xb

    const/16 v4, 0xb

    filled-new-array {v1, v1, v3, v4}, [I

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v0, v4

    const/16 v3, 0x17

    const/16 v4, 0x17

    filled-new-array {v1, v1, v3, v4}, [I

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const/16 v3, 0x3b

    const/16 v4, 0x3b

    filled-new-array {v1, v1, v3, v4}, [I

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v0, v4

    const/16 v3, 0x3b

    const/16 v4, 0x3b

    filled-new-array {v1, v1, v3, v4}, [I

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v0, v4

    const/16 v3, 0x3e7

    const/16 v4, 0x3e7

    filled-new-array {v1, v1, v3, v4}, [I

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v0, v4

    const v3, -0x2932e00

    const v4, -0x2932e00

    const v5, 0x2932e00

    const v6, 0x2932e00

    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v0, v4

    const v3, 0x36ee80

    const v4, 0x36ee80

    filled-new-array {v1, v1, v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x10

    aput-object v3, v0, v4

    new-array v3, v1, [I

    const/16 v4, 0x11

    aput-object v3, v0, v4

    filled-new-array {v2, v2, v8, v8}, [I

    move-result-object v3

    const/16 v4, 0x12

    aput-object v3, v0, v4

    new-array v3, v1, [I

    const/16 v4, 0x13

    aput-object v3, v0, v4

    const/high16 v3, -0x7f000000

    const/high16 v4, -0x7f000000

    const/high16 v5, 0x7f000000

    const/high16 v6, 0x7f000000

    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v3

    const/16 v4, 0x14

    aput-object v3, v0, v4

    const v3, 0x5265bff

    const v4, 0x5265bff

    filled-new-array {v1, v1, v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x15

    aput-object v3, v0, v4

    filled-new-array {v1, v1, v2, v2}, [I

    move-result-object v3

    const/16 v4, 0x16

    aput-object v3, v0, v4

    sput-object v0, Landroid/icu/util/Calendar;->LIMITS:[[I

    new-instance v0, Landroid/icu/util/Calendar$WeekDataCache;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/icu/util/Calendar$WeekDataCache;-><init>(Landroid/icu/util/Calendar$WeekDataCache;)V

    sput-object v0, Landroid/icu/util/Calendar;->WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

    const/4 v0, 0x2

    new-array v0, v0, [[[I

    const/16 v3, 0xa

    new-array v3, v3, [[I

    new-array v4, v2, [I

    const/4 v5, 0x5

    aput v5, v4, v1

    aput-object v4, v3, v1

    filled-new-array {v9, v8}, [I

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x4

    filled-new-array {v4, v8}, [I

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/16 v4, 0x8

    filled-new-array {v4, v8}, [I

    move-result-object v4

    aput-object v4, v3, v9

    const/16 v4, 0x12

    filled-new-array {v9, v4}, [I

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const/4 v4, 0x4

    const/16 v5, 0x12

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const/16 v4, 0x8

    const/16 v5, 0x12

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    new-array v4, v2, [I

    const/4 v5, 0x6

    aput v5, v4, v1

    aput-object v4, v3, v8

    const/16 v4, 0x25

    filled-new-array {v4, v2}, [I

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const/16 v4, 0x23

    const/16 v5, 0x11

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v3, v5

    aput-object v3, v0, v1

    const/4 v3, 0x5

    new-array v3, v3, [[I

    new-array v4, v2, [I

    aput v9, v4, v1

    aput-object v4, v3, v1

    new-array v4, v2, [I

    const/4 v5, 0x4

    aput v5, v4, v1

    aput-object v4, v3, v2

    new-array v4, v2, [I

    const/16 v5, 0x8

    aput v5, v4, v1

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/16 v4, 0x28

    filled-new-array {v4, v8}, [I

    move-result-object v4

    aput-object v4, v3, v9

    const/16 v4, 0x28

    const/16 v5, 0x12

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    aput-object v3, v0, v2

    sput-object v0, Landroid/icu/util/Calendar;->DATE_PRECEDENCE:[[[I

    new-array v0, v2, [[[I

    const/4 v3, 0x2

    new-array v3, v3, [[I

    new-array v4, v2, [I

    aput v8, v4, v1

    aput-object v4, v3, v1

    new-array v4, v2, [I

    const/16 v5, 0x12

    aput v5, v4, v1

    aput-object v4, v3, v2

    aput-object v3, v0, v1

    sput-object v0, Landroid/icu/util/Calendar;->DOW_PRECEDENCE:[[[I

    const v0, 0x36ee80

    const v3, 0x1b7740

    const v4, 0xea60

    const/16 v5, 0x3e8

    filled-new-array {v0, v3, v4, v5}, [I

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->FIND_ZONE_TRANSITION_TIME_UNITS:[I

    const/16 v0, 0xc

    new-array v0, v0, [[I

    filled-new-array {v7, v7, v1, v1}, [I

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v3, 0x1c

    const/16 v4, 0x1d

    filled-new-array {v3, v4, v7, v7}, [I

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v3, 0x3b

    const/16 v4, 0x3c

    filled-new-array {v7, v7, v3, v4}, [I

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    const/16 v5, 0x5a

    const/16 v6, 0x5b

    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v3

    aput-object v3, v0, v9

    const/16 v3, 0x78

    const/16 v4, 0x79

    filled-new-array {v7, v7, v3, v4}, [I

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    const/16 v5, 0x97

    const/16 v6, 0x98

    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const/16 v3, 0xb5

    const/16 v4, 0xb6

    filled-new-array {v7, v7, v3, v4}, [I

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const/16 v3, 0xd4

    const/16 v4, 0xd5

    filled-new-array {v7, v7, v3, v4}, [I

    move-result-object v3

    aput-object v3, v0, v8

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    const/16 v5, 0xf3

    const/16 v6, 0xf4

    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const/16 v3, 0x111

    const/16 v4, 0x112

    filled-new-array {v7, v7, v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    const/16 v5, 0x130

    const/16 v6, 0x131

    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v0, v4

    const/16 v3, 0x14e

    const/16 v4, 0x14f

    filled-new-array {v7, v7, v3, v4}, [I

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v0, v4

    sput-object v0, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "ERA"

    aput-object v3, v0, v1

    const-string/jumbo v1, "YEAR"

    aput-object v1, v0, v2

    const-string/jumbo v1, "MONTH"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "WEEK_OF_YEAR"

    aput-object v1, v0, v9

    const-string/jumbo v1, "WEEK_OF_MONTH"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "DAY_OF_MONTH"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "DAY_OF_YEAR"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "DAY_OF_WEEK"

    aput-object v1, v0, v8

    const-string/jumbo v1, "DAY_OF_WEEK_IN_MONTH"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "AM_PM"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "HOUR"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "HOUR_OF_DAY"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "MINUTE"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "SECOND"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "MILLISECOND"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "ZONE_OFFSET"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "DST_OFFSET"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "YEAR_WOY"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "DOW_LOCAL"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "EXTENDED_YEAR"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "JULIAN_DAY"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "MILLISECONDS_IN_DAY"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->lenient:Z

    iput v1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    iput v1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/util/Calendar;->nextStamp:I

    iput-object p1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-static {p2}, Landroid/icu/util/Calendar;->getRegionForCalendar(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/util/Calendar;->setWeekData(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/icu/util/Calendar;->setCalendarLocale(Landroid/icu/util/ULocale;)V

    invoke-direct {p0}, Landroid/icu/util/Calendar;->initInternal()V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private compare(Ljava/lang/Object;)J
    .locals 5

    instance-of v2, p1, Landroid/icu/util/Calendar;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2

    :cond_0
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_1

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "is not a Calendar or Date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final computeGregorianAndDOWFields(I)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->computeGregorianFields(I)V

    invoke-static {p1}, Landroid/icu/util/Calendar;->julianDayToDayOfWeek(I)I

    move-result v0

    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v3, 0x7

    aput v0, v2, v3

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    sub-int v2, v0, v2

    add-int/lit8 v1, v2, 0x1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x7

    :cond_0
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v3, 0x12

    aput v1, v2, v3

    return-void
.end method

.method private final computeWeekFields()V
    .locals 14

    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v12, 0x13

    aget v3, v11, v12

    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v12, 0x7

    aget v1, v11, v12

    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v12, 0x6

    aget v2, v11, v12

    move v10, v3

    add-int/lit8 v11, v1, 0x7

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v12

    sub-int/2addr v11, v12

    rem-int/lit8 v7, v11, 0x7

    sub-int v11, v1, v2

    add-int/lit16 v11, v11, 0x1b59

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v12

    sub-int/2addr v11, v12

    rem-int/lit8 v8, v11, 0x7

    add-int/lit8 v11, v2, -0x1

    add-int/2addr v11, v8

    div-int/lit8 v9, v11, 0x7

    rsub-int/lit8 v11, v8, 0x7

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v12

    if-lt v11, v12, :cond_0

    add-int/lit8 v9, v9, 0x1

    :cond_0
    if-nez v9, :cond_2

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v11

    add-int v6, v2, v11

    invoke-virtual {p0, v6, v1}, Landroid/icu/util/Calendar;->weekNumber(II)I

    move-result v9

    add-int/lit8 v10, v3, -0x1

    :cond_1
    :goto_0
    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v12, 0x3

    aput v9, v11, v12

    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v12, 0x11

    aput v10, v11, v12

    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v12, 0x5

    aget v0, v11, v12

    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->weekNumber(II)I

    move-result v12

    const/4 v13, 0x4

    aput v12, v11, v13

    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    add-int/lit8 v12, v0, -0x1

    div-int/lit8 v12, v12, 0x7

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x8

    aput v12, v11, v13

    return-void

    :cond_2
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v4

    add-int/lit8 v11, v4, -0x5

    if-lt v2, v11, :cond_1

    add-int v11, v7, v4

    sub-int/2addr v11, v2

    rem-int/lit8 v5, v11, 0x7

    if-gez v5, :cond_3

    add-int/lit8 v5, v5, 0x7

    :cond_3
    rsub-int/lit8 v11, v5, 0x6

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v12

    if-lt v11, v12, :cond_1

    add-int/lit8 v11, v2, 0x7

    sub-int/2addr v11, v7

    if-le v11, v4, :cond_1

    const/4 v9, 0x1

    add-int/lit8 v10, v3, 0x1

    goto :goto_0
.end method

.method private static createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-static {p0}, Landroid/icu/util/Calendar;->getCalendarTypeForLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$CalType;

    move-result-object v1

    sget-object v3, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    if-ne v1, v3, :cond_0

    sget-object v1, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->-getandroid-icu-util-Calendar$CalTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unknown calendar type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/icu/util/BuddhistCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/BuddhistCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/icu/util/ChineseCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/icu/util/CopticCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/CopticCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/icu/util/DangiCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/DangiCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Landroid/icu/util/EthiopicCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Landroid/icu/util/EthiopicCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    move-object v3, v0

    check-cast v3, Landroid/icu/util/EthiopicCalendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Landroid/icu/util/HebrewCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Landroid/icu/util/IndianCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Landroid/icu/util/IslamicCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Landroid/icu/util/JapaneseCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/JapaneseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Landroid/icu/util/PersianCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_d
    new-instance v0, Landroid/icu/util/TaiwanCalendar;

    invoke-direct {v0, v2, p0}, Landroid/icu/util/TaiwanCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/16 v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/StringCharacterIterator;

    invoke-direct {v2, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/text/StringCharacterIterator;->first()C

    move-result v0

    :goto_0
    const v5, 0xffff

    if-eq v0, v5, :cond_5

    const/16 v5, 0x27

    if-ne v0, v5, :cond_2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    move v3, v0

    :goto_2
    invoke-virtual {v2}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    if-eq v0, v3, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    move v3, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;
    .locals 18

    const/4 v13, 0x0

    const-wide/16 v6, 0x0

    sget-object v3, Landroid/icu/util/Calendar;->FIND_ZONE_TRANSITION_TIME_UNITS:[I

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v14, v3, v2

    int-to-long v8, v14

    div-long v10, p4, v8

    int-to-long v8, v14

    div-long v16, p2, v8

    cmp-long v5, v16, v10

    if-lez v5, :cond_2

    add-long v2, v10, v16

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const/4 v4, 0x1

    ushr-long/2addr v2, v4

    int-to-long v4, v14

    mul-long v6, v2, v4

    const/4 v13, 0x1

    :cond_0
    if-nez v13, :cond_1

    add-long v2, p2, p4

    const/4 v4, 0x1

    ushr-long v6, v2, v4

    :cond_1
    if-eqz v13, :cond_5

    cmp-long v2, v6, p2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v12

    move/from16 v0, p1

    if-eq v12, v0, :cond_3

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v7}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-wide/from16 p2, v6

    :cond_4
    const-wide/16 v2, 0x1

    sub-long/2addr v6, v2

    :goto_1
    cmp-long v2, v6, p4

    if-nez v2, :cond_6

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    :cond_5
    add-long v2, p2, p4

    const/4 v4, 0x1

    ushr-long v6, v2, v4

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v12

    move/from16 v0, p1

    if-eq v12, v0, :cond_8

    if-eqz v13, :cond_7

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    :cond_7
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v7}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    :cond_8
    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v8, p4

    invoke-static/range {v4 .. v9}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method private static firstIslamicStartYearFromGrego(I)I
    .locals 7

    const/16 v6, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x7b9

    if-lt p0, v5, :cond_1

    add-int/lit16 v5, p0, -0x7b9

    div-int/lit8 v0, v5, 0x41

    add-int/lit16 v5, p0, -0x7b9

    rem-int/lit8 v1, v5, 0x41

    mul-int/lit8 v5, v0, 0x2

    if-lt v1, v6, :cond_0

    :goto_0
    add-int v2, v5, v3

    :goto_1
    add-int/lit16 v3, p0, -0x243

    add-int/2addr v3, v2

    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    add-int/lit16 v5, p0, -0x7b8

    div-int/lit8 v5, v5, 0x41

    add-int/lit8 v0, v5, -0x1

    add-int/lit16 v5, p0, -0x7b8

    neg-int v5, v5

    rem-int/lit8 v1, v5, 0x41

    mul-int/lit8 v5, v0, 0x2

    if-gt v1, v6, :cond_2

    :goto_2
    add-int v2, v5, v3

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method protected static final floorDivide(II)I
    .locals 1

    if-ltz p0, :cond_0

    div-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x1

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected static final floorDivide(II[I)I
    .locals 3

    const/4 v2, 0x0

    if-ltz p0, :cond_0

    rem-int v1, p0, p1

    aput v1, p2, v2

    div-int v1, p0, p1

    return v1

    :cond_0
    add-int/lit8 v1, p0, 0x1

    div-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    mul-int v1, v0, p1

    sub-int v1, p0, v1

    aput v1, p2, v2

    return v0
.end method

.method protected static final floorDivide(JI[I)I
    .locals 10

    const-wide/16 v8, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    int-to-long v2, p2

    rem-long v2, p0, v2

    long-to-int v1, v2

    aput v1, p3, v6

    int-to-long v2, p2

    div-long v2, p0, v2

    long-to-int v1, v2

    return v1

    :cond_0
    add-long v2, p0, v8

    int-to-long v4, p2

    div-long/2addr v2, v4

    sub-long/2addr v2, v8

    long-to-int v0, v2

    int-to-long v2, v0

    int-to-long v4, p2

    mul-long/2addr v2, v4

    sub-long v2, p0, v2

    long-to-int v1, v2

    aput v1, p3, v6

    return v0
.end method

.method protected static final floorDivide(JJ)J
    .locals 4

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    div-long v0, p0, p2

    :goto_0
    return-wide v0

    :cond_0
    add-long v0, p0, v2

    div-long/2addr v0, p2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private static formatHelper(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;II)Landroid/icu/text/DateFormat;
    .locals 10

    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v9, 0x0

    if-lt p3, v6, :cond_0

    if-le p3, v7, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal time style "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-lt p2, v6, :cond_2

    if-le p2, v7, :cond_3

    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal date style "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->-wrap0(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ltz p3, :cond_5

    if-ltz p2, :cond_5

    invoke-static {v3, p2}, Landroid/icu/util/Calendar$PatternData;->-wrap1(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, p3

    aput-object v8, v7, v9

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, p2, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p2, 0x4

    aget-object v0, v6, v7

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    aget-object v5, v6, p3

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p2, 0x4

    aget-object v6, v6, v7

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, p3

    invoke-static {v6, v7, v0, v5}, Landroid/icu/util/Calendar;->mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-virtual {p0, v2, v1, p1}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/icu/text/DateFormat;->setCalendar(Landroid/icu/util/Calendar;)V

    return-object v4

    :cond_5
    if-ltz p3, :cond_6

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, p3

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    aget-object v1, v6, p3

    goto :goto_0

    :cond_6
    if-ltz p2, :cond_7

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p2, 0x4

    aget-object v2, v6, v7

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p2, 0x4

    aget-object v1, v6, v7

    goto :goto_0

    :cond_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "No date or time style specified"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private getActualHelper(III)I
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, p3, :cond_0

    return p2

    :cond_0
    if-le p3, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->complete()V

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->setLenient(Z)V

    if-gez v0, :cond_2

    :goto_1
    invoke-virtual {v2, p1, v3}, Landroid/icu/util/Calendar;->prepareGetActual(IZ)V

    invoke-virtual {v2, p1, p2}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v2, p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, p2, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    if-lez v0, :cond_3

    return p2

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    move v1, p2

    :goto_2
    add-int/2addr p2, v0

    invoke-virtual {v2, p1, v0}, Landroid/icu/util/Calendar;->add(II)V

    invoke-virtual {v2, p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, p2, :cond_5

    :cond_4
    return v1

    :cond_5
    move v1, p2

    if-eq p2, p3, :cond_4

    goto :goto_2
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

.method private static getCalendarTypeForLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$CalType;
    .locals 6

    invoke-static {p0}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    iget-object v5, v1, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    return-object v2
.end method

.method public static getDateTimePattern(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->-wrap0(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/icu/util/Calendar$PatternData;->-wrap1(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getImmediatePreviousZoneTransition(J)Ljava/lang/Long;
    .locals 7

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    instance-of v2, v2, Landroid/icu/util/BasicTimeZone;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    check-cast v2, Landroid/icu/util/BasicTimeZone;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const-wide/32 v4, 0x6ddd00

    invoke-static {v2, p1, p2, v4, v5}, Landroid/icu/util/Calendar;->getPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;JJ)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const-wide/32 v4, 0x66ff300

    invoke-static {v2, p1, p2, v4, v5}, Landroid/icu/util/Calendar;->getPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;JJ)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Landroid/icu/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/TimeZone;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private static getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 4

    if-nez p1, :cond_0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object p1

    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object p0

    :cond_1
    invoke-static {p1}, Landroid/icu/util/Calendar;->createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;
    .locals 14

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v10, "android/icu/impl/data/icudt56b"

    const-string/jumbo v11, "supplementalData"

    sget-object v12, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v10, v11, v12}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    const-string/jumbo v10, "calendarPreferenceData"

    invoke-virtual {v7, v10}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    return-object v1

    :catch_0
    move-exception v4

    const-string/jumbo v10, "001"

    invoke-virtual {v0, v10}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    array-length v10, v1

    if-ge v2, v10, :cond_2

    aget-object v10, v1, v2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_2
    if-ge v10, v12, :cond_4

    aget-object v8, v11, v10

    iget-object v13, v8, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v13, v8, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    return-object v10
.end method

.method private static getPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;JJ)Ljava/lang/Long;
    .locals 13

    sget-boolean v0, Landroid/icu/util/Calendar;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-wide v8, p1

    sub-long v2, p1, p3

    const-wide/16 v10, 0x1

    sub-long v4, v2, v10

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v1

    invoke-virtual {p0, v4, v5}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v6

    if-ne v1, v6, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    move-object v0, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static getRegionForCalendar(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v1, "001"

    :cond_0
    return-object v1
.end method

.method public static getWeekDataForRegion(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .locals 1

    sget-object v0, Landroid/icu/util/Calendar;->WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

    invoke-virtual {v0, p0, p0}, Landroid/icu/util/Calendar$WeekDataCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    move-result-object v0

    return-object v0
.end method

.method private static getWeekDataForRegionInternal(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .locals 12

    if-nez p0, :cond_0

    const-string/jumbo p0, "001"

    :cond_0
    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

    const-string/jumbo v1, "supplementalData"

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v8

    const-string/jumbo v0, "weekData"

    invoke-virtual {v8, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v11

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v11, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v9

    new-instance v0, Landroid/icu/util/Calendar$WeekData;

    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    const/4 v3, 0x2

    aget v3, v9, v3

    const/4 v4, 0x3

    aget v4, v9, v4

    const/4 v5, 0x4

    aget v5, v9, v5

    const/4 v6, 0x5

    aget v6, v9, v6

    invoke-direct/range {v0 .. v6}, Landroid/icu/util/Calendar$WeekData;-><init>(IIIIII)V

    return-object v0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "001"

    invoke-virtual {v11, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v10

    goto :goto_0

    :cond_1
    throw v7
.end method

.method private static gregoYearFromIslamicStart(I)I
    .locals 7

    const/16 v6, 0x21

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x575

    if-lt p0, v5, :cond_1

    add-int/lit16 v5, p0, -0x575

    div-int/lit8 v0, v5, 0x43

    add-int/lit16 v5, p0, -0x575

    rem-int/lit8 v1, v5, 0x43

    mul-int/lit8 v5, v0, 0x2

    if-lt v1, v6, :cond_0

    :goto_0
    add-int v2, v5, v3

    :goto_1
    add-int/lit16 v3, p0, 0x243

    sub-int/2addr v3, v2

    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    add-int/lit16 v5, p0, -0x574

    div-int/lit8 v5, v5, 0x43

    add-int/lit8 v0, v5, -0x1

    add-int/lit16 v5, p0, -0x574

    neg-int v5, v5

    rem-int/lit8 v1, v5, 0x43

    mul-int/lit8 v5, v0, 0x2

    if-gt v1, v6, :cond_2

    :goto_2
    add-int v2, v5, v3

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method protected static final gregorianMonthLength(II)I
    .locals 2

    sget-object v0, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object v1, v0, p1

    invoke-static {p0}, Landroid/icu/util/Calendar;->isGregorianLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aget v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final gregorianPreviousMonthLength(II)I
    .locals 1

    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v0}, Landroid/icu/util/Calendar;->gregorianMonthLength(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f

    goto :goto_0
.end method

.method private initInternal()V
    .locals 4

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleCreateFields()[I

    move-result-object v2

    iput-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v2, v2

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Invalid fields[]"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v2, v2

    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    const v1, 0x480067

    const/16 v0, 0x17

    :goto_0
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v1, p0, Landroid/icu/util/Calendar;->internalSetMask:I

    return-void
.end method

.method protected static final isGregorianLeapYear(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    rem-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p0, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p0, 0x190

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected static final julianDayToDayOfWeek(I)I
    .locals 2

    add-int/lit8 v1, p0, 0x2

    rem-int/lit8 v0, v1, 0x7

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    return v0
.end method

.method protected static final julianDayToMillis(I)J
    .locals 4

    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p0, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p1, p3}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez p3, :cond_2

    invoke-static {p0, p2}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static final millisToJulianDay(J)I
    .locals 4

    const-wide/32 v0, 0x5265c00

    invoke-static {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->floorDivide(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x253d8c

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-direct {p0}, Landroid/icu/util/Calendar;->initInternal()V

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/util/Calendar;->nextStamp:I

    return-void
.end method

.method private recalculateStamp()V
    .locals 6

    const/4 v4, 0x1

    iput v4, p0, Landroid/icu/util/Calendar;->nextStamp:I

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    sget v0, Landroid/icu/util/Calendar;->STAMP_MAX:I

    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v4, v4, v1

    iget v5, p0, Landroid/icu/util/Calendar;->nextStamp:I

    if-le v4, v5, :cond_0

    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v4, v4, v1

    if-ge v4, v0, :cond_0

    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v0, v4, v1

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-ltz v2, :cond_2

    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    iget v5, p0, Landroid/icu/util/Calendar;->nextStamp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/icu/util/Calendar;->nextStamp:I

    aput v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Landroid/icu/util/Calendar;->nextStamp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/icu/util/Calendar;->nextStamp:I

    return-void
.end method

.method private setCalendarLocale(Landroid/icu/util/ULocale;)V
    .locals 6

    move-object v1, p1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v5

    if-eqz v5, :cond_4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string/jumbo v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const-string/jumbo v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v5, "calendar"

    invoke-virtual {p1, v5}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v5, "@calendar="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/Calendar;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private setWeekData(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo p1, "001"

    :cond_0
    sget-object v1, Landroid/icu/util/Calendar;->WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

    invoke-virtual {v1, p1, p1}, Landroid/icu/util/Calendar$WeekDataCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar$WeekData;

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setWeekData(Landroid/icu/util/Calendar$WeekData;)Landroid/icu/util/Calendar;

    return-void
.end method

.method private updateTime()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeTime()V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    if-nez v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/icu/util/Calendar;->updateTime()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public add(II)V
    .locals 26

    if-nez p2, :cond_0

    return-void

    :cond_0
    move/from16 v0, p2

    int-to-long v8, v0

    const/4 v11, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Calendar.add("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ") not supported"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v17

    add-int v17, v17, p2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    return-void

    :pswitch_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v17, "gregorian"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string/jumbo v17, "roc"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string/jumbo v17, "coptic"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    :cond_1
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 p2, v0

    :cond_2
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v14

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setLenient(Z)V

    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v17

    add-int v17, v17, p2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    if-nez v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->complete()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/icu/util/Calendar;->setLenient(Z)V

    :cond_3
    return-void

    :pswitch_4
    const-wide/32 v22, 0x240c8400

    mul-long v8, v8, v22

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v11, :cond_4

    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v17

    const/16 v22, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v22

    add-int v15, v17, v22

    const/16 v17, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v16

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    add-long v22, v22, v8

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    if-eqz v11, :cond_6

    const/16 v17, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v13

    move/from16 v0, v16

    if-eq v13, v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->internalGetTimeInMillis()J

    move-result-wide v18

    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v17

    const/16 v22, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v22

    add-int v12, v17, v22

    if-eq v12, v15, :cond_6

    sub-int v17, v15, v12

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x5265c00

    rem-long v4, v22, v24

    const-wide/16 v22, 0x0

    cmp-long v17, v4, v22

    if-eqz v17, :cond_5

    add-long v22, v18, v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/16 v17, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v13

    :cond_5
    move/from16 v0, v16

    if-eq v13, v0, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/util/Calendar;->skippedWallTime:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    :cond_6
    :goto_1
    return-void

    :pswitch_5
    const-wide/32 v22, 0x2932e00

    mul-long v8, v8, v22

    goto/16 :goto_0

    :pswitch_6
    const-wide/32 v22, 0x5265c00

    mul-long v8, v8, v22

    goto/16 :goto_0

    :pswitch_7
    const-wide/32 v22, 0x36ee80

    mul-long v8, v8, v22

    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_8
    const-wide/32 v22, 0xea60

    mul-long v8, v8, v22

    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_9
    const-wide/16 v22, 0x3e8

    mul-long v8, v8, v22

    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_a
    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_b
    const-wide/16 v22, 0x0

    cmp-long v17, v4, v22

    if-lez v17, :cond_6

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :pswitch_c
    const-wide/16 v22, 0x0

    cmp-long v17, v4, v22

    if-gez v17, :cond_6

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :pswitch_d
    const-wide/16 v22, 0x0

    cmp-long v17, v4, v22

    if-lez v17, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->internalGetTimeInMillis()J

    move-result-wide v20

    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Calendar;->getImmediatePreviousZoneTransition(J)Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_7
    move-wide/from16 v20, v18

    goto :goto_2

    :cond_8
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Could not locate a time zone transition before "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public after(Ljava/lang/Object;)Z
    .locals 4

    invoke-direct {p0, p1}, Landroid/icu/util/Calendar;->compare(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public before(Ljava/lang/Object;)Z
    .locals 4

    invoke-direct {p0, p1}, Landroid/icu/util/Calendar;->compare(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clear()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v3, v2, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v3, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v3, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v3, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    return-void
.end method

.method public final clear(I)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeFields()V

    :cond_0
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aput v1, v0, p1

    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v1, v0, p1

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Calendar;

    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v1, Landroid/icu/util/Calendar;->fields:[I

    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v1, Landroid/icu/util/Calendar;->stamp:[I

    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    iget-object v3, v1, Landroid/icu/util/Calendar;->fields:[I

    iget-object v4, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    iget-object v3, v1, Landroid/icu/util/Calendar;->stamp:[I

    iget-object v4, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v2}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/TimeZone;

    iput-object v2, v1, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public compareTo(Landroid/icu/util/Calendar;)I
    .locals 8

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/util/Calendar;

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->compareTo(Landroid/icu/util/Calendar;)I

    move-result v0

    return v0
.end method

.method protected complete()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/icu/util/Calendar;->updateTime()V

    :cond_0
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeFields()V

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    :cond_1
    return-void
.end method

.method protected computeFields()V
    .locals 12

    const/4 v8, 0x2

    new-array v7, v8, [I

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v8

    iget-wide v10, p0, Landroid/icu/util/Calendar;->time:J

    const/4 v9, 0x0

    invoke-virtual {v8, v10, v11, v9, v7}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    iget-wide v8, p0, Landroid/icu/util/Calendar;->time:J

    const/4 v10, 0x0

    aget v10, v7, v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    const/4 v10, 0x1

    aget v10, v7, v10

    int-to-long v10, v10

    add-long v4, v8, v10

    iget v3, p0, Landroid/icu/util/Calendar;->internalSetMask:I

    const/4 v2, 0x0

    :goto_0
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v8, v8

    if-ge v2, v8, :cond_1

    and-int/lit8 v8, v3, 0x1

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/4 v9, 0x1

    aput v9, v8, v2

    :goto_1
    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/4 v9, 0x0

    aput v9, v8, v2

    goto :goto_1

    :cond_1
    const-wide/32 v8, 0x5265c00

    invoke-static {v4, v5, v8, v9}, Landroid/icu/util/Calendar;->floorDivide(JJ)J

    move-result-wide v0

    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    long-to-int v9, v0

    const v10, 0x253d8c    # 3.419992E-39f

    add-int/2addr v9, v10

    const/16 v10, 0x14

    aput v9, v8, v10

    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v9, 0x14

    aget v8, v8, v9

    invoke-direct {p0, v8}, Landroid/icu/util/Calendar;->computeGregorianAndDOWFields(I)V

    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v9, 0x14

    aget v8, v8, v9

    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->handleComputeFields(I)V

    invoke-direct {p0}, Landroid/icu/util/Calendar;->computeWeekFields()V

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v8, v0

    sub-long v8, v4, v8

    long-to-int v6, v8

    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v9, 0x15

    aput v6, v8, v9

    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    rem-int/lit16 v9, v6, 0x3e8

    const/16 v10, 0xe

    aput v9, v8, v10

    div-int/lit16 v6, v6, 0x3e8

    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    rem-int/lit8 v9, v6, 0x3c

    const/16 v10, 0xd

    aput v9, v8, v10

    div-int/lit8 v6, v6, 0x3c

    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    rem-int/lit8 v9, v6, 0x3c

    const/16 v10, 0xc

    aput v9, v8, v10

    div-int/lit8 v6, v6, 0x3c

    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v9, 0xb

    aput v6, v8, v9

    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    div-int/lit8 v9, v6, 0xc

    const/16 v10, 0x9

    aput v9, v8, v10

    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    rem-int/lit8 v9, v6, 0xc

    const/16 v10, 0xa

    aput v9, v8, v10

    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v9, 0x0

    aget v9, v7, v9

    const/16 v10, 0xf

    aput v9, v8, v10

    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v9, 0x1

    aget v9, v7, v9

    const/16 v10, 0x10

    aput v9, v8, v10

    return-void
.end method

.method protected final computeGregorianFields(I)V
    .locals 18

    const v16, 0x1a4452

    sub-int v16, p1, v16

    move/from16 v0, v16

    int-to-long v6, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v14, v0, [I

    const v16, 0x23ab1

    move/from16 v0, v16

    invoke-static {v6, v7, v0, v14}, Landroid/icu/util/Calendar;->floorDivide(JI[I)I

    move-result v13

    const/16 v16, 0x0

    aget v16, v14, v16

    const v17, 0x8eac

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    move-result v11

    const/16 v16, 0x0

    aget v16, v14, v16

    const/16 v17, 0x5b5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    move-result v12

    const/16 v16, 0x0

    aget v16, v14, v16

    const/16 v17, 0x16d

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v14}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    move-result v10

    mul-int/lit16 v0, v13, 0x190

    move/from16 v16, v0

    mul-int/lit8 v17, v11, 0x64

    add-int v16, v16, v17

    mul-int/lit8 v17, v12, 0x4

    add-int v16, v16, v17

    add-int v15, v16, v10

    const/16 v16, 0x0

    aget v4, v14, v16

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v11, v0, :cond_0

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v10, v0, :cond_3

    :cond_0
    const/16 v4, 0x16d

    :goto_0
    and-int/lit8 v16, v15, 0x3

    if-nez v16, :cond_5

    rem-int/lit8 v16, v15, 0x64

    if-nez v16, :cond_1

    rem-int/lit16 v0, v15, 0x190

    move/from16 v16, v0

    if-nez v16, :cond_4

    :cond_1
    const/4 v5, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v5, :cond_6

    const/16 v8, 0x3c

    :goto_2
    if-lt v4, v8, :cond_2

    if-eqz v5, :cond_7

    const/4 v2, 0x1

    :cond_2
    :goto_3
    add-int v16, v4, v2

    mul-int/lit8 v16, v16, 0xc

    add-int/lit8 v16, v16, 0x6

    move/from16 v0, v16

    div-int/lit16 v9, v0, 0x16f

    sget-object v16, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object v17, v16, v9

    if-eqz v5, :cond_8

    const/16 v16, 0x3

    :goto_4
    aget v16, v17, v16

    sub-int v16, v4, v16

    add-int/lit8 v3, v16, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/icu/util/Calendar;->gregorianYear:I

    move-object/from16 v0, p0

    iput v9, v0, Landroid/icu/util/Calendar;->gregorianMonth:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/icu/util/Calendar;->gregorianDayOfMonth:I

    add-int/lit8 v16, v4, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/util/Calendar;->gregorianDayOfYear:I

    return-void

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    const/16 v8, 0x3b

    goto :goto_2

    :cond_7
    const/4 v2, 0x2

    goto :goto_3

    :cond_8
    const/16 v16, 0x2

    goto :goto_4
.end method

.method protected computeGregorianMonthStart(II)I
    .locals 6

    const/4 v5, 0x0

    if-ltz p2, :cond_0

    const/16 v4, 0xb

    if-le p2, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    new-array v2, v4, [I

    const/16 v4, 0xc

    invoke-static {p2, v4, v2}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    move-result v4

    add-int/2addr p1, v4

    aget p2, v2, v5

    :cond_1
    rem-int/lit8 v4, p1, 0x4

    if-nez v4, :cond_4

    rem-int/lit8 v4, p1, 0x64

    if-nez v4, :cond_2

    rem-int/lit16 v4, p1, 0x190

    if-nez v4, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v3, p1, -0x1

    mul-int/lit16 v4, v3, 0x16d

    const/4 v5, 0x4

    invoke-static {v3, v5}, Landroid/icu/util/Calendar;->floorDivide(II)I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0x64

    invoke-static {v3, v5}, Landroid/icu/util/Calendar;->floorDivide(II)I

    move-result v5

    sub-int/2addr v4, v5

    const/16 v5, 0x190

    invoke-static {v3, v5}, Landroid/icu/util/Calendar;->floorDivide(II)I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0x1a4452

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, -0x1

    if-eqz p2, :cond_3

    sget-object v4, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object v5, v4, p2

    if-eqz v0, :cond_5

    const/4 v4, 0x3

    :goto_1
    aget v4, v5, v4

    add-int/2addr v1, v4

    :cond_3
    return v1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    goto :goto_1
.end method

.method protected computeJulianDay()I
    .locals 6

    const/16 v5, 0x14

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v2, v2, v5

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p0, v4, v2, v4}, Landroid/icu/util/Calendar;->newestStamp(III)I

    move-result v1

    const/16 v2, 0x11

    const/16 v3, 0x13

    invoke-virtual {p0, v2, v3, v1}, Landroid/icu/util/Calendar;->newestStamp(III)I

    move-result v1

    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v2, v2, v5

    if-gt v1, v2, :cond_0

    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFieldResolutionTable()[[[I

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->resolveFields([[[I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x5

    :cond_1
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result v2

    return v2
.end method

.method protected computeMillisInDay()I
    .locals 10

    const/16 v9, 0xc

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v1, v4, v8

    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v4, v4, v7

    iget-object v5, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v5, v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v2, v1, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x0

    :cond_0
    :goto_1
    mul-int/lit8 v3, v3, 0x3c

    invoke-virtual {p0, v9}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3c

    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    add-int/2addr v3, v4

    return v3

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x0

    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v3, v4

    goto :goto_1
.end method

.method protected computeTime()V
    .locals 14

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->validateFields()V

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeJulianDay()I

    move-result v1

    invoke-static {v1}, Landroid/icu/util/Calendar;->julianDayToMillis(I)J

    move-result-wide v2

    iget-object v9, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v10, 0x15

    aget v9, v9, v10

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2

    const/16 v9, 0x9

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Landroid/icu/util/Calendar;->newestStamp(III)I

    move-result v9

    iget-object v10, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v11, 0x15

    aget v10, v10, v11

    if-gt v9, v10, :cond_2

    const/16 v9, 0x15

    invoke-virtual {p0, v9}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    :goto_0
    iget-object v9, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v10, 0xf

    aget v9, v9, v10

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    iget-object v9, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v10, 0x10

    aget v9, v9, v10

    const/4 v10, 0x2

    if-lt v9, v10, :cond_3

    :cond_1
    int-to-long v10, v4

    add-long/2addr v10, v2

    const/16 v9, 0xf

    invoke-virtual {p0, v9}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v9

    const/16 v12, 0x10

    invoke-virtual {p0, v12}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v12

    add-int/2addr v9, v12

    int-to-long v12, v9

    sub-long/2addr v10, v12

    iput-wide v10, p0, Landroid/icu/util/Calendar;->time:J

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeMillisInDay()I

    move-result v4

    goto :goto_0

    :cond_3
    iget-boolean v9, p0, Landroid/icu/util/Calendar;->lenient:Z

    if-eqz v9, :cond_4

    iget v9, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    :cond_4
    invoke-virtual {p0, v2, v3, v4}, Landroid/icu/util/Calendar;->computeZoneOffset(JI)I

    move-result v5

    int-to-long v10, v4

    add-long/2addr v10, v2

    int-to-long v12, v5

    sub-long v6, v10, v12

    iget-object v9, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v9, v6, v7}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v8

    if-eq v5, v8, :cond_9

    iget-boolean v9, p0, Landroid/icu/util/Calendar;->lenient:Z

    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "The specified wall time does not exist due to time zone offset transition."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_5
    sget-boolean v9, Landroid/icu/util/Calendar;->-assertionsDisabled:Z

    if-nez v9, :cond_7

    iget v9, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_7

    new-instance v9, Ljava/lang/AssertionError;

    iget v10, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    invoke-direct {p0, v6, v7}, Landroid/icu/util/Calendar;->getImmediatePreviousZoneTransition(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_8

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Could not locate a time zone transition before "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/icu/util/Calendar;->time:J

    goto :goto_1

    :cond_9
    iput-wide v6, p0, Landroid/icu/util/Calendar;->time:J

    goto :goto_1

    :cond_a
    int-to-long v10, v4

    add-long/2addr v10, v2

    invoke-virtual {p0, v2, v3, v4}, Landroid/icu/util/Calendar;->computeZoneOffset(JI)I

    move-result v9

    int-to-long v12, v9

    sub-long/2addr v10, v12

    iput-wide v10, p0, Landroid/icu/util/Calendar;->time:J

    goto :goto_1
.end method

.method protected computeZoneOffset(JI)I
    .locals 17

    const/4 v3, 0x2

    new-array v8, v3, [I

    move/from16 v0, p3

    int-to-long v14, v0

    add-long v4, p1, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    instance-of v3, v3, Landroid/icu/util/BasicTimeZone;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_1

    const/4 v7, 0x4

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/Calendar;->skippedWallTime:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_2

    const/16 v6, 0xc

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    check-cast v3, Landroid/icu/util/BasicTimeZone;

    invoke-virtual/range {v3 .. v8}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    :cond_0
    :goto_2
    const/4 v3, 0x0

    aget v3, v8, v3

    const/4 v11, 0x1

    aget v11, v8, v11

    add-int/2addr v3, v11

    return v3

    :cond_1
    const/16 v7, 0xc

    goto :goto_0

    :cond_2
    const/4 v6, 0x4

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const/4 v11, 0x1

    invoke-virtual {v3, v4, v5, v11, v8}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_6

    const/4 v3, 0x0

    aget v3, v8, v3

    const/4 v11, 0x1

    aget v11, v8, v11

    add-int/2addr v3, v11

    int-to-long v14, v3

    sub-long v12, v4, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const-wide/32 v14, 0x1499700

    sub-long v14, v12, v14

    invoke-virtual {v3, v14, v15}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    const/4 v3, 0x0

    aget v3, v8, v3

    const/4 v11, 0x1

    aget v11, v8, v11

    add-int/2addr v3, v11

    sub-int v9, v3, v2

    sget-boolean v3, Landroid/icu/util/Calendar;->-assertionsDisabled:Z

    if-nez v3, :cond_5

    const v3, -0x1499700

    if-ge v9, v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    if-gez v9, :cond_6

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    int-to-long v14, v9

    add-long/2addr v14, v4

    const/4 v11, 0x1

    invoke-virtual {v3, v14, v15, v11, v8}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    :cond_6
    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/util/Calendar;->skippedWallTime:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_0

    const/4 v3, 0x0

    aget v3, v8, v3

    const/4 v11, 0x1

    aget v11, v8, v11

    add-int/2addr v3, v11

    int-to-long v14, v3

    sub-long v12, v4, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const/4 v11, 0x0

    invoke-virtual {v3, v12, v13, v11, v8}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/icu/util/Calendar;

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public fieldDifference(Ljava/util/Date;I)I
    .locals 11

    const/4 v10, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-gez v7, :cond_6

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0, p2, v0}, Landroid/icu/util/Calendar;->add(II)V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    return v0

    :cond_1
    cmp-long v7, v2, v8

    if-lez v7, :cond_2

    :goto_1
    sub-int v7, v0, v1

    if-le v7, v10, :cond_c

    sub-int v7, v0, v1

    div-int/lit8 v7, v7, 0x2

    add-int v6, v1, v7

    invoke-virtual {p0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0, p2, v6}, Landroid/icu/util/Calendar;->add(II)V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v7, v2, v8

    if-nez v7, :cond_4

    return v6

    :cond_2
    const v7, 0x7fffffff

    if-ge v0, v7, :cond_3

    move v1, v0

    shl-int/lit8 v0, v0, 0x1

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    :cond_4
    cmp-long v7, v2, v8

    if-lez v7, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    move v1, v6

    goto :goto_1

    :cond_6
    cmp-long v7, v4, v8

    if-lez v7, :cond_c

    const/4 v0, -0x1

    :cond_7
    invoke-virtual {p0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0, p2, v0}, Landroid/icu/util/Calendar;->add(II)V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v7, v2, v8

    if-nez v7, :cond_8

    return v0

    :cond_8
    cmp-long v7, v2, v8

    if-gez v7, :cond_9

    :goto_2
    sub-int v7, v1, v0

    if-le v7, v10, :cond_c

    sub-int v7, v0, v1

    div-int/lit8 v7, v7, 0x2

    add-int v6, v1, v7

    invoke-virtual {p0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0, p2, v6}, Landroid/icu/util/Calendar;->add(II)V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v7, v2, v8

    if-nez v7, :cond_a

    return v6

    :cond_9
    move v1, v0

    shl-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_7

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    :cond_a
    cmp-long v7, v2, v8

    if-gez v7, :cond_b

    move v0, v6

    goto :goto_2

    :cond_b
    move v1, v6

    goto :goto_2

    :cond_c
    invoke-virtual {p0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0, p2, v1}, Landroid/icu/util/Calendar;->add(II)V

    return v1
.end method

.method protected fieldName(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Landroid/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final get(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->complete()V

    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method public getActualMaximum(I)I
    .locals 5

    const/16 v4, 0x13

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Landroid/icu/util/Calendar;->getActualHelper(III)I

    move-result v1

    :goto_0
    return v1

    :pswitch_1
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setLenient(Z)V

    invoke-virtual {v0, p1, v2}, Landroid/icu/util/Calendar;->prepareGetActual(IZ)V

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setLenient(Z)V

    invoke-virtual {v0, p1, v2}, Landroid/icu/util/Calendar;->prepareGetActual(IZ)V

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Landroid/icu/util/Calendar;->getActualHelper(III)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getDateTimeFormat(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1

    invoke-static {p0, p3, p1, p2}, Landroid/icu/util/Calendar;->formatHelper(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;II)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeFormat(IILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Landroid/icu/util/Calendar;->formatHelper(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;II)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfWeekType(I)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-lt p1, v0, :cond_0

    const/4 v2, 0x7

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid day of week"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    iget v3, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    if-eq p1, v2, :cond_2

    return v4

    :cond_2
    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    if-nez v2, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    iget v3, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-ge v2, v3, :cond_6

    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    if-lt p1, v2, :cond_5

    iget v2, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-le p1, v2, :cond_7

    :cond_5
    return v4

    :cond_6
    iget v2, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-le p1, v2, :cond_7

    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    if-ge p1, v2, :cond_7

    return v4

    :cond_7
    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    if-ne p1, v2, :cond_9

    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    if-nez v2, :cond_8

    :goto_1
    return v0

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    iget v1, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-ne p1, v1, :cond_b

    iget v1, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    const v2, 0x5265c00

    if-lt v1, v2, :cond_a

    :goto_2
    return v0

    :cond_a
    const/4 v0, 0x3

    goto :goto_2

    :cond_b
    return v0
.end method

.method protected getDefaultDayInMonth(II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMonthInYear(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFieldCount()I
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v0, v0

    return v0
.end method

.method protected getFieldResolutionTable()[[[I
    .locals 1

    sget-object v0, Landroid/icu/util/Calendar;->DATE_PRECEDENCE:[[[I

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    return v0
.end method

.method public final getGreatestMinimum(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    move-result v0

    return v0
.end method

.method protected final getGregorianDayOfMonth()I
    .locals 1

    iget v0, p0, Landroid/icu/util/Calendar;->gregorianDayOfMonth:I

    return v0
.end method

.method protected final getGregorianDayOfYear()I
    .locals 1

    iget v0, p0, Landroid/icu/util/Calendar;->gregorianDayOfYear:I

    return v0
.end method

.method protected final getGregorianMonth()I
    .locals 1

    iget v0, p0, Landroid/icu/util/Calendar;->gregorianMonth:I

    return v0
.end method

.method protected final getGregorianYear()I
    .locals 1

    iget v0, p0, Landroid/icu/util/Calendar;->gregorianYear:I

    return v0
.end method

.method public final getLeastMaximum(I)I
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    move-result v0

    return v0
.end method

.method protected getLimit(II)I
    .locals 5

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->handleGetLimit(II)I

    move-result v3

    return v3

    :pswitch_1
    sget-object v3, Landroid/icu/util/Calendar;->LIMITS:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    return v3

    :pswitch_2
    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ne p2, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3, p2}, Landroid/icu/util/Calendar;->handleGetLimit(II)I

    move-result v0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    rsub-int/lit8 v3, v2, 0x7

    add-int/2addr v3, v0

    div-int/lit8 v1, v3, 0x7

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v0, 0x6

    rsub-int/lit8 v4, v2, 0x7

    add-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x7

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/util/Calendar;->actualLocale:Landroid/icu/util/ULocale;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/Calendar;->validLocale:Landroid/icu/util/ULocale;

    goto :goto_0
.end method

.method public final getMaximum(I)I
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    move-result v0

    return v0
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 1

    iget v0, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public final getMinimum(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    move-result v0

    return v0
.end method

.method public final getRelatedYear()I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x13

    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    sget-object v1, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    iget-object v7, v0, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v1, v0

    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->-getandroid-icu-util-Calendar$CalTypeSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit16 v3, v3, 0x26e

    goto :goto_1

    :pswitch_2
    add-int/lit16 v3, v3, -0xeb0

    goto :goto_1

    :pswitch_3
    add-int/lit16 v3, v3, -0xa4d

    goto :goto_1

    :pswitch_4
    add-int/lit8 v3, v3, 0x4f

    goto :goto_1

    :pswitch_5
    add-int/lit16 v3, v3, 0x11c

    goto :goto_1

    :pswitch_6
    add-int/lit8 v3, v3, 0x8

    goto :goto_1

    :pswitch_7
    add-int/lit16 v3, v3, -0x1574

    goto :goto_1

    :pswitch_8
    add-int/lit16 v3, v3, -0x91d

    goto :goto_1

    :pswitch_9
    invoke-static {v3}, Landroid/icu/util/Calendar;->gregoYearFromIslamicStart(I)I

    move-result v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRepeatedWallTimeOption()I
    .locals 1

    iget v0, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    return v0
.end method

.method public getSkippedWallTimeOption()I
    .locals 1

    iget v0, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    return v0
.end method

.method protected final getStamp(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getTime()Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    iget-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/icu/util/Calendar;->updateTime()V

    :cond_0
    iget-wide v0, p0, Landroid/icu/util/Calendar;->time:J

    return-wide v0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method public getWeekData()Landroid/icu/util/Calendar$WeekData;
    .locals 7

    new-instance v0, Landroid/icu/util/Calendar$WeekData;

    iget v1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    iget v2, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    iget v3, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    iget v4, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    iget v5, p0, Landroid/icu/util/Calendar;->weekendCease:I

    iget v6, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    invoke-direct/range {v0 .. v6}, Landroid/icu/util/Calendar$WeekData;-><init>(IIIIII)V

    return-object v0
.end method

.method public getWeekendTransition(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    return v0

    :cond_0
    iget v0, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not weekend transition day"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleComputeFields(I)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianMonth()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianDayOfMonth()I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianDayOfYear()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianYear()I

    move-result v1

    const/16 v2, 0x13

    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v0, 0x1

    if-ge v1, v4, :cond_0

    const/4 v0, 0x0

    rsub-int/lit8 v1, v1, 0x1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/icu/util/Calendar;->internalSet(II)V

    invoke-virtual {p0, v4, v1}, Landroid/icu/util/Calendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeJulianDay(I)I
    .locals 13

    const/4 v11, 0x5

    if-eq p1, v11, :cond_0

    const/4 v11, 0x4

    if-ne p1, v11, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_0
    const/4 v11, 0x3

    if-ne p1, v11, :cond_3

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v11

    const/16 v12, 0x11

    invoke-virtual {p0, v12, v11}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v10

    :goto_1
    const/16 v11, 0x13

    invoke-virtual {p0, v11, v10}, Landroid/icu/util/Calendar;->internalSet(II)V

    if-eqz v9, :cond_4

    invoke-virtual {p0, v10}, Landroid/icu/util/Calendar;->getDefaultMonthInYear(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {p0, v12, v11}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v7

    :goto_2
    invoke-virtual {p0, v10, v7, v9}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v5

    const/4 v11, 0x5

    if-ne p1, v11, :cond_6

    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {p0, v10, v7}, Landroid/icu/util/Calendar;->getDefaultDayInMonth(II)I

    move-result v11

    const/4 v12, 0x5

    invoke-virtual {p0, v12, v11}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v11

    add-int/2addr v11, v5

    return v11

    :cond_1
    const/16 v11, 0x8

    if-ne p1, v11, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v10

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v10, v7}, Landroid/icu/util/Calendar;->getDefaultDayInMonth(II)I

    move-result v11

    add-int/2addr v11, v5

    return v11

    :cond_6
    const/4 v11, 0x6

    if-ne p1, v11, :cond_7

    const/4 v11, 0x6

    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v11

    add-int/2addr v11, v5

    return v11

    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Landroid/icu/util/Calendar;->julianDayToDayOfWeek(I)I

    move-result v11

    sub-int v3, v11, v4

    if-gez v3, :cond_8

    add-int/lit8 v3, v3, 0x7

    :cond_8
    const/4 v2, 0x0

    sget-object v11, Landroid/icu/util/Calendar;->DOW_PRECEDENCE:[[[I

    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->resolveFields([[[I)I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_3
    rem-int/lit8 v2, v2, 0x7

    if-gez v2, :cond_9

    add-int/lit8 v2, v2, 0x7

    :cond_9
    rsub-int/lit8 v11, v3, 0x1

    add-int v0, v11, v2

    const/16 v11, 0x8

    if-ne p1, v11, :cond_c

    const/4 v11, 0x1

    if-ge v0, v11, :cond_a

    add-int/lit8 v0, v0, 0x7

    :cond_a
    const/16 v11, 0x8

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v1

    if-ltz v1, :cond_b

    add-int/lit8 v11, v1, -0x1

    mul-int/lit8 v11, v11, 0x7

    add-int/2addr v0, v11

    :goto_4
    add-int v11, v5, v0

    return v11

    :sswitch_0
    const/4 v11, 0x7

    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v11

    sub-int v2, v11, v4

    goto :goto_3

    :sswitch_1
    const/16 v11, 0x12

    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    goto :goto_3

    :cond_b
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v6

    invoke-virtual {p0, v10, v6}, Landroid/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result v8

    sub-int v11, v8, v0

    div-int/lit8 v11, v11, 0x7

    add-int/2addr v11, v1

    add-int/lit8 v11, v11, 0x1

    mul-int/lit8 v11, v11, 0x7

    add-int/2addr v0, v11

    goto :goto_4

    :cond_c
    rsub-int/lit8 v11, v3, 0x7

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v12

    if-ge v11, v12, :cond_d

    add-int/lit8 v0, v0, 0x7

    :cond_d
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v11, v11, 0x7

    add-int/2addr v0, v11

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract handleComputeMonthStart(IIZ)I
.end method

.method protected handleCreateFields()[I
    .locals 1

    const/16 v0, 0x17

    new-array v0, v0, [I

    return-object v0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 2

    new-instance v0, Landroid/icu/util/Calendar$FormatConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/Calendar$FormatConfiguration;-><init>(Landroid/icu/util/Calendar$FormatConfiguration;)V

    invoke-static {v0, p1}, Landroid/icu/util/Calendar$FormatConfiguration;->-set4(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/icu/util/Calendar$FormatConfiguration;->-set3(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v1, p0, p3}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V

    invoke-static {v0, v1}, Landroid/icu/util/Calendar$FormatConfiguration;->-set1(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/text/DateFormatSymbols;)Landroid/icu/text/DateFormatSymbols;

    invoke-static {v0, p3}, Landroid/icu/util/Calendar$FormatConfiguration;->-set2(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    invoke-static {v0, p0}, Landroid/icu/util/Calendar$FormatConfiguration;->-set0(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/Calendar;)Landroid/icu/util/Calendar;

    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->getInstance(Landroid/icu/util/Calendar$FormatConfiguration;)Landroid/icu/text/SimpleDateFormat;

    move-result-object v1

    return-object v1
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 2

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected abstract handleGetExtendedYear()I
.end method

.method protected abstract handleGetLimit(II)I
.end method

.method protected handleGetMonthLength(II)I
    .locals 2

    const/4 v1, 0x1

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    invoke-virtual {p0, p1, p2, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected handleGetYearLength(I)I
    .locals 2

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    invoke-virtual {p0, p1, v1, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroid/icu/util/Calendar;->lenient:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget v1, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget v1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iget v1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    shl-int/lit8 v1, v1, 0x9

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveDefaultCentury()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected final internalGet(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method protected final internalGet(II)I
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aget p2, v0, p1

    :cond_0
    return p2
.end method

.method protected final internalGetTimeInMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/icu/util/Calendar;->time:J

    return-wide v0
.end method

.method protected final internalSet(II)V
    .locals 3

    const/4 v2, 0x1

    shl-int v0, v2, p1

    iget v1, p0, Landroid/icu/util/Calendar;->internalSetMask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subclass cannot set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aput p2, v0, p1

    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v2, v0, p1

    return-void
.end method

.method public isEquivalentTo(Landroid/icu/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getRepeatedWallTimeOption()I

    move-result v1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getRepeatedWallTimeOption()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getSkippedWallTimeOption()I

    move-result v1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getSkippedWallTimeOption()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLenient()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/util/Calendar;->lenient:Z

    return v0
.end method

.method public final isSet(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v2, v2, p1

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isWeekend()Z
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getDayOfWeekType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/16 v6, 0xe

    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v6

    const/16 v7, 0xd

    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v7

    const/16 v8, 0xc

    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v8

    const/16 v9, 0xb

    invoke-virtual {p0, v9}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v7, v8

    mul-int/lit16 v7, v7, 0x3e8

    add-int v2, v6, v7

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getWeekendTransition(I)I

    move-result v3

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    return v5

    :pswitch_1
    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    if-lt v2, v3, :cond_0

    move v4, v5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isWeekend(Ljava/util/Date;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isWeekend()Z

    move-result v0

    return v0
.end method

.method protected newerField(II)I
    .locals 2

    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v0, v0, p2

    iget-object v1, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v1, v1, p1

    if-le v0, v1, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method protected newestStamp(III)I
    .locals 3

    move v0, p3

    move v1, p1

    :goto_0
    if-gt v1, p2, :cond_1

    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v2, v2, v1

    if-le v2, v0, :cond_0

    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v0, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected pinField(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v1

    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v2, v2, p1

    if-le v2, v0, :cond_1

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->set(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v2, v2, p1

    if-ge v2, v1, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method protected prepareGetActual(IZ)V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x7

    const/4 v3, 0x5

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/icu/util/Calendar;->set(II)V

    return-void

    :sswitch_0
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    invoke-virtual {p0, v7, v1}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    invoke-virtual {p0, v6, v1}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v3, v5}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_0

    :sswitch_4
    iget v0, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    if-eqz p2, :cond_0

    add-int/lit8 v1, v0, 0x6

    rem-int/lit8 v0, v1, 0x7

    if-ge v0, v5, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    invoke-virtual {p0, v4, v0}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x11 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method protected resolveFields([[[I)I
    .locals 14

    const/16 v13, 0x20

    const/4 v12, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_0
    array-length v10, p1

    if-ge v2, v10, :cond_8

    if-gez v0, :cond_8

    aget-object v3, p1, v2

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_1
    array-length v10, v3

    if-ge v5, v10, :cond_7

    aget-object v6, v3, v5

    const/4 v7, 0x0

    aget v10, v6, v12

    if-lt v10, v13, :cond_1

    const/4 v4, 0x1

    :goto_2
    array-length v10, v6

    if-ge v4, v10, :cond_3

    iget-object v10, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v11, v6, v4

    aget v8, v10, v11

    if-nez v8, :cond_2

    :cond_0
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-le v7, v1, :cond_0

    aget v9, v6, v12

    if-lt v9, v13, :cond_6

    and-int/lit8 v9, v9, 0x1f

    const/4 v10, 0x5

    if-ne v9, v10, :cond_4

    iget-object v10, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/4 v11, 0x4

    aget v10, v10, v11

    iget-object v11, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v11, v11, v9

    if-ge v10, v11, :cond_5

    :cond_4
    move v0, v9

    :cond_5
    :goto_4
    if-ne v0, v9, :cond_0

    move v1, v7

    goto :goto_3

    :cond_6
    move v0, v9

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    if-lt v0, v13, :cond_9

    and-int/lit8 v0, v0, 0x1f

    :cond_9
    return v0
.end method

.method public roll(II)V
    .locals 46

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->complete()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v39, Ljava/lang/IllegalArgumentException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "Calendar.roll("

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ") not supported"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v39

    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v23

    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v21

    sub-int v39, v21, v23

    add-int/lit8 v14, v39, 0x1

    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    add-int v36, v39, p2

    sub-int v39, v36, v23

    rem-int v36, v39, v14

    if-gez v36, :cond_1

    add-int v36, v36, v14

    :cond_1
    add-int v36, v36, v23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    return-void

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v30

    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v21

    add-int v39, v30, p2

    add-int/lit8 v40, v21, 0x1

    rem-int v28, v39, v40

    if-gez v28, :cond_2

    add-int/lit8 v39, v21, 0x1

    add-int v28, v28, v39

    :cond_2
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v42, v0

    sub-long v40, v40, v42

    const-wide/32 v42, 0x36ee80

    mul-long v40, v40, v42

    add-long v40, v40, v34

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void

    :pswitch_3
    const/16 v39, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v21

    const/16 v39, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    add-int v39, v39, p2

    add-int/lit8 v40, v21, 0x1

    rem-int v26, v39, v40

    if-gez v26, :cond_3

    add-int/lit8 v39, v21, 0x1

    add-int v26, v26, v39

    :cond_3
    const/16 v39, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v39, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    return-void

    :pswitch_4
    const/4 v11, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v39, "gregorian"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_4

    const-string/jumbo v39, "roc"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_4

    const-string/jumbo v39, "coptic"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5

    :cond_4
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 p2, v0

    const/4 v11, 0x1

    :cond_5
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    add-int v29, v39, p2

    if-gtz v10, :cond_6

    const/16 v39, 0x1

    move/from16 v0, v29

    move/from16 v1, v39

    if-lt v0, v1, :cond_a

    :cond_6
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v22

    const v39, 0x8000

    move/from16 v0, v22

    move/from16 v1, v39

    if-ge v0, v1, :cond_9

    const/16 v39, 0x1

    move/from16 v0, v29

    move/from16 v1, v39

    if-ge v0, v1, :cond_8

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v39, v0

    rem-int v39, v39, v22

    sub-int v29, v22, v39

    :cond_7
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v39, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    const/16 v39, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    return-void

    :cond_8
    move/from16 v0, v29

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    add-int/lit8 v39, v29, -0x1

    rem-int v39, v39, v22

    add-int/lit8 v29, v39, 0x1

    goto :goto_0

    :cond_9
    const/16 v39, 0x1

    move/from16 v0, v29

    move/from16 v1, v39

    if-ge v0, v1, :cond_7

    const/16 v29, 0x1

    goto :goto_0

    :cond_a
    if-eqz v11, :cond_7

    const/16 v29, 0x1

    goto :goto_0

    :pswitch_5
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    add-int v39, v39, p2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v39, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    const/16 v39, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    return-void

    :pswitch_6
    const/16 v39, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v40

    sub-int v7, v39, v40

    if-gez v7, :cond_b

    add-int/lit8 v7, v7, 0x7

    :cond_b
    const/16 v39, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    sub-int v39, v7, v39

    add-int/lit8 v39, v39, 0x1

    rem-int/lit8 v12, v39, 0x7

    if-gez v12, :cond_c

    add-int/lit8 v12, v12, 0x7

    :cond_c
    rsub-int/lit8 v39, v12, 0x7

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_10

    rsub-int/lit8 v33, v12, 0x8

    :goto_1
    const/16 v39, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v27

    const/16 v39, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    sub-int v39, v27, v39

    add-int v39, v39, v7

    rem-int/lit8 v15, v39, 0x7

    add-int/lit8 v39, v27, 0x7

    sub-int v20, v39, v15

    sub-int v14, v20, v33

    const/16 v39, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    mul-int/lit8 v40, p2, 0x7

    add-int v39, v39, v40

    sub-int v39, v39, v33

    rem-int v5, v39, v14

    if-gez v5, :cond_d

    add-int/2addr v5, v14

    :cond_d
    add-int v5, v5, v33

    const/16 v39, 0x1

    move/from16 v0, v39

    if-ge v5, v0, :cond_e

    const/4 v5, 0x1

    :cond_e
    move/from16 v0, v27

    if-le v5, v0, :cond_f

    move/from16 v5, v27

    :cond_f
    const/16 v39, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1, v5}, Landroid/icu/util/Calendar;->set(II)V

    return-void

    :cond_10
    rsub-int/lit8 v33, v12, 0x1

    goto :goto_1

    :pswitch_7
    const/16 v39, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v40

    sub-int v7, v39, v40

    if-gez v7, :cond_11

    add-int/lit8 v7, v7, 0x7

    :cond_11
    const/16 v39, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    sub-int v39, v7, v39

    add-int/lit8 v39, v39, 0x1

    rem-int/lit8 v13, v39, 0x7

    if-gez v13, :cond_12

    add-int/lit8 v13, v13, 0x7

    :cond_12
    rsub-int/lit8 v39, v13, 0x7

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_16

    rsub-int/lit8 v33, v13, 0x8

    :goto_2
    const/16 v39, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v37

    const/16 v39, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    sub-int v39, v37, v39

    add-int v39, v39, v7

    rem-int/lit8 v18, v39, 0x7

    add-int/lit8 v39, v37, 0x7

    sub-int v20, v39, v18

    sub-int v14, v20, v33

    const/16 v39, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    mul-int/lit8 v40, p2, 0x7

    add-int v39, v39, v40

    sub-int v39, v39, v33

    rem-int v6, v39, v14

    if-gez v6, :cond_13

    add-int/2addr v6, v14

    :cond_13
    add-int v6, v6, v33

    const/16 v39, 0x1

    move/from16 v0, v39

    if-ge v6, v0, :cond_14

    const/4 v6, 0x1

    :cond_14
    move/from16 v0, v37

    if-le v6, v0, :cond_15

    move/from16 v6, v37

    :cond_15
    const/16 v39, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1, v6}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v39, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->clear(I)V

    return-void

    :cond_16
    rsub-int/lit8 v33, v13, 0x1

    goto :goto_2

    :pswitch_8
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    mul-long v8, v40, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    const/16 v39, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v42, v0

    const-wide/32 v44, 0x5265c00

    mul-long v42, v42, v44

    sub-long v24, v40, v42

    const/16 v39, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    add-long v40, v40, v8

    sub-long v40, v40, v24

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v42, v0

    const-wide/32 v44, 0x5265c00

    mul-long v42, v42, v44

    rem-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/icu/util/Calendar;->time:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v39, v40, v42

    if-gez v39, :cond_17

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v42, v0

    const-wide/32 v44, 0x5265c00

    mul-long v42, v42, v44

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/icu/util/Calendar;->time:J

    :cond_17
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    add-long v40, v40, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void

    :pswitch_9
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x5265c00

    mul-long v8, v40, v42

    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v19

    const/16 v39, 0x7

    move/from16 v0, p1

    move/from16 v1, v39

    if-ne v0, v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v39

    :goto_3
    sub-int v19, v19, v39

    if-gez v19, :cond_18

    add-int/lit8 v19, v19, 0x7

    :cond_18
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v42, v0

    const-wide/32 v44, 0x5265c00

    mul-long v42, v42, v44

    sub-long v24, v40, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    add-long v40, v40, v8

    sub-long v40, v40, v24

    const-wide/32 v42, 0x240c8400

    rem-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/icu/util/Calendar;->time:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v39, v40, v42

    if-gez v39, :cond_19

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x240c8400

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/icu/util/Calendar;->time:J

    :cond_19
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    add-long v40, v40, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void

    :cond_1a
    const/16 v39, 0x1

    goto :goto_3

    :pswitch_a
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x240c8400

    mul-long v8, v40, v42

    const/16 v39, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    div-int/lit8 v32, v39, 0x7

    const/16 v39, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v39

    const/16 v40, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v40

    sub-int v39, v39, v40

    div-int/lit8 v31, v39, 0x7

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v42, v0

    const-wide/32 v44, 0x240c8400

    mul-long v42, v42, v44

    sub-long v24, v40, v42

    add-int v39, v32, v31

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide/32 v42, 0x240c8400

    mul-long v16, v42, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    add-long v40, v40, v8

    sub-long v40, v40, v24

    rem-long v40, v40, v16

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/icu/util/Calendar;->time:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x0

    cmp-long v39, v40, v42

    if-gez v39, :cond_1b

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    add-long v40, v40, v16

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/icu/util/Calendar;->time:J

    :cond_1b
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    move-wide/from16 v40, v0

    add-long v40, v40, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void

    :pswitch_b
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v39

    add-int v39, v39, p2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method

.method public final roll(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->roll(II)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final set(II)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeFields()V

    :cond_0
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aput p2, v0, p1

    iget v0, p0, Landroid/icu/util/Calendar;->nextStamp:I

    sget v1, Landroid/icu/util/Calendar;->STAMP_MAX:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/icu/util/Calendar;->recalculateStamp()V

    :cond_1
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    iget v1, p0, Landroid/icu/util/Calendar;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/util/Calendar;->nextStamp:I

    aput v1, v0, p1

    iput-boolean v3, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v3, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v3, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    return-void
.end method

.method public final set(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public final set(IIIII)V
    .locals 1

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

    return-void
.end method

.method public final set(IIIIII)V
    .locals 1

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

.method public setFirstDayOfWeek(I)V
    .locals 2

    iget v0, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid day of week"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    :cond_2
    return-void
.end method

.method public setLenient(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/util/Calendar;->lenient:Z

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
    iput-object p1, p0, Landroid/icu/util/Calendar;->validLocale:Landroid/icu/util/ULocale;

    iput-object p2, p0, Landroid/icu/util/Calendar;->actualLocale:Landroid/icu/util/ULocale;

    return-void
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    :cond_0
    :goto_0
    iget v0, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    const/4 p1, 0x7

    goto :goto_0
.end method

.method public final setRelatedYear(I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    iget-object v6, v0, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v0

    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->-getandroid-icu-util-Calendar$CalTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/16 v3, 0x13

    invoke-virtual {p0, v3, p1}, Landroid/icu/util/Calendar;->set(II)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit16 p1, p1, -0x26e

    goto :goto_1

    :pswitch_2
    add-int/lit16 p1, p1, 0xeb0

    goto :goto_1

    :pswitch_3
    add-int/lit16 p1, p1, 0xa4d

    goto :goto_1

    :pswitch_4
    add-int/lit8 p1, p1, -0x4f

    goto :goto_1

    :pswitch_5
    add-int/lit16 p1, p1, -0x11c

    goto :goto_1

    :pswitch_6
    add-int/lit8 p1, p1, -0x8

    goto :goto_1

    :pswitch_7
    add-int/lit16 p1, p1, 0x1574

    goto :goto_1

    :pswitch_8
    add-int/lit16 p1, p1, 0x91d

    goto :goto_1

    :pswitch_9
    invoke-static {p1}, Landroid/icu/util/Calendar;->firstIslamicStartYearFromGrego(I)I

    move-result p1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRepeatedWallTimeOption(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal repeated wall time option - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    return-void
.end method

.method public setSkippedWallTimeOption(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal skipped wall time option - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide v2, 0x28d47dbbf19b000L

    cmp-long v1, p1, v2

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide p1, 0x28d47dbbf19b000L

    :cond_0
    :goto_0
    iput-wide p1, p0, Landroid/icu/util/Calendar;->time:J

    iput-boolean v4, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v4, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v5, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v5, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v4, v2, v0

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "millis value greater than upper bounds for a Calendar : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-wide v2, -0x28ec76c40e65000L

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide p1, -0x28ec76c40e65000L

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "millis value less than lower bounds for a Calendar : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method public setTimeZone(Landroid/icu/util/TimeZone;)V
    .locals 1

    iput-object p1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    return-void
.end method

.method public setWeekData(Landroid/icu/util/Calendar$WeekData;)Landroid/icu/util/Calendar;
    .locals 1

    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setFirstDayOfWeek(I)V

    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    iput v0, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    iput v0, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    iput v0, p0, Landroid/icu/util/Calendar;->weekendCease:I

    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    iput v0, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/icu/util/Calendar;->time:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",areFieldsSet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",areAllFieldsSet="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",lenient="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/icu/util/Calendar;->lenient:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",zone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",firstDayOfWeek="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",minimalDaysInFirstWeek="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",repeatedWallTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",skippedWallTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "?"

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v2, "?"

    goto :goto_2

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected validateField(I)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/icu/util/Calendar;->validateField(III)V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result v1

    invoke-virtual {p0, p1, v2, v1}, Landroid/icu/util/Calendar;->validateField(III)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v1

    invoke-virtual {p0, p1, v2, v1}, Landroid/icu/util/Calendar;->validateField(III)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "DAY_OF_WEEK_IN_MONTH cannot be zero"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/icu/util/Calendar;->validateField(III)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected final validateField(III)V
    .locals 4

    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v0, v1, p1

    if-lt v0, p2, :cond_0

    if-le v0, p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", valid range="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method protected validateFields()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->validateField(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final weekNumber(II)I
    .locals 1

    invoke-virtual {p0, p1, p1, p2}, Landroid/icu/util/Calendar;->weekNumber(III)I

    move-result v0

    return v0
.end method

.method protected weekNumber(III)I
    .locals 4

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    sub-int v2, p3, v2

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v0, v2, 0x7

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    add-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v1, v2, 0x7

    rsub-int/lit8 v2, v0, 0x7

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-lt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method
