.class public final Landroid/icu/util/ULocale;
.super Ljava/lang/Object;
.source "ULocale.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/ULocale$Builder;,
        Landroid/icu/util/ULocale$Category;,
        Landroid/icu/util/ULocale$JDKLocaleHelper;,
        Landroid/icu/util/ULocale$Minimize;,
        Landroid/icu/util/ULocale$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# static fields
.field public static ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type; = null

.field private static final CACHE:Landroid/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache",
            "<",
            "Ljava/util/Locale;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field public static final CANADA:Landroid/icu/util/ULocale;

.field public static final CANADA_FRENCH:Landroid/icu/util/ULocale;

.field private static CANONICALIZE_MAP:[[Ljava/lang/String; = null

.field public static final CHINA:Landroid/icu/util/ULocale;

.field public static final CHINESE:Landroid/icu/util/ULocale;

.field private static final EMPTY_LOCALE:Ljava/util/Locale;

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final ENGLISH:Landroid/icu/util/ULocale;

.field public static final FRANCE:Landroid/icu/util/ULocale;

.field public static final FRENCH:Landroid/icu/util/ULocale;

.field public static final GERMAN:Landroid/icu/util/ULocale;

.field public static final GERMANY:Landroid/icu/util/ULocale;

.field public static final ITALIAN:Landroid/icu/util/ULocale;

.field public static final ITALY:Landroid/icu/util/ULocale;

.field public static final JAPAN:Landroid/icu/util/ULocale;

.field public static final JAPANESE:Landroid/icu/util/ULocale;

.field public static final KOREA:Landroid/icu/util/ULocale;

.field public static final KOREAN:Landroid/icu/util/ULocale;

.field private static final LANG_DIR_STRING:Ljava/lang/String; = "root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-"

.field private static final LOCALE_ATTRIBUTE_KEY:Ljava/lang/String; = "attribute"

.field public static final PRC:Landroid/icu/util/ULocale;

.field public static final PRIVATE_USE_EXTENSION:C = 'x'

.field public static final ROOT:Landroid/icu/util/ULocale;

.field public static final SIMPLIFIED_CHINESE:Landroid/icu/util/ULocale;

.field public static final TAIWAN:Landroid/icu/util/ULocale;

.field public static final TRADITIONAL_CHINESE:Landroid/icu/util/ULocale;

.field public static final UK:Landroid/icu/util/ULocale;

.field private static final UNDEFINED_LANGUAGE:Ljava/lang/String; = "und"

.field private static final UNDEFINED_REGION:Ljava/lang/String; = "ZZ"

.field private static final UNDEFINED_SCRIPT:Ljava/lang/String; = "Zzzz"

.field private static final UNDERSCORE:C = '_'

.field public static final UNICODE_LOCALE_EXTENSION:C = 'u'

.field public static final US:Landroid/icu/util/ULocale;

.field public static VALID_LOCALE:Landroid/icu/util/ULocale$Type; = null

.field private static defaultCategoryLocales:[Ljava/util/Locale; = null

.field private static defaultCategoryULocales:[Landroid/icu/util/ULocale; = null

.field private static defaultLocale:Ljava/util/Locale; = null

.field private static defaultULocale:Landroid/icu/util/ULocale; = null

.field private static nameCache:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x338ef66846d00be1L

.field private static variantsToKeywords:[[Ljava/lang/String;


# instance fields
.field private volatile transient baseLocale:Landroid/icu/impl/locale/BaseLocale;

.field private volatile transient extensions:Landroid/icu/impl/locale/LocaleExtensions;

.field private volatile transient locale:Ljava/util/Locale;

.field private localeID:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/BaseLocale;
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LocaleExtensions;
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x0

    new-instance v6, Landroid/icu/impl/SimpleCache;

    invoke-direct {v6}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v6, Landroid/icu/util/ULocale;->nameCache:Landroid/icu/impl/ICUCache;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "en"

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->ENGLISH:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "fr"

    sget-object v8, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->FRENCH:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "de"

    sget-object v8, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->GERMAN:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "it"

    sget-object v8, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->ITALIAN:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "ja"

    sget-object v8, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->JAPANESE:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "ko"

    sget-object v8, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->KOREAN:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "zh"

    sget-object v8, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->CHINESE:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "zh_Hans"

    invoke-direct {v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v6, Landroid/icu/util/ULocale;->SIMPLIFIED_CHINESE:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "zh_Hant"

    invoke-direct {v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v6, Landroid/icu/util/ULocale;->TRADITIONAL_CHINESE:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "fr_FR"

    sget-object v8, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->FRANCE:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "de_DE"

    sget-object v8, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->GERMANY:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "it_IT"

    sget-object v8, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->ITALY:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "ja_JP"

    sget-object v8, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->JAPAN:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "ko_KR"

    sget-object v8, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->KOREA:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "zh_Hans_CN"

    invoke-direct {v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v6, Landroid/icu/util/ULocale;->CHINA:Landroid/icu/util/ULocale;

    sget-object v6, Landroid/icu/util/ULocale;->CHINA:Landroid/icu/util/ULocale;

    sput-object v6, Landroid/icu/util/ULocale;->PRC:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "zh_Hant_TW"

    invoke-direct {v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v6, Landroid/icu/util/ULocale;->TAIWAN:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "en_GB"

    sget-object v8, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->UK:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "en_US"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "en_CA"

    sget-object v8, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->CANADA:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "fr_CA"

    sget-object v8, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->CANADA_FRENCH:Landroid/icu/util/ULocale;

    new-instance v6, Ljava/util/Locale;

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    invoke-direct {v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Landroid/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, ""

    sget-object v8, Landroid/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v6, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    new-instance v6, Landroid/icu/impl/SimpleCache;

    invoke-direct {v6}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v6, Landroid/icu/util/ULocale;->CACHE:Landroid/icu/impl/SimpleCache;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    sput-object v6, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [Ljava/util/Locale;

    sput-object v6, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [Landroid/icu/util/ULocale;

    sput-object v6, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    sget-object v6, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v6}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v6

    sput-object v6, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v1, v6, v5

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    sget-object v8, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getDefault(Landroid/icu/util/ULocale$Category;)Ljava/util/Locale;

    move-result-object v9

    aput-object v9, v8, v2

    sget-object v8, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    sget-object v9, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aget-object v9, v9, v2

    invoke-static {v9}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v9

    aput-object v9, v8, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object v6, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v6}, Landroid/icu/util/ULocale$JDKLocaleHelper;->isOriginalDefaultLocale(Ljava/util/Locale;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "user.script"

    invoke-static {v6}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    invoke-direct {v6}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v4, v7, v8}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v3

    sget-object v6, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    invoke-direct {v6}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/icu/util/ULocale;->getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    move-result-object v6

    sput-object v6, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    :cond_1
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v1, v6, v5

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    sget-object v8, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    sget-object v9, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    aput-object v9, v8, v2

    sget-object v8, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    sget-object v9, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    aput-object v9, v8, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    new-instance v5, Landroid/icu/util/ULocale$Type;

    invoke-direct {v5, v10}, Landroid/icu/util/ULocale$Type;-><init>(Landroid/icu/util/ULocale$Type;)V

    sput-object v5, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    new-instance v5, Landroid/icu/util/ULocale$Type;

    invoke-direct {v5, v10}, Landroid/icu/util/ULocale$Type;-><init>(Landroid/icu/util/ULocale$Type;)V

    sput-object v5, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    invoke-static {p1, p2, p3, v0}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/util/ULocale;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    iput-object p1, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    return-void
.end method

.method public static acceptLanguage(Ljava/lang/String;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2}, Landroid/icu/util/ULocale;->parseAcceptLanguage(Ljava/lang/String;Z)[Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-object v3

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0, p1, p2}, Landroid/icu/util/ULocale;->acceptLanguage([Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object v2

    return-object v2
.end method

.method public static acceptLanguage(Ljava/lang/String;[Z)Landroid/icu/util/ULocale;
    .locals 1

    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/icu/util/ULocale;->acceptLanguage(Ljava/lang/String;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static acceptLanguage([Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    const/4 v7, 0x1

    aput-boolean v7, p2, v9

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_8

    aget-object v0, p0, v1

    move-object v6, p2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    array-length v7, p1

    if-ge v2, v7, :cond_6

    aget-object v7, p1, v2

    invoke-virtual {v7, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v6, :cond_2

    aput-boolean v9, v6, v9

    :cond_2
    aget-object v7, p1, v2

    return-object v7

    :cond_3
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    aget-object v7, p1, v2

    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    aget-object v7, p1, v2

    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    aget-object v7, p1, v2

    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    aget-object v7, p1, v2

    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    aget-object v7, p1, v2

    invoke-static {v7}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    if-eqz v6, :cond_4

    aput-boolean v9, v6, v9

    :cond_4
    return-object v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/LocaleUtility;->fallback(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_7

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/util/Locale;)V

    :goto_2
    const/4 v6, 0x0

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    return-object v10
.end method

.method public static acceptLanguage([Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 1

    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/icu/util/ULocale;->acceptLanguage([Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 7

    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-static {v4, v5, v6, v2}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private base()Landroid/icu/impl/locale/BaseLocale;
    .locals 6

    iget-object v5, p0, Landroid/icu/util/ULocale;->baseLocale:Landroid/icu/impl/locale/BaseLocale;

    if-nez v5, :cond_1

    const-string/jumbo v4, ""

    move-object v2, v4

    move-object v3, v4

    move-object v0, v4

    sget-object v5, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-virtual {p0, v5}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v1, Landroid/icu/impl/LocaleIDParser;

    iget-object v5, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-static {v0, v3, v2, v4}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/util/ULocale;->baseLocale:Landroid/icu/impl/locale/BaseLocale;

    :cond_1
    iget-object v5, p0, Landroid/icu/util/ULocale;->baseLocale:Landroid/icu/impl/locale/BaseLocale;

    return-object v5
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v4, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v4, p0, v9}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v6, ""

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, ""

    return-object v6

    :cond_0
    invoke-static {}, Landroid/icu/util/ULocale;->initCANONICALIZE_MAP()V

    const/4 v2, 0x0

    :goto_0
    sget-object v6, Landroid/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    sget-object v6, Landroid/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    aget-object v5, v6, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-le v3, v6, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v4, v0}, Landroid/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    aget-object v6, v5, v9

    aget-object v7, v5, v10

    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/LocaleIDParser;->defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    :goto_1
    sget-object v6, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_3

    sget-object v6, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    aget-object v6, v6, v2

    aget-object v6, v6, v8

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v1, 0x1

    sget-object v6, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    aget-object v5, v6, v2

    aget-object v6, v5, v9

    invoke-virtual {v4, v6}, Landroid/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    aget-object v6, v5, v10

    if-eqz v6, :cond_3

    aget-object v6, v5, v10

    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-virtual {v4, v6, v7}, Landroid/icu/impl/LocaleIDParser;->defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "nb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "NY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "nn"

    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v11}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v4}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 3

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-static {p0}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    invoke-direct {v1, v2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method

.method private static createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0, p1, v3, v3}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v3, v3, p2, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-static {p0, p1, p2, v3}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v3, v3, v3, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-static {p2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0, v3, p2, v3}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v3, p1, v3, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    invoke-static {p0, v3, v3, v3}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v3, p1, p2, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_4
    return-object v3
.end method

.method static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x5f

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {p0, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_0
    invoke-static {p1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {p1, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_1
    invoke-static {p2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {p2, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v4, 0x1

    :cond_1
    :goto_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_3

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_b

    invoke-virtual {p3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_2

    const/4 v5, 0x2

    :cond_2
    :goto_3
    if-eqz v4, :cond_d

    const/4 v7, 0x2

    if-ne v5, v7, :cond_c

    invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_4
    invoke-static {p4}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "und"

    invoke-static {v7, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_5
    new-instance v3, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v3, p4}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    :goto_5
    invoke-static {v0, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "und"

    goto :goto_5

    :cond_7
    invoke-static {p4}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v3, :cond_8

    new-instance v3, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v3, p4}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v3}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_9
    invoke-static {p4}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v3, :cond_a

    new-instance v3, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v3, p4}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v3}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v1, v6}, Landroid/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_b
    const/4 v5, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    if-ne v5, v8, :cond_e

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method private extensions()Landroid/icu/impl/locale/LocaleExtensions;
    .locals 13

    const/4 v9, 0x0

    iget-object v8, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    if-nez v8, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v8, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    iput-object v8, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    :cond_0
    :goto_0
    iget-object v8, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    return-object v8

    :cond_1
    new-instance v3, Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v8, "attribute"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "[-_]"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v10, v7

    move v8, v9

    :goto_2
    if-ge v8, v10, :cond_2

    aget-object v6, v7, v8

    :try_start_0
    invoke-virtual {v3, v6}, Landroid/icu/impl/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x2

    if-lt v8, v10, :cond_4

    invoke-static {v4}, Landroid/icu/util/ULocale;->toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/icu/util/ULocale;->toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v3, v0, v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_1
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x75

    if-eq v8, v10, :cond_2

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p0, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "_"

    const-string/jumbo v12, "-"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_2
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v8

    iput-object v8, p0, Landroid/icu/util/ULocale;->extensions:Landroid/icu/impl/locale/LocaleExtensions;

    goto/16 :goto_0
.end method

.method public static forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 4

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;Landroid/icu/impl/locale/ParseStatus;)Landroid/icu/impl/locale/LanguageTag;

    move-result-object v1

    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLanguageTag(Landroid/icu/impl/locale/LanguageTag;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/icu/util/ULocale;->getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    move-result-object v2

    return-object v2
.end method

.method public static forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Landroid/icu/util/ULocale;->CACHE:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v1, p0}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toULocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale;->CACHE:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v1, p0, v0}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public static getAvailableLocales()[Landroid/icu/util/ULocale;
    .locals 1

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault()Landroid/icu/util/ULocale;
    .locals 9

    const-class v4, Landroid/icu/util/ULocale;

    monitor-enter v4

    :try_start_0
    sget-object v3, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    if-nez v3, :cond_0

    sget-object v3, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sput-object v1, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v3

    sput-object v3, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v5

    const/4 v3, 0x0

    array-length v6, v5

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    invoke-virtual {v0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v2

    sget-object v7, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v1, v7, v2

    sget-object v7, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v8

    aput-object v8, v7, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;
    .locals 11

    const-class v6, Landroid/icu/util/ULocale;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v3

    sget-object v5, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    aget-object v5, v5, v3

    if-nez v5, :cond_0

    sget-object v5, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getDefault(Landroid/icu/util/ULocale$Category;)Ljava/util/Locale;

    move-result-object v1

    sget-object v5, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aget-object v5, v5, v3

    invoke-virtual {v5, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v1, v5, v3

    sget-object v5, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v7

    aput-object v7, v5, v3

    :cond_1
    sget-object v5, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    aget-object v5, v5, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v5

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v5, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v5, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sput-object v2, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v5

    sput-object v5, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v7

    const/4 v5, 0x0

    array-length v8, v7

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v0, v7, v5

    invoke-virtual {v0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v4

    sget-object v9, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v2, v9, v4

    sget-object v9, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v10

    aput-object v10, v9, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static getDisplayCountry(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayKeyword(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayKeywordInternal(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/LocaleDisplayNames;->keyDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/icu/text/LocaleDisplayNames;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDisplayLanguage(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/LocaleDisplayNames;->languageDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDisplayLanguageWithDialect(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayLanguageWithDialect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayNameWithDialect(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayNameWithDialect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-static {p1, v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/LocaleDisplayNames;->localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayScript(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayScriptInContext(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayScriptInContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayVariant(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayVariant(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->variantDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFallbackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x5f

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    :cond_3
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_2

    goto :goto_0
.end method

.method public static getISO3Country(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/LocaleIDs;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISO3Language(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/LocaleIDs;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/icu/impl/LocaleIDs;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/icu/impl/LocaleIDs;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;
    .locals 29

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v25 .. v28}, Landroid/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_a

    new-instance v19, Ljava/util/TreeMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Character;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;

    move-result-object v10

    instance-of v0, v10, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    move/from16 v25, v0

    if-eqz v25, :cond_6

    move-object/from16 v23, v10

    check-cast v23, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-virtual/range {v23 .. v23}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Landroid/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_1

    const-string/jumbo v8, "yes"

    :cond_1
    invoke-static {v6, v8}, Landroid/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v25, "va"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    const-string/jumbo v25, "posix"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_2

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "_POSIX"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_2
    invoke-virtual/range {v19 .. v21}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual/range {v23 .. v23}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v25

    if-lez v25, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_4

    const/16 v25, 0x2d

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string/jumbo v25, "attribute"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v10}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v25, "@"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    const/4 v13, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    if-eqz v13, :cond_8

    const-string/jumbo v25, ";"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v25, "="

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const/4 v13, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_a
    new-instance v25, Landroid/icu/util/ULocale;

    move-object/from16 v0, v25

    invoke-direct {v0, v12}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v25
.end method

.method public static getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/icu/impl/LocaleIDParser;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKeywords(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getKeywords()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    const-string/jumbo v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    sget-object v2, Landroid/icu/util/ULocale;->nameCache:Landroid/icu/impl/ICUCache;

    invoke-interface {v2, v1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v2, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v2, v1}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/icu/util/ULocale;->nameCache:Landroid/icu/impl/ICUCache;

    invoke-interface {v2, v1, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v0

    :cond_3
    invoke-static {p0}, Landroid/icu/util/ULocale;->getShortestSubtagLength(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move-object v1, p0

    goto :goto_0
.end method

.method public static getScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getShortestSubtagLength(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-eq v5, v6, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    if-ge v4, v1, :cond_2

    move v1, v4

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public static getVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initCANONICALIZE_MAP()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v2, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    if-nez v2, :cond_1

    const/16 v2, 0x32

    new-array v0, v2, [[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "C"

    aput-object v3, v2, v5

    const-string/jumbo v3, "en_US_POSIX"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    aput-object v2, v0, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "art_LOJBAN"

    aput-object v3, v2, v5

    const-string/jumbo v3, "jbo"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    aput-object v2, v0, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "az_AZ_CYRL"

    aput-object v3, v2, v5

    const-string/jumbo v3, "az_Cyrl_AZ"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    aput-object v2, v0, v7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "az_AZ_LATN"

    aput-object v3, v2, v5

    const-string/jumbo v3, "az_Latn_AZ"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    aput-object v2, v0, v8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "ca_ES_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "ca_ES"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "ESP"

    aput-object v3, v2, v8

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "cel_GAULISH"

    aput-object v3, v2, v5

    const-string/jumbo v3, "cel__GAULISH"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "de_1901"

    aput-object v3, v2, v5

    const-string/jumbo v3, "de__1901"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "de_1906"

    aput-object v3, v2, v5

    const-string/jumbo v3, "de__1906"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "de__PHONEBOOK"

    aput-object v3, v2, v5

    const-string/jumbo v3, "de"

    aput-object v3, v2, v6

    const-string/jumbo v3, "collation"

    aput-object v3, v2, v7

    const-string/jumbo v3, "phonebook"

    aput-object v3, v2, v8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "de_AT_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "de_AT"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "ATS"

    aput-object v3, v2, v8

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "de_DE_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "de_DE"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "DEM"

    aput-object v3, v2, v8

    const/16 v3, 0xa

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "de_LU_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "de_LU"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "EUR"

    aput-object v3, v2, v8

    const/16 v3, 0xb

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "el_GR_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "el_GR"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "GRD"

    aput-object v3, v2, v8

    const/16 v3, 0xc

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "en_BOONT"

    aput-object v3, v2, v5

    const-string/jumbo v3, "en__BOONT"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0xd

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "en_SCOUSE"

    aput-object v3, v2, v5

    const-string/jumbo v3, "en__SCOUSE"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0xe

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "en_BE_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "en_BE"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "BEF"

    aput-object v3, v2, v8

    const/16 v3, 0xf

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "en_IE_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "en_IE"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "IEP"

    aput-object v3, v2, v8

    const/16 v3, 0x10

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "es__TRADITIONAL"

    aput-object v3, v2, v5

    const-string/jumbo v3, "es"

    aput-object v3, v2, v6

    const-string/jumbo v3, "collation"

    aput-object v3, v2, v7

    const-string/jumbo v3, "traditional"

    aput-object v3, v2, v8

    const/16 v3, 0x11

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "es_ES_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "es_ES"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "ESP"

    aput-object v3, v2, v8

    const/16 v3, 0x12

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "eu_ES_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "eu_ES"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "ESP"

    aput-object v3, v2, v8

    const/16 v3, 0x13

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "fi_FI_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "fi_FI"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "FIM"

    aput-object v3, v2, v8

    const/16 v3, 0x14

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "fr_BE_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "fr_BE"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "BEF"

    aput-object v3, v2, v8

    const/16 v3, 0x15

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "fr_FR_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "fr_FR"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "FRF"

    aput-object v3, v2, v8

    const/16 v3, 0x16

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "fr_LU_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "fr_LU"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "LUF"

    aput-object v3, v2, v8

    const/16 v3, 0x17

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "ga_IE_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "ga_IE"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "IEP"

    aput-object v3, v2, v8

    const/16 v3, 0x18

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "gl_ES_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "gl_ES"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "ESP"

    aput-object v3, v2, v8

    const/16 v3, 0x19

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "hi__DIRECT"

    aput-object v3, v2, v5

    const-string/jumbo v3, "hi"

    aput-object v3, v2, v6

    const-string/jumbo v3, "collation"

    aput-object v3, v2, v7

    const-string/jumbo v3, "direct"

    aput-object v3, v2, v8

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "it_IT_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "it_IT"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "ITL"

    aput-object v3, v2, v8

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "ja_JP_TRADITIONAL"

    aput-object v3, v2, v5

    const-string/jumbo v3, "ja_JP"

    aput-object v3, v2, v6

    const-string/jumbo v3, "calendar"

    aput-object v3, v2, v7

    const-string/jumbo v3, "japanese"

    aput-object v3, v2, v8

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "nl_BE_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "nl_BE"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "BEF"

    aput-object v3, v2, v8

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "nl_NL_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "nl_NL"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "NLG"

    aput-object v3, v2, v8

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "pt_PT_PREEURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "pt_PT"

    aput-object v3, v2, v6

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v7

    const-string/jumbo v3, "PTE"

    aput-object v3, v2, v8

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sl_ROZAJ"

    aput-object v3, v2, v5

    const-string/jumbo v3, "sl__ROZAJ"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x20

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sr_SP_CYRL"

    aput-object v3, v2, v5

    const-string/jumbo v3, "sr_Cyrl_RS"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x21

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sr_SP_LATN"

    aput-object v3, v2, v5

    const-string/jumbo v3, "sr_Latn_RS"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x22

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sr_YU_CYRILLIC"

    aput-object v3, v2, v5

    const-string/jumbo v3, "sr_Cyrl_RS"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x23

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "th_TH_TRADITIONAL"

    aput-object v3, v2, v5

    const-string/jumbo v3, "th_TH"

    aput-object v3, v2, v6

    const-string/jumbo v3, "calendar"

    aput-object v3, v2, v7

    const-string/jumbo v3, "buddhist"

    aput-object v3, v2, v8

    const/16 v3, 0x24

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "uz_UZ_CYRILLIC"

    aput-object v3, v2, v5

    const-string/jumbo v3, "uz_Cyrl_UZ"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x25

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "uz_UZ_CYRL"

    aput-object v3, v2, v5

    const-string/jumbo v3, "uz_Cyrl_UZ"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x26

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "uz_UZ_LATN"

    aput-object v3, v2, v5

    const-string/jumbo v3, "uz_Latn_UZ"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x27

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "zh_CHS"

    aput-object v3, v2, v5

    const-string/jumbo v3, "zh_Hans"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x28

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "zh_CHT"

    aput-object v3, v2, v5

    const-string/jumbo v3, "zh_Hant"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x29

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "zh_GAN"

    aput-object v3, v2, v5

    const-string/jumbo v3, "zh__GAN"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x2a

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "zh_GUOYU"

    aput-object v3, v2, v5

    const-string/jumbo v3, "zh"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x2b

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "zh_HAKKA"

    aput-object v3, v2, v5

    const-string/jumbo v3, "zh__HAKKA"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x2c

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "zh_MIN"

    aput-object v3, v2, v5

    const-string/jumbo v3, "zh__MIN"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x2d

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "zh_MIN_NAN"

    aput-object v3, v2, v5

    const-string/jumbo v3, "zh__MINNAN"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x2e

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "zh_WUU"

    aput-object v3, v2, v5

    const-string/jumbo v3, "zh__WUU"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x2f

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "zh_XIANG"

    aput-object v3, v2, v5

    const-string/jumbo v3, "zh__XIANG"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x30

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "zh_YUE"

    aput-object v3, v2, v5

    const-string/jumbo v3, "zh__YUE"

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    aput-object v4, v2, v8

    const/16 v3, 0x31

    aput-object v2, v0, v3

    const-class v3, Landroid/icu/util/ULocale;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    if-nez v2, :cond_0

    sput-object v0, Landroid/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    :cond_1
    sget-object v2, Landroid/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    if-nez v2, :cond_3

    new-array v1, v8, [[Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "EURO"

    aput-object v3, v2, v5

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v6

    const-string/jumbo v3, "EUR"

    aput-object v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "PINYIN"

    aput-object v3, v2, v5

    const-string/jumbo v3, "collation"

    aput-object v3, v2, v6

    const-string/jumbo v3, "pinyin"

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "STROKE"

    aput-object v3, v2, v5

    const-string/jumbo v3, "collation"

    aput-object v3, v2, v6

    const-string/jumbo v3, "stroke"

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    const-class v3, Landroid/icu/util/ULocale;

    monitor-enter v3

    :try_start_1
    sget-object v2, Landroid/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    if-nez v2, :cond_2

    sput-object v1, Landroid/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit v3

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static isEmptyString(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "android/icu/impl/data/icudt56b"

    const-string/jumbo v3, "likelySubtags"

    invoke-static {v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return-object v2
.end method

.method private static lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static minimizeSubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static minimizeSubtags(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/util/ULocale;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    iget-object v9, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v9, v7}, Landroid/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    aget-object v2, v7, v11

    const/4 v9, 0x1

    aget-object v4, v7, v9

    const/4 v9, 0x2

    aget-object v3, v7, v9

    const/4 v5, 0x0

    iget-object v9, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_0

    iget-object v9, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-static {v2, v4, v3, v10}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    return-object p0

    :cond_1
    invoke-static {v2, v10, v10, v10}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v2, v10, v10, v5}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Landroid/icu/util/ULocale;

    invoke-direct {v9, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v9

    :cond_2
    sget-object v9, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    if-ne p1, v9, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v2, v10, v3, v10}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v2, v10, v3, v5}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Landroid/icu/util/ULocale;

    invoke-direct {v9, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v9

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v2, v4, v10, v10}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v2, v4, v10, v5}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Landroid/icu/util/ULocale;

    invoke-direct {v9, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v9

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v2, v4, v10, v10}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v2, v4, v10, v5}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Landroid/icu/util/ULocale;

    invoke-direct {v9, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v9

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v2, v10, v3, v10}, Landroid/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v2, v10, v3, v5}, Landroid/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Landroid/icu/util/ULocale;

    invoke-direct {v9, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v9

    :cond_6
    return-object p0
.end method

.method static parseAcceptLanguage(Ljava/lang/String;Z)[Landroid/icu/util/ULocale;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_2f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v15, :pswitch_data_0

    :cond_0
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_2b

    new-instance v17, Ljava/text/ParseException;

    const-string/jumbo v18, "Invalid Accept-Language"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v17

    :pswitch_0
    const/16 v17, 0x41

    move/from16 v0, v17

    if-gt v0, v3, :cond_2

    const/16 v17, 0x5a

    move/from16 v0, v17

    if-gt v3, v0, :cond_2

    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    const/16 v16, 0x0

    goto :goto_1

    :cond_2
    const/16 v17, 0x61

    move/from16 v0, v17

    if-gt v0, v3, :cond_3

    const/16 v17, 0x7a

    move/from16 v0, v17

    if-le v3, v0, :cond_1

    :cond_3
    const/16 v17, 0x2a

    move/from16 v0, v17

    if-ne v3, v0, :cond_4

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v15, 0x2

    goto :goto_1

    :cond_4
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    const/16 v17, 0x9

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    const/4 v15, -0x1

    goto :goto_1

    :pswitch_1
    const/16 v17, 0x41

    move/from16 v0, v17

    if-gt v0, v3, :cond_6

    const/16 v17, 0x5a

    move/from16 v0, v17

    if-gt v3, v0, :cond_6

    :cond_5
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 v17, 0x61

    move/from16 v0, v17

    if-gt v0, v3, :cond_7

    const/16 v17, 0x7a

    move/from16 v0, v17

    if-le v3, v0, :cond_5

    :cond_7
    const/16 v17, 0x2d

    move/from16 v0, v17

    if-ne v3, v0, :cond_8

    const/16 v16, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const/16 v17, 0x5f

    move/from16 v0, v17

    if-ne v3, v0, :cond_a

    if-eqz p1, :cond_9

    const/16 v16, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    const/4 v15, -0x1

    goto/16 :goto_1

    :cond_a
    const/16 v17, 0x30

    move/from16 v0, v17

    if-gt v0, v3, :cond_c

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v3, v0, :cond_c

    if-eqz v16, :cond_b

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    const/4 v15, -0x1

    goto/16 :goto_1

    :cond_c
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v3, v0, :cond_d

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_d
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v3, v0, :cond_e

    const/16 v17, 0x9

    move/from16 v0, v17

    if-ne v3, v0, :cond_f

    :cond_e
    const/4 v15, 0x3

    goto/16 :goto_1

    :cond_f
    const/16 v17, 0x3b

    move/from16 v0, v17

    if-ne v3, v0, :cond_10

    const/4 v15, 0x4

    goto/16 :goto_1

    :cond_10
    const/4 v15, -0x1

    goto/16 :goto_1

    :pswitch_2
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v3, v0, :cond_11

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_11
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v3, v0, :cond_12

    const/16 v17, 0x9

    move/from16 v0, v17

    if-ne v3, v0, :cond_13

    :cond_12
    const/4 v15, 0x3

    goto/16 :goto_1

    :cond_13
    const/16 v17, 0x3b

    move/from16 v0, v17

    if-ne v3, v0, :cond_14

    const/4 v15, 0x4

    goto/16 :goto_1

    :cond_14
    const/4 v15, -0x1

    goto/16 :goto_1

    :pswitch_3
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v3, v0, :cond_15

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_15
    const/16 v17, 0x3b

    move/from16 v0, v17

    if-ne v3, v0, :cond_16

    const/4 v15, 0x4

    goto/16 :goto_1

    :cond_16
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    const/16 v17, 0x9

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    const/4 v15, -0x1

    goto/16 :goto_1

    :pswitch_4
    const/16 v17, 0x71

    move/from16 v0, v17

    if-ne v3, v0, :cond_17

    const/4 v15, 0x5

    goto/16 :goto_1

    :cond_17
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    const/16 v17, 0x9

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    const/4 v15, -0x1

    goto/16 :goto_1

    :pswitch_5
    const/16 v17, 0x3d

    move/from16 v0, v17

    if-ne v3, v0, :cond_18

    const/4 v15, 0x6

    goto/16 :goto_1

    :cond_18
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    const/16 v17, 0x9

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    const/4 v15, -0x1

    goto/16 :goto_1

    :pswitch_6
    const/16 v17, 0x30

    move/from16 v0, v17

    if-ne v3, v0, :cond_19

    const/4 v12, 0x0

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v15, 0x7

    goto/16 :goto_1

    :cond_19
    const/16 v17, 0x31

    move/from16 v0, v17

    if-ne v3, v0, :cond_1a

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v15, 0x7

    goto/16 :goto_1

    :cond_1a
    const/16 v17, 0x2e

    move/from16 v0, v17

    if-ne v3, v0, :cond_1c

    if-eqz p1, :cond_1b

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v15, 0x8

    goto/16 :goto_1

    :cond_1b
    const/4 v15, -0x1

    goto/16 :goto_1

    :cond_1c
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    const/16 v17, 0x9

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    const/4 v15, -0x1

    goto/16 :goto_1

    :pswitch_7
    const/16 v17, 0x2e

    move/from16 v0, v17

    if-ne v3, v0, :cond_1d

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v15, 0x8

    goto/16 :goto_1

    :cond_1d
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v3, v0, :cond_1e

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_1e
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v3, v0, :cond_1f

    const/16 v17, 0x9

    move/from16 v0, v17

    if-ne v3, v0, :cond_20

    :cond_1f
    const/16 v15, 0xa

    goto/16 :goto_1

    :cond_20
    const/4 v15, -0x1

    goto/16 :goto_1

    :pswitch_8
    const/16 v17, 0x30

    move/from16 v0, v17

    if-le v0, v3, :cond_21

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v3, v0, :cond_24

    :cond_21
    if-eqz v12, :cond_22

    const/16 v17, 0x30

    move/from16 v0, v17

    if-eq v3, v0, :cond_22

    if-eqz p1, :cond_23

    :cond_22
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v15, 0x9

    goto/16 :goto_1

    :cond_23
    const/4 v15, -0x1

    goto/16 :goto_1

    :cond_24
    const/4 v15, -0x1

    goto/16 :goto_1

    :pswitch_9
    const/16 v17, 0x30

    move/from16 v0, v17

    if-gt v0, v3, :cond_26

    const/16 v17, 0x39

    move/from16 v0, v17

    if-gt v3, v0, :cond_26

    if-eqz v12, :cond_25

    const/16 v17, 0x30

    move/from16 v0, v17

    if-eq v3, v0, :cond_25

    const/4 v15, -0x1

    goto/16 :goto_1

    :cond_25
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_26
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v3, v0, :cond_27

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_27
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v3, v0, :cond_28

    const/16 v17, 0x9

    move/from16 v0, v17

    if-ne v3, v0, :cond_29

    :cond_28
    const/16 v15, 0xa

    goto/16 :goto_1

    :cond_29
    const/4 v15, -0x1

    goto/16 :goto_1

    :pswitch_a
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v3, v0, :cond_2a

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_2a
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    const/16 v17, 0x9

    move/from16 v0, v17

    if-eq v3, v0, :cond_0

    const/4 v15, -0x1

    goto/16 :goto_1

    :cond_2b
    if-eqz v5, :cond_2e

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-eqz v17, :cond_2c

    :try_start_0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    :goto_2
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v17, v10, v18

    if-lez v17, :cond_2c

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    :cond_2c
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x2a

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2d

    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v14

    new-instance v4, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;

    invoke-direct {v4, v10, v11, v14}, Landroid/icu/util/ULocale$1ULocaleAcceptLanguageQ;-><init>(DI)V

    new-instance v17, Landroid/icu/util/ULocale;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v15, 0x0

    :cond_2e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_2f
    if-eqz v15, :cond_30

    new-instance v17, Ljava/text/ParseException;

    const-string/jumbo v18, "Invalid AcceptlLanguage"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v17

    :cond_30
    invoke-virtual {v7}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-virtual {v7}, Ljava/util/TreeMap;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Landroid/icu/util/ULocale;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/icu/util/ULocale;

    return-object v2

    nop

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static parseTagString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v2, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v2, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "und"

    aput-object v6, p1, v7

    :goto_0
    const-string/jumbo v6, "Zzzz"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, ""

    aput-object v6, p1, v8

    :goto_1
    const-string/jumbo v6, "ZZ"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, ""

    aput-object v6, p1, v9

    :goto_2
    invoke-virtual {v2}, Landroid/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0

    :cond_1
    aput-object v1, p1, v7

    goto :goto_0

    :cond_2
    aput-object v4, p1, v8

    goto :goto_1

    :cond_3
    aput-object v3, p1, v9

    goto :goto_2

    :cond_4
    const/16 v6, 0x40

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_5
    return v0
.end method

.method public static declared-synchronized setDefault(Landroid/icu/util/ULocale$Category;Landroid/icu/util/ULocale;)V
    .locals 4

    const-class v3, Landroid/icu/util/ULocale;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v0

    sget-object v2, Landroid/icu/util/ULocale;->defaultCategoryULocales:[Landroid/icu/util/ULocale;

    aput-object p1, v2, v0

    sget-object v2, Landroid/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v1, v2, v0

    invoke-static {p0, v1}, Landroid/icu/util/ULocale$JDKLocaleHelper;->setDefault(Landroid/icu/util/ULocale$Category;Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized setDefault(Landroid/icu/util/ULocale;)V
    .locals 5

    const-class v2, Landroid/icu/util/ULocale;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    sget-object v1, Landroid/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    sput-object p0, Landroid/icu/util/ULocale;->defaultULocale:Landroid/icu/util/ULocale;

    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v3

    const/4 v1, 0x0

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    invoke-static {v0, p0}, Landroid/icu/util/ULocale;->setDefault(Landroid/icu/util/ULocale$Category;Landroid/icu/util/ULocale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/icu/impl/locale/KeyTypeData;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "[0-9a-zA-Z]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1}, Landroid/icu/impl/locale/KeyTypeData;->toLegacyType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "[0-9a-zA-Z]+([_/\\-][0-9a-zA-Z]+)*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/icu/impl/locale/KeyTypeData;->toBcpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1}, Landroid/icu/impl/locale/KeyTypeData;->toBcpType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public compareTo(Landroid/icu/util/ULocale;)I
    .locals 10

    const/4 v7, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v2

    if-nez v5, :cond_4

    if-nez v2, :cond_3

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-gez v0, :cond_b

    const/4 v7, -0x1

    :cond_2
    :goto_1
    return v7

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v6, :cond_9

    if-nez v3, :cond_8

    const/4 v0, 0x0

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v0, 0x1

    :cond_7
    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_8
    const/4 v0, -0x1

    goto :goto_2

    :cond_9
    if-nez v3, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_b
    if-lez v0, :cond_2

    const/4 v7, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->compareTo(Landroid/icu/util/ULocale;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Landroid/icu/util/ULocale;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    check-cast p1, Landroid/icu/util/ULocale;

    iget-object v1, p1, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterOrientation()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

    const-string/jumbo v1, "layout"

    const-string/jumbo v2, "characters"

    invoke-static {v0, p0, v1, v2}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayCountryInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayKeywordValue(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/icu/util/ULocale;->getDisplayKeywordValueInternal(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguage()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguage(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguageWithDialect()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguageWithDialect(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/icu/util/ULocale;->getDisplayLanguageInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayNameInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNameWithDialect()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNameWithDialect(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayNameWithDialectInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScript()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScript(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScriptInContext()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScriptInContext(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayScriptInContextInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVariant()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVariant(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/util/ULocale;->getDisplayVariantInternal(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(C)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/icu/impl/locale/LocaleExtensions;->isValidKey(C)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid extension key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/LocaleExtensions;->getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFallback()Landroid/icu/util/ULocale;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/util/Locale;

    invoke-direct {v1, v2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method

.method public getISO3Country()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getISO3Language()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getKeywords(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineOrientation()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

    const-string/jumbo v1, "layout"

    const-string/jumbo v2, "lines"

    invoke-static {v0, p0, v1, v2}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/icu/impl/locale/LocaleExtensions;->isValidUnicodeLocaleKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Unicode locale key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRightToLeft()Z
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    return v7

    :cond_0
    const-string/jumbo v5, "root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const-string/jumbo v5, "root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    return v7

    :pswitch_1
    return v7

    :pswitch_2
    const/4 v5, 0x1

    return v5

    :cond_2
    invoke-static {v3}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/icu/lang/UScript;->isRightToLeft(I)Z

    move-result v5

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 3

    new-instance v1, Landroid/icu/util/ULocale;

    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    invoke-direct {v1, v2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 14

    invoke-direct {p0}, Landroid/icu/util/ULocale;->base()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-direct {p0}, Landroid/icu/util/ULocale;->extensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object v3

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "POSIX"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, ""

    invoke-static {v10, v11, v12, v13}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    const-string/jumbo v10, "va"

    invoke-virtual {v3, v10}, Landroid/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    new-instance v4, Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v4}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    :try_start_0
    sget-object v10, Landroid/icu/impl/locale/BaseLocale;->ROOT:Landroid/icu/impl/locale/BaseLocale;

    invoke-virtual {v4, v10, v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    const-string/jumbo v10, "va"

    const-string/jumbo v11, "posix"

    invoke-virtual {v4, v10, v11}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v4}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    invoke-static {v0, v3}, Landroid/icu/impl/locale/LanguageTag;->parseLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/LanguageTag;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v9}, Landroid/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    const-string/jumbo v10, "-"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v9}, Landroid/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    const-string/jumbo v10, "-"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v9}, Landroid/icu/impl/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v10, "-"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    :cond_4
    invoke-virtual {v9}, Landroid/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v10, "-"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Landroid/icu/impl/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    const-string/jumbo v10, "-"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v10, "x"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/icu/impl/locale/LanguageTag;->canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public toLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toLocale(Landroid/icu/util/ULocale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    :cond_0
    iget-object v0, p0, Landroid/icu/util/ULocale;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-object v0
.end method
