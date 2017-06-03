.class Landroid/icu/util/CurrencyServiceShim$CFService;
.super Landroid/icu/impl/ICULocaleService;
.source "CurrencyServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CurrencyServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CFService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "Currency"

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/icu/util/CurrencyServiceShim$CFService$1CurrencyFactory;

    invoke-direct {v0, p0}, Landroid/icu/util/CurrencyServiceShim$CFService$1CurrencyFactory;-><init>(Landroid/icu/util/CurrencyServiceShim$CFService;)V

    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->markDefault()V

    return-void
.end method
