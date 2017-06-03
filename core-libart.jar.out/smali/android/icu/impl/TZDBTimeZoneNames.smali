.class public Landroid/icu/impl/TZDBTimeZoneNames;
.super Landroid/icu/text/TimeZoneNames;
.source "TZDBTimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;,
        Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;,
        Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    }
.end annotation


# static fields
.field private static final TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZONESTRINGS:Landroid/icu/impl/ICUResourceBundle;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _locale:Landroid/icu/util/ULocale;

.field private volatile transient _region:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    sput-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    const-string/jumbo v1, "android/icu/impl/data/icudt56b/zone"

    const-string/jumbo v2, "tzdbNames"

    invoke-static {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string/jumbo v1, "zoneStrings"

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    sput-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->ZONESTRINGS:Landroid/icu/impl/ICUResourceBundle;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_locale:Landroid/icu/util/ULocale;

    return-void
.end method

.method private static getMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .locals 5

    sget-object v2, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    if-nez v0, :cond_0

    sget-object v2, Landroid/icu/impl/TZDBTimeZoneNames;->ZONESTRINGS:Landroid/icu/impl/ICUResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "meta:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getInstance(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private getTargetRegion()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_locale:Landroid/icu/util/ULocale;

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "001"

    :cond_0
    iput-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    return-object v2
.end method

.method private static prepareFind()V
    .locals 13

    sget-object v11, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v11, :cond_6

    const-class v12, Landroid/icu/impl/TZDBTimeZoneNames;

    monitor-enter v12

    :try_start_0
    sget-object v11, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v11, :cond_5

    new-instance v10, Landroid/icu/impl/TextTrieMap;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/icu/impl/TZDBTimeZoneNames;->getMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    move-result-object v6

    sget-object v11, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v6, v11}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v6, v11}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v1

    if-nez v8, :cond_1

    if-eqz v1, :cond_0

    :cond_1
    invoke-virtual {v6}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getParseRegions()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    if-eqz v8, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v8, :cond_2

    new-instance v9, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    const/4 v11, 0x0

    invoke-direct {v9, v11}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;-><init>(Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;)V

    iput-object v3, v9, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->mzID:Ljava/lang/String;

    sget-object v11, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    iput-object v11, v9, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    iput-boolean v0, v9, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->ambiguousType:Z

    iput-object v7, v9, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    invoke-virtual {v10, v8, v9}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    :cond_2
    if-eqz v1, :cond_0

    new-instance v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    const/4 v11, 0x0

    invoke-direct {v2, v11}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;-><init>(Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;)V

    iput-object v3, v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->mzID:Ljava/lang/String;

    sget-object v11, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    iput-object v11, v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    iput-boolean v0, v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->ambiguousType:Z

    iput-object v7, v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :try_start_1
    sput-object v10, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v12

    :cond_6
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bad input text or range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-static {}, Landroid/icu/impl/TZDBTimeZoneNames;->prepareFind()V

    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;

    invoke-direct {p0}, Landroid/icu/impl/TZDBTimeZoneNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;-><init>(Ljava/util/EnumSet;Ljava/lang/String;)V

    sget-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    invoke-virtual {v0}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->getMatches()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public getAvailableMetaZoneIDs()Ljava/util/Set;
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

    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
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

    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    if-eq p2, v0, :cond_2

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    if-ne p2, v0, :cond_0

    :cond_2
    invoke-static {p1}, Landroid/icu/impl/TZDBTimeZoneNames;->getMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    invoke-static {p1, p2, p3}, Landroid/icu/impl/TimeZoneNamesImpl;->_getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->_getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
