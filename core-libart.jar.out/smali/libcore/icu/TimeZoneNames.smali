.class public final Llibcore/icu/TimeZoneNames;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/TimeZoneNames$1;,
        Llibcore/icu/TimeZoneNames$ZoneStringsCache;
    }
.end annotation


# static fields
.field public static final LONG_NAME:I = 0x1

.field public static final LONG_NAME_DST:I = 0x3

.field public static final NAME_COUNT:I = 0x5

.field public static final OLSON_NAME:I = 0x0

.field public static final SHORT_NAME:I = 0x2

.field public static final SHORT_NAME_DST:I = 0x4

.field private static final ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final availableTimeZoneIds:[Ljava/lang/String;

.field private static final cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Llibcore/icu/TimeZoneNames;->fillZoneStrings(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;

    new-instance v0, Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    invoke-direct {v0}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;-><init>()V

    sput-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Llibcore/icu/TimeZoneNames$1;

    invoke-direct {v0}, Llibcore/icu/TimeZoneNames$1;-><init>()V

    sput-object v0, Llibcore/icu/TimeZoneNames;->ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native fillZoneStrings(Ljava/lang/String;[[Ljava/lang/String;)V
.end method

.method public static forLocale(Ljava/util/Locale;)[Ljava/lang/String;
    .locals 10

    const/16 v9, 0x9

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v5

    invoke-virtual {v5}, Llibcore/util/ZoneInfoDB$TzData;->getZoneTab()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v2, v6, v5

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public static getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    sget-object v3, Llibcore/icu/TimeZoneNames;->ZONE_STRINGS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-ltz v0, :cond_3

    aget-object v2, p0, v0

    if-eqz p2, :cond_1

    if-ne p3, v4, :cond_0

    const/4 v3, 0x3

    aget-object v3, v2, v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x4

    aget-object v3, v2, v3

    goto :goto_0

    :cond_1
    if-ne p3, v4, :cond_2

    aget-object v3, v2, v4

    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x2

    aget-object v3, v2, v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method public static native getExemplarLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :cond_0
    sget-object v0, Llibcore/icu/TimeZoneNames;->cachedZoneStrings:Llibcore/icu/TimeZoneNames$ZoneStringsCache;

    invoke-virtual {v0, p0}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    return-object v0
.end method
