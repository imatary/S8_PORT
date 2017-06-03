.class public Landroid/icu/impl/ICUService;
.super Landroid/icu/impl/ICUNotifier;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUService$CacheEntry;,
        Landroid/icu/impl/ICUService$Factory;,
        Landroid/icu/impl/ICUService$Key;,
        Landroid/icu/impl/ICUService$LocaleRef;,
        Landroid/icu/impl/ICUService$ServiceListener;,
        Landroid/icu/impl/ICUService$SimpleFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private cacheref:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$CacheEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultSize:I

.field private dnref:Landroid/icu/impl/ICUService$LocaleRef;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final factoryLock:Landroid/icu/impl/ICURWLock;

.field private idref:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "service"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/ICUService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/ICUNotifier;-><init>()V

    new-instance v0, Landroid/icu/impl/ICURWLock;

    invoke-direct {v0}, Landroid/icu/impl/ICURWLock;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/ICUNotifier;-><init>()V

    new-instance v0, Landroid/icu/impl/ICURWLock;

    invoke-direct {v0}, Landroid/icu/impl/ICURWLock;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    iput-object p1, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    return-void
.end method

.method private getVisibleIDMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v4, p0, Landroid/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Landroid/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v5, :cond_3

    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v5}, Landroid/icu/impl/ICURWLock;->acquireRead()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v5, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    iget-object v6, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUService$Factory;

    invoke-interface {v0, v1}, Landroid/icu/impl/ICUService$Factory;->updateVisibleIDs(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_2
    :try_start_3
    iget-object v6, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v6}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v5

    :goto_3
    monitor-exit p0

    throw v5

    :cond_1
    :try_start_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Landroid/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v5, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v5}, Landroid/icu/impl/ICURWLock;->releaseRead()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    monitor-exit p0

    :cond_2
    move-object v2, v1

    goto :goto_0

    :cond_3
    :try_start_6
    iget-object v4, p0, Landroid/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :cond_4
    return-object v2

    :catchall_2
    move-exception v5

    move-object v1, v2

    goto :goto_3

    :catchall_3
    move-exception v5

    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method protected acceptsListener(Ljava/util/EventListener;)Z
    .locals 1

    instance-of v0, p1, Landroid/icu/impl/ICUService$ServiceListener;

    return v0
.end method

.method protected clearCaches()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/ICUService;->cacheref:Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Landroid/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    return-void
.end method

.method protected clearServiceCache()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/ICUService;->cacheref:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/icu/impl/ICUService$Key;

    invoke-direct {v0, p1}, Landroid/icu/impl/ICUService$Key;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final factories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireRead()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUService;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUService$Factory;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Landroid/icu/impl/ICUService$Key;->fallback()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUService$Factory;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    return-object v4
.end method

