.class final Landroid/icu/util/CurrencyServiceShim;
.super Landroid/icu/util/Currency$ServiceShim;
.source "CurrencyServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/CurrencyServiceShim$CFService;
    }
.end annotation


# static fields
.field static final service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/util/CurrencyServiceShim$CFService;

    invoke-direct {v0}, Landroid/icu/util/CurrencyServiceShim$CFService;-><init>()V

    sput-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/Currency$ServiceShim;-><init>()V

    return-void
.end method


# virtual methods
.method createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
    .locals 2

    sget-object v1, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v1}, Landroid/icu/impl/ICUService;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/icu/util/Currency;->createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v1, p1}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Currency;

    return-object v0
.end method

.method getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICUService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICUService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method unregister(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    check-cast p1, Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {v0, p1}, Landroid/icu/impl/ICUService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    move-result v0

    return v0
.end method
