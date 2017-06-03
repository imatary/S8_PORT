.class final Landroid/icu/text/CollatorServiceShim;
.super Landroid/icu/text/Collator$ServiceShim;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CollatorServiceShim$CService;
    }
.end annotation


# static fields
.field private static service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 1

    invoke-static {p0}, Landroid/icu/text/CollatorServiceShim;->makeInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/text/CollatorServiceShim$CService;

    invoke-direct {v0}, Landroid/icu/text/CollatorServiceShim$CService;-><init>()V

    sput-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/Collator$ServiceShim;-><init>()V

    return-void
.end method

.method private static final makeInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 4

    new-instance v1, Landroid/icu/util/Output;

    sget-object v2, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-direct {v1, v2}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v1}, Landroid/icu/impl/coll/CollationLoader;->loadTailoring(Landroid/icu/util/ULocale;Landroid/icu/util/Output;)Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v0

    new-instance v3, Landroid/icu/text/RuleBasedCollator;

    iget-object v2, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v2, Landroid/icu/util/ULocale;

    invoke-direct {v3, v0, v2}, Landroid/icu/text/RuleBasedCollator;-><init>(Landroid/icu/impl/coll/CollationTailoring;Landroid/icu/util/ULocale;)V

    return-object v3
.end method


# virtual methods
.method getAvailableLocales()[Ljava/util/Locale;
    .locals 3

    sget-object v1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v1}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android/icu/impl/data/icudt56b/coll"

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v1}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 3

    sget-object v1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v1}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android/icu/impl/data/icudt56b/coll"

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v1}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    goto :goto_0
.end method

.method getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v1, v0, p2}, Landroid/icu/impl/ICULocaleService;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 7

    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [Landroid/icu/util/ULocale;

    sget-object v3, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v3, p1, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/Collator;

    if-nez v1, :cond_0

    new-instance v3, Ljava/util/MissingResourceException;

    const-string/jumbo v4, "Could not locate Collator data"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v3, v2}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/Collator;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3
.end method

.method registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    new-instance v1, Landroid/icu/text/CollatorServiceShim$1CFactory;

    invoke-direct {v1, p0, p1}, Landroid/icu/text/CollatorServiceShim$1CFactory;-><init>(Landroid/icu/text/CollatorServiceShim;Landroid/icu/text/Collator$CollatorFactory;)V

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICULocaleService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2, p2}, Landroid/icu/text/Collator;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method unregister(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    check-cast p1, Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {v0, p1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    move-result v0

    return v0
.end method
