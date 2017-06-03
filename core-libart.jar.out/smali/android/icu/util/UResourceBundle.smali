.class public abstract Landroid/icu/util/UResourceBundle;
.super Ljava/util/ResourceBundle;
.source "UResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/UResourceBundle$ResourceCacheKey;
    }
.end annotation


# static fields
.field public static final ARRAY:I = 0x8

.field public static final BINARY:I = 0x1

.field private static BUNDLE_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Landroid/icu/util/UResourceBundle$ResourceCacheKey;",
            "Landroid/icu/util/UResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT:I = 0x7

.field public static final INT_VECTOR:I = 0xe

.field public static final NONE:I = -0x1

.field private static ROOT_CACHE:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ROOT_ICU:I = 0x1

.field private static final ROOT_JAVA:I = 0x2

.field private static final ROOT_MISSING:I = 0x0

.field public static final STRING:I = 0x0

.field public static final TABLE:I = 0x2

.field private static final cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/util/UResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/ICUCache;

    new-instance v0, Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;-><init>(Landroid/icu/util/UResourceBundle$ResourceCacheKey;)V

    sput-object v0, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    return-void
.end method

.method protected static addToCache(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v2, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    invoke-static {v1, p0, p1}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->-wrap0(Landroid/icu/util/UResourceBundle$ResourceCacheKey;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    sget-object v1, Landroid/icu/util/UResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/ICUCache;

    sget-object v3, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    invoke-interface {v1, v3}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/icu/util/UResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/ICUCache;

    sget-object v1, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    invoke-interface {v3, v1, p2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object p2

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getBundleInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;
    .locals 4

    if-nez p0, :cond_0

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    :cond_0
    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo p0, "android/icu/impl/data/icudt56b"

    :cond_0
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method public static getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo p0, "android/icu/impl/data/icudt56b"

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    .locals 2

    if-nez p0, :cond_0

    const-string/jumbo p0, "android/icu/impl/data/icudt56b"

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 2

    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method protected static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/util/UResourceBundle;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo p0, "android/icu/impl/data/icudt56b"

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo p0, "android/icu/impl/data/icudt56b"

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, p2, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRootType(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .locals 10

    const/4 v3, 0x0

    sget-object v8, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v3, :cond_1

    const-class v9, Landroid/icu/util/UResourceBundle;

    monitor-enter v9

    :try_start_0
    sget-object v8, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v3, v0

    if-nez v3, :cond_0

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v8, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    :cond_0
    monitor-exit v9

    :cond_1
    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_2

    const/16 v8, 0x2e

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    const-string/jumbo v5, "root"

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_2
    invoke-static {p0, v5, p1, v8}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, p0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    return v8

    :catchall_0
    move-exception v8

    :goto_2
    monitor-exit v9

    throw v8

    :cond_3
    const-string/jumbo v5, ""

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v8, 0x1

    :try_start_3
    invoke-static {p0, v5, p1, v8}, Landroid/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v7, 0x2

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v8

    move-object v3, v4

    goto :goto_2
.end method

.method private handleGetObjectImpl(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/icu/util/UResourceBundle;->resolveObject(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {v1, p1, p2}, Landroid/icu/util/UResourceBundle;->handleGetObjectImpl(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find resource for bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_1
    return-object v0
.end method

.method protected static instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0, p2}, Landroid/icu/util/UResourceBundle;->getRootType(Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result v4

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v1

    packed-switch v4, :pswitch_data_0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {p0, v5}, Landroid/icu/util/UResourceBundle;->setRootType(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :pswitch_0
    if-eqz p3, :cond_1

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/icu/util/UResourceBundle;->loadFromCache(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v2

    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {p0, v5}, Landroid/icu/util/UResourceBundle;->setRootType(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static loadFromCache(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    invoke-static {v0, p0, p1}, Landroid/icu/util/UResourceBundle$ResourceCacheKey;->-wrap0(Landroid/icu/util/UResourceBundle$ResourceCacheKey;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    sget-object v0, Landroid/icu/util/UResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/ICUCache;

    sget-object v2, Landroid/icu/util/UResourceBundle;->cacheKey:Landroid/icu/util/UResourceBundle$ResourceCacheKey;

    invoke-interface {v0, v2}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static resetBundleCache()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/util/UResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method private resolveObject(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p0, p1, v3, p2}, Landroid/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->handleGetStringArray()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/icu/util/UResourceTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    return-object v1

    :cond_2
    return-object v1
.end method

.method private static setRootType(Ljava/lang/String;I)V
    .locals 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v1, 0x0

    sget-object v4, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    const-class v5, Landroid/icu/util/UResourceBundle;

    monitor-enter v5

    :try_start_0
    sget-object v4, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v1, v0

    if-nez v1, :cond_0

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v4, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    :cond_0
    monitor-exit v5

    :cond_1
    invoke-virtual {v1, p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v4

    :goto_0
    monitor-exit v5

    throw v4

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected findTopLevel(I)Landroid/icu/util/UResourceBundle;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v2, p0}, Landroid/icu/util/UResourceBundle;->handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, v2, p0}, Landroid/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public get(I)Landroid/icu/util/UResourceBundle;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p0}, Landroid/icu/util/UResourceBundle;->handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find resource for bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 5

    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find resource for bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method protected abstract getBaseName()Ljava/lang/String;
.end method

.method public getBinary()Ljava/nio/ByteBuffer;
    .locals 2

    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBinary([B)[B
    .locals 2

    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt()I
    .locals 2

    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntVector()[I
    .locals 2

    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIterator()Landroid/icu/util/UResourceBundleIterator;
    .locals 1

    new-instance v0, Landroid/icu/util/UResourceBundleIterator;

    invoke-direct {v0, p0}, Landroid/icu/util/UResourceBundleIterator;-><init>(Landroid/icu/util/UResourceBundle;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLocaleID()Ljava/lang/String;
.end method

.method protected abstract getParent()Landroid/icu/util/UResourceBundle;
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStringArray()[Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getUInt()I
    .locals 2

    new-instance v0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getULocale()Landroid/icu/util/ULocale;
.end method

.method public getVersion()Landroid/icu/util/VersionInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleGetKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p0}, Landroid/icu/util/UResourceBundle;->handleGetObjectImpl(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleGetStringArray()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleKeySet()Ljava/util/Set;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected isTopLevelResource()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->isTopLevelResource()Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, p0, Landroid/icu/impl/ICUResourceBundle;

    if-eqz v4, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getTopLevelKeySet()Ljava/util/Set;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->isTopLevelResource()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v4, :cond_3

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->setTopLevelKeySet(Ljava/util/Set;)V

    :cond_2
    return-object v1

    :cond_3
    iget-object v4, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    instance-of v4, v4, Landroid/icu/util/UResourceBundle;

    if-eqz v4, :cond_4

    new-instance v2, Ljava/util/TreeSet;

    iget-object v4, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v4, Landroid/icu/util/UResourceBundle;

    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iget-object v4, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v4}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v4

    return-object v4
.end method

.method protected abstract setLoadingStatus(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
