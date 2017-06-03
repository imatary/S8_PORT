.class public Landroid/icu/impl/CurrencyData;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CurrencyData$1;,
        Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;,
        Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;,
        Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;,
        Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;,
        Landroid/icu/impl/CurrencyData$DefaultInfo;
    }
.end annotation


# static fields
.field public static final provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "android.icu.impl.ICUCurrencyDisplayInfoProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v2, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Landroid/icu/impl/CurrencyData$1;

    invoke-direct {v2}, Landroid/icu/impl/CurrencyData$1;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
