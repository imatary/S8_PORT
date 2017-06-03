.class public final Landroid/icu/util/LocaleData;
.super Ljava/lang/Object;
.source "LocaleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/LocaleData$MeasurementSystem;,
        Landroid/icu/util/LocaleData$PaperSize;
    }
.end annotation


# static fields
.field public static final ALT_QUOTATION_END:I = 0x3

.field public static final ALT_QUOTATION_START:I = 0x2

.field public static final DELIMITER_COUNT:I = 0x4

.field private static final DELIMITER_TYPES:[Ljava/lang/String;

.field public static final ES_AUXILIARY:I = 0x1

.field public static final ES_COUNT:I = 0x5

.field public static final ES_CURRENCY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ES_INDEX:I = 0x2

.field public static final ES_PUNCTUATION:I = 0x4

.field public static final ES_STANDARD:I = 0x0

.field private static final LOCALE_DISPLAY_PATTERN:Ljava/lang/String; = "localeDisplayPattern"

.field private static final MEASUREMENT_SYSTEM:Ljava/lang/String; = "MeasurementSystem"

.field private static final PAPER_SIZE:Ljava/lang/String; = "PaperSize"

.field private static final PATTERN:Ljava/lang/String; = "pattern"

.field public static final QUOTATION_END:I = 0x1

.field public static final QUOTATION_START:I = 0x0

.field private static final SEPARATOR:Ljava/lang/String; = "separator"

.field private static gCLDRVersion:Landroid/icu/util/VersionInfo;


# instance fields
.field private bundle:Landroid/icu/impl/ICUResourceBundle;

.field private langBundle:Landroid/icu/impl/ICUResourceBundle;

.field private noSubstitute:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "quotationStart"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "quotationEnd"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "alternateQuotationStart"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "alternateQuotationEnd"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/LocaleData;->DELIMITER_TYPES:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCLDRVersion()Landroid/icu/util/VersionInfo;
    .locals 5

    sget-object v2, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    if-nez v2, :cond_0

    const-string/jumbo v2, "android/icu/impl/data/icudt56b"

    const-string/jumbo v3, "supplementalData"

    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string/jumbo v2, "cldrVersion"

    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    move-result-object v2

    sput-object v2, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    :cond_0
    sget-object v2, Landroid/icu/util/LocaleData;->gCLDRVersion:Landroid/icu/util/VersionInfo;

    return-object v2
.end method

.method public static getExemplarSet(Landroid/icu/util/ULocale;I)Landroid/icu/text/UnicodeSet;
    .locals 2

    invoke-static {p0}, Landroid/icu/util/LocaleData;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/icu/util/LocaleData;->getExemplarSet(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public static getExemplarSet(Landroid/icu/util/ULocale;II)Landroid/icu/text/UnicodeSet;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/LocaleData;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/LocaleData;->getExemplarSet(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Landroid/icu/util/LocaleData;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/LocaleData;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;
    .locals 2

    new-instance v0, Landroid/icu/util/LocaleData;

    invoke-direct {v0}, Landroid/icu/util/LocaleData;-><init>()V

    const-string/jumbo v1, "android/icu/impl/data/icudt56b"

    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    iput-object v1, v0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v1, "android/icu/impl/data/icudt56b/lang"

    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    iput-object v1, v0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    return-object v0
.end method

.method public static final getMeasurementSystem(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData$MeasurementSystem;
    .locals 3

    const-string/jumbo v2, "MeasurementSystem"

    invoke-static {p0, v2}, Landroid/icu/util/LocaleData;->measurementTypeBundleForLocale(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v1

    sget-object v2, Landroid/icu/util/LocaleData$MeasurementSystem;->US:Landroid/icu/util/LocaleData$MeasurementSystem;

    invoke-static {v2, v1}, Landroid/icu/util/LocaleData$MeasurementSystem;->-wrap0(Landroid/icu/util/LocaleData$MeasurementSystem;I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/icu/util/LocaleData$MeasurementSystem;->US:Landroid/icu/util/LocaleData$MeasurementSystem;

    return-object v2

    :cond_0
    sget-object v2, Landroid/icu/util/LocaleData$MeasurementSystem;->UK:Landroid/icu/util/LocaleData$MeasurementSystem;

    invoke-static {v2, v1}, Landroid/icu/util/LocaleData$MeasurementSystem;->-wrap0(Landroid/icu/util/LocaleData$MeasurementSystem;I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/icu/util/LocaleData$MeasurementSystem;->UK:Landroid/icu/util/LocaleData$MeasurementSystem;

    return-object v2

    :cond_1
    sget-object v2, Landroid/icu/util/LocaleData$MeasurementSystem;->SI:Landroid/icu/util/LocaleData$MeasurementSystem;

    invoke-static {v2, v1}, Landroid/icu/util/LocaleData$MeasurementSystem;->-wrap0(Landroid/icu/util/LocaleData$MeasurementSystem;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/icu/util/LocaleData$MeasurementSystem;->SI:Landroid/icu/util/LocaleData$MeasurementSystem;

    return-object v2

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public static final getPaperSize(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData$PaperSize;
    .locals 6

    const-string/jumbo v2, "PaperSize"

    invoke-static {p0, v2}, Landroid/icu/util/LocaleData;->measurementTypeBundleForLocale(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v1

    new-instance v2, Landroid/icu/util/LocaleData$PaperSize;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/icu/util/LocaleData$PaperSize;-><init>(IILandroid/icu/util/LocaleData$PaperSize;)V

    return-object v2
.end method

.method private static measurementTypeBundleForLocale(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 10

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    const-string/jumbo v7, "android/icu/impl/data/icudt56b"

    const-string/jumbo v8, "supplementalData"

    sget-object v9, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v7, v8, v9}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    const-string/jumbo v7, "measurementData"

    invoke-virtual {v5, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v3, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v4

    :try_start_2
    const-string/jumbo v7, "001"

    invoke-virtual {v3, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getDelimiter(I)Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v3, "delimiters"

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    sget-object v2, Landroid/icu/util/LocaleData;->DELIMITER_TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    iget-boolean v2, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getLoadingStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getExemplarSet(II)Landroid/icu/text/UnicodeSet;
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v7, "ExemplarCharacters"

    const/4 v8, 0x0

    aput-object v7, v3, v8

    const-string/jumbo v7, "AuxExemplarCharacters"

    aput-object v7, v3, v9

    const-string/jumbo v7, "ExemplarCharactersIndex"

    aput-object v7, v3, v10

    const-string/jumbo v7, "ExemplarCharactersCurrency"

    aput-object v7, v3, v11

    const-string/jumbo v7, "ExemplarCharactersPunctuation"

    const/4 v8, 0x4

    aput-object v7, v3, v8

    if-ne p2, v11, :cond_1

    iget-boolean v7, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    if-eqz v7, :cond_0

    :goto_0
    return-object v6

    :cond_0
    sget-object v6, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_1
    :try_start_0
    aget-object v0, v3, p2

    iget-object v7, p0, Landroid/icu/util/LocaleData;->bundle:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v7, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    iget-boolean v7, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getLoadingStatus()I

    move-result v7

    if-ne v7, v10, :cond_2

    return-object v6

    :cond_2
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Landroid/icu/text/UnicodeSet;

    or-int/lit8 v8, p1, 0x1

    invoke-direct {v7, v5, v8}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v2

    iget-boolean v7, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    if-eqz v7, :cond_3

    :goto_1
    return-object v6

    :cond_3
    sget-object v6, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getLocaleDisplayPattern()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v3, "localeDisplayPattern"

    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v2, "pattern"

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLocaleSeparator()Ljava/lang/String;
    .locals 8

    const-string/jumbo v4, "{0}"

    const-string/jumbo v5, "{1}"

    iget-object v6, p0, Landroid/icu/util/LocaleData;->langBundle:Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v7, "localeDisplayPattern"

    invoke-virtual {v6, v7}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v6, "separator"

    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    if-gt v0, v1, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_0
    return-object v3
.end method

.method public getNoSubstitute()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    return v0
.end method

.method public setNoSubstitute(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/util/LocaleData;->noSubstitute:Z

    return-void
.end method
