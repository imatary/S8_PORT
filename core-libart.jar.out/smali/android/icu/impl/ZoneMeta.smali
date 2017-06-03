.class public final Landroid/icu/impl/ZoneMeta;
.super Ljava/lang/Object;
.source "ZoneMeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;,
        Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-util-TimeZone$SystemTimeZoneTypeSwitchesValues:[I = null

.field static final synthetic -assertionsDisabled:Z

.field private static final ASSERT:Z = false

.field private static CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

.field private static REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference; = null
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

.field private static REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference; = null
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

.field private static REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference; = null
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

.field private static REGION_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

.field private static ZONEIDS:[Ljava/lang/String; = null

.field private static final ZONEINFORESNAME:Ljava/lang/String; = "zoneinfo64"

.field private static final kCUSTOM_TZ_PREFIX:Ljava/lang/String; = "GMT"

.field private static final kGMT_ID:Ljava/lang/String; = "GMT"

.field private static final kMAX_CUSTOM_HOUR:I = 0x17

.field private static final kMAX_CUSTOM_MIN:I = 0x3b

.field private static final kMAX_CUSTOM_SEC:I = 0x3b

.field private static final kNAMES:Ljava/lang/String; = "Names"

.field private static final kREGIONS:Ljava/lang/String; = "Regions"

.field private static final kWorld:Ljava/lang/String; = "001"

.field private static final kZONES:Ljava/lang/String; = "Zones"


# direct methods
.method private static synthetic -getandroid-icu-util-TimeZone$SystemTimeZoneTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/impl/ZoneMeta;->-android-icu-util-TimeZone$SystemTimeZoneTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/ZoneMeta;->-android-icu-util-TimeZone$SystemTimeZoneTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->values()[Landroid/icu/util/TimeZone$SystemTimeZoneType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Landroid/icu/impl/ZoneMeta;->-android-icu-util-TimeZone$SystemTimeZoneTypeSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Landroid/icu/impl/ZoneMeta;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/ZoneMeta;->-assertionsDisabled:Z

    sput-object v1, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache;

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/impl/ZoneMeta;->REGION_CACHE:Landroid/icu/impl/ICUCache;

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache;

    new-instance v0, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

    invoke-direct {v0, v1}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;-><init>(Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;)V

    sput-object v0, Landroid/icu/impl/ZoneMeta;->SYSTEM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

    new-instance v0, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    invoke-direct {v0, v1}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;-><init>(Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;)V

    sput-object v0, Landroid/icu/impl/ZoneMeta;->CUSTOM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized countEquivalentIDs(Ljava/lang/String;)I
    .locals 7

    const-class v6, Landroid/icu/impl/ZoneMeta;

    monitor-enter v6

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5, p0}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_1
    const-string/jumbo v5, "links"

    invoke-virtual {v3, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v4

    array-length v0, v4
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v6

    return v0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v1, 0x0

    const/16 v8, 0x2f

    const/16 v9, 0x3a

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string/jumbo v8, "android/icu/impl/data/icudt56b"

    const-string/jumbo v9, "keyTypeData"

    sget-object v10, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v8, v9, v10}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    const-string/jumbo v8, "typeMap"

    invoke-virtual {v3, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    const-string/jumbo v8, "timezone"

    invoke-virtual {v6, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :try_start_1
    invoke-virtual {v5, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p0

    :goto_0
    if-nez v1, :cond_0

    :try_start_2
    const-string/jumbo v8, "typeAlias"

    invoke-virtual {v3, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    const-string/jumbo v8, "timezone"

    invoke-virtual {v4, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    :cond_0
    :goto_1
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method static formatCustomID(IIIZ)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x3a

    const/16 v3, 0x30

    const/16 v2, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GMT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_0

    if-eqz p1, :cond_4

    :cond_0
    if-eqz p3, :cond_5

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-ge p0, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge p1, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge p2, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/TimeZone$SystemTimeZoneType;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/icu/impl/ZoneMeta;->-getandroid-icu-util-TimeZone$SystemTimeZoneTypeSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p0}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Unknown SystemTimeZoneType"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getSystemZIDs()Ljava/util/Set;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object v0

    :pswitch_1
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getCanonicalSystemZIDs()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getCanonicalSystemLocationZIDs()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getSystemTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_4
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    return-object v6

    :cond_6
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Landroid/icu/impl/OlsonTimeZone;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/icu/impl/OlsonTimeZone;

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    sget-object v6, Landroid/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v6, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    const-string/jumbo v7, "zoneinfo64"

    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v6, v7, v8}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    const-string/jumbo v6, "Zones"

    invoke-virtual {v2, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_0

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v6

    invoke-static {v6}, Landroid/icu/impl/ZoneMeta;->getZoneID(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    move-object v0, p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    sget-object v6, Landroid/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v6, p0, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static getCanonicalCountry(Ljava/lang/String;Landroid/icu/util/Output;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v10, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v10, "001"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    return-object v11

    :cond_0
    sget-object v10, Landroid/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v10, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-nez v7, :cond_3

    sget-object v10, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {v10, v2, v11}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v4

    sget-boolean v10, Landroid/icu/impl/ZoneMeta;->-assertionsDisabled:Z

    if-nez v10, :cond_2

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v10

    if-lt v10, v8, :cond_1

    move v10, v8

    :goto_0
    if-nez v10, :cond_2

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_1
    move v10, v9

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v10

    if-gt v10, v8, :cond_5

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sget-object v8, Landroid/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v8, p0, v7}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v8, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_4
    :goto_2
    return-object v2

    :cond_5
    move v8, v9

    goto :goto_1

    :cond_6
    :try_start_0
    const-string/jumbo v8, "android/icu/impl/data/icudt56b"

    const-string/jumbo v9, "metaZones"

    invoke-static {v8, v9}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string/jumbo v8, "primaryZones"

    invoke-virtual {v0, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v8, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_7
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v8, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private static declared-synchronized getCanonicalSystemLocationZIDs()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v8, Landroid/icu/impl/ZoneMeta;

    monitor-enter v8

    const/4 v4, 0x0

    :try_start_0
    sget-object v7, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;

    if-eqz v7, :cond_0

    sget-object v7, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/Set;

    move-object v4, v0

    :cond_0
    if-nez v4, :cond_4

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    array-length v9, v1

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v5, v1, v7

    const-string/jumbo v10, "Etc/Unknown"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v10, "001"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v8

    return-object v4
.end method

.method private static declared-synchronized getCanonicalSystemZIDs()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v7, Landroid/icu/impl/ZoneMeta;

    monitor-enter v7

    const/4 v4, 0x0

    :try_start_0
    sget-object v6, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    if-eqz v6, :cond_0

    sget-object v6, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/Set;

    move-object v4, v0

    :cond_0
    if-nez v4, :cond_4

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    array-length v8, v1

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v5, v1, v6

    const-string/jumbo v9, "Etc/Unknown"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v7

    return-object v4
.end method

.method public static getCustomID(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v0, v3, [I

    invoke-static {p0, v0}, Landroid/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z

    move-result v3

    if-eqz v3, :cond_1

    aget v3, v0, v1

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    aget v6, v0, v2

    if-gez v6, :cond_0

    :goto_0
    invoke-static {v3, v4, v5, v1}, Landroid/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCustomTimeZone(I)Landroid/icu/util/TimeZone;
    .locals 7

    const/4 v2, 0x0

    move v4, p0

    if-gez p0, :cond_0

    const/4 v2, 0x1

    neg-int v4, p0

    :cond_0
    div-int/lit16 v4, v4, 0x3e8

    rem-int/lit8 v3, v4, 0x3c

    div-int/lit8 v4, v4, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    div-int/lit8 v0, v4, 0x3c

    invoke-static {v0, v1, v3, v2}, Landroid/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/icu/util/SimpleTimeZone;

    invoke-direct {v6, p0, v5}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v6
.end method

.method public static getCustomTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 5

    const/4 v2, 0x4

    new-array v0, v2, [I

    invoke-static {p0, v0}, Landroid/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget v4, v0, v4

    shl-int/lit8 v4, v4, 0xb

    or-int/2addr v3, v4

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/ZoneMeta;->CUSTOM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    invoke-virtual {v2, v1, v0}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/TimeZone;

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static declared-synchronized getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const-class v8, Landroid/icu/impl/ZoneMeta;

    monitor-enter v8

    :try_start_0
    const-string/jumbo v3, ""

    if-ltz p1, :cond_1

    const/4 v7, 0x0

    invoke-static {v7, p0}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v5, -0x1

    :try_start_1
    const-string/jumbo v7, "links"

    invoke-virtual {v2, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v6

    array-length v7, v6

    if-ge p1, v7, :cond_0

    aget v5, v6, p1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    if-ltz v5, :cond_1

    :try_start_2
    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getZoneID(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v3, v4

    :cond_1
    monitor-exit v8

    return-object v3

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    sget-object v5, Landroid/icu/impl/ZoneMeta;->REGION_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v5, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    :try_start_0
    const-string/jumbo v5, "android/icu/impl/data/icudt56b"

    const-string/jumbo v6, "zoneinfo64"

    sget-object v7, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    const-string/jumbo v5, "Regions"

    invoke-virtual {v3, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    sget-object v5, Landroid/icu/impl/ZoneMeta;->REGION_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v5, p0, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getShortID(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    instance-of v1, p0, Landroid/icu/impl/OlsonTimeZone;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/icu/impl/OlsonTimeZone;

    invoke-virtual {v1}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShortID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const/16 v6, 0x2f

    const/16 v7, 0x3a

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    const-string/jumbo v7, "keyTypeData"

    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v6, v7, v8}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string/jumbo v6, "typeMap"

    invoke-virtual {v1, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    const-string/jumbo v6, "timezone"

    invoke-virtual {v4, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getSystemTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 1

    sget-object v0, Landroid/icu/impl/ZoneMeta;->SYSTEM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

    invoke-virtual {v0, p0, p0}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone;

    return-object v0
.end method

.method private static declared-synchronized getSystemZIDs()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v6, Landroid/icu/impl/ZoneMeta;

    monitor-enter v6

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Landroid/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    if-eqz v5, :cond_0

    sget-object v5, Landroid/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Set;

    move-object v4, v0

    :cond_0
    if-nez v4, :cond_3

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    array-length v7, v1

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v2, v1, v5

    const-string/jumbo v8, "Etc/Unknown"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_2
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v5, Landroid/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v6

    return-object v4
.end method

.method private static getZoneID(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object v1, v0, p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static declared-synchronized getZoneIDs()[Ljava/lang/String;
    .locals 6

    const-class v3, Landroid/icu/impl/ZoneMeta;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    const-string/jumbo v2, "android/icu/impl/data/icudt56b"

    const-string/jumbo v4, "zoneinfo64"

    sget-object v5, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v4, v5}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string/jumbo v2, "Names"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    :cond_1
    sget-object v2, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getZoneIndex(Ljava/lang/String;)I
    .locals 8

    const/4 v6, -0x1

    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    if-lez v7, :cond_0

    const/4 v5, 0x0

    array-length v2, v0

    const v1, 0x7fffffff

    :goto_0
    add-int v7, v5, v2

    div-int/lit8 v3, v7, 0x2

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_1
    return v6

    :cond_1
    move v1, v3

    aget-object v7, v0, v3

    invoke-virtual {p0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    if-gez v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_0
.end method

.method public static openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 8

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    if-nez p0, :cond_0

    :try_start_0
    const-string/jumbo v5, "android/icu/impl/data/icudt56b"

    const-string/jumbo v6, "zoneinfo64"

    sget-object v7, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    :cond_0
    const-string/jumbo v5, "Zones"

    invoke-virtual {p0, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method static parseCustomID(Ljava/lang/String;[I)Z
    .locals 12

    const/4 v4, 0x0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const-string/jumbo v11, "GMT"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v10, v11, :cond_11

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "GMT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    new-instance v6, Ljava/text/ParsePosition;

    const-string/jumbo v10, "GMT"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v6, v10}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_1

    const/4 v8, -0x1

    :cond_0
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-static {}, Landroid/icu/text/NumberFormat;->getInstance()Landroid/icu/text/NumberFormat;

    move-result-object v4

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/icu/text/NumberFormat;->setParseIntegerOnly(Z)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {v4, p0, v6}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ne v10, v9, :cond_2

    const/4 v10, 0x0

    return v10

    :cond_1
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_0

    const/4 v10, 0x0

    return v10

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_e

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    sub-int/2addr v10, v9

    const/4 v11, 0x2

    if-gt v10, v11, :cond_3

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_4

    :cond_3
    const/4 v10, 0x0

    return v10

    :cond_4
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {v4, p0, v6}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    sub-int/2addr v10, v5

    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    const/4 v10, 0x0

    return v10

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_9

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-eq v10, v11, :cond_6

    const/4 v10, 0x0

    return v10

    :cond_6
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {v4, p0, v6}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_7

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    sub-int/2addr v10, v5

    const/4 v11, 0x2

    if-eq v10, v11, :cond_8

    :cond_7
    const/4 v10, 0x0

    return v10

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v7

    :cond_9
    :goto_0
    :pswitch_0
    const/16 v10, 0x17

    if-gt v0, v10, :cond_11

    const/16 v10, 0x3b

    if-gt v2, v10, :cond_11

    const/16 v10, 0x3b

    if-gt v7, v10, :cond_11

    if-eqz p1, :cond_d

    array-length v10, p1

    const/4 v11, 0x1

    if-lt v10, v11, :cond_a

    const/4 v10, 0x0

    aput v8, p1, v10

    :cond_a
    array-length v10, p1

    const/4 v11, 0x2

    if-lt v10, v11, :cond_b

    const/4 v10, 0x1

    aput v0, p1, v10

    :cond_b
    array-length v10, p1

    const/4 v11, 0x3

    if-lt v10, v11, :cond_c

    const/4 v10, 0x2

    aput v2, p1, v10

    :cond_c
    array-length v10, p1

    const/4 v11, 0x4

    if-lt v10, v11, :cond_d

    const/4 v10, 0x3

    aput v7, p1, v10

    :cond_d
    const/4 v10, 0x1

    return v10

    :cond_e
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    sub-int v1, v10, v9

    if-lez v1, :cond_f

    const/4 v10, 0x6

    if-ge v10, v1, :cond_10

    :cond_f
    const/4 v10, 0x0

    return v10

    :cond_10
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    rem-int/lit8 v2, v0, 0x64

    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    :pswitch_2
    rem-int/lit8 v7, v0, 0x64

    div-int/lit8 v10, v0, 0x64

    rem-int/lit8 v2, v10, 0x64

    div-int/lit16 v0, v0, 0x2710

    goto :goto_0

    :cond_11
    const/4 v10, 0x0

    return v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
