.class Landroid/icu/util/GenderInfo$Cache;
.super Ljava/lang/Object;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private final cache:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/GenderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    iput-object v0, p0, Landroid/icu/util/GenderInfo$Cache;->cache:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/GenderInfo$Cache;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/GenderInfo$Cache;-><init>()V

    return-void
.end method

.method private static load(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;
    .locals 7

    const-string/jumbo v3, "android/icu/impl/data/icudt56b"

    const-string/jumbo v4, "genderList"

    sget-object v5, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    const-string/jumbo v3, "genderList"

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    :try_start_0
    new-instance v3, Landroid/icu/util/GenderInfo;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromName(Ljava/lang/String;)Landroid/icu/util/GenderInfo$ListGenderStyle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/util/GenderInfo;-><init>(Landroid/icu/util/GenderInfo$ListGenderStyle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;
    .locals 3

    iget-object v2, p0, Landroid/icu/util/GenderInfo$Cache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {v2, p1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/GenderInfo;

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/icu/util/GenderInfo$Cache;->load(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/icu/util/GenderInfo;->-get0()Landroid/icu/util/GenderInfo;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/icu/util/GenderInfo$Cache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {v2, p1, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/icu/util/GenderInfo$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    move-result-object v1

    goto :goto_0
.end method
