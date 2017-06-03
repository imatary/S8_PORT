.class public Landroid/icu/text/SimpleDateFormat;
.super Landroid/icu/text/DateFormat;
.source "SimpleDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SimpleDateFormat$ContextValue;,
        Landroid/icu/text/SimpleDateFormat$PatternItem;
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-text-DisplayContextSwitchesValues:[I = null

.field private static final CALENDAR_FIELD_TO_LEVEL:[I

.field static final DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

.field private static final DECIMAL_BUF_SIZE:I = 0xa

.field static DelayedHebrewMonthCheck:Z = false

.field private static final FALLBACKPATTERN:Ljava/lang/String; = "yy/MM/dd HH:mm"

.field private static final HEBREW_CAL_CUR_MILLENIUM_END_YEAR:I = 0x1770

.field private static final HEBREW_CAL_CUR_MILLENIUM_START_YEAR:I = 0x1388

.field private static final ISOSpecialEra:I = -0x7d00

.field private static final NUMERIC_FORMAT_CHARS:Ljava/lang/String; = "ADdFgHhKkmrSsuWwYy"

.field private static final NUMERIC_FORMAT_CHARS2:Ljava/lang/String; = "ceLMQq"

.field private static PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATTERN_CHAR_IS_SYNTAX:[Z

.field private static final PATTERN_CHAR_TO_INDEX:[I

.field private static final PATTERN_CHAR_TO_LEVEL:[I

.field private static final PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static final SUPPRESS_NEGATIVE_PREFIX:Ljava/lang/String; = "\uab00"

.field private static cachedDefaultLocale:Landroid/icu/util/ULocale; = null

.field private static cachedDefaultPattern:Ljava/lang/String; = null

.field static final currentSerialVersion:I = 0x2

.field private static final millisPerHour:I = 0x36ee80

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private transient decDigits:[C

.field private transient decimalBuf:[C

.field private transient defaultCenturyBase:J

.field private defaultCenturyStart:Ljava/util/Date;

.field private transient defaultCenturyStartYear:I

.field private formatData:Landroid/icu/text/DateFormatSymbols;

.field private transient locale:Landroid/icu/util/ULocale;

.field private numberFormatters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private override:Ljava/lang/String;

.field private overrideMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;

.field private transient patternItems:[Ljava/lang/Object;

.field private serialVersionOnStream:I

.field private volatile tzFormat:Landroid/icu/text/TimeZoneFormat;

.field private transient useFastFormat:Z

.field private transient useLocalZeroPaddingNumberFormat:Z


# direct methods
.method private static synthetic -getandroid-icu-text-DisplayContextSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/text/SimpleDateFormat;->-android-icu-text-DisplayContextSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/SimpleDateFormat;->-android-icu-text-DisplayContextSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/DisplayContext;->values()[Landroid/icu/text/DisplayContext;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Landroid/icu/text/SimpleDateFormat;->-android-icu-text-DisplayContextSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(CI)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/text/SimpleDateFormat;->isNumeric(CI)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x18

    const/4 v3, 0x0

    const/16 v2, 0x80

    const/16 v1, 0x24

    sput-boolean v3, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    new-array v0, v2, [Z

    fill-array-data v0, :array_2

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    sput-object v5, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    sput-object v5, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    new-array v0, v1, [Landroid/icu/text/DateFormat$Field;

    sget-object v1, Landroid/icu/text/DateFormat$Field;->ERA:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->MILLISECOND:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->AM_PM:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->HOUR1:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->HOUR0:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->YEAR_WOY:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->DOW_LOCAL:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->EXTENDED_YEAR:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->JULIAN_DAY:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->QUARTER:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->QUARTER:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->RELATED_YEAR:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormat$Field;->TIME_SEPARATOR:Landroid/icu/text/DateFormat$Field;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string/jumbo v1, "[GyYuUQqMLlwWd]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xa
        0x14
        0x14
        0x1e
        0x1e
        0x14
        0x1e
        0x1e
        0x28
        0x32
        0x32
        0x3c
        0x46
        0x50
        0x0
        0x0
        0xa
        0x1e
        0xa
        0x0
        0x28
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        0x14
        0x1e
        0x1e
        0x0
        0x32
        -0x1
        -0x1
        0x32
        0x14
        0x14
        -0x1
        0x0
        -0x1
        0x14
        -0x1
        0x50
        -0x1
        0xa
        0x0
        0x1e
        0x0
        0xa
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        0x1e
        0x1e
        0x1e
        -0x1
        0x0
        0x32
        -0x1
        -0x1
        0x32
        -0x1
        0x3c
        -0x1
        -0x1
        -0x1
        0x14
        0xa
        0x46
        -0x1
        0xa
        0x0
        0x14
        0x0
        0xa
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        0xa
        0x9
        0xb
        0x0
        0x5
        -0x1
        -0x1
        0x10
        0x1a
        0x2
        -0x1
        0x1f
        -0x1
        0x1b
        -0x1
        0x8
        -0x1
        0x1e
        0x1d
        0xd
        0x20
        0x12
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xe
        -0x1
        0x19
        0x3
        0x13
        -0x1
        0x15
        0xf
        -0x1
        -0x1
        0x4
        -0x1
        0x6
        -0x1
        -0x1
        -0x1
        0x1c
        0x22
        0x7
        -0x1
        0x14
        0x18
        0xc
        0x21
        0x1
        0x11
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xb
        0xb
        0xc
        0xd
        0xe
        0x7
        0x6
        0x8
        0x3
        0x4
        0x9
        0xa
        0xa
        0xf
        0x11
        0x12
        0x13
        0x14
        0x15
        0xf
        0xf
        0x12
        0x2
        0x2
        0x2
        0xf
        0x1
        0xf
        0xf
        0xf
        0x13
        -0x1
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Landroid/icu/text/SimpleDateFormat;->getDefaultPattern()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateFormatSymbols;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/DateFormat;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iput-object p3, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    iput-object p4, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    iput-object p5, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    iput-boolean p6, p0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    iput-object p7, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initialize()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;ZLjava/lang/String;)V
    .locals 8

    invoke-virtual {p2}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {p3}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/Calendar;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/ULocale;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateFormatSymbols;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p3

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 8

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method private allowNumericFallback(I)Z
    .locals 1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method private diffCalFieldValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;[Ljava/lang/Object;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v7, 0x0

    aget-object v6, p3, p4

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    return v7

    :cond_0
    aget-object v2, p3, p4

    check-cast v2, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-char v0, v2, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal pattern character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' in \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    sget-object v6, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v1, v6, v3

    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_2

    const/4 v6, 0x1

    return v6

    :cond_2
    return v7
.end method

.method private fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    array-length v3, v3

    if-ge v3, p4, :cond_1

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    array-length v1, v3

    :goto_0
    add-int/lit8 v0, v1, -0x1

    :goto_1
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    rem-int/lit8 v5, p2, 0xa

    aget-char v4, v4, v5

    aput-char v4, v3, v0

    div-int/lit8 p2, p2, 0xa

    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    sub-int v3, v1, v0

    sub-int v2, p3, v3

    :goto_2
    if-lez v2, :cond_3

    if-lez v0, :cond_3

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    add-int/lit8 v0, v0, -0x1

    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    aget-char v4, v4, v6

    aput-char v4, v3, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    move v1, p4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-lez v2, :cond_4

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    aget-char v3, v3, v6

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    sub-int v4, v1, v0

    invoke-virtual {p1, v3, v0, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method private format(Landroid/icu/util/Calendar;Landroid/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/text/DisplayContext;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v14

    const/4 v6, 0x0

    :goto_0
    array-length v1, v14

    if-ge v6, v1, :cond_4

    aget-object v1, v14, v6

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    aget-object v1, v14, v6

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    aget-object v13, v14, v6

    check-cast v13, Landroid/icu/text/SimpleDateFormat$PatternItem;

    const/4 v15, 0x0

    if-eqz p5, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v1, :cond_3

    iget-char v3, v13, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v4, v13, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    :goto_2
    if-eqz p5, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    sub-int v1, v11, v15

    if-lez v1, :cond_0

    iget-char v1, v13, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;

    move-result-object v10

    new-instance v12, Ljava/text/FieldPosition;

    invoke-direct {v12, v10}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    invoke-virtual {v12, v15}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v12, v11}, Ljava/text/FieldPosition;->setEndIndex(I)V

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-char v3, v13, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v4, v13, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    invoke-virtual/range {v2 .. v9}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    return-object p3
.end method

.method private getDefaultCenturyStart()Ljava/util/Date;
    .locals 2

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    :cond_0
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    return-object v0
.end method

.method private getDefaultCenturyStartYear()I
    .locals 2

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    :cond_0
    iget v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return v0
.end method

.method private static declared-synchronized getDefaultPattern()Ljava/lang/String;
    .locals 11

    const-class v7, Landroid/icu/text/SimpleDateFormat;

    monitor-enter v7

    :try_start_0
    sget-object v6, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v6}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v3

    sget-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v3, v6}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sput-object v3, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    sget-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    invoke-static {v6}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    new-instance v1, Landroid/icu/impl/CalendarData;

    sget-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v6, v8}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/icu/impl/CalendarData;->getDateTimePatterns()[Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    array-length v6, v2

    const/16 v8, 0xd

    if-lt v6, v8, :cond_0

    const/16 v5, 0xc

    :cond_0
    aget-object v6, v2, v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x3

    aget-object v9, v2, v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x7

    aget-object v9, v2, v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v6, v8}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    sget-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    return-object v6

    :catch_0
    move-exception v4

    :try_start_3
    const-string/jumbo v6, "yy/MM/dd HH:mm"

    sput-object v6, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private static getIndexFromChar(C)I
    .locals 2

    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/icu/util/Calendar$FormatConfiguration;)Landroid/icu/text/SimpleDateFormat;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getPatternString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v5

    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static getLevelFromChar(C)I
    .locals 2

    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getPatternItems()[Ljava/lang/Object;
    .locals 12

    const/16 v11, 0x27

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    return-object v8

    :cond_0
    sget-object v8, Landroid/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    iget-object v9, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-interface {v8, v9}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    iput-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    return-object v8

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_c

    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v11, :cond_5

    if-eqz v3, :cond_3

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    if-eqz v5, :cond_2

    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v4}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v8

    if-eqz v8, :cond_a

    if-ne v0, v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    if-nez v5, :cond_9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_8

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_8
    :goto_3
    move v5, v0

    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v4}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    if-eqz v5, :cond_b

    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v4}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :cond_b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_c
    if-nez v5, :cond_e

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_d

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_d
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    sget-object v8, Landroid/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    iget-object v9, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v10, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    return-object v8

    :cond_e
    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v4}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private initLocalZeroPaddingNumberFormat()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    iput-boolean v1, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    :goto_0
    iget-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/impl/DateNumberFormat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/impl/DateNumberFormat;

    invoke-virtual {v0}, Landroid/icu/impl/DateNumberFormat;->getDigits()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    iput-boolean v1, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_0
.end method

.method private initNumberFormatters(Landroid/icu/util/ULocale;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/icu/text/SimpleDateFormat;->processOverrideString(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method private initialize()V
    .locals 6

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    if-nez v3, :cond_0

    sget-object v3, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v3}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    :cond_0
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    if-nez v3, :cond_1

    new-instance v3, Landroid/icu/text/DateFormatSymbols;

    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v4}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    :cond_1
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v3}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    :cond_2
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v3}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v3}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    sget-object v4, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    sget-object v5, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v4, v5}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/icu/text/SimpleDateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v3}, Landroid/icu/text/SimpleDateFormat;->initNumberFormatters(Landroid/icu/util/ULocale;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/icu/impl/DateNumberFormat;

    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v4, v0, v2}, Landroid/icu/impl/DateNumberFormat;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    goto :goto_0
