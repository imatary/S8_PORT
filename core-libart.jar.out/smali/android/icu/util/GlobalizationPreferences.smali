.class public Landroid/icu/util/GlobalizationPreferences;
.super Ljava/lang/Object;
.source "GlobalizationPreferences.java"

# interfaces
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/util/GlobalizationPreferences;",
        ">;"
    }
.end annotation


# static fields
.field public static final BI_CHARACTER:I = 0x0

.field private static final BI_LIMIT:I = 0x5

.field public static final BI_LINE:I = 0x2

.field public static final BI_SENTENCE:I = 0x3

.field public static final BI_TITLE:I = 0x4

.field public static final BI_WORD:I = 0x1

.field public static final DF_FULL:I = 0x0

.field private static final DF_LIMIT:I = 0x5

.field public static final DF_LONG:I = 0x1

.field public static final DF_MEDIUM:I = 0x2

.field public static final DF_NONE:I = 0x4

.field public static final DF_SHORT:I = 0x3

.field public static final ID_CURRENCY:I = 0x7

.field public static final ID_CURRENCY_SYMBOL:I = 0x8

.field public static final ID_KEYWORD:I = 0x5

.field public static final ID_KEYWORD_VALUE:I = 0x6

.field public static final ID_LANGUAGE:I = 0x1

.field public static final ID_LOCALE:I = 0x0

.field public static final ID_SCRIPT:I = 0x2

.field public static final ID_TERRITORY:I = 0x3

.field public static final ID_TIMEZONE:I = 0x9

.field public static final ID_VARIANT:I = 0x4

.field public static final NF_CURRENCY:I = 0x1

.field public static final NF_INTEGER:I = 0x4

.field private static final NF_LIMIT:I = 0x5

.field public static final NF_NUMBER:I = 0x0

.field public static final NF_PERCENT:I = 0x2

.field public static final NF_SCIENTIFIC:I = 0x3

.field private static final TYPE_BREAKITERATOR:I = 0x5

.field private static final TYPE_CALENDAR:I = 0x1

.field private static final TYPE_COLLATOR:I = 0x4

.field private static final TYPE_DATEFORMAT:I = 0x2

.field private static final TYPE_GENERIC:I = 0x0

.field private static final TYPE_LIMIT:I = 0x6

.field private static final TYPE_NUMBERFORMAT:I = 0x3

