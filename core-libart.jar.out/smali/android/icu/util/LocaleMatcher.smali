.class public Landroid/icu/util/LocaleMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/LocaleMatcher$LanguageMatcherData;,
        Landroid/icu/util/LocaleMatcher$Level;,
        Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;,
        Landroid/icu/util/LocaleMatcher$OutputDouble;,
        Landroid/icu/util/LocaleMatcher$ScoreData;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_THRESHOLD:D = 0.5

.field private static final UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

.field private static canonicalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;


# instance fields
.field private final defaultLanguage:Landroid/icu/util/ULocale;

.field desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/impl/Row$R3",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;>;>;"
        }
    .end annotation
.end field

.field localeToMaxLocaleAndWeight:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/impl/Row$R3",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

.field private final threshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x3

    new-instance v6, Landroid/icu/util/ULocale;

    const-string/jumbo v7, "und"

    invoke-direct {v6, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v6, Landroid/icu/util/LocaleMatcher;->UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    const-string/jumbo v7, "iw"

    const-string/jumbo v8, "he"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    const-string/jumbo v7, "mo"

    const-string/jumbo v8, "ro"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    const-string/jumbo v7, "tl"

    const-string/jumbo v8, "fil"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/icu/util/LocaleMatcher;->getICUSupplementalData()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    const-string/jumbo v6, "languageMatching"

    invoke-virtual {v4, v6}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    const-string/jumbo v6, "written"

    invoke-virtual {v2, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    new-instance v6, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-direct {v6}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;-><init>()V

    sput-object v6, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v6

    if-le v6, v10, :cond_0

    const-string/jumbo v6, "1"

    invoke-virtual {v0, v10}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    sget-object v6, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->addDistance(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    sget-object v6, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-virtual {v6}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/LocalePriorityList;)V
    .locals 1

    sget-object v0, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-direct {p0, p1, v0}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;D)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;D)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Landroid/icu/util/LocaleMatcher;->desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;

    if-nez p2, :cond_0

    sget-object v3, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    :goto_0
    iput-object v3, p0, Landroid/icu/util/LocaleMatcher;->matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    invoke-virtual {p1, v1}, Landroid/icu/util/LocalePriorityList;->getWeight(Landroid/icu/util/ULocale;)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Landroid/icu/util/LocaleMatcher;->add(Landroid/icu/util/ULocale;Ljava/lang/Double;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/icu/util/LocaleMatcher;->processMapping()V

    invoke-virtual {p1}, Landroid/icu/util/LocalePriorityList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    :goto_2
    iput-object v3, p0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    iput-wide p3, p0, Landroid/icu/util/LocaleMatcher;->threshold:D

    return-void

    :cond_2
    move-object v3, v4

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocalePriorityList;)V

    return-void
.end method

