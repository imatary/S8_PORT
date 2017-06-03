.class final Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
.super Landroid/icu/impl/UResource$TableSink;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ZNamesLoader"
.end annotation


# static fields
.field private static DUMMY_LOADER:Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

.field private static NO_NAME:Ljava/lang/String;

.field private static NUM_META_ZONE_NAMES:I

.field private static NUM_TIME_ZONE_NAMES:I


# instance fields
.field private names:[Ljava/lang/String;

.field private numNames:I


# direct methods
.method static synthetic -get0()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .locals 1

    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->DUMMY_LOADER:Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->getNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    sput v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NUM_META_ZONE_NAMES:I

    const/4 v0, 0x7

    sput v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NUM_TIME_ZONE_NAMES:I

    const-string/jumbo v0, ""

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NO_NAME:Ljava/lang/String;

    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(I)V

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->DUMMY_LOADER:Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/UResource$TableSink;-><init>()V

    iput p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    return-void
.end method

.method static forMetaZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .locals 2

    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    sget v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NUM_META_ZONE_NAMES:I

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(I)V

    return-object v0
.end method

.method static forTimeZoneNames()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .locals 2

    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    sget v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NUM_TIME_ZONE_NAMES:I

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(I)V

    return-object v0
.end method

.method private getNames()[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    if-nez v4, :cond_0

    return-object v6

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    aget-object v2, v4, v0

    if-eqz v2, :cond_1

    sget-object v4, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NO_NAME:Ljava/lang/String;

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    aput-object v6, v4, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    return-object v6

    :cond_4
    iget v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    if-eq v1, v4, :cond_5

    iget v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    sget v5, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NUM_TIME_ZONE_NAMES:I

    if-ne v4, v5, :cond_6

    :cond_5
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    iput-object v6, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    return-object v3

    :cond_6
    new-array v3, v1, [Ljava/lang/String;

    :cond_7
    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    aput-object v6, v4, v1

    if-gtz v1, :cond_7

    return-object v3
.end method

.method private static nameTypeFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/TimeZoneNames$NameType;
    .locals 8

    const/16 v7, 0x67

    const/16 v6, 0x64

    const/16 v5, 0x73

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v1

    const/16 v3, 0x6c

    if-ne v0, v3, :cond_4

    if-ne v1, v7, :cond_2

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    if-ne v1, v5, :cond_3

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    :cond_3
    if-ne v1, v6, :cond_1

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_8

    if-ne v1, v7, :cond_6

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    :cond_5
    :goto_1
    return-object v2

    :cond_6
    if-ne v1, v5, :cond_7

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_1

    :cond_7
    if-ne v1, v6, :cond_5

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_1

    :cond_8
    const/16 v3, 0x65

    if-ne v0, v3, :cond_9

    const/16 v3, 0x63

    if-ne v1, v3, :cond_9

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    return-object v2

    :cond_9
    return-object v2
.end method


# virtual methods
.method load(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1, p2, p0}, Landroid/icu/impl/ICUResourceBundle;->getAllTableItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$TableSink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->getNames()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v2
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 4

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->nameTypeFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    iget v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v2

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_1
    return-void
.end method

.method public putNoFallback(Landroid/icu/impl/UResource$Key;)V
    .locals 4

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->nameTypeFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    iget v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->numNames:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v2

    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->NO_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    :cond_1
    return-void
.end method