.field private static final available_locales:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final language_territory_hack:[[Ljava/lang/String;

.field private static final language_territory_hack_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final territory_tzid_hack:[[Ljava/lang/String;

.field static final territory_tzid_hack_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private breakIterators:[Landroid/icu/text/BreakIterator;

.field private calendar:Landroid/icu/util/Calendar;

.field private collator:Landroid/icu/text/Collator;

.field private currency:Landroid/icu/util/Currency;

.field private dateFormats:[[Landroid/icu/text/DateFormat;

.field private volatile frozen:Z

.field private implicitLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private numberFormats:[Landroid/icu/text/NumberFormat;

.field private territory:Ljava/lang/String;

.field private timezone:Landroid/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v14, 0x6

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v6, 0x0

    :goto_0
    array-length v8, v0

    if-ge v6, v8, :cond_0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v14}, Ljava/util/BitSet;-><init>(I)V

    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v0, v6

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v11}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v3

    const/4 v6, 0x0

    :goto_1
    array-length v8, v3

    if-ge v6, v8, :cond_2

    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v3, v6

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v14}, Ljava/util/BitSet;-><init>(I)V

    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v0, v6

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, v12}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/icu/text/DateFormat;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v5

    const/4 v6, 0x0

    :goto_2
    array-length v8, v5

    if-ge v6, v8, :cond_4

    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v5, v6

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v14}, Ljava/util/BitSet;-><init>(I)V

    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v0, v6

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1, v13}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/icu/text/NumberFormat;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v7

    const/4 v6, 0x0

    :goto_3
    array-length v8, v7

    if-ge v6, v8, :cond_6

    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v7, v6

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v14}, Ljava/util/BitSet;-><init>(I)V

    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v0, v6

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    invoke-static {}, Landroid/icu/text/Collator;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v4

    const/4 v6, 0x0

    :goto_4
    array-length v8, v4

    if-ge v6, v8, :cond_8

    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    if-nez v1, :cond_7

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v14}, Ljava/util/BitSet;-><init>(I)V

    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v0, v6

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    invoke-static {}, Landroid/icu/text/BreakIterator;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v2

    const/4 v6, 0x0

    :goto_5
    array-length v8, v2

    if-ge v6, v8, :cond_9

    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    aget-object v9, v2, v6

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    const/16 v8, 0x9a

    new-array v8, v8, [[Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "af"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ZA"

    aput-object v10, v9, v12

    aput-object v9, v8, v11

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "am"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ET"

    aput-object v10, v9, v12

    aput-object v9, v8, v12

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ar"

    aput-object v10, v9, v11

    const-string/jumbo v10, "SA"

    aput-object v10, v9, v12

    aput-object v9, v8, v13

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "as"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/4 v10, 0x3

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ay"

    aput-object v10, v9, v11

    const-string/jumbo v10, "PE"

    aput-object v10, v9, v12

    const/4 v10, 0x4

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "az"

    aput-object v10, v9, v11

    const-string/jumbo v10, "AZ"

    aput-object v10, v9, v12

    const/4 v10, 0x5

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "bal"

    aput-object v10, v9, v11

    const-string/jumbo v10, "PK"

    aput-object v10, v9, v12

    aput-object v9, v8, v14

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "be"

    aput-object v10, v9, v11

    const-string/jumbo v10, "BY"

    aput-object v10, v9, v12

    const/4 v10, 0x7

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "bg"

    aput-object v10, v9, v11

    const-string/jumbo v10, "BG"

    aput-object v10, v9, v12

    const/16 v10, 0x8

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "bn"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x9

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "bs"

    aput-object v10, v9, v11

    const-string/jumbo v10, "BA"

    aput-object v10, v9, v12

    const/16 v10, 0xa

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ca"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ES"

    aput-object v10, v9, v12

    const/16 v10, 0xb

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ch"

    aput-object v10, v9, v11

    const-string/jumbo v10, "MP"

    aput-object v10, v9, v12

    const/16 v10, 0xc

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "cpe"

    aput-object v10, v9, v11

    const-string/jumbo v10, "SL"

    aput-object v10, v9, v12

    const/16 v10, 0xd

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "cs"

    aput-object v10, v9, v11

    const-string/jumbo v10, "CZ"

    aput-object v10, v9, v12

    const/16 v10, 0xe

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "cy"

    aput-object v10, v9, v11

    const-string/jumbo v10, "GB"

    aput-object v10, v9, v12

    const/16 v10, 0xf

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "da"

    aput-object v10, v9, v11

    const-string/jumbo v10, "DK"

    aput-object v10, v9, v12

    const/16 v10, 0x10

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "de"

    aput-object v10, v9, v11

    const-string/jumbo v10, "DE"

    aput-object v10, v9, v12

    const/16 v10, 0x11

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "dv"

    aput-object v10, v9, v11

    const-string/jumbo v10, "MV"

    aput-object v10, v9, v12

    const/16 v10, 0x12

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "dz"

    aput-object v10, v9, v11

    const-string/jumbo v10, "BT"

    aput-object v10, v9, v12

    const/16 v10, 0x13

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "el"

    aput-object v10, v9, v11

    const-string/jumbo v10, "GR"

    aput-object v10, v9, v12

    const/16 v10, 0x14

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "en"

    aput-object v10, v9, v11

    const-string/jumbo v10, "US"

    aput-object v10, v9, v12

    const/16 v10, 0x15

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "es"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ES"

    aput-object v10, v9, v12

    const/16 v10, 0x16

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "et"

    aput-object v10, v9, v11

    const-string/jumbo v10, "EE"

    aput-object v10, v9, v12

    const/16 v10, 0x17

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "eu"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ES"

    aput-object v10, v9, v12

    const/16 v10, 0x18

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "fa"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IR"

    aput-object v10, v9, v12

    const/16 v10, 0x19

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "fi"

    aput-object v10, v9, v11

    const-string/jumbo v10, "FI"

    aput-object v10, v9, v12

    const/16 v10, 0x1a

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "fil"

    aput-object v10, v9, v11

    const-string/jumbo v10, "PH"

    aput-object v10, v9, v12

    const/16 v10, 0x1b

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "fj"

    aput-object v10, v9, v11

    const-string/jumbo v10, "FJ"

    aput-object v10, v9, v12

    const/16 v10, 0x1c

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "fo"

    aput-object v10, v9, v11

    const-string/jumbo v10, "FO"

    aput-object v10, v9, v12

    const/16 v10, 0x1d

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "fr"

    aput-object v10, v9, v11

    const-string/jumbo v10, "FR"

    aput-object v10, v9, v12

    const/16 v10, 0x1e

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ga"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IE"

    aput-object v10, v9, v12

    const/16 v10, 0x1f

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "gd"

    aput-object v10, v9, v11

    const-string/jumbo v10, "GB"

    aput-object v10, v9, v12

    const/16 v10, 0x20

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "gl"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ES"

    aput-object v10, v9, v12

    const/16 v10, 0x21

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "gn"

    aput-object v10, v9, v11

    const-string/jumbo v10, "PY"

    aput-object v10, v9, v12

    const/16 v10, 0x22

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "gu"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x23

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "gv"

    aput-object v10, v9, v11

    const-string/jumbo v10, "GB"

    aput-object v10, v9, v12

    const/16 v10, 0x24

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ha"

    aput-object v10, v9, v11

    const-string/jumbo v10, "NG"

    aput-object v10, v9, v12

    const/16 v10, 0x25

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "he"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IL"

    aput-object v10, v9, v12

    const/16 v10, 0x26

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "hi"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x27

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ho"

    aput-object v10, v9, v11

    const-string/jumbo v10, "PG"

    aput-object v10, v9, v12

    const/16 v10, 0x28

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "hr"

    aput-object v10, v9, v11

    const-string/jumbo v10, "HR"

    aput-object v10, v9, v12

    const/16 v10, 0x29

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ht"

    aput-object v10, v9, v11

    const-string/jumbo v10, "HT"

    aput-object v10, v9, v12

    const/16 v10, 0x2a

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "hu"

    aput-object v10, v9, v11

    const-string/jumbo v10, "HU"

    aput-object v10, v9, v12

    const/16 v10, 0x2b

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "hy"

    aput-object v10, v9, v11

    const-string/jumbo v10, "AM"

    aput-object v10, v9, v12

    const/16 v10, 0x2c

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "id"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ID"

    aput-object v10, v9, v12

    const/16 v10, 0x2d

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "is"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IS"

    aput-object v10, v9, v12

    const/16 v10, 0x2e

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "it"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IT"

    aput-object v10, v9, v12

    const/16 v10, 0x2f

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ja"

    aput-object v10, v9, v11

    const-string/jumbo v10, "JP"

    aput-object v10, v9, v12

    const/16 v10, 0x30

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ka"

    aput-object v10, v9, v11

    const-string/jumbo v10, "GE"

    aput-object v10, v9, v12

    const/16 v10, 0x31

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "kk"

    aput-object v10, v9, v11

    const-string/jumbo v10, "KZ"

    aput-object v10, v9, v12

    const/16 v10, 0x32

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "kl"

    aput-object v10, v9, v11

    const-string/jumbo v10, "GL"

    aput-object v10, v9, v12

    const/16 v10, 0x33

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "km"

    aput-object v10, v9, v11

    const-string/jumbo v10, "KH"

    aput-object v10, v9, v12

    const/16 v10, 0x34

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "kn"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x35

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ko"

    aput-object v10, v9, v11

    const-string/jumbo v10, "KR"

    aput-object v10, v9, v12

    const/16 v10, 0x36

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "kok"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x37

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ks"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x38

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ku"

    aput-object v10, v9, v11

    const-string/jumbo v10, "TR"

    aput-object v10, v9, v12

    const/16 v10, 0x39

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ky"

    aput-object v10, v9, v11

    const-string/jumbo v10, "KG"

    aput-object v10, v9, v12

    const/16 v10, 0x3a

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "la"

    aput-object v10, v9, v11

    const-string/jumbo v10, "VA"

    aput-object v10, v9, v12

    const/16 v10, 0x3b

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "lb"

    aput-object v10, v9, v11

    const-string/jumbo v10, "LU"

    aput-object v10, v9, v12

    const/16 v10, 0x3c

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ln"

    aput-object v10, v9, v11

    const-string/jumbo v10, "CG"

    aput-object v10, v9, v12

    const/16 v10, 0x3d

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "lo"

    aput-object v10, v9, v11

    const-string/jumbo v10, "LA"

    aput-object v10, v9, v12

    const/16 v10, 0x3e

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "lt"

    aput-object v10, v9, v11

    const-string/jumbo v10, "LT"

    aput-object v10, v9, v12

    const/16 v10, 0x3f

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "lv"

    aput-object v10, v9, v11

    const-string/jumbo v10, "LV"

    aput-object v10, v9, v12

    const/16 v10, 0x40

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "mai"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x41

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "men"

    aput-object v10, v9, v11

    const-string/jumbo v10, "GN"

    aput-object v10, v9, v12

    const/16 v10, 0x42

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "mg"

    aput-object v10, v9, v11

    const-string/jumbo v10, "MG"

    aput-object v10, v9, v12

    const/16 v10, 0x43

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "mh"

    aput-object v10, v9, v11

    const-string/jumbo v10, "MH"

    aput-object v10, v9, v12

    const/16 v10, 0x44

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "mk"

    aput-object v10, v9, v11

    const-string/jumbo v10, "MK"

    aput-object v10, v9, v12

    const/16 v10, 0x45

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ml"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x46

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "mn"

    aput-object v10, v9, v11

    const-string/jumbo v10, "MN"

    aput-object v10, v9, v12

    const/16 v10, 0x47

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "mni"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x48

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "mo"

    aput-object v10, v9, v11

    const-string/jumbo v10, "MD"

    aput-object v10, v9, v12

    const/16 v10, 0x49

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "mr"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x4a

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ms"

    aput-object v10, v9, v11

    const-string/jumbo v10, "MY"

    aput-object v10, v9, v12

    const/16 v10, 0x4b

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "mt"

    aput-object v10, v9, v11

    const-string/jumbo v10, "MT"

    aput-object v10, v9, v12

    const/16 v10, 0x4c

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "my"

    aput-object v10, v9, v11

    const-string/jumbo v10, "MM"

    aput-object v10, v9, v12

    const/16 v10, 0x4d

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "na"

    aput-object v10, v9, v11

    const-string/jumbo v10, "NR"

    aput-object v10, v9, v12

    const/16 v10, 0x4e

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "nb"

    aput-object v10, v9, v11

    const-string/jumbo v10, "NO"

    aput-object v10, v9, v12

    const/16 v10, 0x4f

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "nd"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ZA"

    aput-object v10, v9, v12

    const/16 v10, 0x50

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ne"

    aput-object v10, v9, v11

    const-string/jumbo v10, "NP"

    aput-object v10, v9, v12

    const/16 v10, 0x51

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "niu"

    aput-object v10, v9, v11

    const-string/jumbo v10, "NU"

    aput-object v10, v9, v12

    const/16 v10, 0x52

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "nl"

    aput-object v10, v9, v11

    const-string/jumbo v10, "NL"

    aput-object v10, v9, v12

    const/16 v10, 0x53

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "nn"

    aput-object v10, v9, v11

    const-string/jumbo v10, "NO"

    aput-object v10, v9, v12

    const/16 v10, 0x54

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "no"

    aput-object v10, v9, v11

    const-string/jumbo v10, "NO"

    aput-object v10, v9, v12

    const/16 v10, 0x55

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "nr"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ZA"

    aput-object v10, v9, v12

    const/16 v10, 0x56

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "nso"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ZA"

    aput-object v10, v9, v12

    const/16 v10, 0x57

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ny"

    aput-object v10, v9, v11

    const-string/jumbo v10, "MW"

    aput-object v10, v9, v12

    const/16 v10, 0x58

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "om"

    aput-object v10, v9, v11

    const-string/jumbo v10, "KE"

    aput-object v10, v9, v12

    const/16 v10, 0x59

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "or"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x5a

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "pa"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x5b

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "pau"

    aput-object v10, v9, v11

    const-string/jumbo v10, "PW"

    aput-object v10, v9, v12

    const/16 v10, 0x5c

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "pl"

    aput-object v10, v9, v11

    const-string/jumbo v10, "PL"

    aput-object v10, v9, v12

    const/16 v10, 0x5d

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ps"

    aput-object v10, v9, v11

    const-string/jumbo v10, "PK"

    aput-object v10, v9, v12

    const/16 v10, 0x5e

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "pt"

    aput-object v10, v9, v11

    const-string/jumbo v10, "BR"

    aput-object v10, v9, v12

    const/16 v10, 0x5f

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "qu"

    aput-object v10, v9, v11

    const-string/jumbo v10, "PE"

    aput-object v10, v9, v12

    const/16 v10, 0x60

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "rn"

    aput-object v10, v9, v11

    const-string/jumbo v10, "BI"

    aput-object v10, v9, v12

    const/16 v10, 0x61

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ro"

    aput-object v10, v9, v11

    const-string/jumbo v10, "RO"

    aput-object v10, v9, v12

    const/16 v10, 0x62

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ru"

    aput-object v10, v9, v11

    const-string/jumbo v10, "RU"

    aput-object v10, v9, v12

    const/16 v10, 0x63

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "rw"

    aput-object v10, v9, v11

    const-string/jumbo v10, "RW"

    aput-object v10, v9, v12

    const/16 v10, 0x64

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "sd"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x65

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "sg"

    aput-object v10, v9, v11

    const-string/jumbo v10, "CF"

    aput-object v10, v9, v12

    const/16 v10, 0x66

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "si"

    aput-object v10, v9, v11

    const-string/jumbo v10, "LK"

    aput-object v10, v9, v12

    const/16 v10, 0x67

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "sk"

    aput-object v10, v9, v11

    const-string/jumbo v10, "SK"

    aput-object v10, v9, v12

    const/16 v10, 0x68

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "sl"

    aput-object v10, v9, v11

    const-string/jumbo v10, "SI"

    aput-object v10, v9, v12

    const/16 v10, 0x69

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "sm"

    aput-object v10, v9, v11

    const-string/jumbo v10, "WS"

    aput-object v10, v9, v12

    const/16 v10, 0x6a

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "so"

    aput-object v10, v9, v11

    const-string/jumbo v10, "DJ"

    aput-object v10, v9, v12

    const/16 v10, 0x6b

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "sq"

    aput-object v10, v9, v11

    const-string/jumbo v10, "CS"

    aput-object v10, v9, v12

    const/16 v10, 0x6c

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "sr"

    aput-object v10, v9, v11

    const-string/jumbo v10, "CS"

    aput-object v10, v9, v12

    const/16 v10, 0x6d

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ss"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ZA"

    aput-object v10, v9, v12

    const/16 v10, 0x6e

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "st"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ZA"

    aput-object v10, v9, v12

    const/16 v10, 0x6f

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "sv"

    aput-object v10, v9, v11

    const-string/jumbo v10, "SE"

    aput-object v10, v9, v12

    const/16 v10, 0x70

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "sw"

    aput-object v10, v9, v11

    const-string/jumbo v10, "KE"

    aput-object v10, v9, v12

    const/16 v10, 0x71

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ta"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x72

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "te"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x73

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "tem"

    aput-object v10, v9, v11

    const-string/jumbo v10, "SL"

    aput-object v10, v9, v12

    const/16 v10, 0x74

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "tet"

    aput-object v10, v9, v11

    const-string/jumbo v10, "TL"

    aput-object v10, v9, v12

    const/16 v10, 0x75

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "th"

    aput-object v10, v9, v11

    const-string/jumbo v10, "TH"

    aput-object v10, v9, v12

    const/16 v10, 0x76

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ti"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ET"

    aput-object v10, v9, v12

    const/16 v10, 0x77

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "tg"

    aput-object v10, v9, v11

    const-string/jumbo v10, "TJ"

    aput-object v10, v9, v12

    const/16 v10, 0x78

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "tk"

    aput-object v10, v9, v11

    const-string/jumbo v10, "TM"

    aput-object v10, v9, v12

    const/16 v10, 0x79

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "tkl"

    aput-object v10, v9, v11

    const-string/jumbo v10, "TK"

    aput-object v10, v9, v12

    const/16 v10, 0x7a

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "tvl"

    aput-object v10, v9, v11

    const-string/jumbo v10, "TV"

    aput-object v10, v9, v12

    const/16 v10, 0x7b

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "tl"

    aput-object v10, v9, v11

    const-string/jumbo v10, "PH"

    aput-object v10, v9, v12

    const/16 v10, 0x7c

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "tn"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ZA"

    aput-object v10, v9, v12

    const/16 v10, 0x7d

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "to"

    aput-object v10, v9, v11

    const-string/jumbo v10, "TO"

    aput-object v10, v9, v12

    const/16 v10, 0x7e

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "tpi"

    aput-object v10, v9, v11

    const-string/jumbo v10, "PG"

    aput-object v10, v9, v12

    const/16 v10, 0x7f

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "tr"

    aput-object v10, v9, v11

    const-string/jumbo v10, "TR"

    aput-object v10, v9, v12

    const/16 v10, 0x80

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ts"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ZA"

    aput-object v10, v9, v12

    const/16 v10, 0x81

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "uk"

    aput-object v10, v9, v11

    const-string/jumbo v10, "UA"

    aput-object v10, v9, v12

    const/16 v10, 0x82

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ur"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x83

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "uz"

    aput-object v10, v9, v11

    const-string/jumbo v10, "UZ"

    aput-object v10, v9, v12

    const/16 v10, 0x84

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ve"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ZA"

    aput-object v10, v9, v12

    const/16 v10, 0x85

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "vi"

    aput-object v10, v9, v11

    const-string/jumbo v10, "VN"

    aput-object v10, v9, v12

    const/16 v10, 0x86

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "wo"

    aput-object v10, v9, v11

    const-string/jumbo v10, "SN"

    aput-object v10, v9, v12

    const/16 v10, 0x87

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "xh"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ZA"

    aput-object v10, v9, v12

    const/16 v10, 0x88

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "zh"

    aput-object v10, v9, v11

    const-string/jumbo v10, "CN"

    aput-object v10, v9, v12

    const/16 v10, 0x89

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "zh_Hant"

    aput-object v10, v9, v11

    const-string/jumbo v10, "TW"

    aput-object v10, v9, v12

    const/16 v10, 0x8a

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "zu"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ZA"

    aput-object v10, v9, v12

    const/16 v10, 0x8b

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "aa"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ET"

    aput-object v10, v9, v12

    const/16 v10, 0x8c

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "byn"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ER"

    aput-object v10, v9, v12

    const/16 v10, 0x8d

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "eo"

    aput-object v10, v9, v11

    const-string/jumbo v10, "DE"

    aput-object v10, v9, v12

    const/16 v10, 0x8e

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "gez"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ET"

    aput-object v10, v9, v12

    const/16 v10, 0x8f

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "haw"

    aput-object v10, v9, v11

    const-string/jumbo v10, "US"

    aput-object v10, v9, v12

    const/16 v10, 0x90

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "iu"

    aput-object v10, v9, v11

    const-string/jumbo v10, "CA"

    aput-object v10, v9, v12

    const/16 v10, 0x91

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "kw"

    aput-object v10, v9, v11

    const-string/jumbo v10, "GB"

    aput-object v10, v9, v12

    const/16 v10, 0x92

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "sa"

    aput-object v10, v9, v11

    const-string/jumbo v10, "IN"

    aput-object v10, v9, v12

    const/16 v10, 0x93

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "sh"

    aput-object v10, v9, v11

    const-string/jumbo v10, "HR"

    aput-object v10, v9, v12

    const/16 v10, 0x94

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "sid"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ET"

    aput-object v10, v9, v12

    const/16 v10, 0x95

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "syr"

    aput-object v10, v9, v11

    const-string/jumbo v10, "SY"

    aput-object v10, v9, v12

    const/16 v10, 0x96

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "tig"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ER"

    aput-object v10, v9, v12

    const/16 v10, 0x97

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "tt"

    aput-object v10, v9, v11

    const-string/jumbo v10, "RU"

    aput-object v10, v9, v12

    const/16 v10, 0x98

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "wal"

    aput-object v10, v9, v11

    const-string/jumbo v10, "ET"

    aput-object v10, v9, v12

    const/16 v10, 0x99

    aput-object v9, v8, v10

    sput-object v8, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_6
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    array-length v8, v8

    if-ge v6, v8, :cond_a

    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    sget-object v9, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    aget-object v9, v9, v6

    aget-object v9, v9, v11

    sget-object v10, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack:[[Ljava/lang/String;

    aget-object v10, v10, v6

    aget-object v10, v10, v12

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    const/16 v8, 0x1e

    new-array v8, v8, [[Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "AQ"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Antarctica/McMurdo"

    aput-object v10, v9, v12

    aput-object v9, v8, v11

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "AR"

    aput-object v10, v9, v11

    const-string/jumbo v10, "America/Buenos_Aires"

    aput-object v10, v9, v12

    aput-object v9, v8, v12

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "AU"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Australia/Sydney"

    aput-object v10, v9, v12

    aput-object v9, v8, v13

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "BR"

    aput-object v10, v9, v11

    const-string/jumbo v10, "America/Sao_Paulo"

    aput-object v10, v9, v12

    const/4 v10, 0x3

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "CA"

    aput-object v10, v9, v11

    const-string/jumbo v10, "America/Toronto"

    aput-object v10, v9, v12

    const/4 v10, 0x4

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "CD"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Africa/Kinshasa"

    aput-object v10, v9, v12

    const/4 v10, 0x5

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "CL"

    aput-object v10, v9, v11

    const-string/jumbo v10, "America/Santiago"

    aput-object v10, v9, v12

    aput-object v9, v8, v14

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "CN"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Asia/Shanghai"

    aput-object v10, v9, v12

    const/4 v10, 0x7

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "EC"

    aput-object v10, v9, v11

    const-string/jumbo v10, "America/Guayaquil"

    aput-object v10, v9, v12

    const/16 v10, 0x8

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ES"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Europe/Madrid"

    aput-object v10, v9, v12

    const/16 v10, 0x9

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "GB"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Europe/London"

    aput-object v10, v9, v12

    const/16 v10, 0xa

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "GL"

    aput-object v10, v9, v11

    const-string/jumbo v10, "America/Godthab"

    aput-object v10, v9, v12

    const/16 v10, 0xb

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ID"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Asia/Jakarta"

    aput-object v10, v9, v12

    const/16 v10, 0xc

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "ML"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Africa/Bamako"

    aput-object v10, v9, v12

    const/16 v10, 0xd

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "MX"

    aput-object v10, v9, v11

    const-string/jumbo v10, "America/Mexico_City"

    aput-object v10, v9, v12

    const/16 v10, 0xe

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "MY"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Asia/Kuala_Lumpur"

    aput-object v10, v9, v12

    const/16 v10, 0xf

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "NZ"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Pacific/Auckland"

    aput-object v10, v9, v12

    const/16 v10, 0x10

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "PT"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Europe/Lisbon"

    aput-object v10, v9, v12

    const/16 v10, 0x11

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "RU"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Europe/Moscow"

    aput-object v10, v9, v12

    const/16 v10, 0x12

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "UA"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Europe/Kiev"

    aput-object v10, v9, v12

    const/16 v10, 0x13

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "US"

    aput-object v10, v9, v11

    const-string/jumbo v10, "America/New_York"

    aput-object v10, v9, v12

    const/16 v10, 0x14

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "UZ"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Asia/Tashkent"

    aput-object v10, v9, v12

    const/16 v10, 0x15

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "PF"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Pacific/Tahiti"

    aput-object v10, v9, v12

    const/16 v10, 0x16

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "FM"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Pacific/Kosrae"

    aput-object v10, v9, v12

    const/16 v10, 0x17

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "KI"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Pacific/Tarawa"

    aput-object v10, v9, v12

    const/16 v10, 0x18

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "KZ"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Asia/Almaty"

    aput-object v10, v9, v12

    const/16 v10, 0x19

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "MH"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Pacific/Majuro"

    aput-object v10, v9, v12

    const/16 v10, 0x1a

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "MN"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Asia/Ulaanbaatar"

    aput-object v10, v9, v12

    const/16 v10, 0x1b

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "SJ"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Arctic/Longyearbyen"

    aput-object v10, v9, v12

    const/16 v10, 0x1c

    aput-object v9, v8, v10

    new-array v9, v13, [Ljava/lang/String;

    const-string/jumbo v10, "UM"

    aput-object v10, v9, v11

    const-string/jumbo v10, "Pacific/Midway"

    aput-object v10, v9, v12

    const/16 v10, 0x1d

    aput-object v9, v8, v10

    sput-object v8, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_7
    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    array-length v8, v8

    if-ge v6, v8, :cond_b

    sget-object v8, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    sget-object v9, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    aget-object v9, v9, v6

    aget-object v9, v9, v11

    sget-object v10, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack:[[Ljava/lang/String;

    aget-object v10, v10, v6

    aget-object v10, v10, v12

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->reset()Landroid/icu/util/GlobalizationPreferences;

    return-void
.end method

.method private getAvailableLocale(I)Landroid/icu/util/ULocale;
    .locals 5

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    invoke-direct {p0, v1, p1}, Landroid/icu/util/GlobalizationPreferences;->isAvailableLocale(Landroid/icu/util/ULocale;I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v1

    :cond_0
    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAvailableLocale(Landroid/icu/util/ULocale;I)Z
    .locals 2

    sget-object v1, Landroid/icu/util/GlobalizationPreferences;->available_locales:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/util/GlobalizationPreferences;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/GlobalizationPreferences;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/icu/util/GlobalizationPreferences;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->cloneAsThawed()Landroid/icu/util/GlobalizationPreferences;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Landroid/icu/util/GlobalizationPreferences;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/GlobalizationPreferences;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->freeze()Landroid/icu/util/GlobalizationPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getBreakIterator(I)Landroid/icu/text/BreakIterator;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal break iterator type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    aget-object v0, v0, p1

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->guessBreakIterator(I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator;

    return-object v0
.end method

.method public getCalendar()Landroid/icu/util/Calendar;
    .locals 4

    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessCalendar()Landroid/icu/util/Calendar;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public getCollator()Landroid/icu/text/Collator;
    .locals 3

    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessCollator()Landroid/icu/text/Collator;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;

    invoke-virtual {v1}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/Collator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string/jumbo v2, "Error in cloning collator"

    invoke-direct {v1, v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCurrency()Landroid/icu/util/Currency;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    return-object v0
.end method

.method public getDateFormat(II)Landroid/icu/text/DateFormat;
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    if-ne p2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal date format style arguments"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p1, :cond_0

    if-ge p1, v2, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v2, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    aget-object v1, v1, p1

    aget-object v0, v1, p2

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat;

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/GlobalizationPreferences;->guessDateFormat(II)Landroid/icu/text/DateFormat;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 16

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/ULocale;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Landroid/icu/util/GlobalizationPreferences;->isAvailableLocale(Landroid/icu/util/ULocale;I)Z

    move-result v13

    if-eqz v13, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unknown type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/icu/util/ULocale;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    return-object v9

    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/icu/util/ULocale;->getDisplayLanguage(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :pswitch_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "und-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Landroid/icu/util/ULocale;->getDisplayScript(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :pswitch_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "und-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Landroid/icu/util/ULocale;->getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :pswitch_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "und-QQ-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Landroid/icu/util/ULocale;->getDisplayVariant(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :pswitch_5
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Landroid/icu/util/ULocale;->getDisplayKeyword(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :pswitch_6
    const/4 v13, 0x2

    new-array v8, v13, [Ljava/lang/String;

    const/16 v13, 0x3d

    move-object/from16 v0, p1

    invoke-static {v0, v13, v8}, Landroid/icu/impl/Utility;->split(Ljava/lang/String;C[Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "und@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v8, v14

    invoke-static {v13, v14, v6}, Landroid/icu/util/ULocale;->getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    aget-object v13, v8, v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto/16 :goto_0

    :pswitch_7
    new-instance v11, Landroid/icu/util/Currency;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/icu/util/Currency;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x7

    move/from16 v0, p2

    if-ne v0, v13, :cond_2

    const/4 v13, 0x1

    :goto_2
    const/4 v14, 0x1

    new-array v14, v14, [Z

    invoke-virtual {v11, v6, v13, v14}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :pswitch_8
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v13, "vvvv"

    invoke-direct {v2, v13, v6}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    invoke-static/range {p1 .. p1}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v13}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    move-object v12, v9

    const/16 v13, 0x28

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/16 v13, 0x29

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v13, -0x1

    if-eq v10, v13, :cond_3

    const/4 v13, -0x1

    if-eq v3, v13, :cond_3

    sub-int v13, v3, v10

    const/4 v14, 0x3

    if-ne v13, v14, :cond_3

    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v9, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    const/4 v5, 0x1

    const/4 v4, 0x0

    :goto_3
    const/4 v13, 0x2

    if-ge v4, v13, :cond_5

    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v13, 0x41

    if-lt v1, v13, :cond_4

    const/16 v13, 0x5a

    if-ge v13, v1, :cond_6

    :cond_4
    const/4 v5, 0x0

    :cond_5
    if-eqz v5, :cond_1

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-object v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getLocale(I)Landroid/icu/util/ULocale;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessLocales()Ljava/util/List;

    move-result-object v0

    :cond_0
    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    return-object v1

    :cond_1
    return-object v2
.end method

.method public getLocales()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessLocales()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getNumberFormat(I)Landroid/icu/text/NumberFormat;
    .locals 3

    if-ltz p1, :cond_0

    const/4 v1, 0x5

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal number format type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    aget-object v0, v1, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->guessNumberFormat(I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/GlobalizationPreferences;->getResourceBundle(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public getResourceBundle(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 10

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/util/ULocale;

    invoke-virtual {v7}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, v1

    :cond_0
    :goto_1
    if-nez v6, :cond_5

    new-instance v7, Ljava/util/MissingResourceException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t find bundle for base name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-direct {v7, v8, p1, v9}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    :cond_1
    if-nez p2, :cond_2

    :try_start_0
    invoke-static {p1, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v6, v1

    goto :goto_1

    :cond_2
    invoke-static {p1, v4, p2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    move-object v6, v1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    return-object v6
.end method

.method public getTerritory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessTerritory()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->guessTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method protected guessBreakIterator(I)Landroid/icu/text/BreakIterator;
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, v2}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unknown break iterator type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getTitleInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getLineInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {v1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected guessCalendar()Landroid/icu/util/Calendar;
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v1

    return-object v1
.end method

.method protected guessCollator()Landroid/icu/text/Collator;
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_0
    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v1

    return-object v1
.end method

.method protected guessCurrency()Landroid/icu/util/Currency;
    .locals 3

    new-instance v0, Landroid/icu/util/ULocale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "und-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method protected guessDateFormat(II)Landroid/icu/text/DateFormat;
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_0
    if-ne p2, v3, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/icu/text/DateFormat;->getDateInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v2

    invoke-static {v2, p2, v0}, Landroid/icu/text/DateFormat;->getTimeInstance(Landroid/icu/util/Calendar;ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v2

    invoke-static {v2, p1, p2, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(Landroid/icu/util/Calendar;IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    goto :goto_0
.end method

.method protected guessLocales()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    return-object v1
.end method

.method protected guessNumberFormat(I)Landroid/icu/text/NumberFormat;
    .locals 4

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/icu/util/GlobalizationPreferences;->getAvailableLocale(I)Landroid/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unknown number format style"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_1
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getScientificInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getIntegerInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getPercentInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getCurrencyInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected guessTerritory()Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getLocales()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    return-object v4

    :cond_1
    invoke-virtual {p0, v7}, Landroid/icu/util/GlobalizationPreferences;->getLocale(I)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_2
    if-nez v4, :cond_3

    sget-object v6, Landroid/icu/util/GlobalizationPreferences;->language_territory_hack_map:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_3
    if-nez v4, :cond_4

    const-string/jumbo v4, "US"

    :cond_4
    return-object v4
.end method

.method protected guessTimeZone()Landroid/icu/util/TimeZone;
    .locals 5

    sget-object v3, Landroid/icu/util/GlobalizationPreferences;->territory_tzid_hack_map:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->getTerritory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/util/TimeZone;->getAvailableIDs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-nez v3, :cond_1

    const-string/jumbo v2, "Etc/GMT"

    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v3

    return-object v3

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    :cond_2
    array-length v3, v0

    if-le v1, v3, :cond_3

    const/4 v1, 0x0

    :cond_3
    aget-object v2, v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/util/GlobalizationPreferences;->frozen:Z

    return v0
.end method

.method protected processLocales(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v5, v0, :cond_8

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/icu/util/ULocale;

    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v15

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/util/ULocale;

    invoke-virtual {v12}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_4

    invoke-interface {v9, v7, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v9, v7, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_0

    invoke-interface {v9, v7, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_7

    invoke-interface {v9, v7, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_0

    invoke-interface {v9, v7, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_a

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/icu/util/ULocale;

    :goto_4
    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v6, v6, 0x1

    invoke-interface {v9, v6, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :cond_b
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v6, v0, :cond_e

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/icu/util/ULocale;

    const/4 v2, 0x0

    add-int/lit8 v5, v6, 0x1

    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v5, v0, :cond_c

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v9, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_c
    if-nez v2, :cond_b

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    return-object v9
.end method

.method public reset()Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->implicitLocales:Ljava/util/List;

    return-object p0
.end method

.method public setBreakIterator(ILandroid/icu/text/BreakIterator;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    const/4 v1, 0x5

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal break iterator type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_3

    new-array v0, v1, [Landroid/icu/text/BreakIterator;

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    :cond_3
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->breakIterators:[Landroid/icu/text/BreakIterator;

    invoke-virtual {p2}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator;

    aput-object v0, v1, p1

    return-object p0
.end method

.method public setCalendar(Landroid/icu/util/Calendar;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->calendar:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method public setCollator(Landroid/icu/text/Collator;)Landroid/icu/util/GlobalizationPreferences;
    .locals 3

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Attempt to modify immutable object"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/Collator;

    iput-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->collator:Landroid/icu/text/Collator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string/jumbo v2, "Error in cloning collator"

    invoke-direct {v1, v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCurrency(Landroid/icu/util/Currency;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/util/GlobalizationPreferences;->currency:Landroid/icu/util/Currency;

    return-object p0
.end method

.method public setDateFormat(IILandroid/icu/text/DateFormat;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    if-nez v0, :cond_1

    const-class v0, Landroid/icu/text/DateFormat;

    filled-new-array {v1, v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/icu/text/DateFormat;

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    :cond_1
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->dateFormats:[[Landroid/icu/text/DateFormat;

    aget-object v1, v0, p1

    invoke-virtual {p3}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat;

    aput-object v0, v1, p2

    return-object p0
.end method

.method public setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/icu/util/ULocale;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->setLocales([Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;

    move-result-object v0

    return-object v0
.end method

.method public setLocales(Ljava/lang/String;)Landroid/icu/util/GlobalizationPreferences;
    .locals 4

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Attempt to modify immutable object"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v2}, Landroid/icu/util/ULocale;->parseAcceptLanguage(Ljava/lang/String;Z)[Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->setLocales([Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid Accept-Language string"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setLocales(Ljava/util/List;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/util/GlobalizationPreferences;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/util/GlobalizationPreferences;->processLocales(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->locales:Ljava/util/List;

    return-object p0
.end method

.method public setLocales([Landroid/icu/util/ULocale;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/GlobalizationPreferences;->setLocales(Ljava/util/List;)Landroid/icu/util/GlobalizationPreferences;

    move-result-object v0

    return-object v0
.end method

.method public setNumberFormat(ILandroid/icu/text/NumberFormat;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    if-nez v0, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/icu/text/NumberFormat;

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    :cond_1
    iget-object v1, p0, Landroid/icu/util/GlobalizationPreferences;->numberFormats:[Landroid/icu/text/NumberFormat;

    invoke-virtual {p2}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    aput-object v0, v1, p1

    return-object p0
.end method

.method public setTerritory(Ljava/lang/String;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/util/GlobalizationPreferences;->territory:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeZone(Landroid/icu/util/TimeZone;)Landroid/icu/util/GlobalizationPreferences;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/GlobalizationPreferences;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify immutable object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone;

    iput-object v0, p0, Landroid/icu/util/GlobalizationPreferences;->timezone:Landroid/icu/util/TimeZone;

    return-object p0
.end method
