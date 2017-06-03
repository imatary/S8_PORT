.class public Landroid/icu/impl/TimeZoneGenericNames;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TimeZoneGenericNames$Cache;,
        Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;,
        Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;,
        Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;,
        Landroid/icu/impl/TimeZoneGenericNames$NameInfo;,
        Landroid/icu/impl/TimeZoneGenericNames$Pattern;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/impl/TimeZoneGenericNames;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-impl-TimeZoneGenericNames$GenericNameTypeSwitchesValues:[I = null

.field private static final synthetic -android-icu-text-TimeZoneNames$NameTypeSwitchesValues:[I = null

.field static final synthetic -assertionsDisabled:Z

.field private static final DST_CHECK_RANGE:J = 0x3b3922000L

.field private static GENERIC_NAMES_CACHE:Landroid/icu/impl/TimeZoneGenericNames$Cache; = null

.field private static final GENERIC_NON_LOCATION_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final serialVersionUID:J = 0x25e296fe0f5baf81L


# instance fields
.field private volatile transient _frozen:Z

.field private transient _genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient _genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient _gnamesTrie:Landroid/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$NameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient _gnamesTrieFullyLoaded:Z

.field private _locale:Landroid/icu/util/ULocale;

.field private transient _localeDisplayNamesRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/icu/text/LocaleDisplayNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient _patternFormatters:[Ljava/text/MessageFormat;

.field private transient _region:Ljava/lang/String;

.field private _tznames:Landroid/icu/text/TimeZoneNames;


# direct methods
.method private static synthetic -getandroid-icu-impl-TimeZoneGenericNames$GenericNameTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames;->-android-icu-impl-TimeZoneGenericNames$GenericNameTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames;->-android-icu-impl-TimeZoneGenericNames$GenericNameTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->values()[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames;->-android-icu-impl-TimeZoneGenericNames$GenericNameTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getandroid-icu-text-TimeZoneNames$NameTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames;->-android-icu-text-TimeZoneNames$NameTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames;->-android-icu-text-TimeZoneNames$NameTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames;->-android-icu-text-TimeZoneNames$NameTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Landroid/icu/impl/TimeZoneGenericNames;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/impl/TimeZoneGenericNames;->-assertionsDisabled:Z

    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$Cache;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/icu/impl/TimeZoneGenericNames$Cache;-><init>(Landroid/icu/impl/TimeZoneGenericNames$Cache;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NAMES_CACHE:Landroid/icu/impl/TimeZoneGenericNames$Cache;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NON_LOCATION_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/impl/TimeZoneGenericNames;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    iput-object p2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->init()V

    return-void
.end method

.method private createGenericMatchInfo(Landroid/icu/text/TimeZoneNames$MatchInfo;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames;->-getandroid-icu-text-TimeZoneNames$NameTypeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected MatchInfo name type - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    :goto_0
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v1

    sget-boolean v7, Landroid/icu/impl/TimeZoneGenericNames;->-assertionsDisabled:Z

    if-nez v7, :cond_1

    if-eqz v1, :cond_0

    move v7, v5

    :goto_1
    if-nez v7, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :pswitch_1
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    goto :goto_0

    :pswitch_2
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    goto :goto_0

    :pswitch_3
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    goto :goto_0

    :cond_0
    move v7, v6

    goto :goto_1

    :cond_1
    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    sget-boolean v7, Landroid/icu/impl/TimeZoneGenericNames;->-assertionsDisabled:Z

    if-nez v7, :cond_4

    if-eqz v4, :cond_3

    :goto_2
    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    invoke-direct {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>()V

    iput-object v2, v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->nameType:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    iput-object v4, v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v5

    iput v5, v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength:I

    iput-object v3, v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;

    invoke-direct {v0, p3}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;-><init>(Ljava/util/EnumSet;)V

    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v4, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMaxMatchLen()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, p2

    if-eq v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_1
    sget-object v4, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

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

    invoke-direct {p0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->loadStrings(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->resetResults()V

    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v4, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMatches()Ljava/util/Collection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4
.end method

.method private findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const-class v2, Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {p3, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {p3, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v2, p1, p2, v0}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private formatGenericNonLocationName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;
    .locals 29

    sget-boolean v23, Landroid/icu/impl/TimeZoneGenericNames;->-assertionsDisabled:Z

    if-nez v23, :cond_2

    sget-object v23, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_0

    sget-object v23, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v23, 0x1

    :goto_0
    if-nez v23, :cond_2

    new-instance v23, Ljava/lang/AssertionError;

    invoke-direct/range {v23 .. v23}, Ljava/lang/AssertionError;-><init>()V

    throw v23

    :cond_1
    const/16 v23, 0x0

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_3

    const/16 v23, 0x0

    return-object v23

    :cond_3
    sget-object v23, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    sget-object v15, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    return-object v14

    :cond_4
    sget-object v15, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    filled-new-array/range {v23 .. v24}, [I

    move-result-object v16

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move/from16 v3, v23

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    const/16 v23, 0x1

    aget v23, v16, v23

    if-nez v23, :cond_6

    const/16 v22, 0x1

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/icu/util/BasicTimeZone;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v8, p1

    check-cast v8, Landroid/icu/util/BasicTimeZone;

    const/16 v23, 0x1

    move-wide/from16 v0, p3

    move/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v24

    sub-long v24, p3, v24

    const-wide v26, 0x3b3922000L

    cmp-long v23, v24, v26

    if-gez v23, :cond_a

    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v23

    if-eqz v23, :cond_a

    const/16 v22, 0x0

    :cond_6
    :goto_2
    if-eqz v22, :cond_7

    sget-object v23, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    move-object/from16 v0, v23

    if-ne v15, v0, :cond_d

    sget-object v19, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    move-object/from16 v14, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v15}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    const/4 v14, 0x0

    :cond_7
    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v15}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    move-object/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    :cond_8
    move-object v14, v13

    :cond_9
    :goto_4
    return-object v14

    :cond_a
    const/16 v23, 0x0

    move-wide/from16 v0, p3

    move/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v24

    sub-long v24, v24, p3

    const-wide v26, 0x3b3922000L

    cmp-long v23, v24, v26

    if-gez v23, :cond_6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v23

    if-eqz v23, :cond_6

    const/16 v22, 0x0

    goto/16 :goto_2

    :cond_b
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const-wide v24, 0x3b3922000L

    sub-long v24, p3, v24

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    move/from16 v3, v23

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    const/16 v23, 0x1

    aget v23, v20, v23

    if-eqz v23, :cond_c

    const/16 v22, 0x0

    goto/16 :goto_2

    :cond_c
    const-wide v24, 0x3b3922000L

    add-long v24, v24, p3

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    move/from16 v3, v23

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    const/16 v23, 0x1

    aget v23, v20, v23

    if-eqz v23, :cond_6

    const/16 v22, 0x0

    goto/16 :goto_2

    :cond_d
    sget-object v19, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    goto/16 :goto_3

    :cond_e
    invoke-static {v9}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v10

    const/16 v23, 0x0

    const/16 v24, 0x0

    filled-new-array/range {v23 .. v24}, [I

    move-result-object v17

    const/16 v23, 0x0

    aget v23, v16, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, p3

    const/16 v23, 0x1

    aget v23, v16, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    const/16 v23, 0x1

    move-wide/from16 v0, v24

    move/from16 v2, v23

    move-object/from16 v3, v17

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    const/16 v23, 0x0

    aget v23, v16, v23

    const/16 v24, 0x0

    aget v24, v17, v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    const/16 v23, 0x1

    aget v23, v16, v23

    const/16 v24, 0x1

    aget v24, v17, v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    :cond_f
    sget-object v23, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    move-object/from16 v0, v23

    if-ne v15, v0, :cond_10

    const/16 v23, 0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v12, v2, v13}, Landroid/icu/impl/TimeZoneGenericNames;->getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    :cond_10
    const/16 v23, 0x0

    goto :goto_5

    :cond_11
    move-object v14, v13

    goto/16 :goto_4
.end method

.method private varargs declared-synchronized formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    if-nez v4, :cond_0

    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Ljava/text/MessageFormat;

    iput-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    aget-object v4, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    :try_start_1
    const-string/jumbo v4, "android/icu/impl/data/icudt56b/zone"

    iget-object v5, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v4, v5}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "zoneStrings/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->key()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :goto_0
    :try_start_2
    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    new-instance v5, Ljava/text/MessageFormat;

    invoke-direct {v5, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    :cond_1
    iget-object v4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    aget-object v4, v4, v2

    invoke-virtual {v4, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->defaultValue()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NAMES_CACHE:Landroid/icu/impl/TimeZoneGenericNames$Cache;

    invoke-virtual {v1, v0, p0}, Landroid/icu/impl/SoftCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TimeZoneGenericNames;

    return-object v1
.end method

.method private declared-synchronized getLocaleDisplayNames()Landroid/icu/text/LocaleDisplayNames;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/icu/text/LocaleDisplayNames;

    move-object v1, v0

    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 11

    if-eqz p3, :cond_0

    const-string/jumbo v3, "L"

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    return-object v5

    :cond_0
    const-string/jumbo v3, "S"

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v8, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v8, p2, v0}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getLocaleDisplayNames()Landroid/icu/text/LocaleDisplayNames;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_1
    sget-object v8, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object p4, v9, v10

    invoke-direct {p0, v8, v9}, Landroid/icu/impl/TimeZoneGenericNames;->formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_6

    new-instance v1, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$NameInfo;)V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    if-eqz p3, :cond_5

    sget-object v8, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    :goto_2
    iput-object v8, v1, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    iget-object v8, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v8, v5, v1}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    return-object v5

    :cond_3
    iget-object v8, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v8, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    iget-object v8, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v8, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, p1

    goto :goto_1

    :cond_5
    :try_start_1
    sget-object v8, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    move-object v5, v7

    goto :goto_3

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private declared-synchronized getTargetRegion()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "001"

    iput-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private init()V
    .locals 4

    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    :cond_0
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Landroid/icu/impl/TextTrieMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->loadStrings(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized loadStrings(Ljava/lang/String;)V
    .locals 11

    const/4 v7, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v6, p1}, Landroid/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v9, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NON_LOCATION_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    array-length v10, v9

    move v8, v7

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v0, v9, v8

    iget-object v6, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v6, v3, v0}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    if-ne v0, v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-direct {p0, p1, v3, v6, v2}, Landroid/icu/impl/TimeZoneGenericNames;->getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->init()V

    return-void
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/impl/TimeZoneGenericNames;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/icu/impl/TimeZoneGenericNames;

    move-object v1, v0

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/icu/impl/TimeZoneGenericNames;->_frozen:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->cloneAsThawed()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    return-object v0
.end method

.method public find(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "bad input text or range"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneNames$MatchInfo;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_2
    invoke-direct {p0, v0}, Landroid/icu/impl/TimeZoneGenericNames;->createGenericMatchInfo(Landroid/icu/text/TimeZoneNames$MatchInfo;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "bad input text or range"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge p2, v7, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v2, 0x0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/TimeZoneNames$MatchInfo;

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v7

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    if-le v7, v8, :cond_2

    :cond_3
    move-object v2, v4

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneGenericNames;->createGenericMatchInfo(Landroid/icu/text/TimeZoneNames$MatchInfo;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, p2

    if-ne v7, v8, :cond_5

    iget-object v7, v0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

    sget-object v8, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-eq v7, v8, :cond_5

    return-object v0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v7

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v8

    if-lt v7, v8, :cond_6

    :cond_7
    move-object v0, v3

    goto :goto_1

    :cond_8
    return-object v0
.end method

.method public freeze()Landroid/icu/impl/TimeZoneGenericNames;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->freeze()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames;->-getandroid-icu-impl-TimeZoneGenericNames$GenericNameTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/TimeZoneGenericNames;->formatGenericNonLocationName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return-object v8

    :cond_1
    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    return-object v8

    :cond_2
    return-object v5

    :cond_3
    new-instance v4, Landroid/icu/util/Output;

    invoke-direct {v4}, Landroid/icu/util/Output;-><init>()V

    invoke-static {p1, v4}, Landroid/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;Landroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v7, v4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getLocaleDisplayNames()Landroid/icu/text/LocaleDisplayNames;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    new-array v8, v10, [Ljava/lang/String;

    aput-object v1, v8, v9

    invoke-direct {p0, v7, v8}, Landroid/icu/impl/TimeZoneGenericNames;->formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_0
    if-nez v5, :cond_6

    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object v5

    :cond_5
    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v7, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    new-array v8, v10, [Ljava/lang/String;

    aput-object v0, v8, v9

    invoke-direct {p0, v7, v8}, Landroid/icu/impl/TimeZoneGenericNames;->formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_6
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_7

    new-instance v3, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$NameInfo;)V

    iput-object p1, v3, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    sget-object v7, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    iput-object v7, v3, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v7, v5, v3}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    goto :goto_1

    :cond_7
    move-object v5, v6

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_frozen:Z

    return v0
.end method

.method public setFormatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;Ljava/lang/String;)Landroid/icu/impl/TimeZoneGenericNames;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_2
    iput-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/text/MessageFormat;

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    :cond_3
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Ljava/text/MessageFormat;

    invoke-direct {v2, p2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object p0
.end method