.method public getDisplayNames()Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v1, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public getDisplayNames(Landroid/icu/util/ULocale;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNames(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v11, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    if-eqz v11, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v11, p1, v0}, Landroid/icu/impl/ICUService$LocaleRef;->get(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v13, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    if-eq v11, v13, :cond_0

    iget-object v13, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    if-nez v13, :cond_3

    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Landroid/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/ICUService$Factory;

    invoke-interface {v6, v7, p1}, Landroid/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v13

    :goto_2
    monitor-exit p0

    throw v13

    :cond_1
    :try_start_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    new-instance v13, Landroid/icu/impl/ICUService$LocaleRef;

    move-object/from16 v0, p2

    invoke-direct {v13, v1, p1, v0}, Landroid/icu/impl/ICUService$LocaleRef;-><init>(Ljava/util/SortedMap;Landroid/icu/util/ULocale;Ljava/util/Comparator;)V

    iput-object v13, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    :cond_2
    move-object v2, v1

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v11, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    move-object/from16 v0, p2

    invoke-virtual {v11, p1, v0}, Landroid/icu/impl/ICUService$LocaleRef;->get(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object v10

    if-nez v10, :cond_5

    return-object v2

    :cond_5
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    invoke-interface {v12}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Landroid/icu/impl/ICUService$Key;->isFallbackOf(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_7
    return-object v12

    :catchall_1
    move-exception v13

    move-object v1, v2

    goto :goto_2
.end method

.method public getKey(Landroid/icu/impl/ICUService$Key;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_0

    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/ICUService;->handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    return-object v21

    :cond_0
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_1

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Service: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " key: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/16 v17, 0x0

    if-eqz p1, :cond_1b

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/icu/impl/ICURWLock;->acquireRead()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/impl/ICUService;->cacheref:Ljava/lang/ref/SoftReference;

    if-eqz v7, :cond_3

    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_2

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Service "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " ref exists"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    :cond_3
    if-nez v4, :cond_5

    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_4

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Service "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " cache was empty"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :cond_5
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v15

    const/4 v6, 0x1

    if-eqz p3, :cond_14

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    add-int/lit8 v20, v12, 0x1

    :cond_6
    if-nez v20, :cond_8

    new-instance v21, Ljava/lang/IllegalStateException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Factory "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "not registered with service: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v21

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    throw v21

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_8
    const/4 v6, 0x0

    move v3, v2

    :goto_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/ICUService$Key;->currentDescriptor()Ljava/lang/String;

    move-result-object v8

    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_1d

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "] looking for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Landroid/icu/impl/ICUService$CacheEntry;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_9

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " found with descriptor: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    :goto_4
    if-eqz v17, :cond_1a

    if-eqz v16, :cond_16

    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_a

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "caching \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_15

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_b

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " adding descriptor: \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\' for actual: \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, v17

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_d

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "did not find: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " in cache"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    move/from16 v16, v6

    move/from16 v13, v20

    move v14, v13

    :goto_6
    if-ge v14, v15, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    move-object/from16 v21, v0

    add-int/lit8 v13, v14, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/impl/ICUService$Factory;

    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_e

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "trying factory["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v13, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "] "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v11, v0, v1}, Landroid/icu/impl/ICUService$Factory;->create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_10

    new-instance v18, Landroid/icu/impl/ICUService$CacheEntry;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1}, Landroid/icu/impl/ICUService$CacheEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_f

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " factory supported: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", caching"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_f
    move-object/from16 v17, v18

    goto/16 :goto_4

    :cond_10
    :try_start_3
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_11

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "factory did not support: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_11
    move v14, v13

    goto/16 :goto_6

    :cond_12
    if-nez v5, :cond_13

    new-instance v5, Ljava/util/ArrayList;

    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_13
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/ICUService$Key;->fallback()Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_14
    move v3, v2

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/icu/impl/ICUService;->cacheref:Ljava/lang/ref/SoftReference;

    :cond_16
    if-eqz p2, :cond_17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_19

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, p2, v22

    :cond_17
    :goto_7
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_18

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "found in service: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->service:Ljava/lang/Object;

    move-object/from16 v21, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    return-object v21

    :cond_19
    :try_start_4
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v21, p2, v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    :cond_1b
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v21, :cond_1c

    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "not found in service: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/ICUService;->handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    return-object v21

    :catchall_1
    move-exception v21

    move-object/from16 v17, v18

    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto/16 :goto_3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleIDs()Ljava/util/Set;
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

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUService;->getVisibleIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUService$Key;->isFallbackOf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v3, v4

    :cond_2
    return-object v3
.end method

.method protected handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDefault()Z
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected markDefault()V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    return-void
.end method

.method protected notifyListener(Ljava/util/EventListener;)V
    .locals 0

    check-cast p1, Landroid/icu/impl/ICUService$ServiceListener;

    invoke-interface {p1, p0}, Landroid/icu/impl/ICUService$ServiceListener;->serviceChanged(Landroid/icu/impl/ICUService;)V

    return-void
.end method

.method protected reInitializeFactories()V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireWrite()V

    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->clearCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->notifyChanged()V

    return-object p1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    throw v0
.end method

.method public registerObject(Ljava/lang/Object;Ljava/lang/String;)Landroid/icu/impl/ICUService$Factory;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICUService;->registerObject(Ljava/lang/Object;Ljava/lang/String;Z)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method public registerObject(Ljava/lang/Object;Ljava/lang/String;Z)Landroid/icu/impl/ICUService$Factory;
    .locals 2

    invoke-virtual {p0, p2}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/icu/impl/ICUService$SimpleFactory;

    invoke-direct {v1, p1, v0, p3}, Landroid/icu/impl/ICUService$SimpleFactory;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    move-result-object v1

    return-object v1
.end method

.method public final reset()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireWrite()V

    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->reInitializeFactories()V

    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->clearCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->notifyChanged()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    throw v0
.end method

.method public stats()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->resetStats()Landroid/icu/impl/ICURWLock$Stats;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock$Stats;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "no stats"

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/icu/impl/ICUNotifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->acquireWrite()V

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->clearCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->notifyChanged()V

    :cond_2
    return v0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v2}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    throw v1
.end method
