.class public Landroid/icu/text/CompactDecimalFormat;
.super Landroid/icu/text/DecimalFormat;
.source "CompactDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CompactDecimalFormat$Amount;,
        Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-text-CompactDecimalFormat$CompactStyleSwitchesValues:[I = null

.field private static final cache:Landroid/icu/text/CompactDecimalDataCache;

.field private static final serialVersionUID:J = 0x4173a3c399851eb2L


# instance fields
.field private final divisor:[J

.field private final pluralRules:Landroid/icu/text/PluralRules;

.field private final pluralToCurrencyAffixes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final units:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getandroid-icu-text-CompactDecimalFormat$CompactStyleSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/text/CompactDecimalFormat;->-android-icu-text-CompactDecimalFormat$CompactStyleSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/CompactDecimalFormat;->-android-icu-text-CompactDecimalFormat$CompactStyleSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->values()[Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Landroid/icu/text/CompactDecimalFormat;->-android-icu-text-CompactDecimalFormat$CompactStyleSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/text/CompactDecimalDataCache;

    invoke-direct {v0}, Landroid/icu/text/CompactDecimalDataCache;-><init>()V

    sput-object v0, Landroid/icu/text/CompactDecimalFormat;->cache:Landroid/icu/text/CompactDecimalDataCache;

    return-void
.end method

.method constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V
    .locals 4

    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;-><init>()V

    invoke-static {p1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-static {p1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormat;

    invoke-direct {p0, p1, p2}, Landroid/icu/text/CompactDecimalFormat;->getData(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalDataCache$Data;

    move-result-object v0

    iget-object v2, v0, Landroid/icu/text/CompactDecimalDataCache$Data;->units:Ljava/util/Map;

    iput-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    iget-object v2, v0, Landroid/icu/text/CompactDecimalDataCache$Data;->divisors:[J

    iput-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->divisor:[J

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Landroid/icu/text/CompactDecimalFormat;->finishInit(Landroid/icu/text/CompactDecimalFormat$CompactStyle;Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/text/PluralRules;[JLjava/util/Map;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/DecimalFormatSymbols;",
            "Landroid/icu/text/CompactDecimalFormat$CompactStyle;",
            "Landroid/icu/text/PluralRules;",
            "[J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;-><init>()V

    iput-object p4, p0, Landroid/icu/text/CompactDecimalFormat;->pluralRules:Landroid/icu/text/PluralRules;

    move-object/from16 v0, p8

    invoke-direct {p0, p6, p5, v0}, Landroid/icu/text/CompactDecimalFormat;->otherPluralVariant(Ljava/util/Map;[JLjava/util/Collection;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    invoke-virtual {p4}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Missmatch in pluralCategories, should be: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", was actually "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    iput-object v4, p0, Landroid/icu/text/CompactDecimalFormat;->divisor:[J

    if-nez p7, :cond_2

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    :cond_1
    invoke-direct {p0, p3, p1, p2}, Landroid/icu/text/CompactDecimalFormat;->finishInit(Landroid/icu/text/CompactDecimalFormat$CompactStyle;Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    return-void

    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Landroid/icu/text/DecimalFormat$Unit;

    const/4 v7, 0x0

    aget-object v7, v1, v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-direct {v6, v7, v8}, Landroid/icu/text/DecimalFormat$Unit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private finishInit(Landroid/icu/text/CompactDecimalFormat$CompactStyle;Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 1

    invoke-virtual {p0, p2}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setMaximumSignificantDigits(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    sget-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    return-void
.end method

.method private getData(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalDataCache$Data;
    .locals 3

    sget-object v1, Landroid/icu/text/CompactDecimalFormat;->cache:Landroid/icu/text/CompactDecimalDataCache;

    invoke-virtual {v1, p1}, Landroid/icu/text/CompactDecimalDataCache;->get(Landroid/icu/util/ULocale;)Landroid/icu/text/CompactDecimalDataCache$DataBundle;

    move-result-object v0

    invoke-static {}, Landroid/icu/text/CompactDecimalFormat;->-getandroid-icu-text-CompactDecimalFormat$CompactStyleSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Landroid/icu/text/CompactDecimalDataCache$DataBundle;->shortData:Landroid/icu/text/CompactDecimalDataCache$Data;

    return-object v1

    :pswitch_0
    iget-object v1, v0, Landroid/icu/text/CompactDecimalDataCache$DataBundle;->shortData:Landroid/icu/text/CompactDecimalDataCache$Data;

    return-object v1

    :pswitch_1
    iget-object v1, v0, Landroid/icu/text/CompactDecimalDataCache$DataBundle;->longData:Landroid/icu/text/CompactDecimalDataCache$Data;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;
    .locals 1

    new-instance v0, Landroid/icu/text/CompactDecimalFormat;

    invoke-direct {v0, p0, p1}, Landroid/icu/text/CompactDecimalFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;
    .locals 2

    new-instance v0, Landroid/icu/text/CompactDecimalFormat;

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/icu/text/CompactDecimalFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V

    return-object v0
.end method

.method private getPluralForm(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CompactDecimalFormat;->pluralRules:Landroid/icu/text/PluralRules;

    if-nez v0, :cond_0

    const-string/jumbo v0, "other"

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/CompactDecimalFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mapsAreEqual(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    return v5

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/icu/text/DecimalFormat$Unit;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    return v5

    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method private otherPluralVariant(Ljava/util/Map;[JLjava/util/Collection;)Ljava/util/Map;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/lang/String;",
            ">;[J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0xf

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    const-string/jumbo v21, "Must have at least 15 prefix items."

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_4

    aget-wide v22, p2, v5

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->log10(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v7, v0

    if-le v7, v5, :cond_1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Divisor["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "] must be less than or equal to 10^"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", but is: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-wide v22, p2, v5

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    :cond_1
    int-to-double v0, v7

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v18, v0

    aget-wide v22, p2, v5

    cmp-long v21, v18, v22

    if-eqz v21, :cond_2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Divisor["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "] must be a power of 10, but is: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-wide v22, p2, v5

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    :cond_2
    aget-wide v22, p2, v5

    cmp-long v21, v22, v10

    if-gez v21, :cond_3

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Bad divisor, the divisor for 10E"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-wide v22, p2, v5

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ") is less than the divisor for the divisor for 10E"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v5, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    :cond_3
    aget-wide v10, p2, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v21, "other"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[Ljava/lang/String;

    array-length v0, v15

    move/from16 v21, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Prefixes & suffixes must be present for all divisors "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    :cond_5
    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Landroid/icu/text/DecimalFormat$Unit;

    move-object/from16 v20, v0

    const/4 v5, 0x0

    :goto_2
    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_b

    aget-object v9, v15, v5

    if-nez v9, :cond_6

    aget-object v9, v4, v5

    :cond_6
    array-length v0, v9

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v21, 0x0

    aget-object v21, v9, v21

    if-nez v21, :cond_8

    :cond_7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Prefix or suffix is null for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    const/16 v21, 0x1

    aget-object v21, v9, v21

    if-eqz v21, :cond_7

    aget-wide v22, p2, v5

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->log10(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v7, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    aget-object v22, v9, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\uffff"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v22, v9, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\uffff"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-int v22, v5, v7

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_4
    new-instance v21, Landroid/icu/text/DecimalFormat$Unit;

    const/16 v22, 0x0

    aget-object v22, v9, v22

    const/16 v23, 0x1

    aget-object v23, v9, v23

    invoke-direct/range {v21 .. v23}, Landroid/icu/text/DecimalFormat$Unit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v21, v20, v5

    goto :goto_3

    :cond_a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    if-eq v0, v5, :cond_9

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Collision between values for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " and "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " for [prefix/suffix/index-log(divisor)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0xffff

    const/16 v23, 0x3b

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/icu/text/CompactDecimalFormat;->recordError(Ljava/util/Collection;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_c
    return-object v16
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method

.method private recordError(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private toAmount(DLandroid/icu/util/Output;)Landroid/icu/text/CompactDecimalFormat$Amount;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/text/DecimalFormat$Unit;",
            ">;)",
            "Landroid/icu/text/CompactDecimalFormat$Amount;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->isNumberNegative(D)Z

    move-result v1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->adjustNumberAsInFormatting(D)D

    move-result-wide p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, p1, v4

    if-gtz v3, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xf

    if-lt v0, v3, :cond_0

    const/16 v0, 0xe

    :cond_0
    iget-object v3, p0, Landroid/icu/text/CompactDecimalFormat;->divisor:[J

    aget-wide v4, v3, v0

    long-to-double v4, v4

    div-double/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->toDigitList(D)Landroid/icu/text/DigitList;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(DLandroid/icu/text/DigitList;)Landroid/icu/text/PluralRules$FixedDecimal;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/icu/text/CompactDecimalFormat;->getPluralForm(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    iget-object v3, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/DecimalFormat$Unit;

    iput-object v3, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_2

    neg-double p1, p1

    :cond_2
    new-instance v3, Landroid/icu/text/CompactDecimalFormat$Amount;

    iget-object v4, p0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    invoke-static {v4, v2, v0}, Landroid/icu/text/CompactDecimalDataCache;->getUnit(Ljava/util/Map;Ljava/lang/String;I)Landroid/icu/text/DecimalFormat$Unit;

    move-result-object v4

    invoke-direct {v3, p1, p2, v4}, Landroid/icu/text/CompactDecimalFormat$Amount;-><init>(DLandroid/icu/text/DecimalFormat$Unit;)V

    return-object v3

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/icu/text/CompactDecimalFormat;

    iget-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    iget-object v3, v0, Landroid/icu/text/CompactDecimalFormat;->units:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Landroid/icu/text/CompactDecimalFormat;->mapsAreEqual(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->divisor:[J

    iget-object v3, v0, Landroid/icu/text/CompactDecimalFormat;->divisor:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    iget-object v3, v0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    iget-object v3, v0, Landroid/icu/text/CompactDecimalFormat;->pluralToCurrencyAffixes:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/icu/text/CompactDecimalFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iget-object v2, v0, Landroid/icu/text/CompactDecimalFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v1, v2}, Landroid/icu/text/PluralRules;->equals(Landroid/icu/text/PluralRules;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    new-instance v1, Landroid/icu/util/Output;

    invoke-direct {v1}, Landroid/icu/util/Output;-><init>()V

    invoke-direct {p0, p1, p2, v1}, Landroid/icu/text/CompactDecimalFormat;->toAmount(DLandroid/icu/util/Output;)Landroid/icu/text/CompactDecimalFormat$Amount;

    move-result-object v0

    iget-object v3, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v3, Landroid/icu/text/DecimalFormat$Unit;

    invoke-virtual {v3, p3}, Landroid/icu/text/DecimalFormat$Unit;->writePrefix(Ljava/lang/StringBuffer;)V

    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/CompactDecimalFormat$Amount;->getUnit()Landroid/icu/text/DecimalFormat$Unit;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/icu/text/DecimalFormat$Unit;->writePrefix(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Landroid/icu/text/CompactDecimalFormat$Amount;->getQty()D

    move-result-wide v4

    invoke-super {p0, v4, v5, p3, p4}, Landroid/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p3}, Landroid/icu/text/DecimalFormat$Unit;->writeSuffix(Ljava/lang/StringBuffer;)V

    iget-object v3, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v3, Landroid/icu/text/DecimalFormat$Unit;

    invoke-virtual {v3, p3}, Landroid/icu/text/DecimalFormat$Unit;->writeSuffix(Ljava/lang/StringBuffer;)V

    :cond_1
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    long-to-double v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/icu/text/CompactDecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/CompactDecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/CompactDecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    invoke-virtual {p1}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/CompactDecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 5

    instance-of v2, p1, Ljava/lang/Number;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    move-object v1, p1

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Landroid/icu/text/CompactDecimalFormat;->toAmount(DLandroid/icu/util/Output;)Landroid/icu/text/CompactDecimalFormat$Amount;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/CompactDecimalFormat$Amount;->getQty()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0}, Landroid/icu/text/CompactDecimalFormat$Amount;->getUnit()Landroid/icu/text/DecimalFormat$Unit;

    move-result-object v3

    invoke-super {p0, v2, v3}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;Landroid/icu/text/DecimalFormat$Unit;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
