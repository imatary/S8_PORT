.class public final Llibcore/icu/ICU;
.super Ljava/lang/Object;
.source "ICU.java"


# static fields
.field private static final CACHED_PATTERNS:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IDX_LANGUAGE:I = 0x0

.field private static final IDX_REGION:I = 0x2

.field private static final IDX_SCRIPT:I = 0x1

.field private static final IDX_VARIANT:I = 0x3

.field public static final U_BUFFER_OVERFLOW_ERROR:I = 0xf

.field public static final U_ILLEGAL_CHAR_FOUND:I = 0xc

.field public static final U_INVALID_CHAR_FOUND:I = 0xa

.field public static final U_TRUNCATED_CHAR_FOUND:I = 0xb

.field public static final U_ZERO_ERROR:I

.field private static availableLocalesCache:[Ljava/util/Locale;

.field private static isoCountries:[Ljava/lang/String;

.field private static isoLanguages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    sput-object v0, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static U_FAILURE(I)Z
    .locals 1

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static native addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 3

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableBreakIteratorLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableBreakIteratorLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableBreakIteratorLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableCalendarLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableCalendarLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableCalendarLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableCollatorLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableCollatorLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableCollatorLocalesNative()[Ljava/lang/String;
.end method

.method public static native getAvailableCurrencyCodes()[Ljava/lang/String;
.end method

.method public static getAvailableDateFormatLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableDateFormatLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableDateFormatSymbolsLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableDecimalFormatSymbolsLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    :cond_0
    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    return-object v0
.end method

.method private static native getAvailableLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableNumberFormatLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableNumberFormatLocalesNative()[Ljava/lang/String;
.end method

.method public static getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    monitor-enter v4

    :try_start_0
    sget-object v3, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    invoke-virtual {v3, v0}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {p0, v1}, Llibcore/icu/ICU;->getBestDateTimePatternNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Llibcore/icu/ICU;->CACHED_PATTERNS:Llibcore/util/BasicLruCache;

    invoke-virtual {v3, v0, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static native getBestDateTimePatternNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCldrVersion()Ljava/lang/String;
.end method

.method public static native getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getCurrencyDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCurrencyDisplayName(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/icu/ICU;->getCurrencyDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getCurrencyFractionDigits(Ljava/lang/String;)I
.end method

.method public static native getCurrencyNumericCode(Ljava/lang/String;)I
.end method

.method private static native getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCurrencySymbol(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/icu/ICU;->getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormatOrder(Ljava/lang/String;)[C
    .locals 14

    const/16 v13, 0x4c

    const/16 v12, 0x79

    const/16 v11, 0x64

    const/16 v10, 0x4d

    const/16 v9, 0x27

    const/4 v8, 0x3

    new-array v2, v8, [C

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_e

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v11, :cond_0

    if-ne v0, v13, :cond_5

    :cond_0
    if-ne v0, v11, :cond_1

    if-eqz v5, :cond_7

    :cond_1
    if-eq v0, v13, :cond_2

    if-ne v0, v10, :cond_3

    :cond_2
    if-eqz v6, :cond_8

    :cond_3
    if-ne v0, v12, :cond_4

    if-eqz v7, :cond_9

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eq v0, v10, :cond_0

    if-eq v0, v12, :cond_0

    const/16 v8, 0x47

    if-eq v0, v8, :cond_4

    const/16 v8, 0x61

    if-lt v0, v8, :cond_a

    const/16 v8, 0x7a

    if-gt v0, v8, :cond_a

    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad pattern character \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_7
    add-int/lit8 v4, v3, 0x1

    aput-char v11, v2, v3

    const/4 v5, 0x1

    move v3, v4

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v3, 0x1

    aput-char v10, v2, v3

    const/4 v6, 0x1

    move v3, v4

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v3, 0x1

    aput-char v12, v2, v3

    const/4 v7, 0x1

    move v3, v4

    goto :goto_1

    :cond_a
    const/16 v8, 0x41

    if-lt v0, v8, :cond_b

    const/16 v8, 0x5a

    if-le v0, v8, :cond_6

    :cond_b
    if-ne v0, v9, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_c

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_d

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad quoting in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_e
    return-object v2
.end method

.method public static native getDefaultLocale()Ljava/lang/String;
.end method

.method public static getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/ICU;->getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/ICU;->getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/ICU;->getDisplayScriptNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getDisplayScriptNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/icu/ICU;->getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getISO3Country(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getISO3Language(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Llibcore/icu/ICU;->getISOCountriesNative()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    :cond_0
    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static native getISOCountriesNative()[Ljava/lang/String;
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Llibcore/icu/ICU;->getISOLanguagesNative()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    :cond_0
    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static native getISOLanguagesNative()[Ljava/lang/String;
.end method

.method public static native getIcuVersion()Ljava/lang/String;
.end method

.method public static native getScript(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native getTZDataVersion()Ljava/lang/String;
.end method

.method public static native getUnicodeVersion()Ljava/lang/String;
.end method

.method static native initLocaleDataNative(Ljava/lang/String;Llibcore/icu/LocaleData;)Z
.end method

.method public static localeFromIcuLocaleId(Ljava/lang/String;)Ljava/util/Locale;
    .locals 28

    const/16 v23, 0x40

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    sget-object v12, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v21, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v19, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v11, v0, :cond_3

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    add-int/lit8 v23, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/16 v23, 0x0

    array-length v0, v10

    move/from16 v25, v0

    move/from16 v24, v23

    :goto_0
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    aget-object v6, v10, v24

    const-string/jumbo v23, "attribute="

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    const-string/jumbo v23, "attribute="

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v23, "-"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    const/16 v23, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    aget-object v18, v26, v23

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    :cond_0
    const/16 v23, 0x3d

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_2
    add-int/lit8 v23, v24, 0x1

    move/from16 v24, v23

    goto :goto_0

    :cond_2
    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    add-int/lit8 v26, v17, 0x1

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v23, ""

    const/16 v24, 0x0

    aput-object v23, v16, v24

    const-string/jumbo v23, ""

    const/16 v24, 0x1

    aput-object v23, v16, v24

    const-string/jumbo v23, ""

    const/16 v24, 0x2

    aput-object v23, v16, v24

    const-string/jumbo v23, ""

    const/16 v24, 0x3

    aput-object v23, v16, v24

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v11, v0, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Llibcore/icu/ICU;->parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_3
    new-instance v5, Ljava/util/Locale$Builder;

    invoke-direct {v5}, Ljava/util/Locale$Builder;-><init>()V

    const/16 v23, 0x0

    aget-object v23, v16, v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    const/16 v23, 0x2

    aget-object v23, v16, v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/Locale$Builder;->setRegion(Ljava/lang/String;)Ljava/util/Locale$Builder;

    const/16 v23, 0x3

    aget-object v23, v16, v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/Locale$Builder;->setVariant(Ljava/lang/String;)Ljava/util/Locale$Builder;

    const/16 v23, 0x1

    aget-object v23, v16, v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/Locale$Builder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Ljava/util/Locale$Builder;

    goto :goto_4

    :cond_4
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Llibcore/icu/ICU;->parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Ljava/util/Locale$Builder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;

    goto :goto_5

    :cond_6
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Character;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Character;->charValue()C

    move-result v24

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/util/Locale$Builder;->setExtension(CLjava/lang/String;)Ljava/util/Locale$Builder;

    goto :goto_6

    :cond_7
    invoke-virtual {v5}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v23

    return-object v23
.end method

.method public static localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;
    .locals 5

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    invoke-static {v0}, Llibcore/icu/ICU;->localeFromIcuLocaleId(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Locale;

    return-object v2
.end method

.method private static parseLangScriptRegionAndVariants(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/16 v5, 0x5f

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v5, 0x5f

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/16 v5, 0x5f

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v0, v10, :cond_0

    aput-object p0, p1, v9

    :goto_0
    return-void

    :cond_0
    if-ne v1, v10, :cond_4

    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v9

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    aput-object v2, p1, v11

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v8, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_3

    :cond_2
    aput-object v2, p1, v8

    goto :goto_0

    :cond_3
    aput-object v2, p1, v7

    goto :goto_0

    :cond_4
    if-ne v3, v10, :cond_a

    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v9

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    aput-object v2, p1, v11

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v8, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_6

    :cond_5
    aput-object v4, p1, v8

    goto :goto_0

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    aput-object v4, p1, v7

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_9

    :cond_8
    aput-object v2, p1, v8

    aput-object v4, p1, v7

    goto :goto_0

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v7, :cond_8

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v7

    goto :goto_0

    :cond_a
    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v9

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    aput-object v2, p1, v11

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v8

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v7

    goto/16 :goto_0

    :cond_b
    aput-object v2, p1, v8

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v7

    goto/16 :goto_0
.end method

.method public static native setDefaultLocale(Ljava/lang/String;)V
.end method

.method private static native toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static toLowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibcore/icu/ICU;->toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static toUpperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibcore/icu/ICU;->toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
