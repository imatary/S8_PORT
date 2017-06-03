.class public Landroid/icu/text/TimeUnitFormat;
.super Landroid/icu/text/MeasureFormat;
.source "TimeUnitFormat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ABBREVIATED_NAME:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_PATTERN_FOR_DAY:Ljava/lang/String; = "{0} d"

.field private static final DEFAULT_PATTERN_FOR_HOUR:Ljava/lang/String; = "{0} h"

.field private static final DEFAULT_PATTERN_FOR_MINUTE:Ljava/lang/String; = "{0} min"

.field private static final DEFAULT_PATTERN_FOR_MONTH:Ljava/lang/String; = "{0} m"

.field private static final DEFAULT_PATTERN_FOR_SECOND:Ljava/lang/String; = "{0} s"

.field private static final DEFAULT_PATTERN_FOR_WEEK:Ljava/lang/String; = "{0} w"

.field private static final DEFAULT_PATTERN_FOR_YEAR:Ljava/lang/String; = "{0} y"

.field public static final FULL_NAME:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TOTAL_STYLES:I = 0x2

.field private static final serialVersionUID:J = -0x3374a809c751fb09L


# instance fields
.field private format:Landroid/icu/text/NumberFormat;

.field private transient isReady:Z

.field private locale:Landroid/icu/util/ULocale;

.field private transient mf:Landroid/icu/text/MeasureFormat;

.field private transient pluralRules:Landroid/icu/text/PluralRules;

.field private style:I

