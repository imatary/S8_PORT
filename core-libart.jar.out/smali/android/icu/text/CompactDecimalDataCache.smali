.class Landroid/icu/text/CompactDecimalDataCache;
.super Ljava/lang/Object;
.source "CompactDecimalDataCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CompactDecimalDataCache$Data;,
        Landroid/icu/text/CompactDecimalDataCache$DataBundle;,
        Landroid/icu/text/CompactDecimalDataCache$QuoteState;,
        Landroid/icu/text/CompactDecimalDataCache$UResFlags;
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-text-CompactDecimalDataCache$QuoteStateSwitchesValues:[I = null

.field private static final synthetic -android-icu-text-CompactDecimalDataCache$UResFlagsSwitchesValues:[I = null

.field private static final LATIN_NUMBERING_SYSTEM:Ljava/lang/String; = "latn"

.field private static final LONG_STYLE:Ljava/lang/String; = "long"

.field static final MAX_DIGITS:I = 0xf

.field private static final NUMBER_ELEMENTS:Ljava/lang/String; = "NumberElements"

.field static final OTHER:Ljava/lang/String; = "other"

.field private static final PATTERNS_SHORT_PATH:Ljava/lang/String; = "patternsShort/decimalFormat"

.field private static final PATTERN_LONG_PATH:Ljava/lang/String; = "patternsLong/decimalFormat"

.field private static final SHORT_STYLE:Ljava/lang/String; = "short"


# instance fields
.field private final cache:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/CompactDecimalDataCache$DataBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getandroid-icu-text-CompactDecimalDataCache$QuoteStateSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/text/CompactDecimalDataCache;->-android-icu-text-CompactDecimalDataCache$QuoteStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/CompactDecimalDataCache;->-android-icu-text-CompactDecimalDataCache$QuoteStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->values()[Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_EMPTY:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_FULL:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->OUTSIDE:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Landroid/icu/text/CompactDecimalDataCache;->-android-icu-text-CompactDecimalDataCache$QuoteStateSwitchesValues:[I

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

.method private static synthetic -getandroid-icu-text-CompactDecimalDataCache$UResFlagsSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/text/CompactDecimalDataCache;->-android-icu-text-CompactDecimalDataCache$UResFlagsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/CompactDecimalDataCache;->-android-icu-text-CompactDecimalDataCache$UResFlagsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->values()[Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Landroid/icu/text/CompactDecimalDataCache;->-android-icu-text-CompactDecimalDataCache$UResFlagsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CompactDecimalDataCache;->cache:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method private static copyFromPreviousIndex(ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DecimalFormat$Unit;

    if-nez p0, :cond_0

    sget-object v2, Landroid/icu/text/DecimalFormat;->NULL_UNIT:Landroid/icu/text/DecimalFormat$Unit;

    aput-object v2, v0, p0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p0, -0x1

    aget-object v2, v0, v2

    aput-object v2, v0, p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static fillInMissing(Landroid/icu/text/CompactDecimalDataCache$Data;)V
    .locals 5

    const-wide/16 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->divisors:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->units:Ljava/util/Map;

    const-string/jumbo v4, "other"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/icu/text/DecimalFormat$Unit;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->divisors:[J

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->units:Ljava/util/Map;

    invoke-static {v0, v1}, Landroid/icu/text/CompactDecimalDataCache;->copyFromPreviousIndex(ILjava/util/Map;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->divisors:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache$Data;->units:Ljava/util/Map;

    invoke-static {v0, v1}, Landroid/icu/text/CompactDecimalDataCache;->propagateOtherToMissing(ILjava/util/Map;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static findWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Landroid/icu/text/CompactDecimalDataCache;->-getandroid-icu-text-CompactDecimalDataCache$UResFlagsSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    invoke-static {v0}, Landroid/icu/text/CompactDecimalDataCache;->isRoot(Landroid/icu/impl/ICUResourceBundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0

    :pswitch_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fixQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v4, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->OUTSIDE:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_1

    sget-object v5, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_EMPTY:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-static {}, Landroid/icu/text/CompactDecimalDataCache;->-getandroid-icu-text-CompactDecimalDataCache$QuoteStateSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    if-ne v0, v7, :cond_2

    sget-object v4, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_EMPTY:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v4, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->OUTSIDE:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    goto :goto_2

    :pswitch_1
    if-ne v0, v7, :cond_3

    sget-object v4, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->OUTSIDE:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    goto :goto_2

    :cond_3
    sget-object v4, Landroid/icu/text/CompactDecimalDataCache$QuoteState;->INSIDE_FULL:Landroid/icu/text/CompactDecimalDataCache$QuoteState;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getUnit(Ljava/util/Map;Ljava/lang/String;I)Landroid/icu/text/DecimalFormat$Unit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/icu/text/DecimalFormat$Unit;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DecimalFormat$Unit;

    if-nez v0, :cond_0

    const-string/jumbo v1, "other"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DecimalFormat$Unit;

    :cond_0
    aget-object v1, v0, p2

    return-object v1
.end method

.method private static getWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;
    .locals 4

    invoke-static {p0, p1, p2}, Landroid/icu/text/CompactDecimalDataCache;->findWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private static isRoot(Landroid/icu/impl/ICUResourceBundle;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "root"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static load(Landroid/icu/util/ULocale;)Landroid/icu/text/CompactDecimalDataCache$DataBundle;
    .locals 10

    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v3

    const-string/jumbo v8, "android/icu/impl/data/icudt56b"

    invoke-static {v8, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v8, "NumberElements"

    invoke-virtual {v5, v8}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v5

    invoke-virtual {v3}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string/jumbo v8, "latn"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    invoke-static {v5, v4, v8}, Landroid/icu/text/CompactDecimalDataCache;->findWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    const-string/jumbo v8, "patternsShort/decimalFormat"

    sget-object v9, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    invoke-static {v0, v8, v9}, Landroid/icu/text/CompactDecimalDataCache;->findWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v7

    const-string/jumbo v8, "patternsLong/decimalFormat"

    sget-object v9, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->NOT_ROOT:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    invoke-static {v0, v8, v9}, Landroid/icu/text/CompactDecimalDataCache;->findWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    :cond_0
    if-nez v7, :cond_1

    const-string/jumbo v8, "latn"

    sget-object v9, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    invoke-static {v5, v8, v9}, Landroid/icu/text/CompactDecimalDataCache;->getWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    const-string/jumbo v8, "patternsShort/decimalFormat"

    sget-object v9, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    invoke-static {v0, v8, v9}, Landroid/icu/text/CompactDecimalDataCache;->getWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v7

    if-nez v2, :cond_1

    const-string/jumbo v8, "patternsLong/decimalFormat"

    sget-object v9, Landroid/icu/text/CompactDecimalDataCache$UResFlags;->ANY:Landroid/icu/text/CompactDecimalDataCache$UResFlags;

    invoke-static {v0, v8, v9}, Landroid/icu/text/CompactDecimalDataCache;->findWithFallback(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$UResFlags;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/icu/text/CompactDecimalDataCache;->isRoot(Landroid/icu/impl/ICUResourceBundle;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v7}, Landroid/icu/text/CompactDecimalDataCache;->isRoot(Landroid/icu/impl/ICUResourceBundle;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    :goto_0
    const-string/jumbo v8, "short"

    invoke-static {v7, p0, v8}, Landroid/icu/text/CompactDecimalDataCache;->loadStyle(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/CompactDecimalDataCache$Data;

    move-result-object v6

    if-nez v2, :cond_3

    move-object v1, v6

    :goto_1
    new-instance v8, Landroid/icu/text/CompactDecimalDataCache$DataBundle;

    invoke-direct {v8, v6, v1}, Landroid/icu/text/CompactDecimalDataCache$DataBundle;-><init>(Landroid/icu/text/CompactDecimalDataCache$Data;Landroid/icu/text/CompactDecimalDataCache$Data;)V

    return-object v8

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "long"

    invoke-static {v2, p0, v8}, Landroid/icu/text/CompactDecimalDataCache;->loadStyle(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/CompactDecimalDataCache$Data;

    move-result-object v1

    goto :goto_1
.end method

.method private static loadStyle(Landroid/icu/impl/ICUResourceBundle;Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/CompactDecimalDataCache$Data;
    .locals 5

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v2

    new-instance v1, Landroid/icu/text/CompactDecimalDataCache$Data;

    const/16 v3, 0xf

    new-array v3, v3, [J

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v1, v3, v4}, Landroid/icu/text/CompactDecimalDataCache$Data;-><init>([JLjava/util/Map;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    invoke-static {v3, p1, p2, v1}, Landroid/icu/text/CompactDecimalDataCache;->populateData(Landroid/icu/util/UResourceBundle;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$Data;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/icu/text/CompactDecimalDataCache;->fillInMissing(Landroid/icu/text/CompactDecimalDataCache$Data;)V

    return-object v1
.end method

.method private static localeAndStyle(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "locale \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' style \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static populateData(Landroid/icu/util/UResourceBundle;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$Data;)V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-double v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-int v3, v6

    const/16 v5, 0xf

    if-lt v3, v5, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v17

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v10, v0, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "other"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v15, 0x1

    :cond_1
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Landroid/icu/text/CompactDecimalDataCache;->populatePrefixSuffix(Ljava/lang/String;ILjava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$Data;)I

    move-result v14

    if-eq v14, v11, :cond_3

    if-eqz v11, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Plural variant \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' template \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' for 10^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " has wrong number of zeros in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p2}, Landroid/icu/text/CompactDecimalDataCache;->localeAndStyle(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    move v11, v14

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    if-nez v15, :cond_5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No \'other\' plural variant defined for 10^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p2}, Landroid/icu/text/CompactDecimalDataCache;->localeAndStyle(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    move-wide v8, v12

    const/4 v10, 0x1

    :goto_1
    if-ge v10, v11, :cond_6

    const-wide/16 v6, 0xa

    div-long/2addr v8, v6

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/icu/text/CompactDecimalDataCache$Data;->divisors:[J

    aput-wide v8, v5, v3

    return-void
.end method

.method private static populatePrefixSuffix(Ljava/lang/String;ILjava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/CompactDecimalDataCache$Data;)I
    .locals 8

    const/4 v6, 0x0

    const-string/jumbo v5, "0"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "0"

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expect at least one zero in template \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' for variant \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' for 10^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3, p4}, Landroid/icu/text/CompactDecimalDataCache;->localeAndStyle(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/text/CompactDecimalDataCache;->fixQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/text/CompactDecimalDataCache;->fixQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/icu/text/DecimalFormat$Unit;

    invoke-direct {v5, v3, v4}, Landroid/icu/text/DecimalFormat$Unit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p5, Landroid/icu/text/CompactDecimalDataCache$Data;->units:Ljava/util/Map;

    invoke-static {v5, p0, p1, v6}, Landroid/icu/text/CompactDecimalDataCache;->saveUnit(Landroid/icu/text/DecimalFormat$Unit;Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v5, p1, 0x1

    return v5

    :cond_1
    add-int/lit8 v1, v0, 0x1

    :goto_0
    if-gt v1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int v5, v1, v0

    return v5
.end method

.method private static propagateOtherToMissing(ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v3, "other"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/icu/text/DecimalFormat$Unit;

    aget-object v2, v3, p0

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DecimalFormat$Unit;

    aget-object v3, v0, p0

    if-nez v3, :cond_0

    aput-object v2, v0, p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static saveUnit(Landroid/icu/text/DecimalFormat$Unit;Ljava/lang/String;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DecimalFormat$Unit;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DecimalFormat$Unit;

    if-nez v0, :cond_0

    const/16 v1, 0xf

    new-array v0, v1, [Landroid/icu/text/DecimalFormat$Unit;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    aput-object p0, v0, p2

    return-void
.end method


# virtual methods
.method get(Landroid/icu/util/ULocale;)Landroid/icu/text/CompactDecimalDataCache$DataBundle;
    .locals 2

    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, p1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CompactDecimalDataCache$DataBundle;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/icu/text/CompactDecimalDataCache;->load(Landroid/icu/util/ULocale;)Landroid/icu/text/CompactDecimalDataCache$DataBundle;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/CompactDecimalDataCache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, p1, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