.end method

.method private initializeDefaultCenturyStart(J)V
    .locals 3

    const/4 v2, 0x1

    iput-wide p1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, -0x50

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->add(II)V

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return-void
.end method

.method private declared-synchronized initializeTimeZoneFormat(Z)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v2, v2, Landroid/icu/text/DecimalFormat;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v2, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneFormat;->cloneAsThawed()Landroid/icu/text/TimeZoneFormat;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    :cond_2
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v2, v1}, Landroid/icu/text/TimeZoneFormat;->setGMTOffsetDigits(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v2, v2, Landroid/icu/impl/DateNumberFormat;

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v2, Landroid/icu/impl/DateNumberFormat;

    invoke-virtual {v2}, Landroid/icu/impl/DateNumberFormat;->getDigits()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static isFieldUnitIgnored(Ljava/lang/String;I)Z
    .locals 11

    const/16 v10, 0x27

    const/4 v9, 0x0

    sget-object v7, Landroid/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I

    aget v2, v7, p1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_1

    if-lez v1, :cond_1

    invoke-static {v6}, Landroid/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    move-result v5

    if-gt v2, v5, :cond_0

    return v9

    :cond_0
    const/4 v1, 0x0

    :cond_1
    if-ne v0, v10, :cond_5

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-lez v1, :cond_7

    invoke-static {v6}, Landroid/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    move-result v5

    if-gt v2, v5, :cond_7

    return v9

    :cond_7
    const/4 v7, 0x1

    return v7
.end method

.method private static final isNumeric(CI)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "ADdFgHhKkmrSsuWwYy"

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x2

    if-gt p1, v2, :cond_1

    const-string/jumbo v2, "ceLMQq"

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static isSyntaxChar(C)Z
    .locals 2

    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    and-int/lit16 v1, p0, 0xff

    aget-boolean v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lowerLevel([Ljava/lang/Object;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x0

    aget-object v3, p1, p2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    return v4

    :cond_0
    aget-object v1, p1, p2

    check-cast v1, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-char v0, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal pattern character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' in \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-lt v2, p3, :cond_2

    const/4 v3, 0x1

    return v3

    :cond_2
    return v4
.end method

.method private matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I
    .locals 16

    move/from16 v9, p2

    aget-object v10, p3, p4

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v12, :cond_6

    move/from16 v0, p2

    if-ge v0, v13, :cond_6

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v11}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {v5}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v14

    if-eqz v14, :cond_1

    :goto_1
    add-int/lit8 v14, v6, 0x1

    if-ge v14, v12, :cond_0

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v14

    if-eqz v14, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    :goto_2
    add-int/lit8 v14, p2, 0x1

    if-ge v14, v13, :cond_5

    add-int/lit8 v14, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v14

    if-eqz v14, :cond_5

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_1
    if-eq v11, v5, :cond_5

    const/16 v14, 0x2e

    if-ne v5, v14, :cond_2

    move/from16 v0, p2

    if-ne v0, v9, :cond_2

    if-lez p4, :cond_2

    sget-object v14, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v14, p4, -0x1

    aget-object v3, p3, v14

    instance-of v14, v3, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v14, :cond_6

    check-cast v3, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v7, v3, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-nez v7, :cond_6

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/16 v14, 0x20

    if-eq v11, v14, :cond_3

    const/16 v14, 0x2e

    if-ne v11, v14, :cond_4

    :cond_3
    sget-object v14, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v14

    if-eqz v14, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move/from16 v0, p2

    if-eq v0, v9, :cond_6

    sget-object v14, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v14

    if-eqz v14, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_6
    if-ne v6, v12, :cond_8

    const/4 v14, 0x1

    :goto_3
    const/4 v15, 0x0

    aput-boolean v14, p5, v15

    const/4 v14, 0x0

    aget-boolean v14, p5, v14

    if-nez v14, :cond_7

    sget-object v14, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v14

    if-eqz v14, :cond_7

    if-lez p4, :cond_7

    move-object/from16 v0, p3

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p4

    if-ge v0, v14, :cond_7

    if-ge v9, v13, :cond_7

    add-int/lit8 v14, p4, -0x1

    aget-object v3, p3, v14

    add-int/lit8 v14, p4, 0x1

    aget-object v1, p3, v14

    instance-of v14, v3, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v14, :cond_7

    instance-of v14, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v14, :cond_7

    check-cast v3, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-char v4, v3, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    check-cast v1, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-char v2, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    sget-object v14, Landroid/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v14, v4}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v14

    sget-object v15, Landroid/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v15, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v15

    if-eq v14, v15, :cond_7

    move v8, v9

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v14

    if-nez v14, :cond_9

    if-le v8, v9, :cond_a

    const/4 v14, 0x1

    :goto_5
    const/4 v15, 0x0

    aput-boolean v14, p5, v15

    move/from16 p2, v8

    :cond_7
    return p2

    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    const/4 v14, 0x0

    goto :goto_5
.end method

.method private matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object/from16 v0, p4

    array-length v3, v0

    const/4 v9, 0x7

    if-ne p3, v9, :cond_0

    const/4 v4, 0x1

    :cond_0
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v9, p4, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v2, :cond_1

    aget-object v9, p4, v4

    invoke-direct {p0, p1, p2, v9, v7}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v8

    if-ltz v8, :cond_1

    move v1, v4

    move v2, v8

    const/4 v5, 0x0

    :cond_1
    if-eqz p5, :cond_2

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aget-object v10, p4, v4

    const/4 v11, 0x0

    aput-object v10, v9, v11

    move-object/from16 v0, p5

    invoke-static {v0, v9}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v2, :cond_2

    invoke-direct {p0, p1, p2, v6, v7}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v8

    if-ltz v8, :cond_2

    move v1, v4

    move v2, v8

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ltz v1, :cond_6

    if-ltz p3, :cond_5

    const/4 v9, 0x1

    if-ne p3, v9, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    move-object/from16 v0, p6

    invoke-virtual {v0, p3, v1}, Landroid/icu/util/Calendar;->set(II)V

    if-eqz p5, :cond_5

    const/16 v9, 0x16

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v5}, Landroid/icu/util/Calendar;->set(II)V

    :cond_5
    add-int v9, p2, v2

    return v9

    :cond_6
    not-int v9, p2

    return v9
