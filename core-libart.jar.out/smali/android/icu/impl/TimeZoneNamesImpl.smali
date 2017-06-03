.class public Landroid/icu/impl/TimeZoneNamesImpl;
.super Landroid/icu/text/TimeZoneNames;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;,
        Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;,
        Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;,
        Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;,
        Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZNames;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;
    }
.end annotation


# static fields
.field private static final LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile METAZONE_IDS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MZ_PREFIX:Ljava/lang/String; = "meta:"

.field private static final MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

.field private static final NAME_TYPE_VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

.field private static final ZONE_STRINGS_BUNDLE:Ljava/lang/String; = "zoneStrings"

.field private static final serialVersionUID:J = -0x1e40420e38b84b80L


# instance fields
.field private transient _mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient _namesFullyLoaded:Z

.field private transient _namesTrie:Landroid/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient _namesTrieFullyLoaded:Z

.field private transient _tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient _zoneStrings:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method static synthetic -get0()[Landroid/icu/text/TimeZoneNames$NameType;
    .locals 1

    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->NAME_TYPE_VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic -get2(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic -get3(Landroid/icu/impl/TimeZoneNamesImpl;)Landroid/icu/impl/ICUResourceBundle;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->NAME_TYPE_VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;)V

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;)V

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    const-string/jumbo v0, "Etc/.*|SystemV/.*|.*/Riyadh8[7-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames;-><init>()V

    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method static _getAvailableMetaZoneIDs()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    if-nez v3, :cond_1

    const-class v4, Landroid/icu/impl/TimeZoneNamesImpl;

    monitor-enter v4

    :try_start_0
    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    if-nez v3, :cond_0

    const-string/jumbo v3, "android/icu/impl/data/icudt56b"

    const-string/jumbo v5, "metaZones"

    invoke-static {v3, v5}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string/jumbo v3, "mapTimezones"

    invoke-virtual {v0, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    :cond_1
    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static _getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
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

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    :cond_1
    sget-object v4, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    invoke-virtual {v4, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->mzID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    return-object v4
.end method

.method static _getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-object v5

    :cond_1
    const/4 v3, 0x0

    sget-object v4, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    invoke-virtual {v4, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->from()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_2

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->to()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_2

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->mzID()Ljava/lang/String;

    move-result-object v3

    :cond_3
    return-object v3
.end method

.method static _getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    const/4 v0, 0x0

    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl;->MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    invoke-virtual {v2, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v2, "001"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method private addAllNamesIntoTrie()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v2, v5, v3, v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v2, v3, v5, v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl;->LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private initialize(Landroid/icu/util/ULocale;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "android/icu/impl/data/icudt56b/zone"

    invoke-static {v3, p1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v3, "zoneStrings"

    invoke-virtual {v0, v3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    iput-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesFullyLoaded:Z

    new-instance v3, Landroid/icu/impl/TextTrieMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    iput-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    iput-boolean v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneNamesImpl;->loadStrings(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private internalLoadAllDisplayNames()V
    .locals 2

    iget-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesFullyLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl;Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;)V

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->load()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesFullyLoaded:Z

    :cond_0
    return-void
.end method

.method private declared-synchronized loadMetaZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->forMetaZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "meta:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    iget-boolean v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized loadStrings(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v4, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->forMetaZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    :try_start_2
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->addAllNamesIntoTrie()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private declared-synchronized loadTimeZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->forTimeZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    const/16 v2, 0x2f

    const/16 v3, 0x3a

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    iget-boolean v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    invoke-direct {p0, v0}, Landroid/icu/impl/TimeZoneNamesImpl;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 8
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

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "bad input text or range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    if-ltz p2, :cond_0

    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge p2, v5, :cond_0

    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;

    invoke-direct {v0, p3}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;-><init>(Ljava/util/EnumSet;)V

    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v5, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMaxMatchLen()I

    move-result v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, p2

    if-eq v5, v6, :cond_2

    iget-boolean v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    :cond_3
    :try_start_2
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->addAllNamesIntoTrie()V

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->resetResults()V

    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v5, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMaxMatchLen()I

    move-result v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, p2

    if-ne v5, v6, :cond_4

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    :cond_4
    :try_start_3
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->internalLoadAllDisplayNames()V

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->addAllNamesIntoTrie()V

    sget-object v5, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v5, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getInstance([Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1, v5}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->resetResults()V

    iget-object v5, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v5, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5
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

.method public getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V
    .locals 9

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v7, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v6, p2

    if-ge v0, v6, :cond_6

    aget-object v4, p2, v0

    invoke-virtual {v5, v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, p3, p4}, Landroid/icu/impl/TimeZoneNamesImpl;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    :cond_2
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->-get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-virtual {v2, v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    add-int v6, p6, v0

    aput-object v3, p5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, v7, v1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v2

    goto :goto_1

    :cond_6
    return-void
.end method

.method public getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-direct {p0, v2, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v1

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1, v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

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
    invoke-direct {p0, v1, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

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
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-direct {p0, v1, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized loadAllDisplayNames()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->internalLoadAllDisplayNames()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
