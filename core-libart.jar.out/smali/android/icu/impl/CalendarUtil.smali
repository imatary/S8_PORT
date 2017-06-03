.class public Landroid/icu/impl/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# static fields
.field private static final CALKEY:Ljava/lang/String; = "calendar"

.field private static CALTYPE_CACHE:Landroid/icu/impl/ICUCache; = null
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

.field private static final DEFCAL:Ljava/lang/String; = "gregorian"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/impl/CalendarUtil;->CALTYPE_CACHE:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 12

    const/4 v2, 0x0

    const-string/jumbo v9, "calendar"

    invoke-virtual {p0, v9}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Landroid/icu/impl/CalendarUtil;->CALTYPE_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v9, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v3

    const-string/jumbo v9, "calendar"

    invoke-virtual {v3, v9}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v3}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v8

    :cond_2
    :try_start_0
    const-string/jumbo v9, "android/icu/impl/data/icudt56b"

    const-string/jumbo v10, "supplementalData"

    sget-object v11, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v9, v10, v11}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    const-string/jumbo v9, "calendarPreferenceData"

    invoke-virtual {v7, v9}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v1, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    :goto_0
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v6, v9}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    const-string/jumbo v2, "gregorian"

    :cond_3
    sget-object v9, Landroid/icu/impl/CalendarUtil;->CALTYPE_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v9, v0, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :catch_0
    move-exception v5

    :try_start_3
    const-string/jumbo v9, "001"

    invoke-virtual {v1, v9}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_1
.end method