.method private add(Landroid/icu/util/ULocale;Ljava/lang/Double;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/icu/util/LocaleMatcher;->canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {p1, v1, p2}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/Row;->freeze()Landroid/icu/impl/Row;

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addFiltered(Ljava/lang/String;Landroid/icu/impl/Row$R3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/impl/Row$R3",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 7

    sget-object v4, Landroid/icu/util/LocaleMatcher;->UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/icu/util/LocaleMatcher;->UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

    return-object v4

    :cond_0
    invoke-static {p1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/icu/util/ULocale;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v0, "und"

    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v3, "Zzzz"

    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v1, "ZZ"

    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v4

    :cond_5
    return-object v2
.end method

.method private getBestMatchInternal(Landroid/icu/util/ULocale;Landroid/icu/util/LocaleMatcher$OutputDouble;)Landroid/icu/util/ULocale;
    .locals 20

    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/LocaleMatcher;->canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v10

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/util/LocaleMatcher;->desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/icu/impl/Row$R3;

    invoke-virtual {v13}, Landroid/icu/impl/Row;->get0()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/util/ULocale;

    invoke-virtual {v13}, Landroid/icu/impl/Row;->get1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/util/ULocale;

    invoke-virtual {v13}, Landroid/icu/impl/Row;->get2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v12, v9}, Landroid/icu/util/LocaleMatcher;->match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    move-result-wide v6

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    mul-double v16, v6, v18

    cmpl-double v15, v16, v4

    if-lez v15, :cond_0

    move-wide/from16 v4, v16

    move-object v3, v12

    const-wide v18, 0x3feff7ced916872bL    # 0.999

    cmpl-double v15, v16, v18

    if-lez v15, :cond_0

    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/icu/util/LocaleMatcher;->threshold:D

    move-wide/from16 v18, v0

    cmpg-double v15, v4, v18

    if-gez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iput-wide v4, v0, Landroid/icu/util/LocaleMatcher$OutputDouble;->value:D

    :cond_3
    return-object v3
.end method

.method public static getICUSupplementalData()Landroid/icu/impl/ICUResourceBundle;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v1, "android/icu/impl/data/icudt56b"

    const-string/jumbo v2, "supplementalData"

    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method public static match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/icu/util/LocaleMatcher;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, p1}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v0, p0, v1, p1, v2}, Landroid/icu/util/LocaleMatcher;->match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    move-result-wide v2

    return-wide v2
.end method

.method private processMapping()V
    .locals 9

    iget-object v8, p0, Landroid/icu/util/LocaleMatcher;->matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-virtual {v8}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->matchingLanguages()Landroid/icu/impl/Relation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/impl/Relation;->keyValuesSet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    iget-object v8, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/Row$R3;

    invoke-virtual {v5}, Landroid/icu/impl/Row;->get0()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v0, v5}, Landroid/icu/util/LocaleMatcher;->addFiltered(Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/Row$R3;

    invoke-virtual {v5}, Landroid/icu/impl/Row;->get0()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v5}, Landroid/icu/util/LocaleMatcher;->addFiltered(Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 7

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    new-instance v6, Landroid/icu/util/ULocale;

    if-nez v1, :cond_2

    :goto_0
    if-nez v5, :cond_3

    :goto_1
    if-nez v3, :cond_4

    :goto_2
    invoke-direct {v6, v0, v4, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_1
    if-nez v3, :cond_0

    return-object p1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v4, v5

    goto :goto_1

    :cond_4
    move-object v2, v3

    goto :goto_2
.end method

.method public getBestMatch(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/ULocale;
    .locals 18

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const-wide/16 v10, 0x0

    new-instance v8, Landroid/icu/util/LocaleMatcher$OutputDouble;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/icu/util/LocaleMatcher$OutputDouble;-><init>(Landroid/icu/util/LocaleMatcher$OutputDouble;)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Landroid/icu/util/LocaleMatcher;->getBestMatchInternal(Landroid/icu/util/ULocale;Landroid/icu/util/LocaleMatcher$OutputDouble;)Landroid/icu/util/ULocale;

    move-result-object v7

    iget-wide v14, v8, Landroid/icu/util/LocaleMatcher$OutputDouble;->value:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/icu/util/LocalePriorityList;->getWeight(Landroid/icu/util/ULocale;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double v12, v14, v10

    cmpl-double v9, v12, v4

    if-lez v9, :cond_0

    move-wide v4, v12

    move-object v2, v7

    :cond_0
    const-wide v14, 0x3fb1eb8549ab6fb0L    # 0.07000001

    add-double/2addr v10, v14

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/icu/util/LocaleMatcher;->threshold:D

    cmpg-double v9, v4, v14

    if-gez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    :cond_2
    return-object v2
.end method

.method public getBestMatch(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/LocaleMatcher;->getBestMatchInternal(Landroid/icu/util/ULocale;Landroid/icu/util/LocaleMatcher$OutputDouble;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public getBestMatch(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 1

    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/LocaleMatcher;->getBestMatch(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public varargs getBestMatch([Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add([Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/LocaleMatcher;->getBestMatch(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 2

    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
