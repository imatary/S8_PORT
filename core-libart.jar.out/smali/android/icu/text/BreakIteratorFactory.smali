.class final Landroid/icu/text/BreakIteratorFactory;
.super Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
.source "BreakIteratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BreakIteratorFactory$BFService;
    }
.end annotation


# static fields
.field private static final KIND_NAMES:[Ljava/lang/String;

.field static final service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static synthetic -wrap0(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/text/BreakIteratorFactory;->createBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/icu/text/BreakIteratorFactory$BFService;

    invoke-direct {v0}, Landroid/icu/text/BreakIteratorFactory$BFService;-><init>()V

    sput-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "grapheme"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "word"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "line"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "sentence"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;-><init>()V

    return-void
.end method

.method private static createBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .locals 16

    const/4 v5, 0x0

    const-string/jumbo v12, "android/icu/impl/data/icudt56b/brkitr"

    sget-object v13, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    move-object/from16 v0, p0

    invoke-static {v12, v0, v13}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/ICUResourceBundle;

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    const-string/jumbo v12, "lb"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v12, "strict"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "normal"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "loose"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_1
    if-nez v10, :cond_2

    :try_start_0
    sget-object v12, Landroid/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    aget-object v9, v12, p1

    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "boundaries/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "brkitr/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Landroid/icu/text/RuleBasedBreakIterator;->getInstanceFromCompiledRules(Ljava/nio/ByteBuffer;)Landroid/icu/text/RuleBasedBreakIterator;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :goto_1
    invoke-virtual {v7}, Landroid/icu/impl/ICUResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v11

    invoke-virtual {v5, v11, v11}, Landroid/icu/text/RuleBasedBreakIterator;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/icu/text/RuleBasedBreakIterator;->setBreakType(I)V

    return-object v5

    :cond_2
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Landroid/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    aget-object v13, v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v12, Ljava/util/MissingResourceException;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ""

    const-string/jumbo v15, ""

    invoke-direct {v12, v13, v14, v15}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v12

    :catch_1
    move-exception v3

    invoke-static {v3}, Landroid/icu/impl/Assert;->fail(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public createBreakIterator(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v2}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, p2}, Landroid/icu/text/BreakIteratorFactory;->createBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/icu/util/ULocale;

    sget-object v2, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v2, p1, p2, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/BreakIterator;

    aget-object v2, v0, v3

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/BreakIterator;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-object v1
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    check-cast p1, Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {v0, p1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    move-result v0

    return v0
.end method