.end method

.method private parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .locals 2

    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return-void
.end method

.method private parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-eqz p4, :cond_1

    invoke-virtual {p5, p1, p3}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    :cond_0
    :goto_0
    if-lez p2, :cond_5

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    sub-int v1, v5, v3

    if-le v1, p2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    sub-int/2addr v1, p2

    :goto_1
    if-lez v1, :cond_4

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    instance-of v5, p5, Landroid/icu/text/DecimalFormat;

    if-eqz v5, :cond_2

    move-object v5, p5

    check-cast v5, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v4

    move-object v5, p5

    check-cast v5, Landroid/icu/text/DecimalFormat;

    const-string/jumbo v8, "\uab00"

    invoke-virtual {v5, v8}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    invoke-virtual {p5, p1, p3}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    check-cast p5, Landroid/icu/text/DecimalFormat;

    invoke-virtual {p5, v4}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p5, Landroid/icu/impl/DateNumberFormat;

    if-eqz v0, :cond_3

    move-object v5, p5

    check-cast v5, Landroid/icu/impl/DateNumberFormat;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    :cond_3
    invoke-virtual {p5, p1, p3}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v2

    if-eqz v0, :cond_0

    check-cast p5, Landroid/icu/impl/DateNumberFormat;

    invoke-virtual {p5, v9}, Landroid/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    goto :goto_0

    :cond_4
    add-int v5, v3, p2

    invoke-virtual {p3, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method private parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;
    .locals 6

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method private processOverrideString(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 13

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v10, 0x0

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_7

    const-string/jumbo v11, ";"

    invoke-virtual {p2, v11, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    invoke-virtual {p2, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "="

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v11, -0x1

    if-ne v3, v11, :cond_4

    move-object v7, v0

    const/4 v4, 0x1

    :goto_2
    new-instance v9, Landroid/icu/util/ULocale;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "@numbers="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v9, v11}, Landroid/icu/text/NumberFormat;->createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    if-eqz v4, :cond_5

    invoke-virtual {p0, v6}, Landroid/icu/text/SimpleDateFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)V

    :goto_3
    if-nez v4, :cond_2

    iget-object v11, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_2
    :goto_4
    add-int/lit8 v10, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    iget-object v11, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v11, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_3

    :cond_6
    iget-object v11, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget v2, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    if-le v2, v4, :cond_3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_0
    iget v2, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    if-ge v2, v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    :goto_1
    const/4 v2, 0x2

    iput v2, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    sget-object v2, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v2}, Landroid/icu/text/SimpleDateFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    if-nez v2, :cond_0

    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p0, v2}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    if-ltz v0, :cond_1

    invoke-static {}, Landroid/icu/text/DisplayContext;->values()[Landroid/icu/text/DisplayContext;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->value()I

    move-result v6

    if-ne v6, v0, :cond_5

    invoke-virtual {p0, v1}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    :cond_1
    sget-object v2, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v2, v3}, Landroid/icu/text/SimpleDateFormat;->setBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;Z)Landroid/icu/text/DateFormat;

    :cond_2
    return-void

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-direct {p0, v2}, Landroid/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_0

    return p4

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_1

    add-int/lit8 v5, p4, -0x1

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p4, -0x1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method private static safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    if-nez p3, :cond_1

    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aget-object v1, p0, p1

    aput-object v1, v0, v2

    invoke-static {p3, v0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ICIZZ[Z",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/text/MessageFormat;",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v26, 0x0

    const/4 v8, 0x0

    const/16 v32, 0x0

    new-instance v6, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v6, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static/range {p3 .. p3}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v28

    const/4 v3, -0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_0

    move/from16 v0, p2

    not-int v3, v0

    return v3

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getNumberFormat(C)Landroid/icu/text/NumberFormat;

    move-result-object v8

    sget-object v3, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v21, v3, v28

    if-eqz p9, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v8}, Landroid/icu/text/MessageFormat;->setFormatByArgumentIndex(ILjava/text/Format;)V

    :cond_1
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "chinese"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "dangi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, p2

    if-lt v0, v3, :cond_3

    move/from16 v0, p2

    not-int v3, v0

    return v3

    :cond_2
    const/16 v24, 0x1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static/range {v19 .. v19}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static/range {v19 .. v19}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int p2, p2, v3

    goto :goto_0

    :cond_4
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v3, 0x4

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    const/16 v3, 0xf

    move/from16 v0, v28

    if-ne v0, v3, :cond_8

    :cond_5
    const/16 v27, 0x0

    if-eqz p9, :cond_7

    const/4 v3, 0x2

    move/from16 v0, v28

    if-eq v0, v3, :cond_6

    const/16 v3, 0x1a

    move/from16 v0, v28

    if-ne v0, v3, :cond_7

    :cond_6
    move-object/from16 v0, p9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_c

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    move/from16 v0, p2

    if-le v3, v0, :cond_c

    const/4 v3, 0x0

    aget-object v3, v18, v3

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_c

    const/16 v27, 0x1

    const/4 v3, 0x0

    aget-object v26, v18, v3

    check-cast v26, Ljava/lang/Number;

    const/16 v3, 0x16

    const/4 v4, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v4}, Landroid/icu/util/Calendar;->set(II)V

    :cond_7
    :goto_1
    if-nez v27, :cond_e

    if-eqz p5, :cond_f

    add-int v3, p2, p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_d

    move/from16 v0, p2

    not-int v3, v0

    return v3

    :cond_8
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_9

    const/4 v3, 0x2

    move/from16 v0, p4

    if-le v0, v3, :cond_5

    :cond_9
    const/16 v3, 0x1a

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    const/16 v3, 0x13

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    const/16 v3, 0x19

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    const/16 v3, 0x12

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    const/16 v3, 0x1e

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    if-nez v28, :cond_a

    if-nez v24, :cond_5

    :cond_a
    const/16 v3, 0x1b

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    const/16 v3, 0x1c

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    const/16 v3, 0x8

    move/from16 v0, v28

    if-eq v0, v3, :cond_5

    :cond_b
    :goto_2
    packed-switch v28, :pswitch_data_0

    :pswitch_0
    if-eqz p5, :cond_67

    add-int v3, p2, p4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_66

    move/from16 v0, p2

    neg-int v3, v0

    return v3

    :cond_c
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v3, 0x16

    const/4 v4, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v4}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_1

    :cond_d
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v26

    :goto_3
    if-nez v26, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;->allowNumericFallback(I)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    if-eqz v26, :cond_b

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->intValue()I

    move-result v32

    goto :goto_2

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v6, v2, v8}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v26

    goto :goto_3

    :cond_10
    move/from16 v0, p2

    not-int v3, v0

    return v3

    :pswitch_1
    if-eqz v24, :cond_11

    const/4 v3, 0x0

    move-object/from16 v0, p8

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_11
    const/16 v29, 0x0

    const/4 v3, 0x5

    move/from16 v0, p4

    if-ne v0, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v29

    :goto_4
    move/from16 v0, p2

    not-int v3, v0

    move/from16 v0, v29

    if-ne v0, v3, :cond_12

    const/16 v29, -0x7d00

    :cond_12
    return v29

    :cond_13
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v29

    goto :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v29

    goto :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string/jumbo v4, "hebr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string/jumbo v4, "y=hebr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_19

    :cond_15
    const/16 v3, 0x3e8

    move/from16 v0, v32

    if-ge v0, v3, :cond_19

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x1388

    move/from16 v32, v0

    :cond_16
    :goto_5
    move-object/from16 v0, p8

    move/from16 v1, v21

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    sget-boolean v3, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    if-eqz v3, :cond_18

    invoke-static/range {v32 .. v32}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v3, v4}, Landroid/icu/util/Calendar;->add(II)V

    :cond_17
    const/4 v3, 0x0

    sput-boolean v3, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    :cond_18
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_19
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_16

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int v3, v3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_16

    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->haveDefaultCentury()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_16

    add-int/lit8 v3, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v3

    rem-int/lit8 v17, v3, 0x64

    move/from16 v0, v32

    move/from16 v1, v17

    if-ne v0, v1, :cond_1a

    const/4 v3, 0x1

    :goto_6
    const/4 v4, 0x0

    aput-boolean v3, p7, v4

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v4, v3, 0x64

    move/from16 v0, v32

    move/from16 v1, v17

    if-ge v0, v1, :cond_1b

    const/16 v3, 0x64

    :goto_7
    add-int/2addr v3, v4

    add-int v32, v32, v3

    goto :goto_5

    :cond_1a
    const/4 v3, 0x0

    goto :goto_6

    :cond_1b
    const/4 v3, 0x0

    goto :goto_7

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    if-lez v25, :cond_1c

    return v25

    :cond_1c
    if-eqz v26, :cond_1f

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-nez v3, :cond_1e

    :cond_1d
    const/4 v3, 0x1

    move-object/from16 v0, p8

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v32

    if-gt v0, v3, :cond_1d

    :cond_1f
    move/from16 v0, p2

    not-int v3, v0

    return v3

    :pswitch_4
    const/4 v3, 0x2

    move/from16 v0, p4

    if-le v0, v3, :cond_20

    if-eqz v26, :cond_23

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_20
    add-int/lit8 v3, v32, -0x1

    const/4 v4, 0x2

    move-object/from16 v0, p8

    invoke-virtual {v0, v4, v3}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hebrew"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x6

    move/from16 v0, v32

    if-lt v0, v3, :cond_21

    const/4 v3, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v3

    if-nez v3, :cond_21

    const/4 v3, 0x2

    move-object/from16 v0, p8

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    :cond_21
    :goto_8
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_22
    const/4 v3, 0x1

    sput-boolean v3, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    goto :goto_8

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_25

    const/16 v22, 0x1

    :goto_9
    const/16 v25, 0x0

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_24

    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_29

    :cond_24
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    if-eqz v22, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v14, v3, v4

    :goto_a
    const/4 v12, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    :goto_b
    if-lez v25, :cond_29

    return v25

    :cond_25
    const/16 v22, 0x0

    goto :goto_9

    :cond_26
    const/4 v14, 0x0

    goto :goto_a

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    if-eqz v22, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v14, v3, v4

    :goto_c
    const/4 v12, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    goto :goto_b

    :cond_28
    const/4 v14, 0x0

    goto :goto_c

    :cond_29
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_2a

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_2e

    :cond_2a
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    if-eqz v22, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v14, v3, v4

    :goto_d
    const/4 v12, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    :goto_e
    return v3

    :cond_2b
    const/4 v14, 0x0

    goto :goto_d

    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    if-eqz v22, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v14, v3, v4

    :goto_f
    const/4 v12, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    goto :goto_e

    :cond_2d
    const/4 v14, 0x0

    goto :goto_f

    :cond_2e
    return v25

    :pswitch_5
    const/16 v3, 0xb

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_2f

    const/16 v32, 0x0

    :cond_2f
    const/16 v3, 0xb

    move-object/from16 v0, p8

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :pswitch_6
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int v23, v3, p2

    const/4 v3, 0x3

    move/from16 v0, v23

    if-ge v0, v3, :cond_30

    :goto_10
    const/4 v3, 0x3

    move/from16 v0, v23

    if-ge v0, v3, :cond_32

    mul-int/lit8 v32, v32, 0xa

    add-int/lit8 v23, v23, 0x1

    goto :goto_10

    :cond_30
    const/16 v16, 0x1

    :goto_11
    const/4 v3, 0x3

    move/from16 v0, v23

    if-le v0, v3, :cond_31

    mul-int/lit8 v16, v16, 0xa

    add-int/lit8 v23, v23, -0x1

    goto :goto_11

    :cond_31
    div-int v32, v32, v16

    :cond_32
    const/16 v3, 0xe

    move-object/from16 v0, p8

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :pswitch_7
    const/4 v3, 0x2

    move/from16 v0, p4

    if-le v0, v3, :cond_33

    if-eqz v26, :cond_34

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_33
    move-object/from16 v0, p8

    move/from16 v1, v21

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_34
    :pswitch_8
    const/16 v25, 0x0

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_35

    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_36

    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    const/4 v12, 0x7

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    if-lez v25, :cond_36

    return v25

    :cond_36
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_37

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_38

    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    const/4 v12, 0x7

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    if-lez v25, :cond_38

    return v25

    :cond_38
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_39

    const/4 v3, 0x6

    move/from16 v0, p4

    if-ne v0, v3, :cond_3a

    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v3, :cond_3a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    const/4 v12, 0x7

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    if-lez v25, :cond_3a

    return v25

    :cond_3a
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_3b

    const/4 v3, 0x5

    move/from16 v0, p4

    if-ne v0, v3, :cond_3c

    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    const/4 v12, 0x7

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    if-lez v25, :cond_3c

    return v25

    :cond_3c
    return v25

    :pswitch_9
    const/4 v3, 0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_3d

    if-eqz v26, :cond_3e

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-eqz v3, :cond_3e

    :cond_3d
    move-object/from16 v0, p8

    move/from16 v1, v21

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_3e
    const/16 v25, 0x0

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_3f

    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_40

    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    const/4 v12, 0x7

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    if-lez v25, :cond_40

    return v25

    :cond_40
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_41

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_42

    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    const/4 v12, 0x7

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    if-lez v25, :cond_42

    return v25

    :cond_42
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_43

    const/4 v3, 0x6

    move/from16 v0, p4

    if-ne v0, v3, :cond_44

    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v3, :cond_44

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    const/4 v12, 0x7

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    return v3

    :cond_44
    return v25

    :pswitch_a
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-eqz v3, :cond_45

    const/4 v3, 0x5

    move/from16 v0, p4

    if-ge v0, v3, :cond_46

    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/16 v12, 0x9

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    if-lez v25, :cond_47

    return v25

    :cond_46
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_45

    :cond_47
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v3, v3, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-eqz v3, :cond_49

    const/4 v3, 0x5

    move/from16 v0, p4

    if-ge v0, v3, :cond_48

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-eqz v3, :cond_49

    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    const/16 v12, 0x9

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v15, p8

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    if-lez v25, :cond_49

    return v25

    :cond_49
    move/from16 v0, p2

    not-int v3, v0

    return v3

    :pswitch_b
    const/16 v3, 0xa

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_4a

    const/16 v32, 0x0

    :cond_4a
    const/16 v3, 0xa

    move-object/from16 v0, p8

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :pswitch_c
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ge v0, v3, :cond_4b

    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    :goto_12
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v31

    if-eqz v31, :cond_4c

    move-object/from16 v0, p8

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_4b
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_12

    :cond_4c
    move/from16 v0, p2

    not-int v3, v0

    return v3

    :pswitch_d
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ge v0, v3, :cond_4d

    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    :goto_13
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v31

    if-eqz v31, :cond_4f

    move-object/from16 v0, p8

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_4d
    const/4 v3, 0x5

    move/from16 v0, p4

    if-ne v0, v3, :cond_4e

    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_13

    :cond_4e
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_13

    :cond_4f
    move/from16 v0, p2

    not-int v3, v0

    return v3

    :pswitch_e
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ge v0, v3, :cond_50

    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    :goto_14
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v31

    if-eqz v31, :cond_51

    move-object/from16 v0, p8

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_50
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_14

    :cond_51
    move/from16 v0, p2

    not-int v3, v0

    return v3

    :pswitch_f
    const/16 v30, 0x0

    packed-switch p4, :pswitch_data_1

    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    :goto_15
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v31

    if-eqz v31, :cond_52

    move-object/from16 v0, p8

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :pswitch_10
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_15

    :pswitch_11
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_15

    :pswitch_12
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_15

    :cond_52
    move/from16 v0, p2

    not-int v3, v0

    return v3

    :pswitch_13
    const/4 v3, 0x4

    move/from16 v0, p4

    if-ge v0, v3, :cond_53

    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v31

    if-eqz v31, :cond_54

    move-object/from16 v0, p8

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_53
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_16

    :cond_54
    move/from16 v0, p2

    not-int v3, v0

    return v3

    :pswitch_14
    packed-switch p4, :pswitch_data_2

    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    :goto_17
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v31

    if-eqz v31, :cond_55

    move-object/from16 v0, p8

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :pswitch_15
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_17

    :pswitch_16
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_17

    :pswitch_17
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_17

    :pswitch_18
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_17

    :cond_55
    move/from16 v0, p2

    not-int v3, v0

    return v3

    :pswitch_19
    packed-switch p4, :pswitch_data_3

    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    :goto_18
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v3, v0, v1, v6, v2}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v31

    if-eqz v31, :cond_56

    move-object/from16 v0, p8

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :pswitch_1a
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_18

    :pswitch_1b
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_18

    :pswitch_1c
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_18

    :pswitch_1d
    sget-object v30, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_18

    :cond_56
    move/from16 v0, p2

    not-int v3, v0

    return v3

    :pswitch_1e
    const/4 v3, 0x2

    move/from16 v0, p4

    if-le v0, v3, :cond_57

    if-eqz v26, :cond_58

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-eqz v3, :cond_58

    :cond_57
    add-int/lit8 v3, v32, -0x1

    mul-int/lit8 v3, v3, 0x3

    const/4 v4, 0x2

    move-object/from16 v0, p8

    invoke-virtual {v0, v4, v3}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_58
    const/16 v25, 0x0

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_59

    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_5a

    :cond_59
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    const/4 v12, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v14, p8

    invoke-virtual/range {v9 .. v14}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    if-lez v25, :cond_5a

    return v25

    :cond_5a
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_5b

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_5c

    :cond_5b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    const/4 v12, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v14, p8

    invoke-virtual/range {v9 .. v14}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    return v3

    :cond_5c
    return v25

    :pswitch_1f
    const/4 v3, 0x2

    move/from16 v0, p4

    if-le v0, v3, :cond_5d

    if-eqz v26, :cond_5e

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-eqz v3, :cond_5e

    :cond_5d
    add-int/lit8 v3, v32, -0x1

    mul-int/lit8 v3, v3, 0x3

    const/4 v4, 0x2

    move-object/from16 v0, p8

    invoke-virtual {v0, v4, v3}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_5e
    const/16 v25, 0x0

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_5f

    const/4 v3, 0x4

    move/from16 v0, p4

    if-ne v0, v3, :cond_60

    :cond_5f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    const/4 v12, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v14, p8

    invoke-virtual/range {v9 .. v14}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v25

    if-lez v25, :cond_60

    return v25

    :cond_60
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-nez v3, :cond_61

    const/4 v3, 0x3

    move/from16 v0, p4

    if-ne v0, v3, :cond_62

    :cond_61
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v13, v3, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    const/4 v12, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v14, p8

    invoke-virtual/range {v9 .. v14}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    return v3

    :cond_62
    return v25

    :pswitch_20
    new-instance v20, Ljava/util/ArrayList;

    const/4 v3, 0x3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v3}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v3}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    const-string/jumbo v3, ":"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v3

    if-eqz v3, :cond_64

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v3}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    :cond_64
    :goto_19
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    const/4 v12, -0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v14, p8

    invoke-virtual/range {v9 .. v14}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v3

    return v3

    :cond_65
    const-string/jumbo v3, "."

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_66
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v26

    :goto_1a
    if-eqz v26, :cond_69

    const/16 v3, 0x22

    move/from16 v0, v28

    if-eq v0, v3, :cond_68

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object/from16 v0, p8

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    :goto_1b
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    return v3

    :cond_67
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v6, v2, v8}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v26

    goto :goto_1a

    :cond_68
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setRelatedYear(I)V

    goto :goto_1b

    :cond_69
    move/from16 v0, p2

    not-int v3, v0

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_9
        :pswitch_4
        :pswitch_1e
        :pswitch_1f
        :pswitch_f
        :pswitch_3
        :pswitch_13
        :pswitch_14
        :pswitch_19
        :pswitch_0
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method private translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v3, :cond_1

    if-ne v0, v6, :cond_0

    const/4 v3, 0x0

    :cond_0
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v6, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Unfinished quote in pattern"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private tzFormat()Landroid/icu/text/TimeZoneFormat;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    :cond_0
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DisplayContext;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxr"

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p0, v2, v2}, Landroid/icu/text/SimpleDateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p0, v0, v0}, Landroid/icu/text/SimpleDateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormatSymbols;

    iput-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v7

    if-eqz v6, :cond_1

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v6}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_1
    return-object v7

    :cond_2
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v6

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    iget-object p1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    goto :goto_0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 12

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    instance-of v0, p1, Landroid/icu/util/Calendar;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/icu/util/Calendar;

    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/text/FieldPosition;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Ljava/text/FieldPosition;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    new-instance v6, Ljava/text/AttributedString;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/text/FieldPosition;

    invoke-virtual {v8}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    invoke-virtual {v8}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    invoke-virtual {v8}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    invoke-virtual {v6, v7, v7, v0, v2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Cannot format given Object as a Date"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v6}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormatSymbols;

    return-object v0
.end method

.method getLocale()Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public getNumberFormat(C)Landroid/icu/text/NumberFormat;
    .locals 4

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    return-object v0

    :cond_0
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    return-object v3
.end method

.method protected getSymbols()Landroid/icu/text/DateFormatSymbols;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    return-object v0
.end method

.method public getTimeZoneFormat()Landroid/icu/text/TimeZoneFormat;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final intervalFormatByAlgorithm(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual/range {p1 .. p2}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "can not format on two different calendars"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v19

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/4 v9, 0x0

    :goto_0
    :try_start_0
    move-object/from16 v0, v19

    array-length v4, v0

    if-ge v9, v4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v9}, Landroid/icu/text/SimpleDateFormat;->diffCalFieldValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v14, v9

    :cond_1
    const/4 v4, -0x1

    if-ne v14, v4, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v4

    return-object v4

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, v19

    array-length v4, v0

    add-int/lit8 v9, v4, -0x1

    :goto_1
    if-lt v9, v14, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v9}, Landroid/icu/text/SimpleDateFormat;->diffCalFieldValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;[Ljava/lang/Object;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_5

    move v15, v9

    :cond_4
    if-nez v14, :cond_6

    move-object/from16 v0, v19

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v15, v4, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, " \u2013 "

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    return-object p3

    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :catch_0
    move-exception v16

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    const/16 v17, 0x3e8

    move v9, v14

    :goto_2
    if-gt v9, v15, :cond_a

    aget-object v4, v19, v9

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_8

    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    aget-object v18, v19, v9

    check-cast v18, Landroid/icu/text/SimpleDateFormat$PatternItem;

    move-object/from16 v0, v18

    iget-char v13, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    invoke-static {v13}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v20

    const/4 v4, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_9

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal pattern character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' in \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_9
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    move/from16 v17, v20

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v14, :cond_b

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-direct {v0, v1, v9, v2}, Landroid/icu/text/SimpleDateFormat;->lowerLevel([Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    move v14, v9

    :cond_b
    move-object/from16 v0, v19

    array-length v4, v0

    add-int/lit8 v9, v4, -0x1

    :goto_5
    if-le v9, v15, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-direct {v0, v1, v9, v2}, Landroid/icu/text/SimpleDateFormat;->lowerLevel([Ljava/lang/Object;II)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_e

    move v15, v9

    :cond_c
    if-nez v14, :cond_f

    move-object/from16 v0, v19

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v15, v4, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, " \u2013 "

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    return-object p3

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :catch_1
    move-exception v16

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    sget-object v4, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v10

    const/4 v9, 0x0

    :goto_6
    if-gt v9, v15, :cond_12

    aget-object v4, v19, v9

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_10

    aget-object v4, v19, v9

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_10
    aget-object v18, v19, v9

    check-cast v18, Landroid/icu/text/SimpleDateFormat$PatternItem;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, v18

    iget-char v6, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v0, v18

    iget v7, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p1

    invoke-virtual/range {v4 .. v12}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    goto :goto_7

    :cond_11
    move-object/from16 v0, v18

    iget-char v6, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v0, v18

    iget v7, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    move-object/from16 v5, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p1

    invoke-virtual/range {v5 .. v12}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_12
    const-string/jumbo v4, " \u2013 "

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v9, v14

    :goto_8
    move-object/from16 v0, v19

    array-length v4, v0

    if-ge v9, v4, :cond_15

    aget-object v4, v19, v9

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_13

    aget-object v4, v19, v9

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_13
    aget-object v18, v19, v9

    check-cast v18, Landroid/icu/text/SimpleDateFormat$PatternItem;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, v18

    iget-char v6, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v0, v18

    iget v7, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p2

    invoke-virtual/range {v4 .. v12}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    goto :goto_9

    :cond_14
    move-object/from16 v0, v18

    iget-char v6, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move-object/from16 v0, v18

    iget v7, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    move-object/from16 v5, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p2

    invoke-virtual/range {v5 .. v12}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_15
    return-object p3
.end method

.method isFieldUnitIgnored(I)Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .locals 7

    const/4 v3, 0x0

    array-length v2, p4

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v6, p4, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_0

    aget-object v6, p4, v3

    invoke-direct {p0, p1, p2, v6, v4}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_0

    move v0, v3

    move v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    mul-int/lit8 v6, v0, 0x3

    invoke-virtual {p5, p3, v6}, Landroid/icu/util/Calendar;->set(II)V

    add-int v6, p2, v1

    return v6

    :cond_2
    neg-int v6, p2

    return v6
.end method

.method protected matchString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .locals 60

    const/16 v31, 0x0

    const/16 v53, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v5}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    if-gez v6, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    move-object/from16 v53, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object/from16 p2, v0

    goto :goto_0

    :cond_2
    move/from16 v55, v6

    new-instance v14, Landroid/icu/util/Output;

    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v14, v4}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x1

    new-array v11, v4, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-boolean v4, v11, v5

    const/16 v46, -0x1

    const/16 v45, 0x0

    const/16 v47, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v4, v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_3

    new-instance v13, Landroid/icu/text/MessageFormat;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v13, v4, v5}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v43

    const/16 v41, 0x0

    :goto_1
    move-object/from16 v0, v43

    array-length v4, v0

    move/from16 v0, v41

    if-ge v0, v4, :cond_11

    aget-object v4, v43, v41

    instance-of v4, v4, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v4, :cond_f

    aget-object v40, v43, v41

    check-cast v40, Landroid/icu/text/SimpleDateFormat$PatternItem;

    move-object/from16 v0, v40

    iget-boolean v4, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    move/from16 v0, v46

    if-ne v0, v4, :cond_4

    add-int/lit8 v4, v41, 0x1

    move-object/from16 v0, v43

    array-length v5, v0

    if-ge v4, v5, :cond_4

    add-int/lit8 v4, v41, 0x1

    aget-object v4, v43, v4

    instance-of v4, v4, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v4, :cond_4

    add-int/lit8 v4, v41, 0x1

    aget-object v4, v43, v4

    check-cast v4, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v4, v4, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-eqz v4, :cond_4

    move/from16 v46, v41

    move-object/from16 v0, v40

    iget v0, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    move/from16 v45, v0

    move/from16 v47, v6

    :cond_4
    const/4 v4, -0x1

    move/from16 v0, v46

    if-eq v0, v4, :cond_8

    move-object/from16 v0, v40

    iget v8, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    move/from16 v0, v46

    move/from16 v1, v41

    if-ne v0, v1, :cond_5

    move/from16 v8, v45

    :cond_5
    move-object/from16 v0, v40

    iget-char v7, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v12, p2

    invoke-direct/range {v4 .. v14}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I

    move-result v6

    if-gez v6, :cond_c

    add-int/lit8 v45, v45, -0x1

    if-nez v45, :cond_7

    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v31, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_6
    return-void

    :cond_7
    move/from16 v41, v46

    move/from16 v6, v47

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, v40

    iget-char v4, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    const/16 v5, 0x6c

    if-eq v4, v5, :cond_c

    const/16 v46, -0x1

    move/from16 v54, v6

    move-object/from16 v0, v40

    iget-char v0, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    move/from16 v18, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, v6

    move-object/from16 v22, v11

    move-object/from16 v23, p2

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    invoke-direct/range {v15 .. v25}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I

    move-result v6

    if-gez v6, :cond_c

    const/16 v4, -0x7d00

    if-ne v6, v4, :cond_d

    move/from16 v6, v54

    add-int/lit8 v4, v41, 0x1

    move-object/from16 v0, v43

    array-length v5, v0

    if-ge v4, v5, :cond_c

    const/16 v49, 0x0

    add-int/lit8 v4, v41, 0x1

    :try_start_0
    aget-object v49, v43, v4

    check-cast v49, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v49, :cond_9

    add-int/lit8 v4, v41, 0x1

    aget-object v49, v43, v4

    check-cast v49, Ljava/lang/String;

    :cond_9
    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->length()I

    move-result v51

    const/16 v42, 0x0

    :goto_2
    move/from16 v0, v42

    move/from16 v1, v51

    if-ge v0, v1, :cond_b

    move-object/from16 v0, v49

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v50

    invoke-static/range {v50 .. v50}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v42, v42, 0x1

    goto :goto_2

    :catch_0
    move-exception v36

    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v31, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_a
    return-void

    :cond_b
    move/from16 v0, v42

    move/from16 v1, v51

    if-ne v0, v1, :cond_c

    add-int/lit8 v41, v41, 0x1

    :cond_c
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v31, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_e
    return-void

    :cond_f
    const/16 v46, -0x1

    const/4 v4, 0x1

    new-array v0, v4, [Z

    move-object/from16 v20, v0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, v6

    move-object/from16 v18, v43

    move/from16 v19, v41

    invoke-direct/range {v15 .. v20}, Landroid/icu/text/SimpleDateFormat;->matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I

    move-result v6

    const/4 v4, 0x0

    aget-boolean v4, v20, v4

    if-nez v4, :cond_c

    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v31, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_10
    return-void

    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v6, v4, :cond_12

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v39

    const/16 v4, 0x2e

    move/from16 v0, v39

    if-ne v0, v4, :cond_12

    sget-object v4, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v43

    array-length v4, v0

    if-eqz v4, :cond_12

    move-object/from16 v0, v43

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v44, v43, v4

    move-object/from16 v0, v44

    instance-of v4, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v4, :cond_12

    check-cast v44, Landroid/icu/text/SimpleDateFormat$PatternItem;

    move-object/from16 v0, v44

    iget-boolean v4, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-eqz v4, :cond_1b

    :cond_12
    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    :try_start_1
    iget-object v0, v14, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/icu/text/TimeZoneFormat$TimeType;

    const/4 v4, 0x0

    aget-boolean v4, v11, v4

    if-nez v4, :cond_13

    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    move-object/from16 v0, v59

    if-eq v0, v4, :cond_18

    :cond_13
    const/4 v4, 0x0

    aget-boolean v4, v11, v4

    if-eqz v4, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/icu/util/Calendar;

    invoke-virtual/range {v37 .. v37}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v48

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/icu/util/Calendar;->set(II)V

    :cond_14
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    move-object/from16 v0, v59

    if-eq v0, v4, :cond_18

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/icu/util/Calendar;

    invoke-virtual/range {v37 .. v37}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v58

    const/16 v21, 0x0

    move-object/from16 v0, v58

    instance-of v4, v0, Landroid/icu/util/BasicTimeZone;

    if-eqz v4, :cond_15

    move-object/from16 v0, v58

    check-cast v0, Landroid/icu/util/BasicTimeZone;

    move-object/from16 v21, v0

    :cond_15
    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/icu/util/Calendar;->set(II)V

    invoke-virtual/range {v37 .. v37}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v26, v0

    if-eqz v21, :cond_1e

    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    move-object/from16 v0, v59

    if-ne v0, v4, :cond_1c

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-virtual/range {v21 .. v26}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    :cond_16
    :goto_4
    const/4 v4, 0x1

    aget v52, v26, v4

    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    move-object/from16 v0, v59

    if-ne v0, v4, :cond_20

    const/4 v4, 0x1

    aget v4, v26, v4

    if-eqz v4, :cond_17

    const/16 v52, 0x0

    :cond_17
    :goto_5
    const/4 v4, 0x0

    aget v4, v26, v4

    const/16 v5, 0xf

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v4, 0x10

    move-object/from16 v0, p2

    move/from16 v1, v52

    invoke-virtual {v0, v4, v1}, Landroid/icu/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_18
    if-eqz v53, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    :cond_19
    if-eqz v31, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_1a
    return-void

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_1c
    const/16 v24, 0x3

    const/16 v25, 0x3

    :try_start_2
    invoke-virtual/range {v21 .. v26}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v38

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object/from16 v0, p3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_1d
    return-void

    :cond_1e
    const/4 v4, 0x1

    :try_start_3
    move-object/from16 v0, v58

    move-wide/from16 v1, v22

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    move-object/from16 v0, v59

    if-ne v0, v4, :cond_1f

    const/4 v4, 0x1

    aget v4, v26, v4

    if-eqz v4, :cond_1f

    :goto_6
    const-wide/32 v4, 0x5265c00

    sub-long v4, v22, v4

    const/4 v7, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v5, v7, v1}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    goto/16 :goto_4

    :cond_1f
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    move-object/from16 v0, v59

    if-ne v0, v4, :cond_16

    const/4 v4, 0x1

    aget v4, v26, v4

    if-nez v4, :cond_16

    goto :goto_6

    :cond_20
    const/4 v4, 0x1

    aget v4, v26, v4

    if-nez v4, :cond_17

    if-eqz v21, :cond_29

    const/4 v4, 0x0

    aget v4, v26, v4

    int-to-long v4, v4

    add-long v56, v22, v4

    move-wide/from16 v34, v56

    move-wide/from16 v28, v56

    const/16 v32, 0x0

    const/16 v27, 0x0

    :cond_21
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2, v4}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v33

    if-nez v33, :cond_23

    :cond_22
    :goto_7
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2, v4}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v30

    if-nez v30, :cond_24

    :goto_8
    if-eqz v33, :cond_26

    if-eqz v30, :cond_26

    sub-long v4, v56, v34

    sub-long v16, v28, v56

    cmp-long v4, v4, v16

    if-lez v4, :cond_25

    move/from16 v52, v27

    :goto_9
    if-nez v52, :cond_17

    const v52, 0x36ee80

    goto/16 :goto_5

    :cond_23
    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    const-wide/16 v16, 0x1

    sub-long v34, v4, v16

    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v32

    if-eqz v32, :cond_21

    goto :goto_7

    :cond_24
    invoke-virtual/range {v30 .. v30}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v28

    invoke-virtual/range {v30 .. v30}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v27

    if-eqz v27, :cond_22

    goto :goto_8

    :cond_25
    move/from16 v52, v32

    goto :goto_9

    :cond_26
    if-eqz v33, :cond_27

    if-eqz v32, :cond_27

    move/from16 v52, v32

    goto :goto_9

    :cond_27
    if-eqz v30, :cond_28

    if-eqz v27, :cond_28

    move/from16 v52, v27

    goto :goto_9

    :cond_28
    invoke-virtual/range {v21 .. v21}, Landroid/icu/util/BasicTimeZone;->getDSTSavings()I

    move-result v52

    goto :goto_9

    :cond_29
    invoke-virtual/range {v58 .. v58}, Landroid/icu/util/TimeZone;->getDSTSavings()I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v52

    goto :goto_9
