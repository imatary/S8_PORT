.class public Landroid/icu/util/Currency;
.super Landroid/icu/util/MeasureUnit;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/Currency$CurrencyNameResultHandler;,
        Landroid/icu/util/Currency$CurrencyStringInfo;,
        Landroid/icu/util/Currency$CurrencyUsage;,
        Landroid/icu/util/Currency$EquivalenceRelation;,
        Landroid/icu/util/Currency$ServiceShim;
    }
.end annotation


# static fields
.field private static ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static ALL_TENDER_CODES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final EQUIVALENT_CURRENCY_SYMBOLS:Landroid/icu/util/Currency$EquivalenceRelation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/util/Currency$EquivalenceRelation",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EUR_STR:Ljava/lang/String; = "EUR"

.field public static final LONG_NAME:I = 0x1

.field public static final PLURAL_LONG_NAME:I = 0x2

.field private static final POW10:[I

.field public static final SYMBOL_NAME:I = 0x0

.field private static final UND:Landroid/icu/util/ULocale;

.field private static final currencyCodeCache:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x510bc147b5e8c814L

.field private static shim:Landroid/icu/util/Currency$ServiceShim;


# instance fields
.field private final isoCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "currency"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/util/Currency;->DEBUG:Z

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/util/Currency;->CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache;

    new-instance v0, Landroid/icu/util/Currency$EquivalenceRelation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;-><init>(Landroid/icu/util/Currency$EquivalenceRelation;)V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "\u00a5"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\uffe5"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "$"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\ufe69"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\uff04"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "\u20a8"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u20b9"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "\u00a3"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u20a4"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    sput-object v0, Landroid/icu/util/Currency;->EQUIVALENT_CURRENCY_SYMBOLS:Landroid/icu/util/Currency$EquivalenceRelation;

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/util/Currency;->currencyCodeCache:Landroid/icu/impl/ICUCache;

    new-instance v0, Landroid/icu/util/ULocale;

    const-string/jumbo v1, "und"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/Currency;->UND:Landroid/icu/util/ULocale;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/util/Currency;->POW10:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "currency"

    invoke-direct {p0, v0, p1}, Landroid/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/icu/util/Currency;->isoCode:Ljava/lang/String;

    return-void
.end method

.method static createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "EURO"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "EUR"

    invoke-static {v6}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v6

    return-object v6

    :cond_0
    sget-object v6, Landroid/icu/util/Currency;->currencyCodeCache:Landroid/icu/impl/ICUCache;

    invoke-interface {v6, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v2

    invoke-static {v1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, "PREEURO"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v6, "EUR"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    return-object v8

    :cond_1
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    sget-object v6, Landroid/icu/util/Currency;->currencyCodeCache:Landroid/icu/impl/ICUCache;

    invoke-interface {v6, p0, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v6

    return-object v6

    :cond_4
    return-object v8
.end method

.method private static declared-synchronized getAllCurrenciesAsSet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v3, Landroid/icu/util/Currency;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Landroid/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-object v0

    :cond_1
    :try_start_1
    sget-object v2, Landroid/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized getAllTenderCurrencies()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v3, Landroid/icu/util/Currency;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/Currency;->getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Landroid/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    return-object v0

    :cond_1
    :try_start_1
    sget-object v2, Landroid/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getAvailableCurrencies()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/Currency;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v2

    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method public static getAvailableCurrencyCodes(Landroid/icu/util/ULocale;Ljava/util/Date;)[Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/Currency;->getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static getAvailableCurrencyCodes(Ljava/util/Locale;Ljava/util/Date;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/util/Currency;->getAvailableCurrencyCodes(Landroid/icu/util/ULocale;Ljava/util/Date;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    invoke-virtual {v0}, Landroid/icu/util/Currency$ServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    invoke-virtual {v0}, Landroid/icu/util/Currency$ServiceShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
    .locals 2

    const-string/jumbo v1, "currency"

    invoke-virtual {p0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/icu/util/Currency;->createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v1

    return-object v1

    :cond_1
    sget-object v1, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    invoke-virtual {v1, p0}, Landroid/icu/util/Currency$ServiceShim;->createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The input currency code is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Landroid/icu/util/Currency;->isAlpha3Code(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The input currency code is not 3-letter alphabetic code."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "currency"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Currency;

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/util/Currency;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v4, "currency"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v4

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Landroid/icu/util/Currency;->getAllTenderCurrencies()Ljava/util/List;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4

    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/icu/util/Currency;->UND:Landroid/icu/util/ULocale;

    invoke-virtual {v4, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v4

    :cond_2
    invoke-static {p1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->now()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/Currency;->getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v4

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method private static getShim()Landroid/icu/util/Currency$ServiceShim;
    .locals 4

    sget-object v2, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "android.icu.util.CurrencyServiceShim"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Currency$ServiceShim;

    sput-object v2, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v2, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    return-object v2

    :catch_0
    move-exception v1

    sget-boolean v2, Landroid/icu/util/Currency;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static isAlpha3Code(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_2

    const/16 v2, 0x61

    if-ge v0, v2, :cond_2

    :cond_1
    return v3

    :cond_2
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public static isAvailable(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/icu/util/Currency;->isAlpha3Code(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v4

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "To is before from"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/icu/util/Currency;->getAllCurrenciesAsSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v4

    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    const/4 v3, 0x1

    return v3

    :cond_3
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public static parse(Landroid/icu/util/ULocale;Ljava/lang/String;ILjava/text/ParsePosition;)Ljava/lang/String;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v7, Landroid/icu/util/Currency;->CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v7, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v0, Landroid/icu/impl/TextTrieMap;

    invoke-direct {v0, v8}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    new-instance v1, Landroid/icu/impl/TextTrieMap;

    invoke-direct {v1, v10}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v2}, Landroid/icu/util/Currency;->setupCurrencyTrieVec(Landroid/icu/util/ULocale;Ljava/util/List;)V

    sget-object v7, Landroid/icu/util/Currency;->CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v7, p0, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TextTrieMap;

    new-instance v3, Landroid/icu/util/Currency$CurrencyNameResultHandler;

    invoke-direct {v3, v9}, Landroid/icu/util/Currency$CurrencyNameResultHandler;-><init>(Landroid/icu/util/Currency$CurrencyNameResultHandler;)V

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {v0, p1, v7, v3}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    invoke-virtual {v3}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestCurrencyISOCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    move-result v5

    if-eq p2, v8, :cond_1

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TextTrieMap;

    new-instance v3, Landroid/icu/util/Currency$CurrencyNameResultHandler;

    invoke-direct {v3, v9}, Landroid/icu/util/Currency$CurrencyNameResultHandler;-><init>(Landroid/icu/util/Currency$CurrencyNameResultHandler;)V

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {v1, p1, v7, v3}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    invoke-virtual {v3}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    move-result v7

    if-le v7, v5, :cond_1

    invoke-virtual {v3}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestCurrencyISOCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    move-result v5

    :cond_1
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    add-int v7, v6, v5

    invoke-virtual {p3, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v4
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/util/Currency;->isoCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public static registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroid/icu/util/Currency;->getShim()Landroid/icu/util/Currency$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/util/Currency$ServiceShim;->registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static setupCurrencyTrieVec(Landroid/icu/util/ULocale;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/TextTrieMap;

    const/4 v10, 0x1

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/impl/TextTrieMap;

    invoke-static {p0}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/CurrencyDisplayNames;->symbolMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v10, Landroid/icu/util/Currency;->EQUIVALENT_CURRENCY_SYMBOLS:Landroid/icu/util/Currency$EquivalenceRelation;

    invoke-virtual {v10, v8}, Landroid/icu/util/Currency$EquivalenceRelation;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v10, Landroid/icu/util/Currency$CurrencyStringInfo;

    invoke-direct {v10, v4, v8}, Landroid/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2, v10}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/icu/text/CurrencyDisplayNames;->nameMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v10, Landroid/icu/util/Currency$CurrencyStringInfo;

    invoke-direct {v10, v4, v5}, Landroid/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5, v10}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static unregister(Ljava/lang/Object;)Z
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "registryKey must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    invoke-virtual {v0, p0}, Landroid/icu/util/Currency$ServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;

    iget-object v1, p0, Landroid/icu/util/Currency;->type:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFractionDigits()I
    .locals 1

    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v0

    return v0
.end method

.method public getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I
    .locals 3

    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object v0

    iget v2, v0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    return v2
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/util/Currency;->getName(Ljava/util/Locale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Currency;->getName(Ljava/util/Locale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    if-eqz p4, :cond_1

    aput-boolean v2, p4, v2

    :cond_1
    invoke-static {p1}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/icu/text/CurrencyDisplayNames;->getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bad name style: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz p3, :cond_1

    aput-boolean v2, p3, v2

    :cond_1
    invoke-static {p1}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object v0

    if-nez p2, :cond_2

    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyDisplayNames;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    iget-object v1, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyDisplayNames;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getName(Ljava/util/Locale;ILjava/lang/String;[Z)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/util/Locale;I[Z)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCode()I
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v5, "android/icu/impl/data/icudt56b"

    const-string/jumbo v6, "currencyNumericCodes"

    sget-object v7, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string/jumbo v5, "codeMap"

    invoke-virtual {v0, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    iget-object v5, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getInt()I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getRoundingIncrement()D
    .locals 2

    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D
    .locals 8

    const-wide/16 v6, 0x0

    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Landroid/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object v2

    iget v1, v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->roundingIncrement:I

    if-nez v1, :cond_0

    return-wide v6

    :cond_0
    iget v0, v2, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    if-ltz v0, :cond_1

    sget-object v4, Landroid/icu/util/Currency;->POW10:[I

    array-length v4, v4

    if-lt v0, v4, :cond_2

    :cond_1
    return-wide v6

    :cond_2
    int-to-double v4, v1

    sget-object v6, Landroid/icu/util/Currency;->POW10:[I

    aget v6, v6, v0

    int-to-double v6, v6

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    return-object v0
.end method