.field private transient timeUnitToCountToPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/MeasureFormat;-><init>()V

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, v1}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    iput-boolean v2, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    iput v2, p0, Landroid/icu/text/TimeUnitFormat;->style:I

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/icu/text/MeasureFormat;-><init>()V

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "style should be either FULL_NAME or ABBREVIATED_NAME style"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    :goto_0
    invoke-static {p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    iput p2, p0, Landroid/icu/text/TimeUnitFormat;->style:I

    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    iput-boolean v1, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    return-void

    :cond_2
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;ILandroid/icu/text/NumberFormat;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    invoke-virtual {p0, v0}, Landroid/icu/text/TimeUnitFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/TimeUnitFormat;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeUnitFormat;-><init>(Ljava/util/Locale;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Landroid/icu/text/TimeUnitFormat;

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    iget v2, p0, Landroid/icu/text/TimeUnitFormat;->style:I

    iget-object v3, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;ILandroid/icu/text/NumberFormat;)V

    return-object v0
.end method

.method private searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual/range {p3 .. p3}, Landroid/icu/util/MeasureUnit;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_0
    if-eqz v13, :cond_1

    :try_start_0
    const-string/jumbo v2, "android/icu/impl/data/icudt56b/unit"

    invoke-static {v2, v13}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v16

    check-cast v16, Landroid/icu/impl/ICUResourceBundle;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v10, Landroid/icu/text/MessageFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v10, v14, v2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    move-object/from16 v0, p6

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    if-nez v12, :cond_0

    const/4 v2, 0x2

    new-array v12, v2, [Ljava/lang/Object;

    move-object/from16 v0, p6

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    aput-object v10, v12, p2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v9

    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    move-result-object v13

    goto :goto_0

    :cond_1
    if-nez v13, :cond_2

    const-string/jumbo v2, "unitsShort"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "units"

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p6

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, p2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const-string/jumbo v2, "other"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v10, 0x0

    sget-object v2, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_5

    new-instance v10, Landroid/icu/text/MessageFormat;

    const-string/jumbo v2, "{0} s"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    :cond_3
    :goto_1
    move-object/from16 v0, p6

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    if-nez v12, :cond_4

    const/4 v2, 0x2

    new-array v12, v2, [Ljava/lang/Object;

    move-object/from16 v0, p6

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    aput-object v10, v12, p2

    :goto_2
    return-void

    :cond_5
    sget-object v2, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_6

    new-instance v10, Landroid/icu/text/MessageFormat;

    const-string/jumbo v2, "{0} min"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_1

    :cond_6
    sget-object v2, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_7

    new-instance v10, Landroid/icu/text/MessageFormat;

    const-string/jumbo v2, "{0} h"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_1

    :cond_7
    sget-object v2, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_8

    new-instance v10, Landroid/icu/text/MessageFormat;

    const-string/jumbo v2, "{0} w"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_1

    :cond_8
    sget-object v2, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_9

    new-instance v10, Landroid/icu/text/MessageFormat;

    const-string/jumbo v2, "{0} d"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_1

    :cond_9
    sget-object v2, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_a

    new-instance v10, Landroid/icu/text/MessageFormat;

    const-string/jumbo v2, "{0} m"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_1

    :cond_a
    sget-object v2, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_3

    new-instance v10, Landroid/icu/text/MessageFormat;

    const-string/jumbo v2, "{0} y"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v10, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v7, "other"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2
.end method

.method private setup()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1, v2}, Landroid/icu/text/UFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    :goto_0
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p0, v1, v2}, Landroid/icu/text/UFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    :cond_0
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getNumberInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    :cond_1
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeUnitFormat;->pluralRules:Landroid/icu/text/PluralRules;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "units/duration"

    iget-object v2, p0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/icu/text/TimeUnitFormat;->setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V

    const-string/jumbo v1, "unitsShort/duration"

    iget-object v2, p0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-direct {p0, v1, v2, v4, v0}, Landroid/icu/text/TimeUnitFormat;->setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V

    iput-boolean v4, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    return-void

    :cond_2
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    goto :goto_0
.end method

.method private setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v2, "android/icu/impl/data/icudt56b/unit"

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v20

    check-cast v20, Landroid/icu/impl/ICUResourceBundle;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v21

    const/4 v12, 0x0

    :goto_0
    move/from16 v0, v21

    if-ge v12, v0, :cond_9

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v22

    const/4 v5, 0x0

    const-string/jumbo v2, "year"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v5, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    :goto_1
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v15

    invoke-virtual {v15}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v9

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_0

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v0, v9, :cond_d

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_1
    const-string/jumbo v2, "month"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v5, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "day"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v5, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "hour"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v5, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "minute"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v5, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "second"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v5, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "week"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v5, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    goto/16 :goto_1

    :cond_7
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v17

    new-instance v14, Landroid/icu/text/MessageFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    move-object/from16 v0, v17

    invoke-direct {v14, v0, v2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/Object;

    if-nez v16, :cond_8

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v8, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    aput-object v14, v16, p3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v10

    :cond_9
    invoke-static {}, Landroid/icu/util/TimeUnit;->values()[Landroid/icu/util/TimeUnit;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/TimeUnitFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v2}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v13

    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, v23

    array-length v2, v0

    if-ge v11, v2, :cond_f

    aget-object v5, v23, v11

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_a

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_b
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    aget-object v2, v2, p3

    if-nez v2, :cond_b

    :cond_c
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object v7, v6

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_5

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_f
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->toTimeUnitProxy()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Landroid/icu/text/MeasureFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeUnitFormat;

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NumberFormat;

    iput-object v1, v0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeUnitFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeUnitAmount;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeUnitAmount;
    .locals 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeUnitFormat;->setup()V

    :cond_0
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/icu/util/TimeUnit;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v16, 0x0

    :goto_0
    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/Object;

    aget-object v11, v21, v16

    check-cast v11, Landroid/icu/text/MessageFormat;

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/icu/text/MessageFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v8, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_4
    const/16 v17, 0x0

    move-object/from16 v21, v10

    check-cast v21, [Ljava/lang/Object;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_5

    check-cast v10, [Ljava/lang/Object;

    const/16 v21, 0x0

    aget-object v18, v10, v21

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v17, v18

    check-cast v17, Ljava/lang/Number;

    :cond_5
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v21

    sub-int v9, v21, v8

    if-le v9, v6, :cond_3

    move-object/from16 v14, v17

    move-object/from16 v15, v19

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    move v6, v9

    move-object v3, v2

    goto :goto_1

    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    goto :goto_2

    :cond_7
    if-nez v14, :cond_8

    if-eqz v6, :cond_8

    const-string/jumbo v21, "zero"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :cond_8
    :goto_3
    if-nez v6, :cond_c

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/16 v21, 0x0

    return-object v21

    :cond_9
    const-string/jumbo v21, "one"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_3

    :cond_a
    const-string/jumbo v21, "two"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_3

    :cond_b
    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_3

    :cond_c
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    new-instance v21, Landroid/icu/util/TimeUnitAmount;

    move-object/from16 v0, v21

    invoke-direct {v0, v14, v15}, Landroid/icu/util/TimeUnitAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/TimeUnit;)V

    return-object v21

    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method public setLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeUnitFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/MeasureFormat;->withLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    :cond_0
    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Landroid/icu/text/TimeUnitFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/TimeUnitFormat;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeUnitFormat;

    move-result-object v0

    return-object v0
.end method

.method public setNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/TimeUnitFormat;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat;->withLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getNumberInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat;->withNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat;->withNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    goto :goto_0
.end method