.end method

.method protected patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;
    .locals 2

    invoke-static {p1}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

    aget-object v1, v1, v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    return-void
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_1

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    :cond_1
    return-void

    :cond_2
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_1

    goto :goto_0
.end method

.method public setDateFormatSymbols(Landroid/icu/text/DateFormatSymbols;)V
    .locals 1

    invoke-virtual {p1}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormatSymbols;

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    return-void
.end method

.method public setNumberFormat(Landroid/icu/text/NumberFormat;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)V

    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iput-object v1, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iput-object v1, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public setNumberFormat(Ljava/lang/String;Landroid/icu/text/NumberFormat;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    :cond_0
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string/jumbo v3, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal field character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' in setNumberFormat."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    return-void
.end method

.method public setTimeZoneFormat(Landroid/icu/text/TimeZoneFormat;)V
    .locals 1

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat;->cloneAsThawed()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    goto :goto_0
.end method

.method protected subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected subFormat(CIILjava/text/FieldPosition;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V
    .locals 34
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v26, 0x7fffffff

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v33

    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    const/16 v30, 0x0

    invoke-static/range {p2 .. p2}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v29

    const/4 v4, -0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_1

    const/16 v4, 0x6c

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Illegal pattern character \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\' in \""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x22

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    sget-object v4, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v19, v4, v29

    const/4 v7, 0x0

    if-ltz v19, :cond_2

    const/16 v4, 0x22

    move/from16 v0, v29

    if-eq v0, v4, :cond_8

    move-object/from16 v0, p8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->getNumberFormat(C)Landroid/icu/text/NumberFormat;

    move-result-object v5

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->OTHER:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    packed-switch v29, :pswitch_data_0

    :pswitch_0
    const v9, 0x7fffffff

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    :cond_3
    :goto_1
    if-nez p5, :cond_6

    if-eqz p6, :cond_6

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v31, 0x0

    invoke-static {}, Landroid/icu/text/SimpleDateFormat;->-getandroid-icu-text-DisplayContextSwitchesValues()[I

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_1

    :cond_4
    :goto_2
    if-eqz v31, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v4}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    const/16 v8, 0x300

    move-object/from16 v0, v22

    invoke-static {v4, v0, v6, v8}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v6

    if-ne v4, v6, :cond_7

    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getField()I

    move-result v4

    sget-object v6, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v6, v6, v29

    if-ne v4, v6, :cond_49

    move-object/from16 v0, p7

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int v4, v4, p4

    sub-int v4, v4, v17

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getRelatedYear()I

    move-result v7

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "chinese"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "dangi"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    const/4 v8, 0x1

    const/16 v9, 0x9

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x5

    move/from16 v0, p3

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_b
    const/4 v4, 0x4

    move/from16 v0, p3

    if-ne v0, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    array-length v4, v4

    if-gt v7, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    add-int/lit8 v6, v7, -0x1

    move-object/from16 v0, p1

    invoke-static {v4, v6, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_1

    :cond_d
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string/jumbo v6, "hebr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string/jumbo v6, "y=hebr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_f

    :cond_e
    const/16 v4, 0x1388

    if-le v7, v4, :cond_f

    const/16 v4, 0x1770

    if-ge v7, v4, :cond_f

    add-int/lit16 v7, v7, -0x1388

    :cond_f
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_10

    const/4 v8, 0x2

    const/4 v9, 0x2

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1

    :cond_10
    const v9, 0x7fffffff

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "hebrew"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v24

    if-eqz v24, :cond_11

    const/4 v4, 0x6

    if-ne v7, v4, :cond_11

    const/4 v4, 0x3

    move/from16 v0, p3

    if-lt v0, v4, :cond_11

    const/16 v7, 0xd

    :cond_11
    if-nez v24, :cond_12

    const/4 v4, 0x6

    if-lt v7, v4, :cond_12

    const/4 v4, 0x3

    move/from16 v0, p3

    if-ge v0, v4, :cond_12

    add-int/lit8 v7, v7, -0x1

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v4, v4

    const/4 v6, 0x7

    if-lt v4, v6, :cond_13

    const/16 v4, 0x16

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v25

    :goto_4
    const/4 v4, 0x5

    move/from16 v0, p3

    if-ne v0, v4, :cond_17

    const/4 v4, 0x2

    move/from16 v0, v29

    if-ne v0, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v4, v4, v8

    :goto_5
    move-object/from16 v0, p1

    invoke-static {v6, v7, v0, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_6
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_13
    const/16 v25, 0x0

    goto :goto_4

    :cond_14
    const/4 v4, 0x0

    goto :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    if-eqz v25, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v4, v4, v8

    :goto_7
    move-object/from16 v0, p1

    invoke-static {v6, v7, v0, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    const/4 v4, 0x0

    goto :goto_7

    :cond_17
    const/4 v4, 0x4

    move/from16 v0, p3

    if-ne v0, v4, :cond_1b

    const/4 v4, 0x2

    move/from16 v0, v29

    if-ne v0, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    if-eqz v25, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v4, v4, v8

    :goto_8
    move-object/from16 v0, p1

    invoke-static {v6, v7, v0, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_18
    const/4 v4, 0x0

    goto :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    if-eqz v25, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v4, v4, v8

    :goto_9
    move-object/from16 v0, p1

    invoke-static {v6, v7, v0, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_1a
    const/4 v4, 0x0

    goto :goto_9

    :cond_1b
    const/4 v4, 0x3

    move/from16 v0, p3

    if-ne v0, v4, :cond_1f

    const/4 v4, 0x2

    move/from16 v0, v29

    if-ne v0, v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    if-eqz v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    :goto_a
    move-object/from16 v0, p1

    invoke-static {v6, v7, v0, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_1c
    const/4 v4, 0x0

    goto :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    if-eqz v25, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v4, v4, v8

    :goto_b
    move-object/from16 v0, p1

    invoke-static {v6, v7, v0, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_1e
    const/4 v4, 0x0

    goto :goto_b

    :cond_1f
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v11, v7, 0x1

    const v13, 0x7fffffff

    move-object/from16 v8, p0

    move-object v9, v5

    move/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v27, v6

    if-eqz v25, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v4, v4, v6

    :goto_c
    const/4 v6, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v6, v1, v4}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_20
    const/4 v4, 0x0

    goto :goto_c

    :pswitch_5
    if-nez v7, :cond_21

    const/16 v4, 0xb

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v4

    add-int/lit8 v14, v4, 0x1

    const v16, 0x7fffffff

    move-object/from16 v11, p0

    move-object v12, v5

    move-object/from16 v13, p1

    move/from16 v15, p3

    invoke-virtual/range {v11 .. v16}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1

    :cond_21
    const v9, 0x7fffffff

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const/4 v6, 0x3

    move/from16 v0, p3

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const v6, 0x7fffffff

    invoke-virtual {v4, v6}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_23

    div-int/lit8 v7, v7, 0x64

    :cond_22
    :goto_d
    new-instance v28, Ljava/text/FieldPosition;

    const/4 v4, -0x1

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/text/FieldPosition;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    int-to-long v8, v7

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v4, v8, v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    const/4 v4, 0x3

    move/from16 v0, p3

    if-le v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    add-int/lit8 v6, p3, -0x3

    invoke-virtual {v4, v6}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v4, v8, v9, v0, v1}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_23
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_22

    div-int/lit8 v7, v7, 0xa

    goto :goto_d

    :pswitch_7
    const/4 v4, 0x3

    move/from16 v0, p3

    if-ge v0, v4, :cond_24

    const v9, 0x7fffffff

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1

    :cond_24
    const/4 v4, 0x7

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    :pswitch_8
    const/4 v4, 0x5

    move/from16 v0, p3

    if-ne v0, v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_25
    const/4 v4, 0x4

    move/from16 v0, p3

    if-ne v0, v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_26
    const/4 v4, 0x6

    move/from16 v0, p3

    if-ne v0, v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :pswitch_9
    const/4 v4, 0x5

    move/from16 v0, p3

    if-lt v0, v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-nez v4, :cond_29

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_1

    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_1

    :pswitch_a
    if-nez v7, :cond_2a

    const/16 v4, 0xa

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v4

    add-int/lit8 v14, v4, 0x1

    const v16, 0x7fffffff

    move-object/from16 v11, p0

    move-object v12, v5

    move-object/from16 v13, p1

    move/from16 v15, p3

    invoke-virtual/range {v11 .. v16}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1

    :cond_2a
    const v9, 0x7fffffff

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1

    :pswitch_b
    const/4 v4, 0x4

    move/from16 v0, p3

    if-ge v0, v4, :cond_2b

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :goto_e
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_2b
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_e

    :pswitch_c
    const/4 v4, 0x4

    move/from16 v0, p3

    if-ge v0, v4, :cond_2c

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    :goto_f
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_2c
    const/4 v4, 0x5

    move/from16 v0, p3

    if-ne v0, v4, :cond_2d

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_f

    :cond_2d
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_f

    :pswitch_d
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_2f

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :cond_2e
    :goto_10
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_2f
    const/4 v4, 0x4

    move/from16 v0, p3

    if-ne v0, v4, :cond_2e

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_10

    :pswitch_e
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_31

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    :cond_30
    :goto_11
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_31
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_32

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_11

    :cond_32
    const/4 v4, 0x3

    move/from16 v0, p3

    if-ne v0, v4, :cond_33

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_11

    :cond_33
    const/4 v4, 0x4

    move/from16 v0, p3

    if-ne v0, v4, :cond_30

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_11

    :pswitch_f
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_35

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    :cond_34
    :goto_12
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_35
    const/4 v4, 0x4

    move/from16 v0, p3

    if-ne v0, v4, :cond_34

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_12

    :pswitch_10
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_37

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    :cond_36
    :goto_13
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_37
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_38

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_13

    :cond_38
    const/4 v4, 0x3

    move/from16 v0, p3

    if-ne v0, v4, :cond_39

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_13

    :cond_39
    const/4 v4, 0x4

    move/from16 v0, p3

    if-ne v0, v4, :cond_3a

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_13

    :cond_3a
    const/4 v4, 0x5

    move/from16 v0, p3

    if-ne v0, v4, :cond_36

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_13

    :pswitch_11
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_3c

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    :cond_3b
    :goto_14
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_3c
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_3d

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_14

    :cond_3d
    const/4 v4, 0x3

    move/from16 v0, p3

    if-ne v0, v4, :cond_3e

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_14

    :cond_3e
    const/4 v4, 0x4

    move/from16 v0, p3

    if-ne v0, v4, :cond_3f

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_14

    :cond_3f
    const/4 v4, 0x5

    move/from16 v0, p3

    if-ne v0, v4, :cond_3b

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v4

    sget-object v6, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v30

    goto :goto_14

    :pswitch_12
    const/4 v4, 0x3

    move/from16 v0, p3

    if-ge v0, v4, :cond_40

    const/4 v8, 0x1

    const v9, 0x7fffffff

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1

    :cond_40
    const/4 v4, 0x7

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    const/4 v4, 0x5

    move/from16 v0, p3

    if-ne v0, v4, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_41
    const/4 v4, 0x4

    move/from16 v0, p3

    if-ne v0, v4, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_42
    const/4 v4, 0x6

    move/from16 v0, p3

    if-ne v0, v4, :cond_43

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v4, :cond_43

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v4, v7, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1

    :pswitch_13
    const/4 v4, 0x4

    move/from16 v0, p3

    if-lt v0, v4, :cond_44

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    div-int/lit8 v6, v7, 0x3

    move-object/from16 v0, p1

    invoke-static {v4, v6, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_1

    :cond_44
    const/4 v4, 0x3

    move/from16 v0, p3

    if-ne v0, v4, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    div-int/lit8 v6, v7, 0x3

    move-object/from16 v0, p1

    invoke-static {v4, v6, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_1

    :cond_45
    div-int/lit8 v4, v7, 0x3

    add-int/lit8 v14, v4, 0x1

    const v16, 0x7fffffff

    move-object/from16 v11, p0

    move-object v12, v5

    move-object/from16 v13, p1

    move/from16 v15, p3

    invoke-virtual/range {v11 .. v16}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1

    :pswitch_14
    const/4 v4, 0x4

    move/from16 v0, p3

    if-lt v0, v4, :cond_46

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    div-int/lit8 v6, v7, 0x3

    move-object/from16 v0, p1

    invoke-static {v4, v6, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_1

    :cond_46
    const/4 v4, 0x3

    move/from16 v0, p3

    if-ne v0, v4, :cond_47

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    div-int/lit8 v6, v7, 0x3

    move-object/from16 v0, p1

    invoke-static {v4, v6, v0}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_1

    :cond_47
    div-int/lit8 v4, v7, 0x3

    add-int/lit8 v14, v4, 0x1

    const v16, 0x7fffffff

    move-object/from16 v11, p0

    move-object v12, v5

    move-object/from16 v13, p1

    move/from16 v15, p3

    invoke-virtual/range {v11 .. v16}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_1

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_16
    const/16 v31, 0x1

    goto/16 :goto_2

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v4, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Z

    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    move-object/from16 v0, p6

    if-ne v0, v4, :cond_48

    const/4 v4, 0x0

    aget-boolean v31, v32, v4

    goto/16 :goto_2

    :cond_48
    const/4 v4, 0x1

    aget-boolean v31, v32, v4

    goto/16 :goto_2

    :cond_49
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v6, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

    aget-object v6, v6, v29

    if-ne v4, v6, :cond_7

    move-object/from16 v0, p7

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int v4, v4, p4

    sub-int v4, v4, v17

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_12
        :pswitch_4
        :pswitch_13
        :pswitch_14
        :pswitch_e
        :pswitch_2
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_16
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method protected subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;)I
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    const-string/jumbo v1, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxr"

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method protected zeroPaddingNumber(JII)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p3}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p4}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/icu/text/SimpleDateFormat;->fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p4}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    invoke-virtual {p1, p5}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    int-to-long v0, p3

    new-instance v2, Ljava/text/FieldPosition;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
