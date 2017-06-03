.class public Landroid/icu/text/TimeZoneFormat;
.super Landroid/icu/text/UFormat;
.source "TimeZoneFormat.java"

# interfaces
.implements Landroid/icu/util/Freezable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TimeZoneFormat$GMTOffsetField;,
        Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;,
        Landroid/icu/text/TimeZoneFormat$OffsetFields;,
        Landroid/icu/text/TimeZoneFormat$ParseOption;,
        Landroid/icu/text/TimeZoneFormat$Style;,
        Landroid/icu/text/TimeZoneFormat$TimeType;,
        Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/text/UFormat;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/TimeZoneFormat;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-text-TimeZoneFormat$StyleSwitchesValues:[I = null

.field private static final synthetic -android-icu-text-TimeZoneNames$NameTypeSwitchesValues:[I = null

.field static final synthetic -assertionsDisabled:Z

.field private static final ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALT_GMT_STRINGS:[Ljava/lang/String;

.field private static final ASCII_DIGITS:Ljava/lang/String; = "0123456789"

.field private static final DEFAULT_GMT_DIGITS:[Ljava/lang/String;

.field private static final DEFAULT_GMT_OFFSET_SEP:C = ':'

.field private static final DEFAULT_GMT_PATTERN:Ljava/lang/String; = "GMT{0}"

.field private static final DEFAULT_GMT_ZERO:Ljava/lang/String; = "GMT"

.field private static final ISO8601_UTC:Ljava/lang/String; = "Z"

.field private static final ISO_LOCAL_STYLE_FLAG:I = 0x100

.field private static final ISO_Z_STYLE_FLAG:I = 0x80

.field private static final MAX_OFFSET:I = 0x5265c00

.field private static final MAX_OFFSET_HOUR:I = 0x17

.field private static final MAX_OFFSET_MINUTE:I = 0x3b

.field private static final MAX_OFFSET_SECOND:I = 0x3b

.field private static final MILLIS_PER_HOUR:I = 0x36ee80

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final MILLIS_PER_SECOND:I = 0x3e8

.field private static final PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field private static volatile SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TZID_GMT:Ljava/lang/String; = "Etc/GMT"

.field private static final UNKNOWN_LOCATION:Ljava/lang/String; = "Unknown"

.field private static final UNKNOWN_OFFSET:I = 0x7fffffff

.field private static final UNKNOWN_SHORT_ZONE_ID:Ljava/lang/String; = "unk"

.field private static final UNKNOWN_ZONE_ID:Ljava/lang/String; = "Etc/Unknown"

.field private static volatile ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _tzfCache:Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x1fa89ded0bc7456eL


# instance fields
.field private transient _abuttingOffsetHoursAndMinutes:Z

.field private volatile transient _frozen:Z

.field private _gmtOffsetDigits:[Ljava/lang/String;

.field private transient _gmtOffsetPatternItems:[[Ljava/lang/Object;

.field private _gmtOffsetPatterns:[Ljava/lang/String;

.field private _gmtPattern:Ljava/lang/String;

.field private transient _gmtPatternPrefix:Ljava/lang/String;

.field private transient _gmtPatternSuffix:Ljava/lang/String;

.field private _gmtZeroFormat:Ljava/lang/String;

.field private volatile transient _gnames:Landroid/icu/impl/TimeZoneGenericNames;

.field private _locale:Landroid/icu/util/ULocale;

.field private _parseAllStyles:Z

.field private _parseTZDBNames:Z

.field private transient _region:Ljava/lang/String;

.field private volatile transient _tzdbNames:Landroid/icu/text/TimeZoneNames;

.field private _tznames:Landroid/icu/text/TimeZoneNames;


# direct methods
.method private static synthetic -getandroid-icu-text-TimeZoneFormat$StyleSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/text/TimeZoneFormat;->-android-icu-text-TimeZoneFormat$StyleSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/TimeZoneFormat;->-android-icu-text-TimeZoneFormat$StyleSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$Style;->values()[Landroid/icu/text/TimeZoneFormat$Style;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_13

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_12

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_11

    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_10

    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_f

    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_e

    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_d

    :goto_6
    :try_start_7
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_c

    :goto_7
    :try_start_8
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_b

    :goto_8
    :try_start_9
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_a

    :goto_9
    :try_start_a
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_9

    :goto_a
    :try_start_b
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_8

    :goto_b
    :try_start_c
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_7

    :goto_c
    :try_start_d
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_6

    :goto_d
    :try_start_e
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_5

    :goto_e
    :try_start_f
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_4

    :goto_f
    :try_start_10
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_3

    :goto_10
    :try_start_11
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_2

    :goto_11
    :try_start_12
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_1

    :goto_12
    :try_start_13
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_0

    :goto_13
    sput-object v0, Landroid/icu/text/TimeZoneFormat;->-android-icu-text-TimeZoneFormat$StyleSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_13

    :catch_1
    move-exception v1

    goto :goto_12

    :catch_2
    move-exception v1

    goto :goto_11

    :catch_3
    move-exception v1

    goto :goto_10

    :catch_4
    move-exception v1

    goto :goto_f

    :catch_5
    move-exception v1

    goto :goto_e

    :catch_6
    move-exception v1

    goto :goto_d

    :catch_7
    move-exception v1

    goto :goto_c

    :catch_8
    move-exception v1

    goto :goto_b

    :catch_9
    move-exception v1

    goto :goto_a

    :catch_a
    move-exception v1

    goto :goto_9

    :catch_b
    move-exception v1

    goto/16 :goto_8

    :catch_c
    move-exception v1

    goto/16 :goto_7

    :catch_d
    move-exception v1

    goto/16 :goto_6

    :catch_e
    move-exception v1

    goto/16 :goto_5

    :catch_f
    move-exception v1

    goto/16 :goto_4

    :catch_10
    move-exception v1

    goto/16 :goto_3

    :catch_11
    move-exception v1

    goto/16 :goto_2

    :catch_12
    move-exception v1

    goto/16 :goto_1

    :catch_13
    move-exception v1

    goto/16 :goto_0
.end method

.method private static synthetic -getandroid-icu-text-TimeZoneNames$NameTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/text/TimeZoneFormat;->-android-icu-text-TimeZoneNames$NameTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/TimeZoneFormat;->-android-icu-text-TimeZoneNames$NameTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Landroid/icu/text/TimeZoneFormat;->-android-icu-text-TimeZoneNames$NameTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v3, "GMT"

    aput-object v3, v0, v1

    const-string/jumbo v3, "UTC"

    aput-object v3, v0, v2

    const-string/jumbo v3, "UT"

    aput-object v3, v0, v7

    sput-object v0, Landroid/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "0"

    aput-object v3, v0, v1

    const-string/jumbo v3, "1"

    aput-object v3, v0, v2

    const-string/jumbo v3, "2"

    aput-object v3, v0, v7

    const-string/jumbo v3, "3"

    aput-object v3, v0, v8

    const-string/jumbo v3, "4"

    aput-object v3, v0, v9

    const-string/jumbo v3, "5"

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const-string/jumbo v3, "6"

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const-string/jumbo v3, "7"

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const-string/jumbo v3, "8"

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const-string/jumbo v3, "9"

    const/16 v4, 0x9

    aput-object v3, v0, v4

    sput-object v0, Landroid/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v3, v0, v1

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v3, v0, v2

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v3, v0, v7

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v3, v0, v8

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v3, v0, v9

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v4, 0x5

    aput-object v3, v0, v4

    sput-object v0, Landroid/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;-><init>(Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat;->_tzfCache:Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v0, v3, v4, v5, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v4, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v0, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v3, Ljava/io/ObjectStreamField;

    const-string/jumbo v4, "_locale"

    const-class v5, Landroid/icu/util/ULocale;

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v0, v1

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v3, "_tznames"

    const-class v4, Landroid/icu/text/TimeZoneNames;

    invoke-direct {v1, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "_gmtPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "_gmtOffsetPatterns"

    const-class v3, [Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v8

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "_gmtOffsetDigits"

    const-class v3, [Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v9

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "_gmtZeroFormat"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "_parseAllStyles"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/TimeZoneFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method protected constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 13

    const/4 v11, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v9

    iput-object v9, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v9, "GMT"

    iput-object v9, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v9, "android/icu/impl/data/icudt56b/zone"

    invoke-static {v9, p1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v9, "zoneStrings/gmtFormat"

    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    :goto_0
    :try_start_2
    const-string/jumbo v9, "zoneStrings/hourFormat"

    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    :goto_1
    :try_start_3
    const-string/jumbo v9, "zoneStrings/gmtZeroFormat"

    invoke-virtual {v0, v9}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    if-nez v3, :cond_0

    const-string/jumbo v3, "GMT{0}"

    :cond_0
    invoke-direct {p0, v3}, Landroid/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v9

    array-length v9, v9

    new-array v2, v9, [Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string/jumbo v9, ";"

    const/4 v10, 0x2

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    sget-object v9, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v10, v5, v8

    invoke-static {v10}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    sget-object v9, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v10, v5, v8

    aput-object v10, v2, v9

    sget-object v9, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v9

    sget-object v8, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v9, v5, v11

    invoke-static {v9}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    sget-object v8, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v9, v5, v11

    aput-object v9, v2, v8

    sget-object v8, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v9, v5, v11

    invoke-static {v9}, Landroid/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    :cond_1
    invoke-direct {p0, v2}, Landroid/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    sget-object v8, Landroid/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    iput-object v8, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v9

    array-length v10, v9

    :goto_3
    if-ge v8, v10, :cond_1

    aget-object v7, v9, v8

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    invoke-static {v7}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-wrap1(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto/16 :goto_0
.end method

.method private appendOffsetDigits(Ljava/lang/StringBuilder;II)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v2, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ltz p2, :cond_0

    const/16 v2, 0x3c

    if-ge p2, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    if-lt p2, v2, :cond_2

    const/4 v1, 0x2

    :goto_1
    const/4 v0, 0x0

    :goto_2
    sub-int v2, p3, v1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    div-int/lit8 v3, p2, 0xa

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    rem-int/lit8 v3, p2, 0xa

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private checkAbuttingHoursAndMinutes()V
    .locals 12

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    iget-object v7, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v3, v7, v6

    const/4 v0, 0x0

    array-length v9, v3

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_3

    aget-object v2, v3, v4

    instance-of v10, v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    if-eqz v10, :cond_2

    move-object v1, v2

    nop

    nop

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v10

    const/16 v11, 0x48

    if-ne v10, v11, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_0

    :cond_3
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "mm"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Bad time zone hour pattern data"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string/jumbo v2, ":"

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "H"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ss"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private formatExemplarLocation(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    const-string/jumbo v2, "Etc/Unknown"

    invoke-virtual {v1, v2}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Unknown"

    :cond_0
    return-object v0
.end method

.method private formatOffsetISO8601(IZZZZ)Ljava/lang/String;
    .locals 12

    if-gez p1, :cond_1

    neg-int v0, p1

    :goto_0
    if-eqz p3, :cond_2

    const/16 v9, 0x3e8

    if-lt v0, v9, :cond_0

    if-eqz p5, :cond_2

    const v9, 0xea60

    if-ge v0, v9, :cond_2

    :cond_0
    const-string/jumbo v9, "Z"

    return-object v9

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    sget-object v6, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    :goto_1
    if-eqz p5, :cond_4

    sget-object v5, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    :goto_2
    if-eqz p2, :cond_5

    const/4 v7, 0x0

    :goto_3
    const v9, 0x5265c00

    if-lt v0, v9, :cond_6

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Offset out of range :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    sget-object v6, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    goto :goto_1

    :cond_4
    sget-object v5, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    goto :goto_2

    :cond_5
    const/16 v9, 0x3a

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    goto :goto_3

    :cond_6
    const/4 v9, 0x3

    new-array v2, v9, [I

    const v9, 0x36ee80

    div-int v9, v0, v9

    const/4 v10, 0x0

    aput v9, v2, v10

    const v9, 0x36ee80

    rem-int/2addr v0, v9

    const v9, 0xea60

    div-int v9, v0, v9

    const/4 v10, 0x1

    aput v9, v2, v10

    const v9, 0xea60

    rem-int/2addr v0, v9

    div-int/lit16 v9, v0, 0x3e8

    const/4 v10, 0x2

    aput v9, v2, v10

    sget-boolean v9, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v9, :cond_8

    const/4 v9, 0x0

    aget v9, v2, v9

    if-ltz v9, :cond_7

    const/4 v9, 0x0

    aget v9, v2, v9

    const/16 v10, 0x17

    if-gt v9, v10, :cond_7

    const/4 v9, 0x1

    :goto_4
    if-nez v9, :cond_8

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    :cond_8
    sget-boolean v9, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v9, :cond_a

    const/4 v9, 0x1

    aget v9, v2, v9

    if-ltz v9, :cond_9

    const/4 v9, 0x1

    aget v9, v2, v9

    const/16 v10, 0x3b

    if-gt v9, v10, :cond_9

    const/4 v9, 0x1

    :goto_5
    if-nez v9, :cond_a

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    :cond_a
    sget-boolean v9, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v9, :cond_c

    const/4 v9, 0x2

    aget v9, v2, v9

    if-ltz v9, :cond_b

    const/4 v9, 0x2

    aget v9, v2, v9

    const/16 v10, 0x3b

    if-gt v9, v10, :cond_b

    const/4 v9, 0x1

    :goto_6
    if-nez v9, :cond_c

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_b
    const/4 v9, 0x0

    goto :goto_6

    :cond_c
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    :goto_7
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-le v4, v9, :cond_d

    aget v9, v2, v4

    if-eqz v9, :cond_11

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2b

    if-gez p1, :cond_e

    const/4 v3, 0x0

    :goto_8
    if-gt v3, v4, :cond_e

    aget v9, v2, v3

    if-eqz v9, :cond_12

    const/16 v8, 0x2d

    :cond_e
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_9
    if-gt v3, v4, :cond_13

    if-eqz v7, :cond_f

    if-eqz v3, :cond_f

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    aget v9, v2, v3

    const/16 v10, 0xa

    if-ge v9, v10, :cond_10

    const/16 v9, 0x30

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    aget v9, v2, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_11
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private formatOffsetLocalizedGMT(IZ)Ljava/lang/String;
    .locals 13

    const v12, 0x36ee80

    const v10, 0xea60

    const/16 v11, 0x3b

    const/4 v9, 0x2

    const/4 v8, 0x0

    if-nez p1, :cond_0

    iget-object v8, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    return-object v8

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    if-gez p1, :cond_1

    neg-int p1, p1

    const/4 v7, 0x0

    :cond_1
    div-int v3, p1, v12

    rem-int/2addr p1, v12

    div-int v4, p1, v10

    rem-int/2addr p1, v10

    div-int/lit16 v6, p1, 0x3e8

    const/16 v10, 0x17

    if-gt v3, v10, :cond_2

    if-le v4, v11, :cond_3

    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Offset out of range :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    if-gt v6, v11, :cond_2

    if-eqz v7, :cond_7

    if-eqz v6, :cond_5

    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-object v5, v10, v11

    :goto_0
    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v5

    move v10, v8

    :goto_1
    if-ge v10, v11, :cond_c

    aget-object v2, v5, v10

    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_a

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    if-eqz p2, :cond_6

    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-object v5, v10, v11

    goto :goto_0

    :cond_6
    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-object v5, v10, v11

    goto :goto_0

    :cond_7
    if-eqz v6, :cond_8

    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-object v5, v10, v11

    goto :goto_0

    :cond_8
    if-nez v4, :cond_9

    if-eqz p2, :cond_9

    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-object v5, v10, v11

    goto :goto_0

    :cond_9
    iget-object v10, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-object v5, v10, v11

    goto :goto_0

    :cond_a
    instance-of v8, v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    if-eqz v8, :cond_4

    move-object v1, v2

    nop

    nop

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    if-eqz p2, :cond_b

    const/4 v8, 0x1

    :goto_3
    invoke-direct {p0, v0, v3, v8}, Landroid/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_2

    :cond_b
    move v8, v9

    goto :goto_3

    :sswitch_1
    invoke-direct {p0, v0, v4, v9}, Landroid/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_2

    :sswitch_2
    invoke-direct {p0, v0, v6, v9}, Landroid/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_2

    :cond_c
    iget-object v8, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_0
        0x6d -> :sswitch_1
        0x73 -> :sswitch_2
    .end sparse-switch
.end method

.method private formatSpecific(Landroid/icu/util/TimeZone;Landroid/icu/text/TimeZoneNames$NameType;Landroid/icu/text/TimeZoneNames$NameType;JLandroid/icu/util/Output;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/TimeZone;",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            "J",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v4, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v4, :cond_2

    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    if-eq p2, v4, :cond_0

    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    if-ne p2, v4, :cond_1

    :cond_0
    move v4, v2

    :goto_0
    if-nez v4, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    sget-boolean v4, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v4, :cond_5

    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    if-eq p3, v4, :cond_3

    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    if-ne p3, v4, :cond_4

    :cond_3
    :goto_1
    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v2

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3, p4, p5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_6

    if-eqz p6, :cond_6

    if-eqz v0, :cond_8

    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    :goto_3
    iput-object v2, p6, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_6
    return-object v1

    :cond_7
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v2

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p4, p5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    goto :goto_3
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/icu/text/TimeZoneFormat;->_tzfCache:Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    invoke-virtual {v0, p0, p0}, Landroid/icu/impl/SoftCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method

.method private getTZDBTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .locals 2

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames;

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/impl/TZDBTimeZoneNames;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getTargetRegion()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "001"

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;
    .locals 2

    invoke-static {}, Landroid/icu/text/TimeZoneFormat;->-getandroid-icu-text-TimeZoneNames$NameTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0

    :pswitch_0
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0

    :pswitch_1
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "Etc/GMT"

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCustomTimeZone(I)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/impl/TimeZoneGenericNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p1

    if-nez p1, :cond_2

    sget-boolean v1, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTargetRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid mzID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object v0
.end method

.method private initGMTOffsetPatterns([Ljava/lang/String;)V
    .locals 11

    const/4 v6, 0x0

    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v5

    array-length v3, v5

    array-length v5, p1

    if-ge v5, v3, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Insufficient number of elements in gmtOffsetPatterns"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-array v0, v3, [[Ljava/lang/Object;

    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v4, v7, v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v9, p1, v1

    invoke-static {v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-wrap2(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-static {p1, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->checkAbuttingHoursAndMinutes()V

    return-void
.end method

.method private initGMTPattern(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v1, "{0}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad localized GMT pattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    return-void
.end method

.method private static parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;Z)I
    .locals 13

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    mul-int/lit8 v12, v11, 0x2

    if-eqz p4, :cond_2

    const/4 v11, 0x0

    :goto_0
    sub-int v7, v12, v11

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    mul-int/lit8 v5, v11, 0x2

    new-array v2, v5, [I

    const/4 v8, 0x0

    move v4, v10

    :goto_1
    array-length v11, v2

    if-ge v8, v11, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v4, v11, :cond_0

    const-string/jumbo v11, "0123456789"

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    :cond_0
    if-eqz p4, :cond_1

    and-int/lit8 v11, v8, 0x1

    if-eqz v11, :cond_1

    add-int/lit8 v8, v8, -0x1

    :cond_1
    if-ge v8, v7, :cond_4

    invoke-virtual {p1, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v11, 0x0

    return v11

    :cond_2
    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    aput v1, v2, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    :goto_2
    if-lt v8, v7, :cond_5

    packed-switch v8, :pswitch_data_0

    :goto_3
    const/16 v11, 0x17

    if-gt v3, v11, :cond_6

    const/16 v11, 0x3b

    if-gt v6, v11, :cond_6

    const/16 v11, 0x3b

    if-gt v9, v11, :cond_6

    const/4 v0, 0x1

    :cond_5
    if-nez v0, :cond_8

    invoke-virtual {p1, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v11, 0x0

    return v11

    :pswitch_0
    const/4 v11, 0x0

    aget v3, v2, v11

    goto :goto_3

    :pswitch_1
    const/4 v11, 0x0

    aget v11, v2, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x1

    aget v12, v2, v12

    add-int v3, v11, v12

    goto :goto_3

    :pswitch_2
    const/4 v11, 0x0

    aget v3, v2, v11

    const/4 v11, 0x1

    aget v11, v2, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x2

    aget v12, v2, v12

    add-int v6, v11, v12

    goto :goto_3

    :pswitch_3
    const/4 v11, 0x0

    aget v11, v2, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x1

    aget v12, v2, v12

    add-int v3, v11, v12

    const/4 v11, 0x2

    aget v11, v2, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x3

    aget v12, v2, v12

    add-int v6, v11, v12

    goto :goto_3

    :pswitch_4
    const/4 v11, 0x0

    aget v3, v2, v11

    const/4 v11, 0x1

    aget v11, v2, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x2

    aget v12, v2, v12

    add-int v6, v11, v12

    const/4 v11, 0x3

    aget v11, v2, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x4

    aget v12, v2, v12

    add-int v9, v11, v12

    goto :goto_3

    :pswitch_5
    const/4 v11, 0x0

    aget v11, v2, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x1

    aget v12, v2, v12

    add-int v3, v11, v12

    const/4 v11, 0x2

    aget v11, v2, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x3

    aget v12, v2, v12

    add-int v6, v11, v12

    const/4 v11, 0x4

    aget v11, v2, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x5

    aget v12, v2, v12

    add-int v9, v11, v12

    goto :goto_3

    :cond_6
    if-eqz p4, :cond_7

    const/4 v11, 0x2

    :goto_4
    sub-int/2addr v8, v11

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v11, 0x1

    goto :goto_4

    :cond_8
    add-int v11, v10, v8

    invoke-virtual {p1, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    mul-int/lit8 v11, v3, 0x3c

    add-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0x3c

    add-int/2addr v11, v9

    mul-int/lit16 v11, v11, 0x3e8

    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private parseAbuttingOffsetFields(Ljava/lang/String;I[I)I
    .locals 13

    const/4 v0, 0x6

    const/4 v11, 0x6

    new-array v1, v11, [I

    const/4 v11, 0x6

    new-array v9, v11, [I

    move v4, p2

    const/4 v11, 0x1

    new-array v5, v11, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v5, v12

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v11, 0x6

    if-ge v3, v11, :cond_0

    invoke-direct {p0, p1, v4, v5}, Landroid/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    move-result v11

    aput v11, v1, v3

    aget v11, v1, v3

    if-gez v11, :cond_1

    :cond_0
    if-nez v7, :cond_2

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, p3, v12

    const/4 v11, 0x0

    return v11

    :cond_1
    const/4 v11, 0x0

    aget v11, v5, v11

    add-int/2addr v4, v11

    sub-int v11, v4, p2

    aput v11, v9, v3

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-lez v7, :cond_5

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    sget-boolean v11, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v11, :cond_4

    if-lez v7, :cond_3

    const/4 v11, 0x6

    if-gt v7, v11, :cond_3

    const/4 v11, 0x1

    :goto_2
    if-nez v11, :cond_4

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    packed-switch v7, :pswitch_data_0

    :goto_3
    const/16 v11, 0x17

    if-gt v2, v11, :cond_6

    const/16 v11, 0x3b

    if-gt v6, v11, :cond_6

    const/16 v11, 0x3b

    if-gt v10, v11, :cond_6

    const v11, 0x36ee80

    mul-int/2addr v11, v2

    const v12, 0xea60

    mul-int/2addr v12, v6

    add-int/2addr v11, v12

    mul-int/lit16 v12, v10, 0x3e8

    add-int v8, v11, v12

    add-int/lit8 v11, v7, -0x1

    aget v11, v9, v11

    const/4 v12, 0x0

    aput v11, p3, v12

    :cond_5
    return v8

    :pswitch_0
    const/4 v11, 0x0

    aget v2, v1, v11

    goto :goto_3

    :pswitch_1
    const/4 v11, 0x0

    aget v11, v1, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x1

    aget v12, v1, v12

    add-int v2, v11, v12

    goto :goto_3

    :pswitch_2
    const/4 v11, 0x0

    aget v2, v1, v11

    const/4 v11, 0x1

    aget v11, v1, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x2

    aget v12, v1, v12

    add-int v6, v11, v12

    goto :goto_3

    :pswitch_3
    const/4 v11, 0x0

    aget v11, v1, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x1

    aget v12, v1, v12

    add-int v2, v11, v12

    const/4 v11, 0x2

    aget v11, v1, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x3

    aget v12, v1, v12

    add-int v6, v11, v12

    goto :goto_3

    :pswitch_4
    const/4 v11, 0x0

    aget v2, v1, v11

    const/4 v11, 0x1

    aget v11, v1, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x2

    aget v12, v1, v12

    add-int v6, v11, v12

    const/4 v11, 0x3

    aget v11, v1, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x4

    aget v12, v1, v12

    add-int v10, v11, v12

    goto :goto_3

    :pswitch_5
    const/4 v11, 0x0

    aget v11, v1, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x1

    aget v12, v1, v12

    add-int v2, v11, v12

    const/4 v11, 0x2

    aget v11, v1, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x3

    aget v12, v1, v12

    add-int v6, v11, v12

    const/4 v11, 0x4

    aget v11, v1, v11

    mul-int/lit8 v11, v11, 0xa

    const/4 v12, 0x5

    aget v12, v1, v12

    add-int v10, v11, v12

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLandroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;)I
    .locals 13

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    filled-new-array {v10, v11, v12}, [I

    move-result-object v4

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    filled-new-array {v10, v11, v12}, [I

    move-result-object v3

    move v5, v9

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-gt v2, v10, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_6

    if-nez v2, :cond_5

    const/4 v10, 0x0

    aget v10, v3, v10

    if-nez v10, :cond_3

    :cond_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    aget v10, v3, v10

    if-nez v10, :cond_7

    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-ge v10, v11, :cond_9

    :cond_2
    invoke-virtual {p1, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v10, 0x0

    return v10

    :cond_3
    add-int/lit8 v2, v2, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    aget v10, v3, v2

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    const/4 v10, 0x0

    aput v10, v3, v2

    goto :goto_2

    :cond_6
    aget v10, v3, v2

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    const-string/jumbo v10, "0123456789"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    aget v10, v4, v2

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v1

    aput v10, v4, v2

    aget v10, v3, v2

    add-int/lit8 v10, v10, 0x1

    aput v10, v3, v2

    aget v10, v3, v2

    const/4 v11, 0x2

    if-lt v10, v11, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    aget v10, v4, v10

    const/16 v11, 0x17

    if-le v10, v11, :cond_8

    const/4 v10, 0x0

    aget v10, v4, v10

    div-int/lit8 v10, v10, 0xa

    const v11, 0x36ee80

    mul-int v6, v10, v11

    sget-object v7, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    const/4 v8, 0x1

    goto :goto_1

    :cond_8
    const/4 v10, 0x0

    aget v10, v4, v10

    const v11, 0x36ee80

    mul-int v6, v10, v11

    const/4 v10, 0x0

    aget v8, v3, v10

    sget-object v7, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    const/4 v10, 0x1

    aget v10, v3, v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    aget v10, v4, v10

    const/16 v11, 0x3b

    if-gt v10, v11, :cond_1

    const/4 v10, 0x1

    aget v10, v4, v10

    const v11, 0xea60

    mul-int/2addr v10, v11

    add-int/2addr v6, v10

    const/4 v10, 0x1

    aget v10, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v8, v10

    sget-object v7, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    const/4 v10, 0x2

    aget v10, v3, v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v10, 0x2

    aget v10, v4, v10

    const/16 v11, 0x3b

    if-gt v10, v11, :cond_1

    const/4 v10, 0x2

    aget v10, v4, v10

    mul-int/lit16 v10, v10, 0x3e8

    add-int/2addr v6, v10

    const/4 v10, 0x2

    aget v10, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v8, v10

    sget-object v7, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    goto/16 :goto_1

    :cond_9
    add-int v10, v9, v8

    invoke-virtual {p1, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    return v6
.end method

.method private parseDefaultOffsetFields(Ljava/lang/String;IC[I)I
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    move/from16 v10, p2

    const/4 v1, 0x1

    new-array v8, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v8, v2

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x17

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v9

    const/4 v1, 0x0

    aget v1, v8, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    move/from16 v0, p2

    if-ne v10, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, p4, v2

    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x0

    aget v1, v8, v1

    add-int v10, p2, v1

    add-int/lit8 v1, v10, 0x1

    if-ge v1, v11, :cond_0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v0, p3

    if-ne v1, v0, :cond_0

    add-int/lit8 v3, v10, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x3b

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v12

    const/4 v1, 0x0

    aget v1, v8, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget v1, v8, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v10, v1

    add-int/lit8 v1, v10, 0x1

    if-ge v1, v11, :cond_0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v0, p3

    if-ne v1, v0, :cond_0

    add-int/lit8 v3, v10, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x3b

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v13

    const/4 v1, 0x0

    aget v1, v8, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget v1, v8, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v10, v1

    goto :goto_0

    :cond_2
    sub-int v1, v10, p2

    const/4 v2, 0x0

    aput v1, p4, v2

    const v1, 0x36ee80

    mul-int/2addr v1, v9

    const v2, 0xea60

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    mul-int/lit16 v2, v13, 0x3e8

    add-int/2addr v1, v2

    return v1
.end method

.method private parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    const/4 v5, -0x1

    const/4 v7, 0x0

    sget-object v8, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    iget-object v8, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v8, p1, v6, v4}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/TimeZoneNames$MatchInfo;

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    add-int/2addr v8, v6

    if-le v8, v5, :cond_0

    move-object v0, v2

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    add-int v5, v6, v8

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_2
    if-nez v7, :cond_3

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_3
    return-object v7
.end method

.method private parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I
    .locals 21

    move/from16 v10, p2

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    sget-object v19, Landroid/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v18, v2

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v5, v19, v18

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    move v9, v7

    :cond_0
    if-nez v9, :cond_3

    :cond_1
    :goto_1
    const/4 v2, 0x0

    aput v16, p3, v2

    return v13

    :cond_2
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_0

    :cond_3
    add-int v10, p2, v9

    add-int/lit8 v2, v10, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/16 v17, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v2, 0x2b

    if-ne v8, v2, :cond_4

    const/16 v17, 0x1

    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v12, v3

    const/16 v2, 0x3a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v2, v12}, Landroid/icu/text/TimeZoneFormat;->parseDefaultOffsetFields(Ljava/lang/String;IC[I)I

    move-result v15

    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v10

    if-ne v2, v3, :cond_5

    mul-int v13, v15, v17

    const/4 v2, 0x0

    aget v2, v12, v2

    add-int/2addr v10, v2

    :goto_3
    sub-int v16, v10, p2

    goto :goto_1

    :cond_4
    const/16 v2, 0x2d

    if-ne v8, v2, :cond_1

    const/16 v17, -0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    new-array v11, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v11, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Landroid/icu/text/TimeZoneFormat;->parseAbuttingOffsetFields(Ljava/lang/String;I[I)I

    move-result v14

    const/4 v2, 0x0

    aget v2, v12, v2

    const/4 v3, 0x0

    aget v3, v11, v3

    if-le v2, v3, :cond_6

    mul-int v13, v15, v17

    const/4 v2, 0x0

    aget v2, v12, v2

    add-int/2addr v10, v2

    goto :goto_3

    :cond_6
    mul-int v13, v14, v17

    const/4 v2, 0x0

    aget v2, v11, v2

    add-int/2addr v10, v2

    goto :goto_3
.end method

.method private parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I
    .locals 8

    const/4 v7, 0x0

    aput v7, p7, v7

    const/4 v0, 0x0

    const/4 v4, 0x0

    move v3, p2

    const/4 v6, 0x1

    new-array v2, v6, [I

    aput v7, v2, v7

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    if-ge v4, p4, :cond_0

    invoke-direct {p0, p1, v3, v2}, Landroid/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    move-result v1

    if-gez v1, :cond_2

    :cond_0
    if-lt v4, p3, :cond_1

    if-ge v0, p5, :cond_3

    :cond_1
    const/4 v0, -0x1

    const/4 v4, 0x0

    :goto_1
    return v0

    :cond_2
    mul-int/lit8 v6, v0, 0xa

    add-int v5, v6, v1

    if-gt v5, p6, :cond_0

    move v0, v5

    add-int/lit8 v4, v4, 0x1

    aget v6, v2, v7

    add-int/2addr v3, v6

    goto :goto_0

    :cond_3
    sub-int v6, v3, p2

    aput v6, p7, v7

    goto :goto_1
.end method

.method private parseOffsetFields(Ljava/lang/String;IZ[I)I
    .locals 20

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x1

    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, p4, v3

    :cond_0
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    filled-new-array {v2, v3, v4}, [I

    move-result-object v7

    sget-object v18, Landroid/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v17, v2

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-object v8, v18, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v5, v2, v3

    sget-boolean v2, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    move-result v13

    if-lez v13, :cond_5

    invoke-static {v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-wrap0(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v14, 0x1

    :goto_2
    const/4 v2, 0x0

    aget v10, v7, v2

    const/4 v2, 0x1

    aget v11, v7, v2

    const/4 v2, 0x2

    aget v12, v7, v2

    :cond_3
    if-lez v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    if-eqz v2, :cond_9

    const/4 v15, 0x0

    const/16 v16, 0x1

    sget-object v18, Landroid/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v17, v2

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    aget-object v8, v18, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v5, v2, v3

    sget-boolean v2, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v2, :cond_7

    if-eqz v5, :cond_6

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_4
    const/4 v14, -0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    move-result v15

    if-lez v15, :cond_d

    invoke-static {v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-wrap0(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v16, 0x1

    :cond_8
    :goto_5
    if-le v15, v13, :cond_9

    move v13, v15

    move/from16 v14, v16

    const/4 v2, 0x0

    aget v10, v7, v2

    const/4 v2, 0x1

    aget v11, v7, v2

    const/4 v2, 0x2

    aget v12, v7, v2

    :cond_9
    if-eqz p4, :cond_a

    move-object/from16 v0, p4

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_a

    const/4 v2, 0x0

    aput v13, p4, v2

    :cond_a
    if-lez v13, :cond_b

    mul-int/lit8 v2, v10, 0x3c

    add-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, v12

    mul-int/lit16 v2, v2, 0x3e8

    mul-int v9, v2, v14

    :cond_b
    return v9

    :cond_c
    const/16 v16, -0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_3
.end method

.method private parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I
    .locals 30

    sget-boolean v1, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v1, p5, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, p5, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, p5, v2

    const/16 v23, 0x0

    const/16 v29, 0x0

    const/16 v28, 0x0

    const/16 v27, 0x0

    move/from16 v3, p2

    const/4 v1, 0x1

    new-array v14, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v14, v2

    const/16 v26, 0x0

    :goto_1
    move-object/from16 v0, p3

    array-length v1, v0

    move/from16 v0, v26

    if-ge v0, v1, :cond_2

    aget-object v1, p3, v26

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    aget-object v4, p3, v26

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v23, 0x1

    :cond_2
    :goto_2
    if-eqz v23, :cond_b

    const/4 v1, 0x0

    return v1

    :cond_3
    add-int/2addr v3, v6

    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    :cond_4
    sget-boolean v1, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v1, :cond_5

    aget-object v1, p3, v26

    instance-of v1, v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    aget-object v24, p3, v26

    check-cast v24, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v25

    const/16 v1, 0x48

    move/from16 v0, v25

    if-ne v0, v1, :cond_8

    if-eqz p4, :cond_7

    const/4 v11, 0x1

    :goto_4
    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v9, v3

    invoke-direct/range {v7 .. v14}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v27

    :cond_6
    :goto_5
    const/4 v1, 0x0

    aget v1, v14, v1

    if-nez v1, :cond_a

    const/16 v23, 0x1

    goto :goto_2

    :cond_7
    const/4 v11, 0x2

    goto :goto_4

    :cond_8
    const/16 v1, 0x6d

    move/from16 v0, v25

    if-ne v0, v1, :cond_9

    const/16 v18, 0x2

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x3b

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, v3

    move-object/from16 v22, v14

    invoke-direct/range {v15 .. v22}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v28

    goto :goto_5

    :cond_9
    const/16 v1, 0x73

    move/from16 v0, v25

    if-ne v0, v1, :cond_6

    const/16 v18, 0x2

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x3b

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, v3

    move-object/from16 v22, v14

    invoke-direct/range {v15 .. v22}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v29

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    aget v1, v14, v1

    add-int/2addr v3, v1

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    aput v27, p5, v1

    const/4 v1, 0x1

    aput v28, p5, v1

    const/4 v1, 0x2

    aput v29, p5, v1

    sub-int v1, v3, p2

    return v1
.end method

.method private static parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const/4 v11, -0x1

    const/4 v10, 0x0

    if-eqz p3, :cond_0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v5, v7, :cond_1

    invoke-virtual {p1, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v10

    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    const-string/jumbo v8, "Z"

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_2

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    return v10

    :cond_2
    const/16 v7, 0x2b

    if-ne v0, v7, :cond_4

    const/4 v4, 0x1

    :goto_0
    new-instance v3, Ljava/text/ParsePosition;

    add-int/lit8 v7, v5, 0x1

    invoke-direct {v3, v7}, Ljava/text/ParsePosition;-><init>(I)V

    sget-object v7, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v8, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    const/16 v9, 0x3a

    invoke-static {p0, v3, v9, v7, v8}, Landroid/icu/text/TimeZoneFormat;->parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLandroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;)I

    move-result v1

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v7

    if-ne v7, v11, :cond_3

    if-eqz p2, :cond_6

    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v7

    if-eq v7, v11, :cond_7

    invoke-virtual {p1, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v10

    :cond_4
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_5

    const/4 v4, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v5}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v10

    :cond_6
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    sub-int/2addr v7, v5

    const/4 v8, 0x3

    if-gt v7, v8, :cond_3

    new-instance v2, Ljava/text/ParsePosition;

    add-int/lit8 v7, v5, 0x1

    invoke-direct {v2, v7}, Ljava/text/ParsePosition;-><init>(I)V

    sget-object v7, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v8, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {p0, v2, v7, v8, v10}, Landroid/icu/text/TimeZoneFormat;->parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;Z)I

    move-result v6

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v7

    if-ne v7, v11, :cond_3

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-le v7, v8, :cond_3

    move v1, v6

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz p3, :cond_8

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_8
    mul-int v7, v4, v1

    return v7
.end method

.method private parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    const/4 v6, 0x0

    new-array v7, v1, [I

    aput v4, v7, v4

    if-eqz p4, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1, v2, p3, v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I

    move-result v6

    aget v0, v7, v4

    if-lez v0, :cond_2

    if-eqz p4, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_1
    aget v0, v7, v4

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return v6

    :cond_2
    invoke-direct {p0, p1, v2, v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I

    move-result v6

    aget v0, v7, v4

    if-lez v0, :cond_4

    if-eqz p4, :cond_3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_3
    aget v0, v7, v4

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return v6

    :cond_4
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return v4

    :cond_5
    sget-object v9, Landroid/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    array-length v10, v9

    move v8, v4

    :goto_0
    if-ge v8, v10, :cond_7

    aget-object v3, v9, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return v4

    :cond_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_7
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v4
.end method

.method private parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I
    .locals 10

    const/4 v1, 0x1

    const/4 v4, 0x0

    move v6, p2

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    add-int v2, p2, v5

    new-array v8, v1, [I

    invoke-direct {p0, p1, v2, v4, v8}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFields(Ljava/lang/String;IZ[I)I

    move-result v7

    aget v0, v8, v4

    if-nez v0, :cond_3

    :cond_1
    :goto_0
    if-eqz v9, :cond_5

    sub-int v0, v2, p2

    :goto_1
    aput v0, p4, v4

    return v7

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    aget v0, v8, v4

    add-int/2addr v2, v0

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_4
    add-int/2addr v2, v5

    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_1
.end method

.method private static parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 14

    const/16 v13, 0x27

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v1, v11}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v2, v11, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v13, :cond_7

    if-eqz v5, :cond_1

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :cond_0
    :goto_1
    if-eqz v3, :cond_6

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    if-eqz v7, :cond_0

    invoke-static {v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v11, v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :cond_3
    :goto_3
    if-nez v4, :cond_4

    if-nez v7, :cond_10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_4
    :goto_4
    if-nez v4, :cond_5

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v11, v12, :cond_12

    :cond_5
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Bad localized GMT offset pattern: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_6
    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    if-eqz v3, :cond_8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_d

    if-ne v0, v7, :cond_9

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    if-nez v7, :cond_b

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_a

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_a
    :goto_5
    move v7, v0

    const/4 v6, 0x1

    invoke-virtual {v1, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_b
    invoke-static {v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v11

    if-eqz v11, :cond_c

    new-instance v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v11, v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    const/4 v4, 0x1

    goto :goto_3

    :cond_d
    if-eqz v7, :cond_e

    invoke-static {v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v11

    if-eqz v11, :cond_f

    new-instance v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v11, v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    :cond_e
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_10
    invoke-static {v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v11

    if-eqz v11, :cond_11

    new-instance v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v11, v7, v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_11
    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_12
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    return-object v11
.end method

.method private static parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    sget-object v8, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v8, :cond_3

    const-class v9, Landroid/icu/text/TimeZoneFormat;

    monitor-enter v9

    :try_start_0
    sget-object v8, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v8, :cond_2

    new-instance v7, Landroid/icu/impl/TextTrieMap;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    sget-object v8, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getShortID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v7, v6, v1}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_1
    :try_start_1
    const-string/jumbo v8, "unk"

    const-string/jumbo v10, "Etc/Unknown"

    invoke-virtual {v7, v8, v10}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    sput-object v7, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v9

    :cond_3
    new-array v4, v13, [I

    aput v12, v4, v12

    sget-object v8, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {v8, p0, v9, v4}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    aget v9, v4, v12

    add-int/2addr v8, v9

    invoke-virtual {p1, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_1
    return-object v5

    :cond_4
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_1
.end method

.method private parseSingleLocalizedDigit(Ljava/lang/String;I[I)I
    .locals 5

    const/4 v4, 0x0

    const/4 v1, -0x1

    aput v4, p3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p2, v3, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    if-ne v0, v3, :cond_3

    move v1, v2

    :cond_0
    if-gez v1, :cond_1

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v1

    :cond_1
    if-ltz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    aput v3, p3, v4

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    sget-object v6, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v6, :cond_2

    const-class v8, Landroid/icu/text/TimeZoneFormat;

    monitor-enter v8

    :try_start_0
    sget-object v6, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v6, :cond_1

    new-instance v5, Landroid/icu/impl/TextTrieMap;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    invoke-static {}, Landroid/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v1

    array-length v9, v1

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v0, v1, v6

    invoke-virtual {v5, v0, v0}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    sput-object v5, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v8

    :cond_2
    new-array v3, v10, [I

    aput v7, v3, v7

    sget-object v6, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {v6, p0, v8, v3}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    aget v7, v3, v7

    add-int/2addr v6, v7

    invoke-virtual {p1, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_1
    return-object v4

    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    :cond_3
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string/jumbo v3, "_locale"

    invoke-virtual {v0, v3, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/InvalidObjectException;

    const-string/jumbo v4, "Missing field: locale"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string/jumbo v3, "_tznames"

    invoke-virtual {v0, v3, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/TimeZoneNames;

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/InvalidObjectException;

    const-string/jumbo v4, "Missing field: tznames"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string/jumbo v3, "_gmtPattern"

    invoke-virtual {v0, v3, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/InvalidObjectException;

    const-string/jumbo v4, "Missing field: gmtPattern"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string/jumbo v3, "_gmtOffsetPatterns"

    invoke-virtual {v0, v3, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-nez v2, :cond_3

    new-instance v3, Ljava/io/InvalidObjectException;

    const-string/jumbo v4, "Missing field: gmtOffsetPatterns"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    array-length v3, v2

    if-ge v3, v5, :cond_4

    new-instance v3, Ljava/io/InvalidObjectException;

    const-string/jumbo v4, "Incompatible field: gmtOffsetPatterns"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    array-length v3, v2

    if-ne v3, v5, :cond_6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_5

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    aget-object v4, v2, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v4, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v4, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v6, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v5}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :goto_1
    const-string/jumbo v3, "_gmtOffsetDigits"

    invoke-virtual {v0, v3, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    if-nez v3, :cond_7

    new-instance v3, Ljava/io/InvalidObjectException;

    const-string/jumbo v4, "Missing field: gmtOffsetDigits"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    iput-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v3, v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    new-instance v3, Ljava/io/InvalidObjectException;

    const-string/jumbo v4, "Incompatible field: gmtOffsetDigits"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    const-string/jumbo v3, "_gmtZeroFormat"

    invoke-virtual {v0, v3, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    if-nez v3, :cond_9

    new-instance v3, Ljava/io/InvalidObjectException;

    const-string/jumbo v4, "Missing field: gmtZeroFormat"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    const-string/jumbo v3, "_parseAllStyles"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    const-string/jumbo v3, "_parseAllStyles"

    invoke-virtual {v0, v3}, Ljava/io/ObjectInputStream$GetField;->defaulted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/io/InvalidObjectException;

    const-string/jumbo v4, "Missing field: parseAllStyles"

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    instance-of v3, v3, Landroid/icu/impl/TimeZoneNamesImpl;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v3}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    iput-object v7, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    :goto_2
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    return-void

    :cond_b
    new-instance v3, Landroid/icu/impl/TimeZoneGenericNames;

    iget-object v4, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {v3, v4, v5}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V

    iput-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    goto :goto_2
.end method

.method private static toCodePoints(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->codePointCount(II)I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v6, v5, v1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    add-int/2addr v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "mm"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Bad time zone hour pattern data"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "HH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "H"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Bad time zone hour pattern data"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x27

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    return-object p0

    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_3

    if-eqz v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string/jumbo v1, "_locale"

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "_tznames"

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "_gmtPattern"

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "_gmtOffsetPatterns"

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "_gmtOffsetDigits"

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "_gmtZeroFormat"

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "_parseAllStyles"

    iget-boolean v2, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/text/TimeZoneFormat;
    .locals 2

    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneFormat;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/text/TimeZoneFormat;->_frozen:Z

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->cloneAsThawed()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method

.method public final format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/TimeZoneFormat$Style;",
            "Landroid/icu/util/TimeZone;",
            "J",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v12, 0x0

    if-eqz p5, :cond_0

    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    move-object/from16 v0, p5

    iput-object v2, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_0
    const/4 v9, 0x0

    invoke-static {}, Landroid/icu/text/TimeZoneFormat;->-getandroid-icu-text-TimeZoneFormat$StyleSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :goto_0
    if-nez v12, :cond_1

    if-eqz v9, :cond_3

    :cond_1
    :goto_1
    sget-boolean v2, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v2, :cond_7

    if-eqz v12, :cond_6

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :sswitch_0
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v2

    invoke-static {p2}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v2

    sget-object v3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-wide/from16 v0, p3

    invoke-virtual {v2, p2, v3, v0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->getDisplayName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v2

    sget-object v3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-wide/from16 v0, p3

    invoke-virtual {v2, p2, v3, v0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->getDisplayName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :sswitch_3
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    move-object v2, p0

    move-object v3, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/TimeZoneFormat;->formatSpecific(Landroid/icu/util/TimeZone;Landroid/icu/text/TimeZoneNames$NameType;Landroid/icu/text/TimeZoneNames$NameType;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :sswitch_4
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    move-object v2, p0

    move-object v3, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/TimeZoneFormat;->formatSpecific(Landroid/icu/util/TimeZone;Landroid/icu/text/TimeZoneNames$NameType;Landroid/icu/text/TimeZoneNames$NameType;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :sswitch_5
    invoke-virtual {p2}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x1

    goto :goto_0

    :sswitch_6
    invoke-static {p2}, Landroid/icu/impl/ZoneMeta;->getShortID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    const-string/jumbo v12, "unk"

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    :sswitch_7
    invoke-direct {p0, p2}, Landroid/icu/text/TimeZoneFormat;->formatExemplarLocation(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    filled-new-array {v2, v3}, [I

    move-result-object v11

    const/4 v2, 0x0

    move-wide/from16 v0, p3

    invoke-virtual {p2, v0, v1, v2, v11}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v3, 0x1

    aget v3, v11, v3

    add-int v10, v2, v3

    invoke-static {}, Landroid/icu/text/TimeZoneFormat;->-getandroid-icu-text-TimeZoneFormat$StyleSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-boolean v2, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :pswitch_0
    invoke-virtual {p0, v10}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v12

    :cond_4
    :goto_3
    if-eqz p5, :cond_1

    const/4 v2, 0x1

    aget v2, v11, v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    :goto_4
    move-object/from16 v0, p5

    iput-object v2, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v10}, Landroid/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_2
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_4
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_6
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_8
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_a
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :pswitch_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v10, v2, v3, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_5
    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_7
    return-object v12

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    instance-of v4, p1, Landroid/icu/util/TimeZone;

    if-eqz v4, :cond_0

    move-object v3, p1

    nop

    nop

    :goto_0
    sget-boolean v4, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    instance-of v4, p1, Landroid/icu/util/Calendar;

    if-eqz v4, :cond_1

    move-object v4, p1

    nop

    nop

    invoke-virtual {v4}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v3

    nop

    nop

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot format given Object ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") as a time zone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v0, v1}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v6, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    if-eq v4, v6, :cond_4

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v4

    const/16 v6, 0x11

    if-ne v4, v6, :cond_5

    :cond_4
    invoke-virtual {p3, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_5
    return-object p2
.end method

.method public final formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatOffsetLocalizedGMT(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatOffsetShortLocalizedGMT(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v2, v1}, Landroid/icu/text/TimeZoneFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    sget-object v4, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    invoke-virtual {v0, v3, v4}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v3

    return-object v3
.end method

.method public freeze()Landroid/icu/text/TimeZoneFormat;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultParseOptions()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneFormat$ParseOption;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    sget-object v1, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    :cond_2
    const-class v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getGMTOffsetDigits()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getGMTPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getGMTZeroFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_frozen:Z

    return v0
.end method

.method public parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Landroid/icu/util/TimeZone;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneFormat$ParseOption;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Landroid/icu/util/TimeZone;"
        }
    .end annotation

    if-nez p5, :cond_4

    new-instance p5, Landroid/icu/util/Output;

    sget-object v31, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    move-object/from16 v0, p5

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_0

    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_5

    :cond_0
    const/4 v6, 0x1

    :goto_1
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_1

    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_6

    :cond_1
    const/4 v7, 0x1

    :goto_2
    const/4 v5, 0x0

    new-instance v28, Ljava/text/ParsePosition;

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    const v21, 0x7fffffff

    const/16 v22, -0x1

    if-nez v6, :cond_2

    if-eqz v7, :cond_9

    :cond_2
    new-instance v10, Landroid/icu/util/Output;

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v10, v0}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v7, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v17

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v15, :cond_3

    iget-object v0, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_7

    :cond_3
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :cond_4
    sget-object v31, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    move-object/from16 v0, v31

    move-object/from16 v1, p5

    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    move/from16 v21, v17

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v22

    :cond_8
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    move/from16 v31, v0

    sget-object v32, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    move/from16 v32, v0

    or-int v31, v31, v32

    or-int/lit8 v5, v31, 0x0

    :cond_9
    if-nez p4, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    move-result-object v31

    sget-object v32, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual/range {v31 .. v32}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v19

    :goto_3
    invoke-static {}, Landroid/icu/text/TimeZoneFormat;->-getandroid-icu-text-TimeZoneFormat$StyleSwitchesValues()[I

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v32

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_0

    :cond_a
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    move/from16 v31, v0

    or-int v5, v5, v31

    move/from16 v0, v22

    move/from16 v1, v27

    if-le v0, v1, :cond_1b

    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v31, :cond_1a

    const v31, 0x7fffffff

    move/from16 v0, v21

    move/from16 v1, v31

    if-eq v0, v1, :cond_19

    const/16 v31, 0x1

    :goto_5
    if-nez v31, :cond_1a

    new-instance v31, Ljava/lang/AssertionError;

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v31

    :cond_b
    sget-object v31, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v19

    goto :goto_3

    :pswitch_0
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v17

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :cond_c
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    move/from16 v31, v0

    or-int v5, v5, v31

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v17

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :cond_d
    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    move/from16 v31, v0

    or-int v5, v5, v31

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v17

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :pswitch_3
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    new-instance v10, Landroid/icu/util/Output;

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v10, v0}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v31

    invoke-static {v0, v1, v2, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v17

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    iget-object v0, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_a

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :pswitch_4
    const/16 v16, 0x0

    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_f

    sget-object v31, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v32, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static/range {v31 .. v32}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v16

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    move/from16 v2, v27

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v26

    if-eqz v26, :cond_13

    const/16 v25, 0x0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_e
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/text/TimeZoneNames$MatchInfo;

    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v31

    add-int v31, v31, v27

    move/from16 v0, v31

    move/from16 v1, v22

    if-le v0, v1, :cond_e

    move-object/from16 v25, v12

    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v31

    add-int v22, v27, v31

    goto :goto_7

    :cond_f
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v31, :cond_11

    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_10

    const/16 v31, 0x1

    :goto_8
    if-nez v31, :cond_11

    new-instance v31, Ljava/lang/AssertionError;

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v31

    :cond_10
    const/16 v31, 0x0

    goto :goto_8

    :cond_11
    sget-object v31, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v32, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static/range {v31 .. v32}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v16

    goto :goto_6

    :cond_12
    if-eqz v25, :cond_13

    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p5

    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :cond_13
    if-eqz v19, :cond_a

    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_a

    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v31, :cond_14

    sget-object v31, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_14

    new-instance v31, Ljava/lang/AssertionError;

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v31

    :cond_14
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v31, :cond_15

    sget-object v31, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_15

    new-instance v31, Ljava/lang/AssertionError;

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v31

    :cond_15
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    move/from16 v2, v27

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v30

    if-eqz v30, :cond_a

    const/16 v29, 0x0

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_16
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_17

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/text/TimeZoneNames$MatchInfo;

    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v31

    add-int v31, v31, v27

    move/from16 v0, v31

    move/from16 v1, v22

    if-le v0, v1, :cond_16

    move-object/from16 v29, v12

    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v31

    add-int v22, v27, v31

    goto :goto_9

    :cond_17
    if-eqz v29, :cond_a

    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p5

    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :pswitch_5
    const/4 v9, 0x0

    invoke-static {}, Landroid/icu/text/TimeZoneFormat;->-getandroid-icu-text-TimeZoneFormat$StyleSwitchesValues()[I

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v32

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_1

    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v31, :cond_18

    new-instance v31, Ljava/lang/AssertionError;

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v31

    :pswitch_6
    sget-object v31, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static/range {v31 .. v31}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v9

    :cond_18
    :goto_a
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v9}, Landroid/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v31

    add-int v31, v31, v27

    move/from16 v0, v31

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p5

    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v31

    add-int v31, v31, v27

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :pswitch_7
    sget-object v31, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v32, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static/range {v31 .. v32}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v9

    goto :goto_a

    :pswitch_8
    sget-object v31, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v32, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static/range {v31 .. v32}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v9

    goto :goto_a

    :pswitch_9
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-static {v11}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :pswitch_a
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-static {v11}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :pswitch_b
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-static {v11}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :cond_1b
    const/16 v20, 0x0

    sget-object v24, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v31, :cond_1d

    if-gez v22, :cond_1c

    const/16 v31, 0x1

    :goto_b
    if-nez v31, :cond_1d

    new-instance v31, Ljava/lang/AssertionError;

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v31

    :cond_1c
    const/16 v31, 0x0

    goto :goto_b

    :cond_1d
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v31, :cond_1f

    const v31, 0x7fffffff

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_1e

    const/16 v31, 0x1

    :goto_c
    if-nez v31, :cond_1f

    new-instance v31, Ljava/lang/AssertionError;

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v31

    :cond_1e
    const/16 v31, 0x0

    goto :goto_c

    :cond_1f
    move/from16 v0, v22

    if-ge v0, v15, :cond_24

    and-int/lit16 v0, v5, 0x80

    move/from16 v31, v0

    if-eqz v31, :cond_20

    and-int/lit16 v0, v5, 0x100

    move/from16 v31, v0

    if-nez v31, :cond_24

    :cond_20
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    new-instance v10, Landroid/icu/util/Output;

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v10, v0}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v31

    invoke-static {v0, v1, v2, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v17

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_24

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v15, :cond_21

    iget-object v0, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_22

    :cond_21
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :cond_22
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_24

    move/from16 v21, v17

    const/16 v20, 0x0

    sget-object v24, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v22

    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v31, :cond_24

    add-int/lit8 v31, v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v31

    if-ne v0, v1, :cond_23

    const/16 v31, 0x1

    :goto_d
    if-nez v31, :cond_24

    new-instance v31, Ljava/lang/AssertionError;

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v31

    :cond_23
    const/16 v31, 0x0

    goto :goto_d

    :cond_24
    move/from16 v0, v22

    if-ge v0, v15, :cond_27

    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    move/from16 v31, v0

    and-int v31, v31, v5

    if-nez v31, :cond_27

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    new-instance v10, Landroid/icu/util/Output;

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v10, v0}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v17

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_27

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v15, :cond_25

    iget-object v0, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_26

    :cond_25
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :cond_26
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_27

    move/from16 v21, v17

    const/16 v20, 0x0

    sget-object v24, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v22

    :cond_27
    move/from16 v0, v22

    if-ge v0, v15, :cond_2a

    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    move/from16 v31, v0

    and-int v31, v31, v5

    if-nez v31, :cond_2a

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    new-instance v10, Landroid/icu/util/Output;

    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v10, v0}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v10}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v17

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2a

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v15, :cond_28

    iget-object v0, v10, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Boolean;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_29

    :cond_28
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v31

    return-object v31

    :cond_29
    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_2a

    move/from16 v21, v17

    const/16 v20, 0x0

    sget-object v24, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v22

    :cond_2a
    if-nez p4, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    move-result-object v31

    sget-object v32, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual/range {v31 .. v32}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v18

    :goto_e
    if-eqz v18, :cond_34

    move/from16 v0, v22

    if-ge v0, v15, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    move-object/from16 v31, v0

    sget-object v32, Landroid/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    move/from16 v2, v27

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v26

    const/16 v25, 0x0

    const/4 v14, -0x1

    if-eqz v26, :cond_2d

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2b
    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/text/TimeZoneNames$MatchInfo;

    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v31

    add-int v31, v31, v27

    move/from16 v0, v31

    if-le v0, v14, :cond_2b

    move-object/from16 v25, v12

    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v31

    add-int v14, v27, v31

    goto :goto_f

    :cond_2c
    sget-object v31, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    move-object/from16 v0, p4

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v18

    goto :goto_e

    :cond_2d
    move/from16 v0, v22

    if-ge v0, v14, :cond_2e

    move/from16 v22, v14

    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v25 .. v25}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v24

    const v21, 0x7fffffff

    :cond_2e
    if-eqz v19, :cond_31

    move/from16 v0, v22

    if-ge v0, v15, :cond_31

    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    move/from16 v31, v0

    and-int v31, v31, v5

    if-nez v31, :cond_31

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v31

    sget-object v32, Landroid/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    move/from16 v2, v27

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v30

    const/16 v29, 0x0

    const/4 v14, -0x1

    if-eqz v30, :cond_31

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2f
    :goto_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_30

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/text/TimeZoneNames$MatchInfo;

    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v31

    add-int v31, v31, v27

    move/from16 v0, v31

    if-le v0, v14, :cond_2f

    move-object/from16 v29, v12

    invoke-virtual {v12}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v31

    add-int v14, v27, v31

    goto :goto_10

    :cond_30
    move/from16 v0, v22

    if-ge v0, v14, :cond_31

    move/from16 v22, v14

    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v24

    const v21, 0x7fffffff

    :cond_31
    move/from16 v0, v22

    if-ge v0, v15, :cond_32

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v31

    sget-object v32, Landroid/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    move/from16 v2, v27

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v8

    if-eqz v8, :cond_32

    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v31

    add-int v31, v31, v27

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_32

    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v31

    add-int v22, v27, v31

    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v24

    const v21, 0x7fffffff

    :cond_32
    move/from16 v0, v22

    if-ge v0, v15, :cond_33

    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    move/from16 v31, v0

    and-int v31, v31, v5

    if-nez v31, :cond_33

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_33

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_33

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v22

    move-object/from16 v20, v11

    sget-object v24, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    const v21, 0x7fffffff

    :cond_33
    move/from16 v0, v22

    if-ge v0, v15, :cond_34

    sget-object v31, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    move/from16 v31, v0

    and-int v31, v31, v5

    if-nez v31, :cond_34

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v31, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_34

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_34

    invoke-virtual/range {v28 .. v28}, Ljava/text/ParsePosition;->getIndex()I

    move-result v22

    move-object/from16 v20, v11

    sget-object v24, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    const v21, 0x7fffffff

    :cond_34
    move/from16 v0, v22

    move/from16 v1, v27

    if-le v0, v1, :cond_38

    const/16 v23, 0x0

    if-eqz v20, :cond_35

    invoke-static/range {v20 .. v20}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v23

    :goto_11
    move-object/from16 v0, v24

    move-object/from16 v1, p5

    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v23

    :cond_35
    sget-boolean v31, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v31, :cond_37

    const v31, 0x7fffffff

    move/from16 v0, v21

    move/from16 v1, v31

    if-eq v0, v1, :cond_36

    const/16 v31, 0x1

    :goto_12
    if-nez v31, :cond_37

    new-instance v31, Ljava/lang/AssertionError;

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v31

    :cond_36
    const/16 v31, 0x0

    goto :goto_12

    :cond_37
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v23

    goto :goto_11

    :cond_38
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/16 v31, 0x0

    return-object v31

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final parse(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/TimeZoneFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-ltz v3, :cond_0

    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unparseable time zone: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_0
    sget-boolean v3, Landroid/icu/text/TimeZoneFormat;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    return-object v1
.end method

.method public final parse(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeZone;
    .locals 6

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public final parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method public parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method public parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method public setDefaultParseOptions(Ljava/util/EnumSet;)Landroid/icu/text/TimeZoneFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneFormat$ParseOption;",
            ">;)",
            "Landroid/icu/text/TimeZoneFormat;"
        }
    .end annotation

    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    return-object p0
.end method

.method public setGMTOffsetDigits(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .locals 3

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Attempt to modify frozen object"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Null GMT offset digits"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Length of digits must be 10"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    return-object p0
.end method

.method public setGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .locals 3

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Attempt to modify frozen object"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Null GMT offset pattern"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->-wrap2(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-object p2, v1, v2

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->checkAbuttingHoursAndMinutes()V

    return-object p0
.end method

.method public setGMTPattern(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    return-object p0
.end method

.method public setGMTZeroFormat(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null GMT zero format"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty GMT zero format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeZoneNames(Landroid/icu/text/TimeZoneNames;)Landroid/icu/text/TimeZoneFormat;
    .locals 3

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames;

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    return-object p0
.end method
