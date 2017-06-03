.class Landroid/icu/text/CollatorServiceShim$CService;
.super Landroid/icu/impl/ICULocaleService;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CollatorServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "Collator"

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;

    invoke-direct {v0, p0}, Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;-><init>(Landroid/icu/text/CollatorServiceShim$CService;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/CollatorServiceShim$CService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {p0}, Landroid/icu/text/CollatorServiceShim$CService;->markDefault()V

    return-void
.end method


# virtual methods
.method protected handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "root"

    const/4 v2, 0x0

    aput-object v1, p2, v2

    :cond_0
    :try_start_0
    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/text/CollatorServiceShim;->-wrap0(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v3
.end method

.method public validateFallbackLocale()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method
