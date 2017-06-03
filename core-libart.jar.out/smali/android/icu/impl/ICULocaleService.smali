.class public Landroid/icu/impl/ICULocaleService;
.super Landroid/icu/impl/ICUService;
.source "ICULocaleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;,
        Landroid/icu/impl/ICULocaleService$LocaleKey;,
        Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;,
        Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;
    }
.end annotation


# instance fields
.field private fallbackLocale:Landroid/icu/util/ULocale;

.field private fallbackLocaleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/ICUService;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createKey(Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Key;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonical(Landroid/icu/util/ULocale;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;

    move-result-object v0

    return-object v0
.end method

.method public createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICULocaleService$LocaleKey;

    move-result-object v0

    return-object v0
.end method

.method public createKey(Ljava/lang/String;I)Landroid/icu/impl/ICUService$Key;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/icu/util/ULocale;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICULocaleService;->createKey(Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Key;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-virtual {p0, v0}, Landroid/icu/impl/ICULocaleService;->getKey(Landroid/icu/impl/ICUService$Key;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    :cond_0
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Landroid/icu/impl/ICULocaleService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    aget-object v4, v3, v6

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    aget-object v4, v3, v6

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    :cond_1
    new-instance v4, Landroid/icu/util/ULocale;

    aget-object v5, v3, v6

    invoke-direct {v4, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v4, p3, v6

    :cond_2
    return-object v2
.end method

.method public get(Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 8

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getVisibleIDs()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    new-array v3, v7, [Ljava/util/Locale;

    const/4 v4, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/LocaleUtility;->getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    add-int/lit8 v5, v4, 0x1

    aput-object v2, v3, v4

    move v4, v5

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 7

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getVisibleIDs()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    new-array v2, v6, [Landroid/icu/util/ULocale;

    const/4 v3, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    new-instance v6, Landroid/icu/util/ULocale;

    invoke-direct {v6, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v6, v2, v3

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;)Landroid/icu/impl/ICUService$Factory;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method public registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Factory;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method public registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;
    .locals 2

    new-instance v0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;-><init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)V

    invoke-virtual {p0, v0}, Landroid/icu/impl/ICULocaleService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    move-result-object v1

    return-object v1
.end method

.method public registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;Z)Landroid/icu/impl/ICUService$Factory;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method public validateFallbackLocale()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocale:Landroid/icu/util/ULocale;

    if-eq v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocale:Landroid/icu/util/ULocale;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->clearServiceCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
