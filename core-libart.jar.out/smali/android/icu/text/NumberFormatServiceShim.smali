.class Landroid/icu/text/NumberFormatServiceShim;
.super Landroid/icu/text/NumberFormat$NumberFormatShim;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NumberFormatServiceShim$NFFactory;,
        Landroid/icu/text/NumberFormatServiceShim$NFService;
    }
.end annotation


# static fields
.field private static service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/text/NumberFormatServiceShim$NFService;

    invoke-direct {v0}, Landroid/icu/text/NumberFormatServiceShim$NFService;-><init>()V

    sput-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/NumberFormat$NumberFormatShim;-><init>()V

    return-void
.end method


# virtual methods
.method createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .locals 7

    const/4 v4, 0x1

    new-array v0, v4, [Landroid/icu/util/ULocale;

    sget-object v3, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v3, p1, p2, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NumberFormat;

    if-nez v1, :cond_0

    new-instance v3, Ljava/util/MissingResourceException;

    const-string/jumbo v4, "Unable to construct NumberFormat"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NumberFormat;

    if-eq p2, v4, :cond_1

    const/4 v3, 0x5

    if-ne p2, v3, :cond_3

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    :cond_2
    const/4 v3, 0x0

    aget-object v2, v0, v3

    invoke-virtual {v1, v2, v2}, Landroid/icu/text/NumberFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-object v1

    :cond_3
    const/4 v3, 0x6

    if-ne p2, v3, :cond_2

    goto :goto_0
.end method

.method getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    new-instance v1, Landroid/icu/text/NumberFormatServiceShim$NFFactory;

    invoke-direct {v1, p1}, Landroid/icu/text/NumberFormatServiceShim$NFFactory;-><init>(Landroid/icu/text/NumberFormat$NumberFormatFactory;)V

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICULocaleService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method unregister(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    check-cast p1, Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {v0, p1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    move-result v0

    return v0
.end method
