.class public Landroid/icu/text/CurrencyPluralInfo;
.super Ljava/lang/Object;
.source "CurrencyPluralInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final defaultCurrencyPluralPattern:Ljava/lang/String;

.field private static final defaultCurrencyPluralPatternChar:[C

.field private static final serialVersionUID:J = 0x1L

.field private static final tripleCurrencySign:[C

.field private static final tripleCurrencyStr:Ljava/lang/String;


# instance fields
.field private pluralCountToCurrencyUnitPattern:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pluralRules:Landroid/icu/text/PluralRules;

.field private ulocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/CurrencyPluralInfo;->-assertionsDisabled:Z

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencySign:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPatternChar:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0xa4s
        0xa4s
        0xa4s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x0s
        0x2es
        0x23s
        0x23s
        0x20s
        0xa4s
        0xa4s
        0xa4s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public static getInstance()Landroid/icu/text/CurrencyPluralInfo;
    .locals 1

    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {v0}, Landroid/icu/text/CurrencyPluralInfo;-><init>()V

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyPluralInfo;
    .locals 1

    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/CurrencyPluralInfo;
    .locals 1

    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private initialize(Landroid/icu/util/ULocale;)V
    .locals 1

    iput-object p1, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->setupCurrencyPluralPattern(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private setupCurrencyPluralPattern(Landroid/icu/util/ULocale;)V
    .locals 19

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    const/4 v6, 0x0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_0
    sget-object v17, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getUnitPatterns()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v17, "{0}"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v17, "{1}"

    sget-object v18, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    move-object v7, v11

    const-string/jumbo v17, "{0}"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v17, "{1}"

    sget-object v18, Landroid/icu/text/CurrencyPluralInfo;->tripleCurrencyStr:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/CurrencyPluralInfo;

    iget-object v5, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {v5}, Landroid/icu/util/ULocale;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/ULocale;

    iput-object v5, v2, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v2, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    iget-object v5, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, v2, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v5, v1}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_0
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/icu/text/CurrencyPluralInfo;

    if-eqz v2, :cond_1

    move-object v0, p1

    nop

    nop

    iget-object v2, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    iget-object v3, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v2, v3}, Landroid/icu/text/PluralRules;->equals(Landroid/icu/text/PluralRules;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    iget-object v2, v0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v1, "other"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    const-string/jumbo v2, "other"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Landroid/icu/text/CurrencyPluralInfo;->defaultCurrencyPluralPattern:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public getPluralRules()Landroid/icu/text/PluralRules;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Landroid/icu/text/CurrencyPluralInfo;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method pluralPatternIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method select(D)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCurrencyPluralPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralCountToCurrencyUnitPattern:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLocale(Landroid/icu/util/ULocale;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/CurrencyPluralInfo;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/text/CurrencyPluralInfo;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public setPluralRules(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/icu/text/PluralRules;->createRules(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CurrencyPluralInfo;->pluralRules:Landroid/icu/text/PluralRules;

    return-void
.end method
